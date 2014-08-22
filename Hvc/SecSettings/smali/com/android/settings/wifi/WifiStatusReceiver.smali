.class public Lcom/android/settings/wifi/WifiStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiStatusReceiver.java"


# static fields
.field private static mDialogFlag:Z

.field private static mEnableShowApEventFlag:Z

.field private static mIsConnectivityNotiShowing:Z

.field public static mIsForegroundWifiSettings:Z

.field public static mIsForegroundWifiSubSettings:Z

.field private static mLastInfo:Landroid/net/NetworkInfo;

.field private static mShowOnceFlag:Z

.field private static mWifiDisabledWarning:Landroid/app/Notification;


# instance fields
.field private final ICON_WIFI_CONNECTED:I

.field private mPrioritymode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 67
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 68
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 69
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    .line 70
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 84
    const v0, 0x7f02018f

    iput v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->ICON_WIFI_CONNECTED:I

    .line 87
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnPriorityMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    return-void
.end method

.method private enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V
    .locals 3
    .parameter "wifiManager"
    .parameter "enable"

    .prologue
    .line 457
    sget-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    if-ne v2, p2, :cond_0

    .line 469
    :goto_0
    return-void

    .line 460
    :cond_0
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mEnableShowApEventFlag:Z

    .line 462
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 463
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0x10

    iput v2, v1, Landroid/os/Message;->what:I

    .line 464
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "enable"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 466
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 468
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 6

    .prologue
    .line 400
    const-string v1, "/efs/FactoryApp/factorymode"

    .line 402
    .local v1, factoryModeFile:Ljava/lang/String;
    const/4 v2, 0x0

    .line 404
    .local v2, mode:Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/FactoryApp/factorymode"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 410
    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "ON"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    const/4 v3, 0x0

    .line 413
    :goto_1
    return v3

    .line 405
    :catch_0
    move-exception v0

    .line 406
    .local v0, e:Ljava/io/IOException;
    const-string v2, "OFF"

    .line 407
    const-string v3, "WifiStatusReceiver"

    const-string v4, "cannot open file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isWifiSettingScreen(Landroid/content/Context;)I
    .locals 1
    .parameter "context"

    .prologue
    .line 391
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-eqz v0, :cond_0

    .line 392
    const/4 v0, 0x1

    .line 396
    :goto_0
    return v0

    .line 393
    :cond_0
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    if-eqz v0, :cond_1

    .line 394
    const/4 v0, 0x2

    goto :goto_0

    .line 396
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 2
    .parameter "context"
    .parameter "intent"
    .parameter "launchWith"

    .prologue
    .line 341
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_1

    .line 342
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 343
    .local v0, wifiIntent:Landroid/content/Intent;
    if-lez p3, :cond_0

    .line 344
    sput p3, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 345
    :cond_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 346
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 348
    .end local v0           #wifiIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    const-class v1, Lcom/android/settings/wifi/WifiPickerDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method private updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 1
    .parameter "context"
    .parameter "wifiManager"

    .prologue
    .line 441
    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    if-eqz v0, :cond_0

    .line 442
    sget-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    .line 446
    :cond_0
    sget-object v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v0, :cond_1

    .line 454
    :cond_1
    return-void
.end method

.method private watchdogNotification(Landroid/content/Context;Z)V
    .locals 12
    .parameter "context"
    .parameter "visible"

    .prologue
    const/4 v11, 0x1

    const v10, 0x7f0902f0

    const/4 v9, 0x0

    .line 351
    const-string v6, "notification"

    invoke-virtual {p1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .line 354
    .local v3, notificationManager:Landroid/app/NotificationManager;
    if-eqz p2, :cond_2

    .line 355
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v6

    if-eq v6, v11, :cond_1

    .line 356
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    if-nez v6, :cond_0

    .line 357
    new-instance v6, Landroid/app/Notification;

    invoke-direct {v6}, Landroid/app/Notification;-><init>()V

    sput-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    .line 358
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const v7, 0x108008a

    iput v7, v6, Landroid/app/Notification;->icon:I

    .line 359
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/4 v7, -0x1

    iput v7, v6, Landroid/app/Notification;->defaults:I

    .line 360
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v6, Landroid/app/Notification;->when:J

    .line 361
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    const/16 v7, 0x10

    iput v7, v6, Landroid/app/Notification;->flags:I

    .line 363
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    .local v1, intent:Landroid/content/Intent;
    const-string v6, "launch_with"

    invoke-virtual {v1, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v1, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 367
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, deleteIntent:Landroid/content/Intent;
    const-string v6, "nid"

    invoke-virtual {v0, v6, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 369
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-static {p1, v9, v0, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    iput-object v7, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 372
    .end local v0           #deleteIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 373
    .local v4, r:Landroid/content/res/Resources;
    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 374
    .local v5, title:Ljava/lang/CharSequence;
    const v6, 0x7f0902f1

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 375
    .local v2, msg:Ljava/lang/String;
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iput-object v5, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 376
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    sget-object v7, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v6, p1, v5, v2, v7}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 378
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 379
    sget-object v6, Lcom/android/settings/wifi/WifiStatusReceiver;->mWifiDisabledWarning:Landroid/app/Notification;

    invoke-virtual {v3, v10, v6}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 380
    sput v11, Lcom/android/settings/wifi/WifiSettings;->mStartWith:I

    .line 386
    .end local v2           #msg:Ljava/lang/String;
    .end local v4           #r:Landroid/content/res/Resources;
    .end local v5           #title:Ljava/lang/CharSequence;
    :cond_1
    :goto_0
    return-void

    .line 383
    :cond_2
    sput-boolean p2, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    .line 384
    invoke-virtual {v3, v10}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0x11

    const/4 v3, 0x2

    const v9, 0x7f0906c1

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 99
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Wifi_EnableDetailEapErrorCodesAndState"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    const-string v5, "android.net.wifi.SHOW_EAP_MESSAGE_DIALOG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 107
    const-string v5, "message"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 108
    const-string v6, "WifiStatusReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SHOW EAP SIM MESSAGE ACTION: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    if-nez v5, :cond_1

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    invoke-static {p1, v5, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 115
    :cond_2
    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 116
    const-string v1, "wifi_state"

    const/4 v3, 0x4

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 117
    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 119
    sget-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    if-eqz v1, :cond_3

    .line 120
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 121
    sget-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSettings:Z

    if-nez v1, :cond_0

    .line 122
    sput-boolean v2, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 123
    invoke-direct {p0, v0, v2}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 126
    :cond_3
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 127
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 129
    :cond_4
    if-ne v1, v2, :cond_0

    .line 131
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 132
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 133
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    .line 135
    :cond_5
    const-string v5, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 136
    const-string v1, "show_dialog_once"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 137
    const-string v0, "show_dialog_once"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 139
    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mShowOnceFlag:Z

    .line 140
    if-nez v0, :cond_0

    .line 141
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    goto :goto_0

    .line 144
    :cond_6
    sget-boolean v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 148
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "wifi_cmcc_manual"

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_8

    .line 151
    :goto_1
    if-nez v2, :cond_0

    .line 153
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    .line 155
    :cond_7
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mDialogFlag:Z

    .line 156
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto :goto_0

    :cond_8
    move v2, v4

    .line 148
    goto :goto_1

    .line 159
    :cond_9
    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 160
    const-string v1, "networkInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    sput-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    .line 162
    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/wifi/WifiStatusReceiver;->mLastInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string v1, "wifiInfo"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 168
    if-eqz v1, :cond_a

    .line 177
    const-string v3, "WhiteTheme"

    const-string v5, "#59D0F3"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 178
    const v3, 0x103012b

    invoke-virtual {p1, v3}, Landroid/content/Context;->setTheme(I)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-virtual {v3, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 196
    :goto_2
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 174
    :cond_a
    const-string v0, "WifiStatusReceiver"

    const-string v1, "wifiinfo is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 183
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-array v5, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "<font color=#59D0F3>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "</font>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v4

    invoke-virtual {v3, v9, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 187
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 188
    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 189
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 203
    :cond_c
    const-string v5, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 204
    const-string v0, "info_type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 206
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 208
    :pswitch_0
    const v0, 0x7f0902ec

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 211
    :pswitch_1
    const v0, 0x7f090381

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 214
    :pswitch_2
    const v0, 0x7f090382

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 218
    :pswitch_3
    const-string v0, "visible"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 219
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->watchdogNotification(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 223
    :pswitch_4
    const v0, 0x7f0902ee

    invoke-static {p1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 228
    :cond_d
    const-string v5, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 229
    const-string v0, "WifiStatusReceiver"

    const-string v1, "ACTION_SEC_PICK_WIFI_NETWORK"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const-string v0, "type"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 231
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerDialog(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 233
    :cond_e
    invoke-direct {p0, p1, p2, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 235
    :cond_f
    const-string v5, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 236
    const-string v1, "WifiStatusReceiver"

    const-string v5, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_13

    .line 238
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 239
    const/16 v5, 0xc

    if-eq v1, v5, :cond_10

    const/16 v5, 0xd

    if-ne v1, v5, :cond_11

    :cond_10
    move v1, v2

    .line 241
    :goto_3
    if-eqz v1, :cond_14

    .line 242
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiStatusReceiver;->isWifiSettingScreen(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_12

    .line 243
    invoke-direct {p0, p1, p2, v3}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    :cond_11
    move v1, v4

    .line 239
    goto :goto_3

    .line 246
    :cond_12
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.WIFI_ON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 252
    :cond_13
    :goto_4
    invoke-direct {p0, p1, p2, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 249
    :cond_14
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_4

    .line 253
    :cond_15
    const-string v5, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 254
    const-string v0, "WifiStatusReceiver"

    const-string v1, "ACTION_SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const-string v0, "launch_with"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 256
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->startWifiPickerActivity(Landroid/content/Context;Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 257
    :cond_16
    const-string v5, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 258
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 259
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 261
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 262
    const-string v5, "999999999999999"

    .line 264
    if-eqz v1, :cond_18

    const-string v5, "999999999999999"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 265
    const-string v1, "WifiStatusReceiver"

    const-string v3, "IMSI is invalidate. Turn off Wi-Fi"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v0, v2

    .line 273
    :goto_5
    if-lez v0, :cond_17

    .line 274
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 275
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 285
    :cond_17
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiStatusReceiver;->mPrioritymode:Z

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitoring_enable"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 288
    if-ne v0, v2, :cond_0

    .line 289
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 268
    :cond_18
    invoke-static {}, Lcom/android/settings/wifi/WifiStatusReceiver;->isFactoryMode()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 269
    const-string v1, "WifiStatusReceiver"

    const-string v5, "Factory Mode is ON. Turn off Wi-Fi"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-virtual {v0, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move v0, v3

    .line 271
    goto :goto_5

    .line 292
    :cond_19
    const-string v3, "com.android.settings.wifi.wifitimer_alarm"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 294
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.wifi.WifiTimerService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 297
    :cond_1a
    const-string v3, "android.net.wifi.SEC_NOTIFICATION_CANCEL"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 298
    const-string v1, "nid"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 299
    const v2, 0x7f0902f0

    if-ne v1, v2, :cond_1b

    .line 300
    sput-boolean v4, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsConnectivityNotiShowing:Z

    goto/16 :goto_0

    .line 301
    :cond_1b
    if-nez v1, :cond_0

    .line 302
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiStatusReceiver;->updateResources(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    goto/16 :goto_0

    .line 305
    :cond_1c
    const-string v3, "ACTION_AGGREGATION_DELAY"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    const-string v1, "WhiteTheme"

    const-string v3, "#59D0F3"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 308
    const v1, 0x103012b

    invoke-virtual {p1, v1}, Landroid/content/Context;->setTheme(I)V

    .line 309
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v9, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 311
    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 326
    :goto_6
    invoke-direct {p0, v0, v4}, Lcom/android/settings/wifi/WifiStatusReceiver;->enableShowApEvent(Landroid/net/wifi/WifiManager;Z)V

    goto/16 :goto_0

    .line 313
    :cond_1d
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<font color=#59D0F3>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "</font>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v9, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 317
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-static {p1, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 318
    invoke-virtual {v2}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x102000b

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 319
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 320
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_6

    :cond_1e
    move v0, v4

    goto/16 :goto_5

    .line 206
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
