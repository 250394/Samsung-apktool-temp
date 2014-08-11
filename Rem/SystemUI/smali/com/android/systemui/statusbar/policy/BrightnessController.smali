.class public Lcom/android/systemui/statusbar/policy/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;,
        Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;
    }
.end annotation


# static fields
.field private static final ACTION_POWER_SIOP_DISABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_DISABLE"

.field private static final ACTION_POWER_SIOP_ENABLE:Ljava/lang/String; = "android.intent.action.POWER_SIOP_ENABLE"

.field private static final AUTO_BRIGHTNESS_DETAIL_CONTROL:I = 0x1

.field private static final GENERAL_BRIGHTNESS_CONTROL:I = 0x0

.field private static final LIMITED_BACKLIGHT:I = 0x9d

.field private static final MAXIMUM_BACKLIGHT:I = 0xff

.field private static MINIMUM_BACKLIGHT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "StatusBar.BrightnessController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-BrightnessController"


# instance fields
.field private mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

.field private mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

.field private mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

.field private mPower:Landroid/os/IPowerManager;

.field private mToggleArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/ToggleSlider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/16 v0, 0x1e

    sput v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 20
    .parameter "context"
    .parameter "control"

    .prologue
    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    .line 328
    new-instance v16, Lcom/android/systemui/statusbar/policy/BrightnessController$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController$3;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    .line 98
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 101
    sget-boolean v16, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-eqz v16, :cond_0

    .line 102
    invoke-virtual/range {p2 .. p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 103
    .local v5, controlParent:Landroid/view/ViewParent;
    if-eqz v5, :cond_1

    .line 104
    instance-of v0, v5, Landroid/view/ViewGroup;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    move-object v14, v5

    .line 105
    check-cast v14, Landroid/view/ViewGroup;

    .line 106
    .local v14, vg:Landroid/view/ViewGroup;
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 107
    .local v10, size:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v10, :cond_1

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual {v14, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 113
    .end local v5           #controlParent:Landroid/view/ViewParent;
    .end local v8           #i:I
    .end local v10           #size:I
    .end local v14           #vg:Landroid/view/ViewGroup;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mControl:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x1110010

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 119
    .local v4, automaticAvailable:Z
    const-string v16, "power"

    invoke-static/range {v16 .. v16}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 121
    if-eqz v4, :cond_7

    .line 124
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness_mode"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 130
    .local v3, automatic:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 131
    .local v12, toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    if-eqz v3, :cond_2

    const/16 v16, 0x1

    :goto_3
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    goto :goto_2

    .line 126
    .end local v3           #automatic:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v12           #toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    :catch_0
    move-exception v11

    .line 127
    .local v11, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #automatic:I
    goto :goto_1

    .line 131
    .end local v11           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v9       #i$:Ljava/util/Iterator;
    .restart local v12       #toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    :cond_2
    const/16 v16, 0x0

    goto :goto_3

    .line 133
    .end local v12           #toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    :cond_3
    sget-boolean v16, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-eqz v16, :cond_4

    .line 135
    if-eqz v3, :cond_6

    .line 136
    const/4 v15, 0x0

    .line 140
    .local v15, what:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setVisibility(I)V

    .line 156
    .end local v3           #automatic:I
    .end local v15           #what:I
    :cond_4
    const-string v16, "ro.lcd_min_brightness"

    sget v17, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v16

    sput v16, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    .line 160
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "screen_brightness"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v13

    .line 167
    .local v13, value:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    sget v17, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    move/from16 v0, v17

    rsub-int v0, v0, 0xff

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    sget v17, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v17, v13, v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 173
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    .line 174
    new-instance v16, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    .line 175
    new-instance v16, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "screen_brightness"

    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$BrightnessObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "screen_brightness_mode"

    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    sget-boolean v16, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-eqz v16, :cond_5

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "auto_brightness_detail"

    const/16 v18, 0x64

    invoke-static/range {v16 .. v18}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, autoValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    const/16 v17, 0xc8

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setValue(I)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V

    .line 190
    new-instance v16, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "auto_brightness_detail"

    invoke-static/range {v17 .. v17}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mAutomaticBrightnessObserver:Lcom/android/systemui/statusbar/policy/BrightnessController$AutomaticBrightnessObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v16 .. v19}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 197
    .end local v2           #autoValue:I
    :cond_5
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v16, "android.intent.action.POWER_SIOP_ENABLE"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v16, "android.intent.action.POWER_SIOP_DISABLE"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 202
    return-void

    .line 138
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v13           #value:I
    .restart local v3       #automatic:I
    :cond_6
    const/4 v15, 0x1

    .restart local v15       #what:I
    goto/16 :goto_4

    .line 145
    .end local v3           #automatic:I
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v15           #what:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .restart local v9       #i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    .line 146
    .restart local v12       #toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 148
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hideToggle()V

    goto :goto_6

    .line 162
    .end local v12           #toggle:Lcom/android/systemui/statusbar/policy/ToggleSlider;
    :catch_1
    move-exception v6

    .line 163
    .local v6, ex:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v13, 0xff

    .restart local v13       #value:I
    goto/16 :goto_5
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/BrightnessController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/BrightnessController;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300()I
    .locals 1

    .prologue
    .line 51
    sget v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    return v0
.end method

.method private setBrightness(I)V
    .locals 3
    .parameter "brightness"

    .prologue
    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V

    .line 254
    const-string v0, "StatusBar.BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBacklightBrightness() - brightness : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 249
    return-void
.end method


# virtual methods
.method public onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V
    .locals 4
    .parameter "view"
    .parameter "tracking"
    .parameter "automatic"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 205
    if-eqz p3, :cond_1

    move v1, v2

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMode(I)V

    .line 207
    if-nez p3, :cond_2

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 210
    sget v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    add-int v0, p4, v1

    .line 212
    .local v0, val:I
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setBrightness(I)V

    .line 214
    if-nez p2, :cond_0

    .line 215
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$1;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 244
    .end local v0           #val:I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 205
    goto :goto_0

    .line 227
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 228
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 229
    move v0, p4

    .line 232
    .restart local v0       #val:I
    new-instance v1, Lcom/android/systemui/statusbar/policy/BrightnessController$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/policy/BrightnessController$2;-><init>(Lcom/android/systemui/statusbar/policy/BrightnessController;I)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method public setMaxBrightness(I)V
    .locals 3
    .parameter "maxLevel"

    .prologue
    .line 343
    sget v0, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    if-lt p1, v0, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BrightnessController;->mToggleArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    sget v1, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setMax(I)V

    .line 346
    const-string v0, "STATUSBAR-BrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S.M.B.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/systemui/statusbar/policy/BrightnessController;->MINIMUM_BACKLIGHT:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    :cond_0
    return-void
.end method
