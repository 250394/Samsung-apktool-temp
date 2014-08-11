.class public Lcom/android/systemui/sapps/SAppsPanelUI;
.super Lcom/android/systemui/SystemUI;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;
    }
.end annotation


# static fields
.field private static final ACTION_PEN_INSERT:Ljava/lang/String; = "com.samsung.pen.INSERT"

.field private static final DEBUG:Z = false

.field private static final KEY_PEN_SETTINGS:Ljava/lang/String; = "pen_applications"

.field private static final PEN_SETTINGS_NONE:Ljava/lang/String; = "None"

.field private static final PEN_SETTINGS_TRAY:Ljava/lang/String; = "Shortcuts toolbar"

.field private static final TAG:Ljava/lang/String; = "SAppsPanelUI"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mCloseSAppsPanel:Ljava/lang/reflect/Method;

.field private mInCallScreen:Z

.field mOpenSAppsPanel:Ljava/lang/reflect/Method;

.field private mPanelClosed:Z

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

.field mSAppsTrayClass:Ljava/lang/Class;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mInCallScreen:Z

    .line 49
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    .line 50
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 51
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 52
    iput-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 125
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$1;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 159
    new-instance v0, Lcom/android/systemui/sapps/SAppsPanelUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/sapps/SAppsPanelUI$2;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/sapps/SAppsPanelUI;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/sapps/SAppsPanelUI;->launchSPenApps(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/sapps/SAppsPanelUI;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mInCallScreen:Z

    return p1
.end method

.method private launchSPenApps(Landroid/content/Intent;)V
    .locals 12
    .parameter "penIntent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 178
    const-string v8, "penInsert"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 179
    .local v6, penInsert:Z
    const-string v8, "isFactoryMode"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 180
    .local v3, isFactoryMode:Z
    const-string v8, "isScreenOn"

    invoke-virtual {p1, v8, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 181
    .local v5, isScreenOn:Z
    const-string v8, "isKeyguardLocked"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 187
    .local v4, isKeyguardLocked:Z
    const/4 v7, 0x0

    .line 188
    .local v7, value:Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 190
    invoke-virtual {p0, v10}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 193
    iget-boolean v8, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mInCallScreen:Z

    if-eqz v8, :cond_2

    .line 195
    new-instance v0, Landroid/content/ComponentName;

    const-string v8, "com.diotek.mini_penmemo"

    const-string v9, "com.diotek.mini_penmemo.Mini_PenMemo_Service"

    invoke-direct {v0, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v0, component:Landroid/content/ComponentName;
    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 197
    .local v1, i:Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 201
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v1           #i:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "pen_applications"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 203
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 205
    const/high16 v8, 0x1020

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 207
    if-nez v7, :cond_3

    .line 208
    const-string v8, "SAppsPanelUI"

    const-string v9, "Unable to get Pen Settings selection from DB for PEN Detachment"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :cond_3
    const-string v8, "None"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 213
    const-string v8, "Shortcuts toolbar"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanelUI;->openSAppsPanel()V

    goto :goto_0

    .line 218
    :cond_4
    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, component:[Ljava/lang/String;
    aget-object v8, v0, v11

    aget-object v9, v0, v10

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    iget-object v8, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method


# virtual methods
.method public closeSAppsPanel(Z)V
    .locals 3
    .parameter "animate"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 233
    if-nez p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    goto :goto_0

    .line 242
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v0, 0x1

    .line 117
    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 119
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    .line 123
    .local v0, isPortrait:Z
    :goto_0
    return-void

    .line 119
    .end local v0           #isPortrait:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openSAppsPanel()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->getPanelVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 254
    iput-boolean v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPanelClosed:Z

    .line 255
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 264
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusable(Z)V

    .line 265
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->setFocusableInTouchMode(Z)V

    .line 266
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel;->requestFocus()Z

    .line 269
    :cond_1
    return-void

    .line 261
    :catch_0
    move-exception v0

    goto :goto_0

    .line 260
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 7

    .prologue
    .line 67
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v5, 0x7f030007

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/sapps/SAppsPanel;

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    .line 70
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 71
    .local v3, res:Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/sapps/SAppsPanel;->setPanelVisibility(I)V

    .line 72
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    new-instance v5, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;

    iget-object v6, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-direct {v5, p0, v6}, Lcom/android/systemui/sapps/SAppsPanelUI$TouchOutsideListener;-><init>(Lcom/android/systemui/sapps/SAppsPanelUI;Lcom/android/systemui/sapps/SAppsPanel;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/sapps/SAppsPanel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 73
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x7de

    const v5, 0x1820100

    const/4 v6, -0x3

    invoke-direct {v2, v4, v5, v6}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 82
    .local v2, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v4, 0x15

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 83
    const v4, 0x7f0b0037

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 84
    const v4, 0x7f0b0038

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 86
    const-string v4, "SAppsPanel"

    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    const/16 v4, 0x31

    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 90
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v4, v5, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsPanel:Lcom/android/systemui/sapps/SAppsPanel;

    invoke-virtual {v4, p0}, Lcom/android/systemui/sapps/SAppsPanel;->setCallView(Lcom/android/systemui/sapps/SAppsPanelUI;)V

    .line 94
    :try_start_0
    const-string v4, "com.android.systemui.sapps.SAppsPanel"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    .line 95
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v5, "closeSAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mCloseSAppsPanel:Ljava/lang/reflect/Method;

    .line 96
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mSAppsTrayClass:Ljava/lang/Class;

    const-string v5, "openSAppsPanel"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mOpenSAppsPanel:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 103
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_0

    .line 104
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 105
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 107
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v4, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanelUI;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 112
    return-void

    .line 97
    .end local v1           #filter:Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 99
    .end local v0           #e:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0
.end method
