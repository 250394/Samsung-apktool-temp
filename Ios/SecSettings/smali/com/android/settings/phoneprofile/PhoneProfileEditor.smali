.class public Lcom/android/settings/phoneprofile/PhoneProfileEditor;
.super Landroid/preference/PreferenceActivity;
.source "PhoneProfileEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static sNotSet:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCurrentMode:I

.field private mEditMode:I

.field private mHandler:Landroid/os/Handler;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNotificationPreference:Landroid/preference/Preference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

.field private mRingtone2Preference:Landroid/preference/Preference;

.field private mRingtoneLookupRunnable:Ljava/lang/Runnable;

.field private mRingtonePreference:Landroid/preference/Preference;

.field private mSilentMode:Landroid/preference/ListPreference;

.field private mState:I

.field profileName:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 123
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->profileName:[I

    .line 137
    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$1;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$1;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 156
    new-instance v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;

    invoke-direct {v0, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$2;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    return-void

    .line 123
    :array_0
    .array-data 0x4
        0xb1t 0x8t 0x9t 0x7ft
        0x44t 0xat 0x9t 0x7ft
        0x45t 0xat 0x9t 0x7ft
        0x46t 0xat 0x9t 0x7ft
        0x47t 0xat 0x9t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/phoneprofile/PhoneProfileEditor;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/phoneprofile/PhoneProfileEditor;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/phoneprofile/PhoneProfileEditor;ILandroid/preference/Preference;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    return-void
.end method

.method private checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 493
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 494
    :cond_0
    const-string p1, ""

    .line 496
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 501
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 502
    :cond_0
    sget-object p1, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 504
    .end local p1
    :cond_1
    return-object p1
.end method

.method private getPhoneSilentModeSettingValue()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 399
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_silent"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 400
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 401
    const-string v1, "profile_silent"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 402
    .local v7, vibrationType:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 404
    packed-switch v7, :pswitch_data_0

    .line 413
    const-string v1, "off"

    :goto_0
    return-object v1

    .line 406
    :pswitch_0
    const-string v1, "off"

    goto :goto_0

    .line 408
    :pswitch_1
    const-string v1, "vibrate"

    goto :goto_0

    .line 410
    :pswitch_2
    const-string v1, "mute"

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private lookupRingtoneNames()V
    .locals 2

    .prologue
    .line 477
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 478
    return-void
.end method

.method private setPhoneSilentSettingValue(Ljava/lang/String;)V
    .locals 12
    .parameter "value"

    .prologue
    const/4 v11, 0x1

    const/4 v4, 0x0

    .line 364
    const/4 v8, 0x2

    .line 365
    .local v8, ringerMode:I
    const-string v1, "mute"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    const/4 v8, 0x0

    .line 371
    :cond_0
    :goto_0
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    if-ne v1, v2, :cond_1

    .line 372
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v8}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 375
    :cond_1
    const/4 v1, 0x2

    if-ne v8, v1, :cond_2

    .line 376
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 377
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "profile_ring_volume"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 378
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 379
    const-string v1, "profile_ring_volume"

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 380
    .local v9, ringtoneVolume:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 381
    if-nez v9, :cond_2

    .line 382
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 383
    .local v10, values:Landroid/content/ContentValues;
    const-string v1, "profile_ring_volume"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 385
    .local v6, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 389
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #ringtoneVolume:I
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_2
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 390
    .restart local v10       #values:Landroid/content/ContentValues;
    const-string v1, "profile_silent"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v10, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 391
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    .line 392
    .restart local v6       #_uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v6, v10, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 393
    return-void

    .line 367
    .end local v6           #_uri:Landroid/net/Uri;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_3
    const-string v1, "vibrate"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v8, 0x1

    goto/16 :goto_0
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 509
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09049b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a5f

    new-instance v2, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;

    invoke-direct {v2, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$4;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 523
    return-void
.end method

.method private updateRingtoneData(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v1, 0x1

    .line 586
    if-ne p1, v1, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    invoke-direct {p0, v1, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 592
    :cond_1
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    if-eqz v0, :cond_0

    .line 593
    const/16 v0, 0x8

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    const/4 v2, 0x3

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneName(ILandroid/preference/Preference;I)V

    goto :goto_0
.end method

.method private updateRingtoneName(ILandroid/preference/Preference;I)V
    .locals 11
    .parameter "type"
    .parameter "preference"
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 430
    if-nez p2, :cond_0

    .line 474
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 437
    .local v0, cr:Landroid/content/ContentResolver;
    if-ne p1, v3, :cond_2

    .line 438
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_ringtone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 439
    .local v9, ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 440
    const-string v1, "profile_ringtone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 452
    .local v8, ringtone:Ljava/lang/String;
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 453
    if-eqz v8, :cond_4

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 454
    .local v2, ringtoneUri:Landroid/net/Uri;
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10404c2

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 456
    .local v10, summary:Ljava/lang/CharSequence;
    if-nez v2, :cond_5

    .line 457
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x10404c0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 473
    :cond_1
    :goto_3
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, p3, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 442
    .end local v2           #ringtoneUri:Landroid/net/Uri;
    .end local v8           #ringtone:Ljava/lang/String;
    .end local v9           #ringtoneCursor:Landroid/database/Cursor;
    .end local v10           #summary:Ljava/lang/CharSequence;
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 443
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_gsm_ringtone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 444
    .restart local v9       #ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 445
    const-string v1, "profile_gsm_ringtone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ringtone:Ljava/lang/String;
    goto :goto_1

    .line 448
    .end local v8           #ringtone:Ljava/lang/String;
    .end local v9           #ringtoneCursor:Landroid/database/Cursor;
    :cond_3
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_notification_tone"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 449
    .restart local v9       #ringtoneCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 450
    const-string v1, "profile_notification_tone"

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .restart local v8       #ringtone:Ljava/lang/String;
    goto/16 :goto_1

    :cond_4
    move-object v2, v4

    .line 453
    goto/16 :goto_2

    .line 461
    .restart local v2       #ringtoneUri:Landroid/net/Uri;
    .restart local v10       #summary:Ljava/lang/CharSequence;
    :cond_5
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "title"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 463
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 464
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 465
    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 467
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 469
    .end local v7           #cursor:Landroid/database/Cursor;
    :catch_0
    move-exception v1

    goto/16 :goto_3
.end method

.method private updateState(Z)V
    .locals 2
    .parameter "force"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPhoneSilentModeSettingValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "off"

    if-ne v0, v1, :cond_0

    .line 423
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 427
    :goto_0
    return-void

    .line 425
    :cond_0
    const-string v0, "ring_volume"

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    .line 340
    iget-object v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    .local v2, name:Ljava/lang/String;
    const/4 v1, 0x0

    .line 344
    .local v1, errorMsg:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v5, v4, :cond_0

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090ca7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_0
    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    if-eqz v1, :cond_1

    .line 349
    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->showErrorMessage(Ljava/lang/String;)V

    .line 350
    const/4 v4, 0x0

    .line 360
    :goto_0
    return v4

    .line 353
    :cond_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 354
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "profile_name"

    invoke-virtual {v3, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v5, "profile_mode"

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    sget-object v5, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v6, v6, 0x1

    int-to-long v6, v6

    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 357
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v0, v3, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 358
    invoke-direct {p0, v4}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0
.end method


# virtual methods
.method public handleRingtonePicked(Landroid/net/Uri;I)V
    .locals 6
    .parameter "pickedUri"
    .parameter "ringtoneType"

    .prologue
    const/4 v3, 0x0

    .line 561
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/media/RingtoneManager;->isDefault(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 562
    :cond_0
    const-string v2, "PhoneProfileEditor"

    const-string v3, "handleRingtonePicked() : Not changed"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateRingtoneData(I)V

    .line 583
    return-void

    .line 565
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 566
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "is_ringtone"

    const-string v4, "1"

    invoke-virtual {v1, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 569
    new-instance v1, Landroid/content/ContentValues;

    .end local v1           #values:Landroid/content/ContentValues;
    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 570
    .restart local v1       #values:Landroid/content/ContentValues;
    const/16 v2, 0x8

    if-ne p2, v2, :cond_4

    .line 571
    const-string v4, "profile_gsm_ringtone"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :goto_2
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v4, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v4, v4, 0x1

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 576
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 578
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    if-ne v2, v3, :cond_1

    .line 579
    invoke-static {p0, p2, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .end local v0           #_uri:Landroid/net/Uri;
    :cond_3
    move-object v2, v3

    .line 571
    goto :goto_1

    .line 573
    :cond_4
    const-string v4, "profile_ringtone"

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v2, v3

    goto :goto_3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 527
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 529
    packed-switch p1, :pswitch_data_0

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 531
    :pswitch_0
    if-ne p2, v1, :cond_0

    .line 532
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 533
    .local v0, pickedUri:Landroid/net/Uri;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 538
    .end local v0           #pickedUri:Landroid/net/Uri;
    :pswitch_1
    if-ne p2, v1, :cond_0

    .line 539
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 540
    .restart local v0       #pickedUri:Landroid/net/Uri;
    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->handleRingtonePicked(Landroid/net/Uri;I)V

    goto :goto_0

    .line 529
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 174
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 177
    .local v9, resolver:Landroid/content/ContentResolver;
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    .line 179
    const v1, 0x7f070044

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->addPreferencesFromResource(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 182
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "add"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    iput v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    .line 189
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090ca4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->sNotSet:Ljava/lang/String;

    .line 190
    const-string v1, "profile_name"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/EditTextPreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    .line 191
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 193
    const-string v1, "silent_mode"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 200
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_edit_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "sound_profile_mode"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    .line 205
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->profileName:[I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 207
    .local v8, mTitle:Ljava/lang/String;
    invoke-virtual {p0, v8}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setTitle(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v5}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 222
    :goto_2
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtonePreference:Landroid/preference/Preference;

    .line 223
    const-string v1, "notification_sound"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mNotificationPreference:Landroid/preference/Preference;

    .line 224
    const-string v1, "ringtone2"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone2Preference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 235
    new-instance v1, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;

    invoke-direct {v1, p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor$3;-><init>(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtoneLookupRunnable:Ljava/lang/Runnable;

    .line 252
    const-string v1, "ringtone"

    invoke-virtual {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

    iput-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

    .line 253
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mRingtone:Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;

    invoke-virtual {v1, p0}, Lcom/android/settings/phoneprofile/PhoneProfileDefaultRingtonePreference;->setObject(Lcom/android/settings/phoneprofile/PhoneProfileEditor;)V

    .line 258
    return-void

    .line 186
    .end local v8           #mTitle:Ljava/lang/String;
    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    goto/16 :goto_0

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_1

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 214
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v3, [Ljava/lang/String;

    const-string v3, "profile_name"

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    .local v6, cursor:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 216
    const-string v1, "profile_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 217
    .restart local v8       #mTitle:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 218
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1, v8}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v8}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 280
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 282
    iget v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 290
    :goto_0
    return v3

    .line 285
    :cond_0
    const v0, 0x7f090ca6

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    const/4 v0, 0x2

    const v1, 0x7f090ca5

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 325
    const-string v1, "PhoneProfileEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown keyCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    packed-switch p1, :pswitch_data_0

    .line 336
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 328
    :pswitch_0
    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mState:I

    if-ne v1, v0, :cond_0

    iget v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_0

    .line 329
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onMusicPickerChosen(I)V
    .locals 3
    .parameter "ringtoneType"

    .prologue
    const/4 v2, 0x1

    .line 547
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const-string v1, "audio/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 552
    if-ne p1, v2, :cond_0

    .line 553
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 558
    :goto_0
    return-void

    .line 556
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 296
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 320
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 298
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->validateAndSave(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 305
    :pswitch_1
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 306
    sget-object v2, Lcom/android/settings/phoneprofile/PhoneProfileProvider;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    add-int/lit8 v3, v3, 0x1

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 307
    .local v0, _uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    .end local v0           #_uri:Landroid/net/Uri;
    :cond_1
    iget v2, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mCurrentMode:I

    iget v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    if-ne v2, v3, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_profile_mode"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {v2, v3, v5}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->setPhoneProfileMode(Landroid/content/ContentResolver;Landroid/media/AudioManager;I)V

    .line 313
    iput v5, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mEditMode:I

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->finish()V

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 273
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 276
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v2, 0x1

    .line 481
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mSilentMode:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_1

    .line 482
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->setPhoneSilentSettingValue(Ljava/lang/String;)V

    .line 483
    invoke-direct {p0, v2}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 489
    :cond_0
    :goto_0
    return v2

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    if-ne p1, v0, :cond_0

    .line 486
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 487
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 262
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 264
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->updateState(Z)V

    .line 265
    invoke-direct {p0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->lookupRingtoneNames()V

    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 268
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/phoneprofile/PhoneProfileEditor;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 269
    return-void
.end method
