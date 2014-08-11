.class public Lcom/android/settings/DefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "DefaultRingtonePreference.java"


# instance fields
.field private isWidget:Ljava/lang/Boolean;

.field private mRingtone:Lcom/android/settings/SoundSettings;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 41
    return-void
.end method


# virtual methods
.method public directRingtone()V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0}, Landroid/preference/RingtonePreference;->onClick()V

    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 93
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 75
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 77
    .local v0, result:Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableRingtoneFromMusicLibrary"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/SoundSettings;->onMusicPickerChosen(I)V

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->isWidget:Ljava/lang/Boolean;

    .line 85
    iget-object v1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    invoke-virtual {v1}, Lcom/android/settings/SoundSettings;->finish()V

    .line 87
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-super {p0, p1}, Landroid/preference/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 51
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 53
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableRingtoneFromMusicLibrary"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 57
    :cond_0
    const-string v0, "neutral_button"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    const-string v0, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090c11

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    :cond_1
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2
    .parameter "ringtoneUri"

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 65
    return-void
.end method

.method public setObject(Lcom/android/settings/SoundSettings;)V
    .locals 0
    .parameter "soundSettings"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/settings/DefaultRingtonePreference;->mRingtone:Lcom/android/settings/SoundSettings;

    .line 98
    return-void
.end method
