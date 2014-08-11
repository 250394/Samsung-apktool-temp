.class public Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "AirplaneModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# instance fields
.field private mAirplaneMode:Z

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsWaitingForEcmExit:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field telephonyManager:Landroid/telephony/TelephonyManager;

.field telephonyManager2:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 109
    const/4 v2, 0x0

    const v3, 0x7f09008e

    const v4, 0x7f020148

    const v5, 0x7f020147

    const v6, 0x7f020146

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 56
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    .line 60
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 116
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    .line 117
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->getAirplaneMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 124
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mAirplaneMode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setAirplaneMode(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private checkSpecialCaller()Z
    .locals 8

    .prologue
    .line 286
    const/4 v2, 0x0

    .line 288
    .local v2, retVal:Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 289
    .local v1, mActivityManager:Landroid/app/ActivityManager;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 291
    .local v3, rt:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iterator:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 294
    .local v4, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    const-string v5, "systemui/quicksetting/QuickSettingButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSpecialCaller():: runningTaskInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.welgate.DualmodeSetting"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 296
    const/4 v2, 0x1

    goto :goto_0

    .line 299
    .end local v4           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    return v2
.end method

.method private getAirplaneMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 128
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "airplane_mode_on"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setAirplaneMode(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 253
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAirplaneMode()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v1, "ril.cdma.inecmmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 256
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIsWaitingForEcmExit:Z

    .line 258
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 260
    .local v0, ecmDialogIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 265
    .end local v0           #ecmDialogIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 263
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->unsafe(Z)V

    goto :goto_0
.end method

.method private showConfirmPopup(Z)V
    .locals 6
    .parameter "state"

    .prologue
    .line 179
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 180
    .local v2, value:Z
    if-eqz p1, :cond_1

    const v1, 0x1040186

    .line 183
    .local v1, resMsg:I
    :goto_0
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040183

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$3;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 237
    .local v0, mAlertDialog:Landroid/app/AlertDialog;
    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 243
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_0

    .line 244
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 246
    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d9

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 247
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 249
    return-void

    .line 180
    .end local v0           #mAlertDialog:Landroid/app/AlertDialog;
    .end local v1           #resMsg:I
    :cond_1
    const v1, 0x1040187

    goto :goto_0
.end method

.method private unsafe(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 269
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;Z)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 282
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 154
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 132
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 133
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 136
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 140
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->telephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 150
    :cond_0
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 157
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick() - state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->setActivateStatus(I)V

    .line 172
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/AirplaneModeQuickSettingButton;->showConfirmPopup(Z)V

    .line 175
    return-void
.end method
