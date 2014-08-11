.class public Lcom/android/settings/sleepmode/SleepingModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SleepingModeReceiver.java"


# static fields
.field private static sIsInProc:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEndHour:I

.field private mEndMinute:I

.field private mFlightModeChanged:Z

.field private mIsEveryWeekRepeat:I

.field private mIsSleepingModeSet:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateListenerRegistered:Z

.field private mRepeatDays:I

.field private mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSharedPreference:Landroid/content/SharedPreferences;

.field private mStartHour:I

.field private mStartMinute:I

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTimeChanged:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 43
    const-string v0, "SleepingModeReceiver"

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->TAG:Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    .line 116
    new-instance v0, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver$1;-><init>(Lcom/android/settings/sleepmode/SleepingModeReceiver;)V

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->enterSleepingMode(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sleepmode/SleepingModeReceiver;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sleepmode/SleepingModeReceiver;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method private enterSleepingMode(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 222
    invoke-static {p1}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 224
    .local v1, isAirplaneModeOn:Z
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "previous_flight_mode"

    if-eqz v1, :cond_2

    move v2, v3

    :goto_0
    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 225
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 227
    iget-boolean v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "sleeping_mode_suspended"

    invoke-interface {v2, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    iput-boolean v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    .line 230
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v2, :cond_0

    .line 231
    iget-object v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v5, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 234
    :cond_0
    if-nez v1, :cond_1

    .line 236
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "airplane_mode_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 243
    sput-boolean v3, Lcom/android/settings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    .line 245
    const-string v2, "enterSleepingMode"

    const-string v3, "Airplane mode on"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 224
    goto :goto_0
.end method

.method private exitSleepingMode(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 255
    iget v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsEveryWeekRepeat:I

    if-nez v5, :cond_0

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 257
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v5, 0x7

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 259
    .local v4, today:I
    invoke-direct {p0, v4}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    if-nez v5, :cond_0

    .line 260
    rsub-int/lit8 v5, v4, 0x7

    mul-int/lit8 v5, v5, 0x4

    shl-int v2, v9, v5

    .line 261
    .local v2, mask:I
    iget v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    xor-int/lit8 v6, v2, -0x1

    and-int/2addr v5, v6

    iput v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    .line 262
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_repeat_days"

    iget v7, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 263
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    iget v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    if-nez v5, :cond_0

    .line 266
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "key_sleeping_mode_is_set"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "sleeping_mode_enabled"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 268
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 273
    .end local v0           #calendar:Ljava/util/Calendar;
    .end local v2           #mask:I
    .end local v4           #today:I
    :cond_0
    sput-boolean v9, Lcom/android/settings/sleepmode/SleepingModeReceiver;->sIsInProc:Z

    .line 275
    iget-boolean v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    if-nez v5, :cond_1

    .line 276
    iget-object v5, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v6, "previous_flight_mode"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 279
    .local v3, previousFlightMode:I
    if-nez v3, :cond_1

    .line 281
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "airplane_mode_on"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "state"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 286
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #previousFlightMode:I
    :cond_1
    return-void
.end method

.method private isActivateDay(I)Z
    .locals 3
    .parameter "today"

    .prologue
    const/4 v1, 0x1

    .line 294
    rsub-int/lit8 v2, p1, 0x7

    mul-int/lit8 v2, v2, 0x4

    shl-int v0, v1, v2

    .line 296
    .local v0, mask:I
    iget v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    .line 299
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnabledSleepingMode()Z
    .locals 3

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "sleeping_mode_enabled"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const v7, 0x7f090a9d

    const/4 v6, 0x1

    const v5, 0x7f090a9e

    .line 141
    const-string v3, "ext_key_set_by_user"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 144
    .local v1, isValueChangedByUser:Z
    iget-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-nez v3, :cond_2

    .line 145
    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 148
    :cond_0
    invoke-static {p1}, Lcom/android/settings/sleepmode/SleepingMode;->unregisterSleepingMode(Landroid/content/Context;)V

    .line 149
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sleepmode/SleepingMode;->cancelNotifySleepingMode(Landroid/content/Context;)V

    .line 208
    :cond_1
    :goto_0
    return-void

    .line 154
    :cond_2
    iget v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartHour:I

    iget v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndHour:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartMinute:I

    iget v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndMinute:I

    if-ne v3, v4, :cond_3

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sleepmode/SleepingMode;->unregisterSleepingMode(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/sleepmode/SleepingMode;->cancelNotifySleepingMode(Landroid/content/Context;)V

    goto :goto_0

    .line 162
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 163
    .local v0, calendar:Ljava/util/Calendar;
    const/4 v3, 0x7

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 165
    .local v2, today:I
    invoke-direct {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 167
    invoke-static {p1, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-nez v3, :cond_7

    .line 168
    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 170
    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v4, "sleeping_mode_suspended"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 171
    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 172
    iget-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    if-nez v3, :cond_1

    .line 173
    iget-object v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v4, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v5, 0x20

    invoke-virtual {v3, v4, v5}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 174
    iput-boolean v6, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mPhoneStateListenerRegistered:Z

    goto :goto_0

    .line 178
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->enterSleepingMode(Landroid/content/Context;)V

    .line 179
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 189
    :cond_5
    :goto_1
    invoke-static {p1, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 207
    :cond_6
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 182
    :cond_7
    invoke-static {p1, v0}, Lcom/android/settings/sleepmode/SleepingMode;->isInSettedTime(Landroid/content/Context;Ljava/util/Calendar;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 183
    if-eqz v1, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 184
    iput-boolean v6, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    .line 185
    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 186
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_1

    .line 194
    :cond_9
    invoke-direct {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-nez v3, :cond_a

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_2

    .line 198
    :cond_a
    invoke-direct {p0, v2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isActivateDay(I)Z

    move-result v3

    if-nez v3, :cond_b

    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 200
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_2

    .line 204
    :cond_b
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_2
.end method

.method private setNextTimeAction(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 211
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/sleepmode/SleepingMode;->registerSleepingMode(Landroid/content/Context;)V

    .line 212
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const v3, 0x7f090a9e

    const/4 v2, 0x1

    .line 71
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-object p1, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mContext:Landroid/content/Context;

    .line 77
    const-string v0, "key_sleeping_mode_pref"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 79
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->resetData(Landroid/content/Context;)V

    .line 83
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090a9d

    invoke-static {v0, v1}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 92
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    goto :goto_1

    .line 94
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SLEEPING_MODE_START_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.settings.SLEEPING_MODE_END_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 96
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 97
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->procSleepingModeAction(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 105
    :cond_7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    invoke-direct {p0}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->isEnabledSleepingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iput-boolean v2, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    .line 108
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->exitSleepingMode(Landroid/content/Context;)V

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/settings/sleepmode/SleepingMode;->notifySleepingMode(Landroid/content/Context;I)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/sleepmode/SleepingModeReceiver;->setNextTimeAction(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public resetData(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 307
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_sleeping_mode_is_set"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsSleepingModeSet:Z

    .line 309
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_days"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mRepeatDays:I

    .line 311
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_repeat_every_week"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mIsEveryWeekRepeat:I

    .line 313
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_start_hour"

    const/16 v2, 0x17

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartHour:I

    .line 314
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_start_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mStartMinute:I

    .line 316
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_end_hour"

    const/4 v2, 0x7

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndHour:I

    .line 317
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "key_end_minute"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mEndMinute:I

    .line 319
    iput-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mFlightModeChanged:Z

    .line 320
    iput-boolean v3, p0, Lcom/android/settings/sleepmode/SleepingModeReceiver;->mTimeChanged:Z

    .line 321
    return-void
.end method
