.class public Lcom/android/settings/LedIndicatorSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "LedIndicatorSettings.java"


# instance fields
.field private misCharing:Landroid/preference/CheckBoxPreference;

.field private misIncomingNotification:Landroid/preference/CheckBoxPreference;

.field private misLowBattery:Landroid/preference/CheckBoxPreference;

.field private misMissedEvent:Landroid/preference/CheckBoxPreference;

.field private misVoiceRecording:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 66
    .local v1, mContentResolver:Landroid/content/ContentResolver;
    const v2, 0x7f070035

    invoke-virtual {p0, v2}, Lcom/android/settings/LedIndicatorSettings;->addPreferencesFromResource(I)V

    .line 68
    const-string v2, "led_indicator_charging_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    .line 69
    const-string v2, "led_indicator_low_battery_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    .line 70
    const-string v2, "led_indicator_missed_event_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    .line 71
    const-string v2, "led_indicator_voice_recording_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    .line 74
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.sec.android.app.voicerecorder"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    const-string v2, "led_indicator_incoming_notification_key"

    invoke-virtual {p0, v2}, Lcom/android/settings/LedIndicatorSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 86
    return-void

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 78
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 103
    const-string v0, "LedIndicatorSettings"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 113
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_charing"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 134
    :cond_1
    :goto_0
    return v1

    .line 116
    :cond_2
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_low_battery"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    :cond_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 119
    :cond_4
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_missed_event"

    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v1

    :goto_1
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v2, v0

    .line 120
    goto :goto_1

    .line 125
    :cond_6
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_voice_recording"

    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v1

    :goto_2
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    const-string v2, "LedIndicatorSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LED_INDICATOR_VOICE_RECORDING DB is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "led_indicator_voice_recording"

    invoke-static {v4, v5, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move v2, v0

    .line 126
    goto :goto_2

    .line 129
    :cond_8
    iget-object v2, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "led_indicator_incoming_notification"

    iget-object v4, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    move v0, v1

    :cond_9
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 134
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 89
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 90
    const-string v0, "LedIndicatorSettings"

    const-string v3, "onResume() "

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misCharing:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_charing"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 93
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misLowBattery:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_low_battery"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misMissedEvent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_missed_event"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 95
    iget-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 96
    iget-object v3, p0, Lcom/android/settings/LedIndicatorSettings;->misVoiceRecording:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "led_indicator_voice_recording"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settings/LedIndicatorSettings;->misIncomingNotification:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/LedIndicatorSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "led_indicator_incoming_notification"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 99
    return-void

    :cond_1
    move v0, v2

    .line 92
    goto :goto_0

    :cond_2
    move v0, v2

    .line 93
    goto :goto_1

    :cond_3
    move v0, v2

    .line 94
    goto :goto_2

    :cond_4
    move v0, v2

    .line 96
    goto :goto_3

    :cond_5
    move v1, v2

    .line 97
    goto :goto_4
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 109
    const-string v0, "LedIndicatorSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-void
.end method
