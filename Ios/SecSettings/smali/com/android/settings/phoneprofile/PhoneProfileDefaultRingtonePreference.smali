.class public Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;
.super Landroid/preference/RingtonePreference;
.source "PhoneProfileDefaultRingtonePreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mEditMode:I

.field private mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

.field private mRingtoneType:I

.field private mShowDefault:Z

.field private mShowSilent:Z

.field private mSoundType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    iput-boolean v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowDefault:Z

    .line 48
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowSilent:Z

    .line 58
    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    .line 60
    sget-object v1, Lcom/android/settings/R$styleable;->ProfileDefaultRingtonePreference:[I

    invoke-virtual {p1, p2, v1, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    .line 63
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mCurrentMode:I

    .line 69
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 180
    invoke-super {p0, p1, p2, p3}, Landroid/preference/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 181
    .local v0, result:Ljava/lang/Boolean;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableRingtoneFromMusicLibrary"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    invoke-virtual {v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->onMusicPickerChosen(I)V

    .line 187
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method protected onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "ringtonePickerIntent"

    .prologue
    const/4 v11, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x4

    const/4 v9, 0x1

    .line 74
    const/4 v8, 0x0

    .line 76
    .local v8, ringtoneUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 77
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 78
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 80
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v11, :cond_3

    .line 81
    iput v11, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    .line 82
    const-string v1, "profile_notification_tone"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, mRingtoneUriString:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 92
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 94
    const-string v1, "ProfileDefaultRingtonePreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call ringtone is empty ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :goto_1
    const-string v1, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {p1, v1, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 110
    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    iget-boolean v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowDefault:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 111
    iget-boolean v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowDefault:Z

    if-eqz v1, :cond_0

    .line 112
    const-string v1, "android.intent.extra.ringtone.DEFAULT_URI"

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    invoke-static {v2}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    :cond_0
    const-string v1, "android.intent.extra.ringtone.SHOW_SILENT"

    iget-boolean v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mShowSilent:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    const-string v1, "android.intent.extra.ringtone.TYPE"

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 117
    const-string v1, "android.intent.extra.ringtone.EDIT"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 127
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v9, :cond_6

    .line 132
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0903a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    :goto_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_EnableRingtoneFromMusicLibrary"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-eq v1, v9, :cond_1

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v10, :cond_2

    .line 146
    :cond_1
    const-string v1, "neutral_button"

    invoke-virtual {p1, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    const-string v1, "neutral_button_text"

    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f090c11

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    :cond_2
    return-void

    .line 83
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    :cond_3
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v10, :cond_4

    .line 84
    const/16 v1, 0x8

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    .line 85
    const-string v1, "profile_gsm_ringtone"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 87
    .end local v7           #mRingtoneUriString:Ljava/lang/String;
    :cond_4
    iput v9, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtoneType:I

    .line 88
    const-string v1, "profile_ringtone"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #mRingtoneUriString:Ljava/lang/String;
    goto/16 :goto_0

    .line 104
    :cond_5
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto/16 :goto_1

    .line 134
    :cond_6
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v1, v10, :cond_7

    .line 135
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f090c02

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 140
    :cond_7
    const-string v1, "android.intent.extra.ringtone.TITLE"

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0903ab

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 8
    .parameter "ringtoneUri"

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v3, 0x0

    .line 153
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 155
    .local v1, values:Landroid/content/ContentValues;
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v6, :cond_2

    .line 156
    const-string v4, "profile_notification_tone"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_1
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 164
    .local v0, _uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mEditMode:I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mCurrentMode:I

    if-ne v2, v3, :cond_0

    .line 168
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v6, :cond_6

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v6, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 177
    :cond_0
    :goto_2
    return-void

    .end local v0           #_uri:Landroid/net/Uri;
    :cond_1
    move-object v2, v3

    .line 156
    goto :goto_0

    .line 157
    :cond_2
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v7, :cond_4

    .line 158
    const-string v4, "profile_gsm_ringtone"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object v2, v3

    goto :goto_3

    .line 160
    :cond_4
    const-string v4, "profile_ringtone"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object v2, v3

    goto :goto_4

    .line 170
    .restart local v0       #_uri:Landroid/net/Uri;
    :cond_6
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mSoundType:I

    if-ne v2, v7, :cond_7

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_2

    .line 173
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_2
.end method

.method public setObject(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V
    .locals 0
    .parameter "phoneProfileEditor"

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileEditor;

    .line 193
    return-void
.end method
