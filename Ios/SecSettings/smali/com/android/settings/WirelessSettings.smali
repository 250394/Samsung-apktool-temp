.class public Lcom/android/settings/WirelessSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WirelessSettings.java"


# instance fields
.field private mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

.field private mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

.field private mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

.field private mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

.field private mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    return-void
.end method

.method public static isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x1

    .line 223
    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_toggleable_radios"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, toggleable:Ljava/lang/String;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 492
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 565
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 566
    const-string v1, "exit_ecm_result"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 568
    .local v0, isChoiceYes:Ljava/lang/Boolean;
    iget-object v1, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeInECM(ZZ)V

    .line 571
    .end local v0           #isChoiceYes:Ljava/lang/Boolean;
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 28
    .parameter "savedInstanceState"

    .prologue
    .line 234
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 236
    const v25, 0x7f070084

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->addPreferencesFromResource(I)V

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 260
    .local v2, activity:Landroid/app/Activity;
    const-string v25, "toggle_airplane"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    .line 261
    const-string v25, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v12

    check-cast v12, Landroid/preference/CheckBoxPreference;

    .line 262
    .local v12, nfc:Landroid/preference/CheckBoxPreference;
    const-string v25, "toggle_nfc_rw_p2p"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    check-cast v25, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    .line 263
    const-string v25, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 264
    .local v3, androidBeam:Landroid/preference/PreferenceScreen;
    const-string v25, "s_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v19

    check-cast v19, Landroid/preference/PreferenceScreen;

    .line 265
    .local v19, sBeam:Landroid/preference/PreferenceScreen;
    const-string v25, "toggle_wifi_p2p"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v22

    check-cast v22, Landroid/preference/CheckBoxPreference;

    .line 266
    .local v22, wifiP2p:Landroid/preference/CheckBoxPreference;
    const-string v25, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v23

    check-cast v23, Landroid/preference/SwitchPreference;

    .line 267
    .local v23, wifiP2pSetting:Landroid/preference/SwitchPreference;
    const-string v25, "wifi_p2p_settings_switch_key"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v24

    check-cast v24, Lcom/android/settings/SettingsTextSwitchPreference;

    .line 268
    .local v24, wifiP2pSettingKey:Lcom/android/settings/SettingsTextSwitchPreference;
    const-string v25, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/PreferenceScreen;

    .line 269
    .local v17, roamingSetting:Landroid/preference/PreferenceScreen;
    const-string v25, "rcs_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Landroid/preference/PreferenceScreen;

    .line 271
    .local v16, rcsSetting:Landroid/preference/PreferenceScreen;
    const-string v25, "ro.csc.sales_code"

    invoke-static/range {v25 .. v25}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 272
    .local v20, salesCode:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_1

    .line 273
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "sleeping_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 277
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Clock_ExclusiveEnablingAutoPowerSetting"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_2

    .line 278
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "auto_power_on_off_mode"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 281
    :cond_2
    new-instance v25, Lcom/android/settings/AirplaneModeEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v2, v1}, Lcom/android/settings/AirplaneModeEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_15

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    new-instance v25, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v12, v3}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 299
    :goto_0
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string v26, "airplane_mode_toggleable_radios"

    invoke-static/range {v25 .. v26}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 303
    .local v21, toggleable:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x1110044

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 305
    .local v8, isWimaxEnabled:Z
    if-nez v8, :cond_16

    .line 306
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    .line 307
    .local v18, root:Landroid/preference/PreferenceScreen;
    const-string v25, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 308
    .local v15, ps:Landroid/preference/Preference;
    if-eqz v15, :cond_3

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 317
    .end local v15           #ps:Landroid/preference/Preference;
    .end local v18           #root:Landroid/preference/PreferenceScreen;
    :cond_3
    :goto_1
    if-eqz v21, :cond_4

    const-string v25, "wifi"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_5

    .line 318
    :cond_4
    const-string v25, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const-string v26, "toggle_airplane"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 319
    const-string v25, "CHM"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 320
    const-string v25, "kies_via_wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const-string v26, "toggle_airplane"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 321
    const-string v25, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const-string v26, "toggle_airplane"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 322
    const-string v25, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const-string v26, "toggle_airplane"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 327
    :cond_5
    if-eqz v21, :cond_6

    const-string v25, "bluetooth"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_6

    .line 332
    :cond_6
    if-eqz v21, :cond_7

    const-string v25, "nfc"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_9

    .line 333
    :cond_7
    const-string v25, "toggle_nfc"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const-string v26, "toggle_airplane"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    const-string v26, "toggle_airplane"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/CheckBoxPreference;->setDependency(Ljava/lang/String;)V

    .line 335
    :cond_8
    const-string v25, "android_beam_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v25

    const-string v26, "toggle_airplane"

    invoke-virtual/range {v25 .. v26}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 342
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 346
    invoke-static {v2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    move-object/from16 v25, v0

    if-nez v25, :cond_c

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 350
    if-eqz v19, :cond_a

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 353
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v25, v0

    if-eqz v25, :cond_b

    .line 354
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    :cond_b
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 359
    :cond_c
    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "mobile_network_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    :cond_d
    :try_start_0
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.sec.android.app.kieswifi"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_e
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "android.hardware.wifi.direct"

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_18

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 377
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "wifi_p2p_settings_switch"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 378
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 392
    :goto_3
    const-string v25, "DMC_ONLY"

    const-string v26, "ALL"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_f

    .line 393
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "nearby_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "allshare_cast_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    const-string v25, "proxy_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v11

    .line 402
    .local v11, mGlobalProxy:Landroid/preference/Preference;
    const-string v25, "device_policy"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/admin/DevicePolicyManager;

    .line 405
    .local v10, mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getGlobalProxyAdmin()Landroid/content/ComponentName;

    move-result-object v25

    if-nez v25, :cond_1a

    const/16 v25, 0x1

    :goto_4
    move/from16 v0, v25

    invoke-virtual {v11, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 409
    const-string v25, "connectivity"

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 411
    .local v4, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v25

    if-eqz v25, :cond_10

    invoke-static {v2}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v25

    if-nez v25, :cond_10

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_1b

    const-string v25, "ATT"

    const-string v26, "ro.csc.sales_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 412
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 456
    :goto_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 457
    const-string v25, "persist.sys.roaming_menu"

    const/16 v26, 0x0

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v25

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 458
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 464
    :cond_11
    :goto_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v25

    const-string v26, "CscFeature_IMS_EnableRCSe"

    invoke-virtual/range {v25 .. v26}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1d

    .line 465
    const-string v25, "parent"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v14

    check-cast v14, Landroid/preference/PreferenceScreen;

    .line 466
    .local v14, parent:Landroid/preference/PreferenceScreen;
    new-instance v25, Lcom/android/settings/rcs/RcsSettings;

    move-object/from16 v0, v25

    invoke-direct {v0, v2, v14}, Lcom/android/settings/rcs/RcsSettings;-><init>(Landroid/content/Context;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    .line 471
    .end local v14           #parent:Landroid/preference/PreferenceScreen;
    :cond_12
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    const-string v26, "com.ipsec.vpnclient"

    invoke-static/range {v25 .. v26}, Lcom/android/settings/Utils;->hasPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 473
    .local v7, hasAdvVpn:Z
    const-string v25, "ATT"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e

    if-eqz v7, :cond_1e

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "vpn_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 480
    :goto_8
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_13

    const-string v25, "ATT"

    const-string v26, "ro.csc.sales_code"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_14

    .line 481
    :cond_13
    const-string v25, "data_usage_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceScreen;

    .line 482
    .local v5, dataUsage:Landroid/preference/PreferenceScreen;
    if-eqz v5, :cond_14

    .line 483
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 485
    .end local v5           #dataUsage:Landroid/preference/PreferenceScreen;
    :cond_14
    return-void

    .line 295
    .end local v4           #cm:Landroid/net/ConnectivityManager;
    .end local v7           #hasAdvVpn:Z
    .end local v8           #isWimaxEnabled:Z
    .end local v10           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v11           #mGlobalProxy:Landroid/preference/Preference;
    .end local v21           #toggleable:Ljava/lang/String;
    :cond_15
    new-instance v25, Lcom/android/settings/nfc/NfcEnabler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/WirelessSettings;->mNfcReaderPreference:Landroid/preference/CheckBoxPreference;

    move-object/from16 v26, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-direct {v0, v2, v12, v1, v3}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    goto/16 :goto_0

    .line 310
    .restart local v8       #isWimaxEnabled:Z
    .restart local v21       #toggleable:Ljava/lang/String;
    :cond_16
    if-eqz v21, :cond_17

    const-string v25, "wimax"

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_3

    if-eqz v8, :cond_3

    .line 312
    :cond_17
    const-string v25, "wimax_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v15

    .line 313
    .restart local v15       #ps:Landroid/preference/Preference;
    const-string v25, "toggle_airplane"

    move-object/from16 v0, v25

    invoke-virtual {v15, v0}, Landroid/preference/Preference;->setDependency(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 366
    .end local v15           #ps:Landroid/preference/Preference;
    :catch_0
    move-exception v6

    .line 367
    .local v6, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v25, "kies_via_wifi"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/PreferenceScreen;

    .line 368
    .local v9, kiesViaWifi:Landroid/preference/PreferenceScreen;
    if-eqz v9, :cond_e

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 380
    .end local v6           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v9           #kiesViaWifi:Landroid/preference/PreferenceScreen;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 381
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v25

    if-eqz v25, :cond_19

    .line 382
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 383
    new-instance v25, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsTextSwitchPreference;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    .line 384
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 387
    :cond_19
    new-instance v25, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-direct {v0, v2, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;-><init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    .line 388
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 406
    .restart local v10       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v11       #mGlobalProxy:Landroid/preference/Preference;
    :cond_1a
    const/16 v25, 0x0

    goto/16 :goto_4

    .line 414
    .restart local v4       #cm:Landroid/net/ConnectivityManager;
    :cond_1b
    const-string v25, "tether_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    .line 415
    .local v13, p:Landroid/preference/Preference;
    invoke-static {v4}, Lcom/android/settings/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v25

    move/from16 v0, v25

    invoke-virtual {v13, v0}, Landroid/preference/Preference;->setTitle(I)V

    goto/16 :goto_5

    .line 460
    .end local v13           #p:Landroid/preference/Preference;
    :cond_1c
    const-string v25, "SPR"

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_11

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "roaming_settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_6

    .line 467
    :cond_1d
    if-eqz v16, :cond_12

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 476
    .restart local v7       #hasAdvVpn:Z
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/WirelessSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v25

    const-string v26, "vpn_settings_for_att"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_8
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 537
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 539
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/AirplaneModeEnabler;->pause()V

    .line 540
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v0, :cond_1

    .line 545
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->pause()V

    .line 558
    :cond_1
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    if-eqz v0, :cond_2

    .line 559
    iget-object v0, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v0}, Lcom/android/settings/rcs/RcsSettings;->unregisterRcsProviderObserver()V

    .line 561
    :cond_2
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 116
    const-string v5, "mobile_network_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    if-ne p2, v5, :cond_2

    .line 162
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 163
    .local v3, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v2

    .line 165
    .local v2, simState:I
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-eqz v2, :cond_0

    if-ne v2, v4, :cond_1

    .line 168
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/WirelessSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v0, insertSimPopup:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0907b8

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0907b9

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 219
    .end local v0           #insertSimPopup:Landroid/app/AlertDialog$Builder;
    .end local v2           #simState:I
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :goto_0
    return v4

    .line 177
    .restart local v2       #simState:I
    .restart local v3       #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    const-string v5, "KDI"

    const-string v6, "ril.sales_code"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 179
    .local v1, intent:Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    const-string v6, "com.android.phone"

    const-string v7, "com.android.phone.CdmaSettingsEnhancedActivity"

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/settings/WirelessSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 187
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #simState:I
    .end local v3           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModePreference:Landroid/preference/CheckBoxPreference;

    if-ne p2, v5, :cond_3

    const-string v5, "ril.cdma.inecmmode"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 190
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v5, v4}, Lcom/android/settings/WirelessSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 219
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 496
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 498
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mAirplaneModeEnabler:Lcom/android/settings/AirplaneModeEnabler;

    invoke-virtual {v2}, Lcom/android/settings/AirplaneModeEnabler;->resume()V

    .line 499
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v2, :cond_0

    .line 500
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v2}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 503
    :cond_0
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    if-eqz v2, :cond_1

    .line 504
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mWifiP2pSwitchEnabler:Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;

    invoke-virtual {v2}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->resume()V

    .line 519
    :cond_1
    :try_start_0
    const-string v2, "enterprise_policy"

    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 521
    .local v1, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    const-string v2, "vpn_settings"

    invoke-virtual {p0, v2}, Lcom/android/settings/WirelessSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/enterprise/RestrictionPolicy;->isVpnAllowed()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v1           #edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    :goto_0
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    if-eqz v2, :cond_2

    .line 530
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v2}, Lcom/android/settings/rcs/RcsSettings;->updateRcsSettingsVisibility()V

    .line 531
    iget-object v2, p0, Lcom/android/settings/WirelessSettings;->mRcsSettings:Lcom/android/settings/rcs/RcsSettings;

    invoke-virtual {v2}, Lcom/android/settings/rcs/RcsSettings;->registerRcsProviderObserver()V

    .line 533
    :cond_2
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
