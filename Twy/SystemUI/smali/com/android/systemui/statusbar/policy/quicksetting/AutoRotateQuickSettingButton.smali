.class public Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AutoRotateQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;
    }
.end annotation


# instance fields
.field private mAutoRotation:Z

.field private mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

.field private mAutoRotationSecond:Z

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyboardHidden:I

.field private mSupportFolderType:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 87
    const/4 v2, 0x0

    const v3, 0x7f09008b

    const v4, 0x7f02015a

    const v5, 0x7f020159

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 43
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    .line 47
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mSupportFolderType:Z

    .line 50
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    .line 95
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mSupportFolderType:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotationSecond()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z

    move-result v0

    return v0
.end method

.method private getAutoRotation()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 101
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getAutoRotationSecond()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 138
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "accelerometer_rotation_second"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isFolderOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 148
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mKeyboardHidden:I

    .line 149
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAutoRotation(Z)V
    .locals 1
    .parameter "autorotate"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    .line 106
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method private setAutoRotationSecond(Z)V
    .locals 3
    .parameter "autorotate"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation_second"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    return-void

    .line 143
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation_second"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotationObserver:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$AutoRotationObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 161
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 162
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 164
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.folder_type"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mSupportFolderType:Z

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    .line 168
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setActivateStatus(I)V

    .line 171
    return-void

    .line 168
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 179
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supportFolder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mSupportFolderType:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z

    if-eq p1, v0, :cond_0

    .line 181
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mSupportFolderType:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->isFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setAutoRotationSecond(Z)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setAutoRotation(Z)V

    goto :goto_0
.end method
