.class public Lcom/android/settings/personalvibration/SelectPatternDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SelectPatternDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field ButtonCenter:Landroid/widget/Button;

.field mCurrentSelection:I

.field private mDialog:Landroid/app/AlertDialog;

.field private mExistingUri:Ljava/lang/String;

.field private mFromContact:Ljava/lang/Boolean;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field mOkBtn:Landroid/widget/Button;

.field private mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

.field private mShowDefault:Ljava/lang/Boolean;

.field private mStaticItem:I

.field vib:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 76
    iput-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 83
    iput-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 84
    iput-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->ButtonCenter:Landroid/widget/Button;

    .line 86
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/personalvibration/SelectPatternDialog;)Lcom/android/settings/personalvibration/VibrationPatternListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    return-object v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4
    .parameter "editable"

    .prologue
    .line 373
    const/4 v0, 0x0

    .line 374
    .local v0, length:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 376
    if-gtz v0, :cond_0

    .line 377
    const-string v1, "SelectPatternDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ok btn is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 382
    :goto_0
    return-void

    .line 380
    :cond_0
    iget-object v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 388
    return-void
.end method

.method public deletePattern(I)Z
    .locals 9
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 284
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deletePattern() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 287
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 288
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 289
    .local v8, id:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 291
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete() id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v7

    .line 295
    .local v7, count:I
    const/4 v0, 0x1

    return v0
.end method

.method public getCurrentSelection()I
    .locals 11

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x0

    .line 398
    const/4 v7, -0x1

    .line 399
    .local v7, keyID:I
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 400
    .local v9, temp:Ljava/lang/String;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentSelection() temp : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 403
    iget-object v9, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 409
    :cond_0
    if-nez v9, :cond_2

    move v0, v10

    .line 442
    :goto_0
    return v0

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 405
    const-string v0, "SelectPatternDialog"

    const-string v1, "getCurrentSelection(),  (mFromContact && mExistingUri == null) is true, return 0"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/4 v0, 0x0

    goto :goto_0

    .line 412
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 414
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    .line 415
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 416
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 422
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 428
    if-eqz v6, :cond_8

    .line 429
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 431
    :cond_4
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v7, v0, :cond_6

    .line 432
    invoke-interface {v6}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 433
    .local v8, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentSelection : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 435
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/2addr v0, v8

    goto/16 :goto_0

    .end local v8           #position:I
    :cond_5
    move v0, v10

    .line 424
    goto/16 :goto_0

    .line 437
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 439
    :cond_7
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move v0, v10

    .line 442
    goto/16 :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 450
    packed-switch p2, :pswitch_data_0

    .line 500
    :goto_0
    return-void

    .line 452
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int v11, v0, v1

    .line 453
    .local v11, position:I
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v0, -0x1

    if-ne v11, v0, :cond_1

    .line 455
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 but from Contacts"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 458
    .local v12, resultIntent:Landroid/content/Intent;
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 459
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto :goto_0

    .line 462
    .end local v12           #resultIntent:Landroid/content/Intent;
    :cond_0
    const-string v0, "SelectPatternDialog"

    const-string v1, "onClick() - positive : index is -1 so break"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 466
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 467
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 468
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 469
    .local v8, index:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 471
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 472
    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    .line 473
    .restart local v12       #resultIntent:Landroid/content/Intent;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 474
    .local v10, pickedUriString:Ljava/lang/String;
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 475
    .local v9, pickedUri:Landroid/net/Uri;
    invoke-virtual {v12, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 476
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v12}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(ILandroid/content/Intent;)V

    .line 481
    .end local v9           #pickedUri:Landroid/net/Uri;
    .end local v10           #pickedUriString:Ljava/lang/String;
    .end local v12           #resultIntent:Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 478
    :cond_2
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick : OK button is clicked before uri is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "default_vibration_pattern"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 485
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #index:I
    .end local v11           #position:I
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setResult(I)V

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 490
    :pswitch_2
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 491
    .local v7, i:Landroid/content/Intent;
    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.personalvibration.PersonalVibration"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    const-string v0, "android.intent.extra.pattern.FROM_CONTACT"

    const/4 v1, 0x1

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    const/high16 v0, 0x200

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 496
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/personalvibration/SelectPatternDialog;->startActivity(Landroid/content/Intent;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    goto/16 :goto_0

    .line 450
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 225
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 226
    .local v0, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    .line 227
    .local v1, menuItemIndex:I
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    iget v5, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v5, v6

    invoke-virtual {v4, v5}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->getPatternName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v2, "SelectPatternDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onContextItemSelected] :  info.position, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v5, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    packed-switch v1, :pswitch_data_0

    .line 245
    :goto_0
    return v7

    .line 232
    :pswitch_0
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->deletePattern(I)Z

    .line 233
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 234
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v2}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->notifyDataSetChanged()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v2

    iput v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 236
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 237
    iget-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    goto :goto_0

    .line 241
    :pswitch_1
    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v3, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/settings/personalvibration/SelectPatternDialog;->showRenameDialog(I)Z

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 94
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "android.intent.extra.pattern.FROM_CONTACT"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    .line 97
    const-string v6, "show_default"

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    .line 100
    const-string v6, "android.intent.extra.pattern.EXISTING_URI"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mExistingUri:Ljava/lang/String;

    .line 103
    const-string v6, "layout_inflater"

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 105
    new-instance v6, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-direct {v6, p0}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    .line 106
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v6}, Lcom/android/settings/personalvibration/VibrationPatternListAdapter;->loadPatternType()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mFromContact:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090a09

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 115
    :goto_0
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040056

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 116
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 117
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 118
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 119
    const v6, 0x7f09011a

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 120
    const v6, 0x7f0907f6

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 121
    const v6, 0x7f090820

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 122
    iget-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v7, 0x7f0b00e7

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ListView;

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    .line 124
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mShowDefault:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x1090119

    iget-object v8, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckedTextView;

    .line 128
    .local v4, textView:Landroid/widget/CheckedTextView;
    const-string v6, "SelectPatternDialog"

    const-string v7, "tw_select_dialog_singlechoice_holo"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const v6, 0x7f0905cb

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setText(I)V

    .line 132
    const/high16 v6, 0x41a0

    invoke-virtual {v4, v6}, Landroid/widget/CheckedTextView;->setTextSize(F)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    .line 135
    .local v5, wm:Landroid/view/WindowManager;
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 136
    .local v3, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 137
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 139
    .local v1, density:I
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 140
    iput v10, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    .line 143
    .end local v1           #density:I
    .end local v3           #metrics:Landroid/util/DisplayMetrics;
    .end local v4           #textView:Landroid/widget/CheckedTextView;
    .end local v5           #wm:Landroid/view/WindowManager;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget-object v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mPatternListAdapter:Lcom/android/settings/personalvibration/VibrationPatternListAdapter;

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 144
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 145
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, p0}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 146
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog;->registerForContextMenu(Landroid/view/View;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->setupAlert()V

    .line 149
    new-instance v6, Landroid/os/Vibrator;

    invoke-direct {v6}, Landroid/os/Vibrator;-><init>()V

    iput-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getCurrentSelection()I

    move-result v6

    iput v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    .line 152
    iget v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    .line 153
    const-string v6, "SelectPatternDialog"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onCreate() positoin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v6, v7, v10}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 155
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 156
    invoke-static {p0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    iget-object v6, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mListView:Landroid/widget/ListView;

    iget v7, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    invoke-virtual {v6, v7}, Landroid/widget/ListView;->setSelection(I)V

    .line 161
    :cond_1
    :goto_1
    return-void

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0909f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 160
    :cond_3
    const-string v6, "SelectPatternDialog"

    const-string v7, "onCreate() positoin : -1"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 9
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v5, 0x7f09008d

    const/4 v4, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 191
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b00e7

    if-ne v0, v1, :cond_0

    move-object v7, p3

    .line 192
    check-cast v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 205
    .local v7, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    add-int/lit8 v1, v1, 0x6

    if-ge v0, v1, :cond_1

    .line 206
    const-string v0, "SelectPatternDialog"

    const-string v1, "onCreateContextMenu] : Noting to add"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v7           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_0
    :goto_0
    return-void

    .line 208
    .restart local v7       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_1
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mCurrentSelection:I

    if-ne v0, v1, :cond_2

    .line 209
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 215
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 216
    .local v6, c:Landroid/database/Cursor;
    iget v0, v7, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    iget v1, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr v0, v1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 217
    const-string v0, "vibration_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 218
    .local v8, menu_title:Ljava/lang/String;
    invoke-interface {p1, v8}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 211
    .end local v6           #c:Landroid/database/Cursor;
    .end local v8           #menu_title:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x1

    const v1, 0x7f09070c

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 212
    invoke-interface {p1, v3, v4, v3, v5}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 301
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 303
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 305
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 306
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 252
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 253
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 256
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 257
    const-string v0, "SelectPatternDialog"

    const-string v1, "onItemClick() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 259
    .local v10, temp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 260
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 262
    .local v9, patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 263
    .local v8, patternLong:[J
    if-eqz v8, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    .line 266
    .end local v8           #patternLong:[J
    .end local v9           #patternString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 281
    .end local v10           #temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 270
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 272
    .restart local v6       #c:Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 273
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 274
    .local v7, index:I
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 275
    .restart local v9       #patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 276
    .restart local v8       #patternLong:[J
    if-eqz v8, :cond_2

    .line 277
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    .line 278
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 280
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 514
    iget v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mStaticItem:I

    sub-int/2addr p3, v0

    .line 515
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 518
    const/4 v0, -0x1

    if-ne p3, v0, :cond_1

    .line 519
    const-string v0, "SelectPatternDialog"

    const-string v1, "onItemSelected() : Default is clicked"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_vibration_pattern"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 521
    .local v10, temp:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 522
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 524
    .local v9, patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 525
    .local v8, patternLong:[J
    if-eqz v8, :cond_0

    .line 526
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    .line 528
    .end local v8           #patternLong:[J
    .end local v9           #patternString:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 543
    .end local v10           #temp:Ljava/lang/String;
    :goto_0
    return-void

    .line 532
    .end local v6           #c:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 534
    .restart local v6       #c:Landroid/database/Cursor;
    invoke-interface {v6, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 535
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 536
    .local v7, index:I
    const-string v0, "vibration_pattern"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 537
    .restart local v9       #patternString:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/settings/personalvibration/PersonalVibration;->StringToLongArray(Ljava/lang/String;)[J

    move-result-object v8

    .line 538
    .restart local v8       #patternLong:[J
    if-eqz v8, :cond_2

    .line 539
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    const/4 v1, -0x1

    sget-object v2, Landroid/os/Vibrator$MagnitudeType;->CallMagnitude:Landroid/os/Vibrator$MagnitudeType;

    invoke-virtual {v0, v8, v1, v2}, Landroid/os/Vibrator;->vibrate([JILandroid/os/Vibrator$MagnitudeType;)V

    .line 540
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 542
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemSelected() : content://com.android.settings.personalvibration.PersonalVibrationProvider/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 504
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 505
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 506
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 546
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->vib:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 184
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->finish()V

    .line 187
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 166
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 177
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 394
    return-void
.end method

.method showRenameDialog(I)Z
    .locals 13
    .parameter "position"

    .prologue
    const/4 v12, 0x1

    const/4 v2, 0x0

    .line 309
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showRenameDialog() position : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.android.settings.personalvibration.PersonalVibrationProvider"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 312
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 313
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_name : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_pattern : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_pattern"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibration_type : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "vibration_name"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "_id"

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "c.getPosition() : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const v0, 0x7f04008d

    invoke-static {p0, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 320
    .local v11, view:Landroid/view/View;
    const v0, 0x7f0b01a8

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 321
    .local v6, EditPattern:Landroid/widget/TextView;
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 322
    .local v8, id:I
    const/16 v10, 0x1a

    .line 324
    .local v10, maxLength:I
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/personalvibration/SelectPatternDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodManager;

    .line 325
    .local v9, imm:Landroid/view/inputmethod/InputMethodManager;
    const-string v0, "SelectPatternDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const-string v0, "vibration_name"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 327
    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    move-object v0, v6

    .line 328
    check-cast v0, Landroid/widget/EditText;

    new-array v1, v12, [Landroid/text/InputFilter;

    const/4 v3, 0x0

    new-instance v4, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v4, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v4, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 329
    invoke-virtual {v6, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 332
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0909fe

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0907f6

    new-instance v2, Lcom/android/settings/personalvibration/SelectPatternDialog$2;

    invoke-direct {v2, p0, v6, v8, v9}, Lcom/android/settings/personalvibration/SelectPatternDialog$2;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/widget/TextView;ILandroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011a

    new-instance v2, Lcom/android/settings/personalvibration/SelectPatternDialog$1;

    invoke-direct {v2, p0, v9, v6}, Lcom/android/settings/personalvibration/SelectPatternDialog$1;-><init>(Lcom/android/settings/personalvibration/SelectPatternDialog;Landroid/view/inputmethod/InputMethodManager;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    .line 361
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 362
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 364
    iget-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/personalvibration/SelectPatternDialog;->mOkBtn:Landroid/widget/Button;

    .line 365
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 367
    return v12
.end method
