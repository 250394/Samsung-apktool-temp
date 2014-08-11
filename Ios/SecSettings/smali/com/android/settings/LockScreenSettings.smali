.class public Lcom/android/settings/LockScreenSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LockScreenSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private isWeatherEnabled:Z

.field private mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

.field private mClock:Landroid/preference/CheckBoxPreference;

.field private mDualclock:Landroid/preference/SwitchPreferenceScreen;

.field private mHelpText:Landroid/preference/CheckBoxPreference;

.field private mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

.field private mMotionDialog:Landroid/app/AlertDialog;

.field private mRippleEffect:Landroid/preference/CheckBoxPreference;

.field private mSayCommand:Landroid/preference/CheckBoxPreference;

.field private mWeather:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method private static AppServiceOff(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 523
    xor-int/lit8 p0, p0, 0x1

    .line 524
    return p0
.end method

.method private static AppServiceOn(I)I
    .locals 0
    .parameter "value"

    .prologue
    .line 518
    or-int/lit8 p0, p0, 0x1

    .line 519
    return p0
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/LockScreenSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 488
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 490
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 491
    return-void
.end method

.method private sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 552
    return-void
.end method

.method private supportRippleEffect()Z
    .locals 3

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.dual_lcd"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 531
    .local v0, supportDualLcd:Z
    if-eqz v0, :cond_0

    .line 532
    const/4 v1, 0x1

    .line 534
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateState()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 224
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "show_clock"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "aw_daemon_service_key_app_service_status"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    and-int/lit8 v1, v2, 0x1

    .line 229
    .local v1, mAppLockScreen:I
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_0

    .line 230
    if-ne v1, v3, :cond_7

    .line 231
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 236
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "dualclock_menu_settings"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_8

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_1

    .line 238
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "information_ticker"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    :goto_3
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 240
    :cond_1
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_2

    .line 241
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    move v2, v3

    :goto_4
    invoke-virtual {v5, v2}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 244
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "lockscreen_wallpaper"

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_b

    move v0, v4

    .line 245
    .local v0, isLiveWallpaper:Z
    :goto_5
    if-eqz v0, :cond_c

    .line 246
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 249
    :goto_6
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "lockscreen_ripple_effect"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_d

    move v2, v3

    :goto_7
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 251
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_3

    .line 252
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "unlock_text"

    invoke-static {v2, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_e

    move v2, v3

    :goto_8
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 254
    :cond_3
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_4

    .line 255
    iget-object v5, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v6, "wake_up_lock_screen"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_f

    move v2, v3

    :goto_9
    invoke-virtual {v5, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 258
    :cond_4
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v2, :cond_5

    .line 259
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_screen_shortcut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_10

    :goto_a
    invoke-virtual {v2, v3}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 262
    :cond_5
    return-void

    .end local v0           #isLiveWallpaper:Z
    .end local v1           #mAppLockScreen:I
    :cond_6
    move v2, v4

    .line 224
    goto/16 :goto_0

    .line 233
    .restart local v1       #mAppLockScreen:I
    :cond_7
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v2, v4}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    goto/16 :goto_1

    :cond_8
    move v2, v4

    .line 236
    goto/16 :goto_2

    :cond_9
    move v2, v4

    .line 238
    goto/16 :goto_3

    :cond_a
    move v2, v4

    .line 241
    goto :goto_4

    :cond_b
    move v0, v3

    .line 244
    goto :goto_5

    .line 248
    .restart local v0       #isLiveWallpaper:Z
    :cond_c
    iget-object v2, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_6

    :cond_d
    move v2, v4

    .line 249
    goto :goto_7

    :cond_e
    move v2, v4

    .line 252
    goto :goto_8

    :cond_f
    move v2, v4

    .line 255
    goto :goto_9

    :cond_10
    move v3, v4

    .line 259
    goto :goto_a
.end method


# virtual methods
.method public checkNetwork()Z
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 496
    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 497
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 498
    .local v3, ni:Landroid/net/NetworkInfo;
    if-nez v3, :cond_1

    .line 499
    const-string v5, "LockScreenSettings"

    const-string v6, "checkNetwork() : NetworkInfo is null. return false"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    :cond_0
    :goto_0
    return v4

    .line 502
    :cond_1
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 503
    .local v2, isWifiAvail:Z
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 505
    if-nez v3, :cond_2

    .line 506
    const-string v4, "LockScreenSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkNetwork() : ConnectivityManager.TYPE_MOBILE return : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v2

    .line 507
    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    .line 512
    .local v1, isMobileAvail:Z
    const-string v6, "LockScreenSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isWifiAvail : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-nez v2, :cond_3

    if-eqz v1, :cond_0

    :cond_3
    move v4, v5

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 125
    .local v3, resolver:Landroid/content/ContentResolver;
    new-instance v6, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v6, v9}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 127
    const v6, 0x7f070039

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->addPreferencesFromResource(I)V

    .line 130
    const-string v6, "lock_screen_shortcut"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    .line 131
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 132
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    const-string v6, "lock_screen_shortcut"

    invoke-static {v3, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v7, :cond_9

    move v6, v7

    :goto_0
    invoke-virtual {v9, v6}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 133
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_0

    .line 136
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mLockScreenShortcut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_0
    const-string v6, "clock"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    .line 144
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v8}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 146
    const-string v6, "weather"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    .line 147
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110047

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    .line 149
    iget-boolean v6, p0, Lcom/android/settings/LockScreenSettings;->isWeatherEnabled:Z

    if-nez v6, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :cond_1
    const-string v6, "dualclock_settings"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    .line 155
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    const-string v6, "information_ticker"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    .line 158
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 161
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x1110045

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_2
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v6

    if-nez v6, :cond_a

    .line 167
    :goto_1
    const-string v6, "camera_short_cut"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/SwitchPreferenceScreen;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    .line 168
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v6, :cond_3

    .line 169
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 182
    :goto_2
    const-string v6, "ripple_effect"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    .line 183
    const-string v6, "ja"

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget-object v9, v9, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v9}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v0, "\n"

    .line 184
    .local v0, dot:Ljava/lang/String;
    :goto_3
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090b90

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090bc8

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 186
    const-string v6, "help_text"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    .line 187
    const-string v6, "say_your_wakeup"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    .line 189
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090bb7

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/16 v9, 0x140

    if-eq v6, v9, :cond_4

    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->supportRippleEffect()Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->usingSignatureUnlock()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 196
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    :cond_6
    const-string v6, "set_wakeup_command"

    invoke-virtual {p0, v6}, Lcom/android/settings/LockScreenSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 201
    .local v4, setWakeupCommand:Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 202
    .local v5, set_wakeup_commant_intent:Landroid/content/Intent;
    if-eqz v5, :cond_8

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 204
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v5, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 205
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v6, v7, :cond_8

    .line 206
    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_7

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 208
    :cond_7
    if-eqz v4, :cond_8

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_8
    return-void

    .end local v0           #dot:Ljava/lang/String;
    .end local v4           #setWakeupCommand:Landroid/preference/PreferenceScreen;
    .end local v5           #set_wakeup_commant_intent:Landroid/content/Intent;
    :cond_9
    move v6, v8

    .line 132
    goto/16 :goto_0

    .line 163
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mInformationTicker:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 178
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mDualclock:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    const-string v6, "LockScreenSettings"

    const-string v9, " remove Dualclock menu"

    invoke-static {v6, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 183
    :cond_c
    const-string v0, ". "

    goto/16 :goto_3
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 12
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 297
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, key:Ljava/lang/String;
    const-string v9, "dualclock_settings"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 299
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    move v6, v7

    .line 300
    .local v6, value:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "dualclock_menu_settings"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 448
    .end local v6           #value:I
    :cond_0
    :goto_1
    return v7

    :cond_1
    move v6, v8

    .line 299
    goto :goto_0

    .line 301
    .restart local p2
    :cond_2
    const-string v9, "information_ticker"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    move-object v6, p2

    .line 302
    check-cast v6, Ljava/lang/Boolean;

    .line 308
    .local v6, value:Ljava/lang/Boolean;
    const-string v9, "CHN"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "CHM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "CHU"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 312
    :cond_3
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 317
    .local v5, mAppServiceStatus:I
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 319
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 324
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 326
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.sinanews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 327
    .local v2, intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 329
    .local v3, intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 387
    :goto_4
    invoke-direct {p0, v6}, Lcom/android/settings/LockScreenSettings;->sendInfoTickerNotiToFacebook(Ljava/lang/Boolean;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "information_ticker"

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_4

    move v8, v7

    :cond_4
    invoke-static {v9, v10, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 390
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 315
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "sn_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_2

    .line 322
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_3

    .line 330
    .end local v5           #mAppServiceStatus:I
    :cond_7
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 331
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 336
    .restart local v5       #mAppServiceStatus:I
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 338
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 343
    :goto_6
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 345
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 346
    .restart local v2       #intent_nw:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v9, "com.sec.android.daemonapp.ap.yonhapnews"

    const-string v10, "com.sec.android.daemonapp.ap.yonhapnews.DaemonReceiver"

    invoke-direct {v0, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v0, component:Landroid/content/ComponentName;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 351
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 352
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 334
    .end local v0           #component:Landroid/content/ComponentName;
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yonhap_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_5

    .line 341
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_6

    .line 367
    .end local v5           #mAppServiceStatus:I
    :cond_a
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 372
    .restart local v5       #mAppServiceStatus:I
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 379
    :goto_8
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 381
    new-instance v2, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.ap.yahoonews.intent.action.SERVICE_ON_OFF"

    invoke-direct {v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 382
    .restart local v2       #intent_nw:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.sec.android.daemonapp.stockclock.action.CURRENT_STOCK_DATA"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 384
    .restart local v3       #intent_st:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_4

    .line 370
    .end local v2           #intent_nw:Landroid/content/Intent;
    .end local v3           #intent_st:Landroid/content/Intent;
    .end local v5           #mAppServiceStatus:I
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "yh_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_7

    .line 377
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "stockclock_daemon_service_key_app_service_status"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    goto :goto_8

    .line 392
    .end local v5           #mAppServiceStatus:I
    .end local v6           #value:Ljava/lang/Boolean;
    :cond_d
    const-string v9, "weather"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    move-object v6, p2

    .line 393
    check-cast v6, Ljava/lang/Boolean;

    .line 394
    .restart local v6       #value:Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->checkNetwork()Z

    move-result v9

    if-nez v9, :cond_e

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f090833

    invoke-static {v9, v10, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 397
    :cond_e
    const-string v9, "CHN"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "CHM"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "CHU"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    const-string v9, "CTC"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 401
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "network"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 402
    iget-object v9, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v9, v8}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "network"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string v8, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, gpsOptionIntent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 411
    .end local v1           #gpsOptionIntent:Landroid/content/Intent;
    :cond_f
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_11

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/LockScreenSettings;->AppServiceOn(I)I

    move-result v5

    .line 416
    .restart local v5       #mAppServiceStatus:I
    :goto_9
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 418
    const-string v8, "CHN"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "CHM"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "CHU"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_10

    const-string v8, "CTC"

    const-string v9, "ro.csc.sales_code"

    invoke-static {v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    .line 422
    :cond_10
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.sinaweatherdaemon.action.SYNC_DATA_WITH_DAEMON"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 434
    :goto_a
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    goto/16 :goto_1

    .line 414
    .end local v5           #mAppServiceStatus:I
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "aw_daemon_service_key_app_service_status"

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/LockScreenSettings;->AppServiceOff(I)I

    move-result v5

    .restart local v5       #mAppServiceStatus:I
    goto :goto_9

    .line 423
    :cond_12
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.kweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 432
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.sec.android.widgetapp.ap.accuweatherdaemon.action.CURRENT_LOCATION_WEATHER_DATA"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_a

    .line 437
    .end local v5           #mAppServiceStatus:I
    .end local v6           #value:Ljava/lang/Boolean;
    :cond_14
    const-string v9, "lock_screen_shortcut"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    .line 438
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_15

    move v6, v7

    .line 439
    .local v6, value:I
    :goto_b
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_shortcut"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .end local v6           #value:I
    :cond_15
    move v6, v8

    .line 438
    goto :goto_b

    .line 443
    .restart local p2
    :cond_16
    iget-object v8, p0, Lcom/android/settings/LockScreenSettings;->mCameraShortCut:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v8, :cond_0

    .line 444
    const-string v8, "LockScreenSettings"

    const-string v9, "onPreferenceChange, mCameraShortCut"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/settings/LockScreenSettings;->setCameraShortCut(Z)V

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 266
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "show_clock"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mClock:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_1

    :goto_0
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 293
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v2

    return v2

    :cond_1
    move v2, v3

    .line 267
    goto :goto_0

    .line 269
    :cond_2
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mWeather:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 271
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 272
    const-string v3, "SETTING_MODE"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.sinaweather"

    const-string v3, "com.sec.android.daemonapp.ap.sinaweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .local v0, cn:Landroid/content/ComponentName;
    :goto_2
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 284
    const/high16 v2, 0x2400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 285
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 276
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.kweather"

    const-string v3, "com.sec.android.daemonapp.ap.kweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 281
    .end local v0           #cn:Landroid/content/ComponentName;
    :cond_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.daemonapp.ap.accuweather"

    const-string v3, "com.sec.android.daemonapp.ap.accuweather.MenuSettings"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v0       #cn:Landroid/content/ComponentName;
    goto :goto_2

    .line 286
    .end local v0           #cn:Landroid/content/ComponentName;
    .end local v1           #intent:Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lockscreen_ripple_effect"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mRippleEffect:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_6

    :goto_3
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_3

    .line 288
    :cond_7
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "unlock_text"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mHelpText:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_8

    :goto_4
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_8
    move v2, v3

    goto :goto_4

    .line 290
    :cond_9
    iget-object v4, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wake_up_lock_screen"

    iget-object v6, p0, Lcom/android/settings/LockScreenSettings;->mSayCommand:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_5
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    :cond_a
    move v2, v3

    goto :goto_5
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 219
    invoke-direct {p0}, Lcom/android/settings/LockScreenSettings;->updateState()V

    .line 220
    return-void
.end method

.method public setCameraShortCut(Z)V
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 453
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 454
    .local v0, int_value:I
    :goto_0
    if-eqz p1, :cond_3

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_engine"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 485
    :goto_1
    return-void

    .end local v0           #int_value:I
    :cond_0
    move v0, v1

    .line 453
    goto :goto_0

    .line 458
    .restart local v0       #int_value:I
    :cond_1
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 459
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 460
    iput-object v4, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 463
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09094b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0908f8

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09055d

    new-instance v3, Lcom/android/settings/LockScreenSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/LockScreenSettings$1;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f09011a

    invoke-virtual {v1, v2, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    .line 476
    iget-object v1, p0, Lcom/android/settings/LockScreenSettings;->mMotionDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/settings/LockScreenSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/LockScreenSettings$2;-><init>(Lcom/android/settings/LockScreenSettings;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_1

    .line 483
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/LockScreenSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_unlock_camera_short_cut"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method
