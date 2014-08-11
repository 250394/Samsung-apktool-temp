.class public Lcom/android/settings/wifi/AdvancedWifiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;
    }
.end annotation


# static fields
.field private static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field private allowWifi:Z

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEapMethod:Ljava/lang/String;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

.field private mIwlan:Ljava/lang/String;

.field private mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

.field private mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

.field private mPreferenceKeys:[Ljava/lang/String;

.field private mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

.field private mPrioritymode:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelected:Lcom/android/settings/wifi/AccessPoint;

.field private mSettingNames:[Ljava/lang/String;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private mUiHandler:Landroid/os/Handler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

.field mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 94
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 122
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuIWLAN4"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    .line 123
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EapMethodSetting"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    .line 124
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_EnableMenuConnPriorityMode"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    .line 152
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wifi_static_wagip"

    aput-object v1, v0, v3

    const-string v1, "wifi_static_wagport"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSettingNames:[Ljava/lang/String;

    .line 156
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "wagip"

    aput-object v1, v0, v3

    const-string v1, "wagport"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    .line 163
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mUiHandler:Landroid/os/Handler;

    .line 166
    iput-boolean v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 707
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/AdvancedWifiSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    return-void
.end method

.method private getAuthenticationInformation()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1085
    const-string v0, "/data/misc/wifi/message.txt"

    .line 1087
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1089
    const-string v0, ""

    .line 1111
    :goto_0
    return-object v0

    .line 1093
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1096
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1099
    :goto_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1100
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInformation, message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1105
    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1107
    :catch_0
    move-exception v0

    .line 1108
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 1105
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1111
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 38

    .prologue
    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v34

    .line 258
    .local v34, wifiEnabled:Z
    const-string v35, "connect_seamlessly"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    .line 260
    .local v8, connectSeamlessly:Landroid/preference/CheckBoxPreference;
    const-string v35, "notify_open_networks"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/CheckBoxPreference;

    .line 263
    .local v19, notifyOpenNetworks:Landroid/preference/CheckBoxPreference;
    const-string v35, "wifi_hotspot20_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 265
    .local v12, hotspot20Enable:Landroid/preference/CheckBoxPreference;
    const-string v35, "wifi_hotspot20_roam_enable"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Landroid/preference/CheckBoxPreference;

    .line 268
    .local v13, hotspot20RoamEnable:Landroid/preference/CheckBoxPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_hotspot20_test_mode_enable"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_0

    .line 283
    :cond_0
    if-eqz v12, :cond_1

    .line 284
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 285
    :cond_1
    if-eqz v13, :cond_2

    .line 286
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 301
    :cond_2
    if-eqz v8, :cond_3

    .line 302
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 303
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_networks_available_notification_on"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_18

    const/16 v35, 0x1

    :goto_0
    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    move-object/from16 v0, v19

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 308
    const-string v35, "wifi_enable_watchdog_service"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v32

    check-cast v32, Landroid/preference/CheckBoxPreference;

    .line 313
    .local v32, watchdogEnabled:Landroid/preference/CheckBoxPreference;
    const v35, 0x7f0902f2

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 314
    const v35, 0x7f0902f3

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_watchdog_poor_network_test_enabled"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_19

    const/16 v35, 0x1

    :goto_1
    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 324
    const-string v35, "att_auto_connect"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    .line 331
    .local v3, attAutoConnection:Landroid/preference/CheckBoxPreference;
    if-eqz v3, :cond_4

    .line 332
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 336
    :cond_4
    const-string v35, "wifi_cmcc_manual"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 338
    .local v4, cmccConnectType:Landroid/preference/ListPreference;
    move/from16 v0, v34

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 339
    if-eqz v4, :cond_5

    .line 340
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_cmcc_manual"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 342
    .local v28, value:I
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    .line 343
    .local v25, stringValue:Ljava/lang/String;
    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 344
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v4, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 352
    .end local v25           #stringValue:Ljava/lang/String;
    .end local v28           #value:I
    :cond_5
    const-string v35, "frequency_band"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    check-cast v11, Landroid/preference/ListPreference;

    .line 353
    .local v11, frequencyPref:Landroid/preference/ListPreference;
    if-eqz v11, :cond_6

    .line 354
    const v35, 0x7f0400c7

    move/from16 v0, v35

    invoke-virtual {v11, v0}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :cond_6
    const-string v35, "sleep_policy"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Landroid/preference/ListPreference;

    .line 371
    .local v24, sleepPolicyPref:Landroid/preference/ListPreference;
    if-eqz v24, :cond_8

    .line 372
    const v35, 0x7f0400c7

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 374
    const v35, 0x7f0a0027

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 376
    :cond_7
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_sleep_policy"

    const/16 v37, 0x2

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 380
    .restart local v28       #value:I
    invoke-static/range {v28 .. v28}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v25

    .line 381
    .restart local v25       #stringValue:Ljava/lang/String;
    invoke-virtual/range {v24 .. v25}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 382
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 386
    .end local v25           #stringValue:Ljava/lang/String;
    .end local v28           #value:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "SKT"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_b

    .line 387
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 389
    .local v20, parentPreference:Landroid/preference/PreferenceGroup;
    const-string v35, "iwlan_enabled_category"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 390
    .local v23, removablePref:Landroid/preference/Preference;
    if-eqz v23, :cond_9

    .line 391
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :cond_9
    const-string v35, "iwlan_networks"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 393
    if-eqz v23, :cond_a

    .line 394
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 396
    :cond_a
    const-string v35, "add_other_iwlan"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 397
    if-eqz v23, :cond_b

    .line 398
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 403
    .end local v20           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v23           #removablePref:Landroid/preference/Preference;
    :cond_b
    const-string v35, "wifi_connection_priority_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    .line 404
    .local v6, connMonitoringPref:Landroid/preference/CheckBoxPreference;
    const-string v35, "wifi_connection_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    .line 406
    .local v7, connSettingsPref:Landroid/preference/PreferenceScreen;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPrioritymode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_1b

    .line 407
    if-eqz v6, :cond_c

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_connection_monitoring_enable"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v35

    const/16 v36, 0x1

    move/from16 v0, v35

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    const/16 v35, 0x1

    :goto_2
    move/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 422
    :cond_c
    :goto_3
    const-string v35, "mwlan_permission_allowed_2"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v18

    check-cast v18, Landroid/preference/CheckBoxPreference;

    .line 424
    .local v18, mWlanEnabled:Landroid/preference/CheckBoxPreference;
    if-eqz v18, :cond_d

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string v36, "LGU"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 427
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    const-string v36, "com.lguplus.common.wificm.mwlan"

    const/16 v37, 0x0

    invoke-virtual/range {v35 .. v37}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v17

    .line 428
    .local v17, mWlan:Landroid/content/Context;
    const-string v35, "mwlan"

    const/16 v36, 0x4

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v22

    .line 429
    .local v22, pref_mWlan_4:Landroid/content/SharedPreferences;
    const-string v35, "mwlan"

    const/16 v36, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 430
    .local v21, pref_mWlan:Landroid/content/SharedPreferences;
    const-string v35, "permission_allowed_2"

    const/16 v36, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 431
    .local v15, isAllowed_4:Z
    const-string v35, "permission_allowed_2"

    const/16 v36, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 432
    .local v14, isAllowed:Z
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v35

    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 436
    .local v9, e:Landroid/content/SharedPreferences$Editor;
    const-string v35, "mwlan_permission_allowed_2"

    move-object/from16 v0, v35

    invoke-interface {v9, v0, v14}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 438
    const-string v35, "KEY_LGT_MWLAN_PERMISSION"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    .end local v9           #e:Landroid/content/SharedPreferences$Editor;
    .end local v14           #isAllowed:Z
    .end local v15           #isAllowed_4:Z
    .end local v17           #mWlan:Landroid/content/Context;
    .end local v21           #pref_mWlan:Landroid/content/SharedPreferences;
    .end local v22           #pref_mWlan_4:Landroid/content/SharedPreferences;
    :cond_d
    :goto_4
    const-string v35, "wifi_exception_proxy"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    .line 456
    .local v10, exceptionProxyPref:Landroid/preference/PreferenceScreen;
    if-eqz v10, :cond_e

    .line 457
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 461
    :cond_e
    const-string v35, "wifi_cmcc_priority"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 467
    .local v5, cmccPriorityPref:Landroid/preference/PreferenceScreen;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    const-string v36, "wifi_cmcc_manual"

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v28

    .line 468
    .restart local v28       #value:I
    if-eqz v28, :cond_f

    .line 469
    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 473
    :cond_f
    const-string v35, "wifi_timer"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v35

    check-cast v35, Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v35, v0

    if-eqz v35, :cond_10

    .line 507
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    move-object/from16 v36, v0

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 511
    :cond_10
    const-string v35, "use_wifi_power_save"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v33

    check-cast v33, Landroid/preference/PreferenceScreen;

    .line 519
    .local v33, wifiAutoConn:Landroid/preference/PreferenceScreen;
    if-eqz v33, :cond_11

    .line 520
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 524
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    const-string v36, "wag_ip_settings"

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v30

    .line 525
    .local v30, wagIpSettings:Landroid/preference/Preference;
    if-eqz v30, :cond_12

    .line 526
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 528
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    const-string v36, "use_wag_ip"

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v27

    .line 529
    .local v27, useWagIp:Landroid/preference/Preference;
    if-eqz v27, :cond_13

    .line 530
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 532
    :cond_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    const-string v36, "wagfqdn"

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    .line 533
    .local v26, useWagFqdn:Landroid/preference/Preference;
    if-eqz v26, :cond_14

    .line 534
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 536
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x0

    aget-object v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v29

    .line 537
    .local v29, wagIp:Landroid/preference/Preference;
    if-eqz v29, :cond_15

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 540
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPreferenceKeys:[Ljava/lang/String;

    move-object/from16 v36, v0

    const/16 v37, 0x1

    aget-object v36, v36, v37

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v31

    .line 541
    .local v31, wagPort:Landroid/preference/Preference;
    if-eqz v31, :cond_16

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 547
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    const-string v36, "use_wifi_power_save"

    invoke-virtual/range {v35 .. v36}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    .line 548
    .local v16, locationPref:Landroid/preference/Preference;
    if-eqz v16, :cond_17

    .line 549
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 552
    :cond_17
    return-void

    .line 303
    .end local v3           #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .end local v4           #cmccConnectType:Landroid/preference/ListPreference;
    .end local v5           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v6           #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .end local v7           #connSettingsPref:Landroid/preference/PreferenceScreen;
    .end local v10           #exceptionProxyPref:Landroid/preference/PreferenceScreen;
    .end local v11           #frequencyPref:Landroid/preference/ListPreference;
    .end local v16           #locationPref:Landroid/preference/Preference;
    .end local v18           #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    .end local v24           #sleepPolicyPref:Landroid/preference/ListPreference;
    .end local v26           #useWagFqdn:Landroid/preference/Preference;
    .end local v27           #useWagIp:Landroid/preference/Preference;
    .end local v28           #value:I
    .end local v29           #wagIp:Landroid/preference/Preference;
    .end local v30           #wagIpSettings:Landroid/preference/Preference;
    .end local v31           #wagPort:Landroid/preference/Preference;
    .end local v32           #watchdogEnabled:Landroid/preference/CheckBoxPreference;
    .end local v33           #wifiAutoConn:Landroid/preference/PreferenceScreen;
    :cond_18
    const/16 v35, 0x0

    goto/16 :goto_0

    .line 316
    .restart local v32       #watchdogEnabled:Landroid/preference/CheckBoxPreference;
    :cond_19
    const/16 v35, 0x0

    goto/16 :goto_1

    .line 408
    .restart local v3       #attAutoConnection:Landroid/preference/CheckBoxPreference;
    .restart local v4       #cmccConnectType:Landroid/preference/ListPreference;
    .restart local v6       #connMonitoringPref:Landroid/preference/CheckBoxPreference;
    .restart local v7       #connSettingsPref:Landroid/preference/PreferenceScreen;
    .restart local v11       #frequencyPref:Landroid/preference/ListPreference;
    .restart local v24       #sleepPolicyPref:Landroid/preference/ListPreference;
    :cond_1a
    const/16 v35, 0x0

    goto/16 :goto_2

    .line 412
    :cond_1b
    if-eqz v6, :cond_1c

    .line 413
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 416
    :cond_1c
    if-eqz v7, :cond_c

    .line 417
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 441
    .restart local v18       #mWlanEnabled:Landroid/preference/CheckBoxPreference;
    :cond_1d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v20

    .line 443
    .restart local v20       #parentPreference:Landroid/preference/PreferenceGroup;
    const-string v35, "mwlan_enabled_category"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    .line 444
    .restart local v23       #removablePref:Landroid/preference/Preference;
    if-eqz v23, :cond_1e

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 448
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 439
    .end local v20           #parentPreference:Landroid/preference/PreferenceGroup;
    .end local v23           #removablePref:Landroid/preference/Preference;
    :catch_0
    move-exception v35

    goto/16 :goto_4
.end method

.method private refreshWifiInfo()V
    .locals 4

    .prologue
    const v3, 0x7f090455

    .line 954
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 956
    const-string v1, "mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 957
    if-nez v0, :cond_2

    invoke-static {}, Landroid/net/wifi/WifiInfo;->getMacAddressFromFile()Ljava/lang/String;

    move-result-object v0

    .line 958
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 961
    const-string v0, "current_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 962
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 963
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 966
    const-string v0, "wifi_authentication_information"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 968
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "AKA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mEapMethod:Ljava/lang/String;

    const-string v1, "KTT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 969
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getAuthenticationInformation()Ljava/lang/String;

    move-result-object v1

    .line 970
    if-nez v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 973
    if-eqz v1, :cond_5

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 974
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 983
    :cond_1
    :goto_3
    return-void

    .line 957
    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 958
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 970
    goto :goto_2

    .line 976
    :cond_5
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_3

    .line 979
    :cond_6
    if-eqz v2, :cond_1

    .line 980
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_3
.end method

.method private showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V
    .locals 1
    .parameter "context"
    .parameter "iwlanNetwork"
    .parameter "edit"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->dismiss()V

    .line 1070
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/IwlanDialog;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/settings/wifi/IwlanDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    .line 1071
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanDialog:Lcom/android/settings/wifi/IwlanDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanDialog;->show()V

    .line 1072
    return-void
.end method

.method private showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    if-eqz v0, :cond_0

    .line 1076
    const-string v0, "AdvancedWifiSettings"

    const-string v1, "showPriorityDialog mPriorityDialog null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->dismiss()V

    .line 1079
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/PrioritySettingDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/settings/wifi/PrioritySettingDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/AccessPoint;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mPriorityDialog:Lcom/android/settings/wifi/PrioritySettingDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/PrioritySettingDialog;->show()V

    .line 1081
    return-void
.end method

.method private updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 7
    .parameter "sleepPolicyPref"
    .parameter "value"

    .prologue
    .line 555
    if-eqz p2, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 557
    .local v3, values:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    const v2, 0x7f0a0027

    .line 559
    .local v2, summaryArrayResId:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 560
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    .line 561
    aget-object v4, v3, v0

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 562
    array-length v4, v1

    if-ge v0, v4, :cond_1

    .line 563
    aget-object v4, v1, v0

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 572
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :goto_2
    return-void

    .line 557
    .restart local v3       #values:[Ljava/lang/String;
    :cond_0
    const v2, 0x7f0a0026

    goto :goto_0

    .line 560
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #summaryArrayResId:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 570
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #summaryArrayResId:I
    .end local v3           #values:[Ljava/lang/String;
    :cond_2
    const-string v4, ""

    invoke-virtual {p1, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 571
    const-string v4, "AdvancedWifiSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid sleep policy value: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 6
    .parameter "cmccConnectType"
    .parameter "value"

    .prologue
    .line 575
    if-eqz p2, :cond_1

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0073

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 577
    .local v2, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0072

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 578
    .local v1, summaries:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 579
    aget-object v3, v2, v0

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 580
    array-length v3, v1

    if-ge v0, v3, :cond_0

    .line 581
    aget-object v3, v1, v0

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 590
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :goto_1
    return-void

    .line 578
    .restart local v0       #i:I
    .restart local v1       #summaries:[Ljava/lang/String;
    .restart local v2       #values:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    .end local v0           #i:I
    .end local v1           #summaries:[Ljava/lang/String;
    .end local v2           #values:[Ljava/lang/String;
    :cond_1
    const-string v3, ""

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    const-string v3, "AdvancedWifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid cmcc connect type value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    .line 224
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0b038f

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/WifiSettings;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiSettings:Lcom/android/settings/wifi/WifiSettings;

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v1, "wifitimer_pref"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    .line 230
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 232
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    .line 233
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 176
    const v0, 0x7f070077

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->addPreferencesFromResource(I)V

    .line 177
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    .line 178
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.SEC_PICK_WIFI_NETWORK_WITH_DIALOG"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 205
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/AdvancedWifiSettings$1;-><init>(Lcom/android/settings/wifi/AdvancedWifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 218
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 596
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 597
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 252
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 18
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    .line 725
    .local v8, key:Ljava/lang/String;
    const-string v14, "frequency_band"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 727
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const/16 v16, 0x1

    invoke-virtual/range {v14 .. v16}, Landroid/net/wifi/WifiManager;->setFrequencyBand(IZ)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    .end local p1
    :cond_0
    :goto_0
    const/4 v14, 0x1

    :goto_1
    return v14

    .line 728
    .restart local p1
    :catch_0
    move-exception v5

    .line 729
    .local v5, e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v15, 0x7f09030a

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 731
    const/4 v14, 0x0

    goto :goto_1

    .line 733
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_1
    const-string v14, "sleep_policy"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 735
    :try_start_1
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 736
    .local v10, stringValue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_sleep_policy"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updateSleepPolicySummary(Landroid/preference/Preference;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 739
    .end local v10           #stringValue:Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 740
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v15, 0x7f090215

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 742
    const/4 v14, 0x0

    goto :goto_1

    .line 744
    .end local v5           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v14, "wifi_timer"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 745
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 746
    .local v7, enabled:Z
    const-string v14, "AdvancedWifiSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onPreferenceChange WIFI_TIMER:    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    check-cast p1, Lcom/android/settings/SettingsSwitchPreference;

    .end local p1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    .line 749
    if-eqz v7, :cond_4

    .line 751
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v14

    move-object/from16 v0, p0

    iput-boolean v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    .line 752
    const-string v14, "AdvancedWifiSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "WifiTimer allowWifi:    "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->allowWifi:Z

    if-nez v14, :cond_5

    .line 755
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Lcom/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 756
    new-instance v13, Landroid/content/Intent;

    const-string v14, "android.net.wifi.SHOW_INFO_MESSAGE"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 757
    .local v13, wifiToastIntent:Landroid/content/Intent;
    const-string v14, "info_type"

    const/4 v15, 0x2

    invoke-virtual {v13, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 758
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v13}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    if-eqz v14, :cond_3

    .line 760
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mHandler:Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Lcom/android/settings/wifi/AdvancedWifiSettings$SwitchHandler;->sendEmptyMessage(I)Z

    .line 762
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Lcom/android/settings/SettingsSwitchPreference;->setEnabled(Z)V

    .line 774
    .end local v13           #wifiToastIntent:Landroid/content/Intent;
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 775
    .local v6, ed:Landroid/content/SharedPreferences$Editor;
    const-string v14, "wifitimer_enabled"

    invoke-interface {v6, v14, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 776
    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 777
    new-instance v2, Landroid/content/Intent;

    const-string v14, "com.android.settings.wifi.wifitimer_alarm"

    invoke-direct {v2, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 778
    .local v2, alarm_intent:Landroid/content/Intent;
    const-string v14, "com.android.settings.wifi.wifisheduler_action_type"

    const/16 v15, 0x1389

    invoke-virtual {v2, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 764
    .end local v2           #alarm_intent:Landroid/content/Intent;
    .end local v6           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v15, "wifitimer_start_time_checked"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v16, "wifitimer_start_time"

    const-string v17, "19:00"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 766
    .local v12, wifiTimerStartTime:Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v15, "wifitimer_end_time_checked"

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSharedPref:Landroid/content/SharedPreferences;

    const-string v16, "wifitimer_end_time"

    const-string v17, "21:00"

    invoke-interface/range {v15 .. v17}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/android/settings/wifi/WifiTimer;->getTimeAmPmFormat(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 768
    .local v11, wifiTimerEndTime:Ljava/lang/String;
    :goto_4
    const-string v14, ""

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v14, ""

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 769
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    const v15, 0x7f090b2a

    invoke-virtual {v14, v15}, Lcom/android/settings/SettingsSwitchPreference;->setSummaryOn(I)V

    goto/16 :goto_2

    .line 764
    .end local v11           #wifiTimerEndTime:Ljava/lang/String;
    .end local v12           #wifiTimerStartTime:Ljava/lang/String;
    :cond_6
    const-string v12, ""

    goto :goto_3

    .line 766
    .restart local v12       #wifiTimerStartTime:Ljava/lang/String;
    :cond_7
    const-string v11, ""

    goto :goto_4

    .line 771
    .restart local v11       #wifiTimerEndTime:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiTimerPreference:Lcom/android/settings/SettingsSwitchPreference;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "~"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/settings/SettingsSwitchPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 782
    .end local v7           #enabled:Z
    .end local v11           #wifiTimerEndTime:Ljava/lang/String;
    .end local v12           #wifiTimerStartTime:Ljava/lang/String;
    .restart local p1
    .restart local p2
    :cond_9
    const-string v14, "wifi_cmcc_manual"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 784
    :try_start_2
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 785
    .restart local v10       #stringValue:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_cmcc_manual"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 787
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/android/settings/wifi/AdvancedWifiSettings;->updatecmccConnectTypeSummary(Landroid/preference/Preference;Ljava/lang/String;)V

    .line 789
    new-instance v9, Landroid/os/Message;

    invoke-direct {v9}, Landroid/os/Message;-><init>()V

    .line 790
    .local v9, msg:Landroid/os/Message;
    const/16 v14, 0xf

    iput v14, v9, Landroid/os/Message;->what:I

    .line 792
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 793
    .local v3, args:Landroid/os/Bundle;
    const-string v15, "enable"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x1

    :goto_5
    invoke-virtual {v3, v15, v14}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 794
    iput-object v3, v9, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 795
    const-string v14, "AdvancedWifiSettings"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "sbmin KEY_CMCC_MANUAL_CONNECTION onPreferenceChange connectionType :  "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v14, "wifi_cmcc_priority"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 798
    .local v4, cmccPriorityPref:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_a

    .line 799
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_c

    .line 800
    const/4 v14, 0x1

    invoke-virtual {v4, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 804
    :cond_a
    :goto_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14, v9}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v14

    if-nez v14, :cond_0

    .line 805
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "wifi_cmcc_manual"

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 807
    .end local v3           #args:Landroid/os/Bundle;
    .end local v4           #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    .end local v9           #msg:Landroid/os/Message;
    .end local v10           #stringValue:Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 808
    .restart local v5       #e:Ljava/lang/NumberFormatException;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const v15, 0x7f09020b

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 810
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 793
    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #args:Landroid/os/Bundle;
    .restart local v9       #msg:Landroid/os/Message;
    .restart local v10       #stringValue:Ljava/lang/String;
    :cond_b
    const/4 v14, 0x0

    goto :goto_5

    .line 802
    .restart local v4       #cmccPriorityPref:Landroid/preference/PreferenceScreen;
    :cond_c
    const/4 v14, 0x0

    :try_start_3
    invoke-virtual {v4, v14}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 601
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 603
    const-string v1, "notify_open_networks"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_notification_on"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    move v6, v7

    :cond_0
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 704
    :cond_1
    :goto_0
    return v7

    .line 607
    :cond_2
    const-string v1, "wifi_hotspot20_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 608
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    move-object v0, p2

    .line 609
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    .line 610
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_hotspot20_enable"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v7

    :goto_1
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 611
    const-string v0, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_HOTSPOT20_ENABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    const-string v0, "wifi_hotspot20_roam_enable"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 616
    if-eqz v2, :cond_4

    .line 617
    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 621
    :goto_2
    const/16 v0, 0x1a

    iput v0, v1, Landroid/os/Message;->what:I

    .line 623
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 624
    const-string v3, "enable"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 625
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 626
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    if-nez v0, :cond_1

    .line 627
    const-string v0, "AdvancedWifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_HOTSPOT20_ENABLE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v0, v6

    .line 610
    goto :goto_1

    .line 619
    :cond_4
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 628
    :cond_5
    const-string v1, "wifi_hotspot20_roam_enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 629
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    move-object v0, p2

    .line 630
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_hotspot20_roam_enable"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v6, v7

    :cond_6
    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 632
    const-string v2, "AdvancedWifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_HOTSPOT20_ROAM_ENABLE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    .line 636
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 637
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 638
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 639
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    goto/16 :goto_0

    .line 640
    :cond_7
    const-string v1, "wifi_enable_watchdog_service"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_watchdog_poor_network_test_enabled"

    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_8

    move v6, v7

    :cond_8
    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 643
    :cond_9
    const-string v1, "att_auto_connect"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 644
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 645
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 646
    iput v7, v1, Landroid/os/Message;->what:I

    .line 648
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 649
    const-string v3, "enable"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 650
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 652
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v1

    if-nez v1, :cond_1

    .line 653
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_auto_connecct"

    if-eqz v0, :cond_a

    move v6, v7

    :cond_a
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 655
    :cond_b
    const-string v1, "wifi_cmcc_priority"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 656
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mSelected:Lcom/android/settings/wifi/AccessPoint;

    invoke-direct {p0, v0, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showPriorityDialog(Lcom/android/settings/wifi/AccessPoint;Z)V

    goto/16 :goto_0

    .line 665
    :cond_c
    instance-of v1, p2, Lcom/android/settings/wifi/IwlanNetwork;

    if-eqz v1, :cond_d

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast p2, Lcom/android/settings/wifi/IwlanNetwork;

    invoke-direct {p0, v0, p2, v6}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 667
    :cond_d
    const-string v1, "wifi_connection_priority_mode"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 668
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitoring_enable"

    if-eqz v0, :cond_e

    move v6, v7

    :cond_e
    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 671
    if-eqz v0, :cond_f

    .line 672
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto/16 :goto_0

    .line 674
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    goto/16 :goto_0

    .line 676
    :cond_10
    const-string v1, "add_other_iwlan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0, v2, v7}, Lcom/android/settings/wifi/AdvancedWifiSettings;->showIwlanDialog(Landroid/content/Context;Lcom/android/settings/wifi/IwlanNetwork;Z)V

    goto/16 :goto_0

    .line 678
    :cond_11
    const-string v1, "wifi_timer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 679
    invoke-virtual {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/WifiTimer;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090b29

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 683
    :cond_12
    const-string v1, "mwlan_permission_allowed_2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 684
    check-cast p2, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    const-string v2, "com.lguplus.common.wificm.mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    .line 687
    const-string v2, "mwlan"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 688
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 689
    const-string v2, "permission_allowed_2"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 690
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 691
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lguplus.common.wificm.mwlan.interface"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 692
    const-string v2, "type"

    const-string v3, "notify"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 693
    const-string v2, "action"

    const-string v3, "permissionChanged"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 695
    const-string v1, "AdvancedWifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mWlan isChecked =\t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_13

    const v0, 0x7f090b78

    :goto_3
    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 700
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 697
    :cond_13
    const v0, 0x7f090b79

    goto :goto_3

    .line 702
    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v7

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 241
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->initPreferences()V

    .line 242
    invoke-direct {p0}, Lcom/android/settings/wifi/AdvancedWifiSettings;->refreshWifiInfo()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/wifi/WifiStatusReceiver;->mIsForegroundWifiSubSettings:Z

    .line 245
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 1048
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    new-instance v0, Lcom/android/settings/wifi/IwlanEnabler;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/IwlanEnabler;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    .line 1052
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStart()V

    .line 1054
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1058
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 1060
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlan:Ljava/lang/String;

    const-string v1, "SKT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1061
    iget-object v0, p0, Lcom/android/settings/wifi/AdvancedWifiSettings;->mIwlanEnabler:Lcom/android/settings/wifi/IwlanEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/IwlanEnabler;->onStop()V

    .line 1063
    :cond_0
    return-void
.end method
