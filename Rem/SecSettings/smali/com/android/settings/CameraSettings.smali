.class public Lcom/android/settings/CameraSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CameraSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static mAutoPowerOffEntries:[Ljava/lang/String;


# instance fields
.field private mAutoPowerOff:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateState()V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x4

    const v7, 0x7f09083c

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f070014

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraSettings;->addPreferencesFromResource(I)V

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/settings/CameraSettings;->mAutoPowerOffEntries:[Ljava/lang/String;

    .line 40
    sget-object v0, Lcom/android/settings/CameraSettings;->mAutoPowerOffEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/CameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090601

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 41
    sget-object v0, Lcom/android/settings/CameraSettings;->mAutoPowerOffEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/CameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 42
    sget-object v0, Lcom/android/settings/CameraSettings;->mAutoPowerOffEntries:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/settings/CameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 43
    sget-object v0, Lcom/android/settings/CameraSettings;->mAutoPowerOffEntries:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/settings/CameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/Object;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v2, v7, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lcom/android/settings/CameraSettings;->mAutoPowerOffEntries:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/CameraSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/Object;

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v7, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    .line 47
    const-string v0, "auto_power_off"

    invoke-virtual {p0, v0}, Lcom/android/settings/CameraSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    .line 48
    iget-object v0, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    sget-object v1, Lcom/android/settings/CameraSettings;->mAutoPowerOffEntries:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/CameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_power_off"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    .line 66
    iget-object v1, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    if-ne p1, v1, :cond_0

    .line 67
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 68
    .local v0, value:I
    invoke-virtual {p0}, Lcom/android/settings/CameraSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_power_off"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    iget-object v1, p0, Lcom/android/settings/CameraSettings;->mAutoPowerOff:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/android/settings/CameraSettings;->updateState()V

    .line 73
    .end local v0           #value:I
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 55
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 57
    invoke-direct {p0}, Lcom/android/settings/CameraSettings;->updateState()V

    .line 58
    return-void
.end method
