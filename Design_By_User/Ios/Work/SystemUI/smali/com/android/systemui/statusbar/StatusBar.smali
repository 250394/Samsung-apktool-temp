.class public abstract Lcom/android/systemui/statusbar/StatusBar;
.super Lcom/android/systemui/SystemUI;
.source "StatusBar.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field protected static final AWAKE_INTERVAL_DEFAULT_MS:I = 0x2710

.field private static final DBG_WAKE:Z = false

.field public static final HW_REVISION_VALUE:I = 0x5

.field public static final PALM_TOUCH_THRESHOLD:F = 9.0f

.field private static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "StatusBar"

.field private static final TIMEOUT:I = 0x1

.field public static alwaysShowMenuKey:Z

.field public static canStatusBarHide:Z

.field public static hasVibrator:Z

.field public static hideWifiInAndOut:Z

.field public static isGPSProviderSupported:Z

.field public static isNetworkSupported:Z

.field public static setDefaultOrientationLandscapeMode:Z

.field public static showBrightController:Z

.field public static showStatusBarHelp:Z

.field public static supportHapticFeedback:Z

.field public static supportVoice:Z

.field public static useAutoBrightnessDetail:Z

.field public static useStatusBarWorldClock:Z

.field public static useTouchWizGUI:Z


# instance fields
.field private lp:Landroid/view/WindowManager$LayoutParams;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mPM:Landroid/os/PowerManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakelockSequence:I

.field private sb:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 161
    new-instance v0, Lcom/android/systemui/statusbar/StatusBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBar$1;-><init>(Lcom/android/systemui/statusbar/StatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/StatusBar;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/StatusBar;->handleTimeout(I)V

    return-void
.end method

.method private handleTimeout(I)V
    .locals 1
    .parameter "seq"

    .prologue
    .line 195
    monitor-enter p0

    .line 197
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    if-ne p1, v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 200
    :cond_0
    monitor-exit p0

    .line 201
    return-void

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private updateStatusBarGlobalSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 363
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 371
    :goto_0
    :try_start_1
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v4

    .line 373
    .local v4, wm:Landroid/view/IWindowManager;
    invoke-interface {v4}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    .end local v4           #wm:Landroid/view/IWindowManager;
    :goto_1
    :try_start_2
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110029

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 392
    :goto_2
    :try_start_3
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    .line 394
    .local v0, cm:Landroid/net/IConnectivityManager;
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Landroid/net/IConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    .line 404
    .end local v0           #cm:Landroid/net/IConnectivityManager;
    :goto_3
    const/4 v5, 0x1

    :try_start_4
    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->isGPSProviderSupported:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 416
    :goto_4
    :try_start_5
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Vibrator;

    .line 417
    .local v3, v:Landroid/os/Vibrator;
    invoke-virtual {v3}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->hasVibrator:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 426
    .end local v3           #v:Landroid/os/Vibrator;
    :goto_5
    :try_start_6
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->showStatusBarHelp:Z
    :try_end_6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_6

    .line 436
    :goto_6
    :try_start_7
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080011

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->alwaysShowMenuKey:Z
    :try_end_7
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_7

    .line 446
    :goto_7
    :try_start_8
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08001a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_8 .. :try_end_8} :catch_8

    .line 455
    :goto_8
    :try_start_9
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useStatusBarWorldClock:Z
    :try_end_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_9 .. :try_end_9} :catch_9

    .line 465
    :goto_9
    :try_start_a
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080014

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->setDefaultOrientationLandscapeMode:Z
    :try_end_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_a} :catch_a

    .line 475
    :goto_a
    :try_start_b
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080016

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->showBrightController:Z
    :try_end_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b .. :try_end_b} :catch_b

    .line 484
    :goto_b
    :try_start_c
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080018

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_c .. :try_end_c} :catch_c

    .line 493
    :goto_c
    :try_start_d
    iget-object v5, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080019

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->hideWifiInAndOut:Z
    :try_end_d
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_d .. :try_end_d} :catch_d

    .line 499
    :goto_d
    return-void

    .line 364
    :catch_0
    move-exception v2

    .line 365
    .local v2, ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    goto/16 :goto_0

    .line 374
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v1

    .line 375
    .local v1, e:Landroid/os/RemoteException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether status bar can hide"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 376
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    goto/16 :goto_1

    .line 384
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 385
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "StatusBar"

    const-string v6, "com.android.internal.R.bool.config_voice_capable not found"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 386
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z

    goto/16 :goto_2

    .line 395
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v1

    .line 396
    .restart local v1       #e:Landroid/os/RemoteException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether network support"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 397
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z

    goto/16 :goto_3

    .line 408
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_4
    move-exception v1

    .line 409
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether GPS provider support"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 410
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->isGPSProviderSupported:Z

    goto/16 :goto_4

    .line 418
    .end local v1           #e:Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 419
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether has vibrator"

    invoke-static {v5, v6, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 420
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->hasVibrator:Z

    goto/16 :goto_5

    .line 428
    .end local v1           #e:Ljava/lang/Exception;
    :catch_6
    move-exception v2

    .line 429
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether show Status Bar Help"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->showStatusBarHelp:Z

    goto/16 :goto_6

    .line 438
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_7
    move-exception v2

    .line 439
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether always show menu key"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->alwaysShowMenuKey:Z

    goto/16 :goto_7

    .line 448
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_8
    move-exception v2

    .line 449
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->supportHapticFeedback:Z

    goto/16 :goto_8

    .line 457
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_9
    move-exception v2

    .line 458
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->useStatusBarWorldClock:Z

    goto/16 :goto_9

    .line 467
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_a
    move-exception v2

    .line 468
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    const-string v5, "StatusBar"

    const-string v6, "Failing checking whether always show menu key"

    invoke-static {v5, v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 469
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->setDefaultOrientationLandscapeMode:Z

    goto/16 :goto_a

    .line 477
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_b
    move-exception v2

    .line 478
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->showBrightController:Z

    goto/16 :goto_b

    .line 486
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_c
    move-exception v2

    .line 487
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    goto/16 :goto_c

    .line 495
    .end local v2           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_d
    move-exception v2

    .line 496
    .restart local v2       #ex:Landroid/content/res/Resources$NotFoundException;
    sput-boolean v7, Lcom/android/systemui/statusbar/StatusBar;->hideWifiInAndOut:Z

    goto :goto_d
.end method


# virtual methods
.method public abstract animateCollapse()V
.end method

.method public applyEDMPolicy()V
    .locals 4

    .prologue
    .line 511
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBar;->isSystemBarHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 512
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 513
    const-string v1, "StatusBar"

    const-string v2, "Removed status bar view"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :goto_0
    return-void

    .line 515
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    const-string v1, "StatusBar"

    const-string v2, "Added status bar view"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v0

    .line 519
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "StatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed Applying policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected abstract getStatusBarGravity()I
.end method

.method public abstract getStatusBarHeight()I
.end method

.method public hideCallOnGoingView()V
    .locals 0

    .prologue
    .line 503
    return-void
.end method

.method public isKeyguardLocked()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isSystemBarHidden()Z
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/kioskmode/KioskMode;->isSystemBarHidden()Z

    move-result v0

    return v0
.end method

.method public isUnsecureKeyguardLocked()Z
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const/4 v0, 0x1

    .line 218
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract makeStatusBarView()Landroid/view/View;
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 173
    const/16 v0, 0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBar;->pokeWakelock(I)V

    .line 174
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 5
    .parameter "holdMs"

    .prologue
    .line 177
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 180
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 181
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakelockSequence:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 183
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBar;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    monitor-exit p0

    .line 185
    return-void

    .line 184
    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseWakelock()V
    .locals 1

    .prologue
    .line 188
    monitor-enter p0

    .line 190
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 191
    :cond_0
    monitor-exit p0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxBrightness(I)V
    .locals 0
    .parameter "maxLevel"

    .prologue
    .line 506
    return-void
.end method

.method public showCallOnGoingView()V
    .locals 0

    .prologue
    .line 502
    return-void
.end method

.method public start()V
    .locals 22

    .prologue
    .line 224
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->updateStatusBarGlobalSettings()V

    .line 228
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "keyguard"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 229
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mPM:Landroid/os/PowerManager;

    .line 230
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mPM:Landroid/os/PowerManager;

    const v5, 0x1000001a

    const-string v11, "statusbar"

    invoke-virtual {v4, v5, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 233
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->makeStatusBarView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    .line 242
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v6}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    .line 243
    .local v6, iconList:Lcom/android/internal/statusbar/StatusBarIconList;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v7, notificationKeys:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v8, notifications:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/statusbar/StatusBarNotification;>;"
    new-instance v4, Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v6}, Lcom/android/systemui/statusbar/CommandQueue;-><init>(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 246
    const-string v4, "statusbar"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 248
    const/4 v4, 0x7

    new-array v9, v4, [I

    .line 249
    .local v9, switches:[I
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 251
    .local v10, binders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/IBinder;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBar;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-interface/range {v4 .. v10}, Lcom/android/internal/statusbar/IStatusBarService;->registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :goto_0
    const/4 v4, 0x0

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->disable(I)V

    .line 258
    const/4 v4, 0x1

    aget v4, v9, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->setSystemUiVisibility(I)V

    .line 259
    const/4 v4, 0x2

    aget v4, v9, v4

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/StatusBar;->topAppWindowChanged(Z)V

    .line 261
    const/4 v4, 0x0

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    const/4 v5, 0x3

    aget v5, v9, v5

    const/4 v11, 0x4

    aget v11, v9, v11

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v11}, Lcom/android/systemui/statusbar/StatusBar;->setImeWindowStatus(Landroid/os/IBinder;II)V

    .line 262
    const/4 v4, 0x5

    aget v4, v9, v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x6

    aget v5, v9, v5

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->setHardKeyboardStatus(ZZ)V

    .line 265
    invoke-virtual {v6}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v17

    .line 266
    .local v17, N:I
    const/16 v21, 0x0

    .line 267
    .local v21, viewIndex:I
    const/16 v19, 0x0

    .local v19, i:I
    :goto_4
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_4

    .line 268
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v20

    .line 269
    .local v20, icon:Lcom/android/internal/statusbar/StatusBarIcon;
    if-eqz v20, :cond_0

    .line 270
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlot(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v21

    move-object/from16 v3, v20

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBar;->addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 271
    add-int/lit8 v21, v21, 0x1

    .line 267
    :cond_0
    add-int/lit8 v19, v19, 0x1

    goto :goto_4

    .line 259
    .end local v17           #N:I
    .end local v19           #i:I
    .end local v20           #icon:Lcom/android/internal/statusbar/StatusBarIcon;
    .end local v21           #viewIndex:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 262
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 276
    .restart local v17       #N:I
    .restart local v19       #i:I
    .restart local v21       #viewIndex:I
    :cond_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 277
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    .line 278
    const/16 v19, 0x0

    :goto_5
    move/from16 v0, v19

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 279
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    move/from16 v0, v19

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/statusbar/StatusBar;->addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 278
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 282
    :cond_5
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Notification list length mismatch: keys="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " notifications="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarHeight()I

    move-result v13

    .line 290
    .local v13, height:I
    new-instance v11, Landroid/view/WindowManager$LayoutParams;

    const/4 v12, -0x1

    const/16 v14, 0x7d0

    const v15, 0x800048

    const/16 v16, -0x3

    invoke-direct/range {v11 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v18

    .line 314
    .local v18, defaultDisplay:Landroid/view/Display;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->getStatusBarGravity()I

    move-result v5

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 315
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "StatusBar"

    invoke-virtual {v4, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 317
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    const v5, 0x7f0d0009

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 320
    const-string v4, "StatusBar"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Status bar view Desc: gravity=0x"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    iget v11, v11, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " icons="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " disabled=0x"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x0

    aget v11, v9, v11

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " lights="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x1

    aget v11, v9, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " menu="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x2

    aget v11, v9, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, " imeButton="

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v11, 0x3

    aget v11, v9, v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/StatusBar;->isSystemBarHidden()Z

    move-result v4

    if-nez v4, :cond_7

    .line 329
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/statusbar/StatusBar;->sb:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/StatusBar;->lp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5, v11}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    const-string v4, "StatusBar"

    const-string v5, "Added status bar view"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :cond_7
    new-instance v4, Lcom/android/systemui/statusbar/DoNotDisturb;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/systemui/statusbar/DoNotDisturb;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/statusbar/StatusBar;->mDoNotDisturb:Lcom/android/systemui/statusbar/DoNotDisturb;

    .line 335
    return-void

    .line 253
    .end local v13           #height:I
    .end local v17           #N:I
    .end local v18           #defaultDisplay:Landroid/view/Display;
    .end local v19           #i:I
    .end local v21           #viewIndex:I
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method

.method protected updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;
    .locals 5
    .parameter "row"
    .parameter "n"

    .prologue
    .line 338
    const v4, 0x7f0f0084

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 339
    .local v3, vetoButton:Landroid/view/View;
    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 340
    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 341
    .local v1, _pkg:Ljava/lang/String;
    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 342
    .local v2, _tag:Ljava/lang/String;
    iget v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 343
    .local v0, _id:I
    new-instance v4, Lcom/android/systemui/statusbar/StatusBar$2;

    invoke-direct {v4, p0, v1, v2, v0}, Lcom/android/systemui/statusbar/StatusBar$2;-><init>(Lcom/android/systemui/statusbar/StatusBar;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 356
    .end local v0           #_id:I
    .end local v1           #_pkg:Ljava/lang/String;
    .end local v2           #_tag:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 354
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
