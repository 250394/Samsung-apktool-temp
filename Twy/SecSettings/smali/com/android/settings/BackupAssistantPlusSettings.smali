.class public Lcom/android/settings/BackupAssistantPlusSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BackupAssistantPlusSettings.java"


# instance fields
.field private mBuaPlusContacts:Landroid/preference/PreferenceScreen;

.field private mBuaPlusMedia:Landroid/preference/PreferenceScreen;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-virtual {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 46
    .local v0, resolver:Landroid/content/ContentResolver;
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupAssistantPlusSettings;->addPreferencesFromResource(I)V

    .line 48
    const-string v1, "bua_plus_contacts"

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    .line 49
    const-string v1, "bua_plus_media"

    invoke-virtual {p0, v1}, Lcom/android/settings/BackupAssistantPlusSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    iput-object v1, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    .line 50
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/BackupAssistantPlusSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, actions:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 57
    .local v0, action:Ljava/lang/String;
    if-eqz v1, :cond_2

    array-length v5, v1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 58
    iget-object v5, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusContacts:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 59
    aget-object v0, v1, v4

    .line 64
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 66
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .local v3, intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v3}, Lcom/android/settings/BackupAssistantPlusSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v3           #intent:Landroid/content/Intent;
    :goto_1
    return v4

    .line 60
    :cond_1
    iget-object v5, p0, Lcom/android/settings/BackupAssistantPlusSettings;->mBuaPlusMedia:Landroid/preference/PreferenceScreen;

    invoke-virtual {p2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 61
    const/4 v5, 0x1

    aget-object v0, v1, v5

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, e:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v2}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 77
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_1
.end method
