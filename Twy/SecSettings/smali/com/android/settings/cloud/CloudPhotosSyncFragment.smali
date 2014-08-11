.class public Lcom/android/settings/cloud/CloudPhotosSyncFragment;
.super Lcom/android/settings/cloud/SyncFragment;
.source "CloudPhotosSyncFragment.java"


# instance fields
.field private mPrefNumberOfDisplayingPhotos:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/android/settings/cloud/SyncFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addPreferences()V
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->mPrefNumberOfDisplayingPhotos:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 53
    return-void
.end method

.method protected broadcastStatus()V
    .locals 4

    .prologue
    .line 38
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, i:Landroid/content/Intent;
    const-string v1, "photoSync"

    iget-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 42
    const-string v1, "CloudSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CloudPhotosSyncFragment changed -->  sending intent with Cloud Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/android/settings/cloud/SyncFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f070016

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->addPreferencesFromResource(I)V

    .line 26
    const-string v0, "pref_number_of_displaying_photos"

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->mPrefNumberOfDisplayingPhotos:Landroid/preference/Preference;

    .line 28
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/cloud/CloudSettings;->isPhotoSync()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 29
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->updateScreen()V

    .line 31
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 33
    return-void
.end method

.method protected removeAll()V
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 60
    const v0, 0x7f090c27

    invoke-virtual {p0, v0}, Lcom/android/settings/cloud/CloudPhotosSyncFragment;->setEmptyMessage(I)V

    .line 61
    return-void
.end method