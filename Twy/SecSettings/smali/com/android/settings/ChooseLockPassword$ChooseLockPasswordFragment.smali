.class public Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;
.super Landroid/app/Fragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# instance fields
.field clickedEmergencyCall:Z

.field private hasPwdPatternRestriction:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCancelButton:Landroid/widget/Button;

.field private mCheckSimplePassword:Z

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mFirstPin:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderText:Landroid/widget/TextView;

.field private mIsAlphaMode:Z

.field private mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

.field private mKeyboardView:Landroid/inputmethodservice/KeyboardView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Landroid/widget/TextView;

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

.field private mRequestedQuality:I

.field private mStatusBarDisableCount:I

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mTelMgr:Landroid/telephony/TelephonyManager;

.field private mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field private userCancelledPwdChange:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 129
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 130
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 131
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 132
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 133
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 134
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 135
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 136
    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 138
    const/high16 v0, 0x2

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 140
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 158
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->userCancelledPwdChange:Z

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 161
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 166
    new-instance v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$1;-><init>(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    .line 182
    iput-boolean v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 219
    return-void
.end method

.method private checkRepeatingChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 611
    const/4 v2, 0x0

    .line 613
    .local v2, nLoop:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v3, :cond_2

    .line 614
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 615
    .local v0, beforeChar:C
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 616
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v0, v5, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 618
    :goto_1
    const/4 v5, 0x3

    if-lt v2, v5, :cond_1

    .line 619
    const-string v4, "ChooseLockPassword"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "has internal loop password : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :goto_2
    return v3

    .line 617
    .restart local v0       #beforeChar:C
    .restart local v1       #i:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 622
    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 615
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #beforeChar:C
    .end local v1           #i:I
    :cond_2
    move v3, v4

    .line 625
    goto :goto_2
.end method

.method private checkSequentialChars(Ljava/lang/String;)Z
    .locals 7
    .parameter "password"

    .prologue
    const/4 v4, 0x1

    .line 587
    const-string v5, "0123456789"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 588
    .local v1, maxLoop:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 589
    const-string v5, "0123456789"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 590
    .local v2, pattern:Ljava/lang/String;
    const-string v5, "9876543210"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 592
    :cond_0
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :goto_1
    return v4

    .line 588
    .restart local v2       #pattern:Ljava/lang/String;
    .restart local v3       #reversePattern:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 597
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_2
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v1, v5, -0x4

    .line 598
    const/4 v0, 0x0

    :goto_2
    if-gt v0, v1, :cond_5

    .line 599
    const-string v5, "abcdefghijklmnopqrstuvwxyz"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 600
    .restart local v2       #pattern:Ljava/lang/String;
    const-string v5, "zyxwvutsrqponmlkjihgfedcba"

    add-int/lit8 v6, v0, 0x4

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 601
    .restart local v3       #reversePattern:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 602
    :cond_3
    const-string v5, "ChooseLockPassword"

    const-string v6, "has Sequential password"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 598
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 607
    .end local v2           #pattern:Ljava/lang/String;
    .end local v3           #reversePattern:Ljava/lang/String;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private disableStatusBar()V
    .locals 2

    .prologue
    .line 838
    monitor-enter p0

    .line 839
    :try_start_0
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 842
    :cond_0
    monitor-exit p0

    .line 843
    return-void

    .line 842
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private handleNext()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 630
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 631
    .local v4, pin:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 694
    :cond_0
    :goto_0
    return-void

    .line 634
    :cond_1
    const/4 v0, 0x0

    .line 635
    .local v0, errorMsg:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_3

    .line 636
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 637
    if-nez v0, :cond_2

    .line 638
    iput-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 639
    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 640
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    :cond_2
    :goto_1
    if-eqz v0, :cond_0

    .line 692
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-direct {p0, v0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 642
    :cond_3
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v7, v8, :cond_2

    .line 643
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.biometric_weak_fallback"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 646
    .local v2, isFallback:Z
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.signature_fallback"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 651
    .local v3, isSignature:Z
    invoke-static {}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionFeatureEnabled()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 652
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLockExceptPwd(Z)V

    .line 657
    :goto_2
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v7, v4, v8, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;IZZ)V

    .line 660
    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 661
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "is_smpw_key"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 668
    :goto_3
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 669
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const/high16 v8, 0x1000

    invoke-static {v7, v9, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 671
    .local v5, sender:Landroid/app/PendingIntent;
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v5}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 672
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v7, v9}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 676
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "lockscreen.biometric_weak_with_voice_fallback"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 677
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_face_with_voice"

    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 682
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 654
    .end local v1           #intent:Landroid/content/Intent;
    .end local v5           #sender:Landroid/app/PendingIntent;
    :cond_5
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7, v2}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Z)V

    goto :goto_2

    .line 663
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "is_smpw_key"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 679
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v5       #sender:Landroid/app/PendingIntent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "lock_screen_face_with_voice"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    .line 684
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isFallback:Z
    .end local v3           #isSignature:Z
    .end local v5           #sender:Landroid/app/PendingIntent;
    :cond_8
    sget-object v7, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 685
    iget-object v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 686
    .local v6, tmp:Ljava/lang/CharSequence;
    if-eqz v6, :cond_2

    move-object v7, v6

    .line 687
    check-cast v7, Landroid/text/Spannable;

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-static {v7, v9, v8}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_1
.end method

.method private reenableStatusBar()V
    .locals 2

    .prologue
    .line 846
    monitor-enter p0

    .line 847
    :try_start_0
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-lez v0, :cond_0

    .line 848
    iget v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarDisableCount:I

    if-nez v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 852
    :cond_0
    monitor-exit p0

    .line 853
    return-void

    .line 852
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private showError(Ljava/lang/String;Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 4
    .parameter "msg"
    .parameter "next"

    .prologue
    const/4 v2, 0x1

    .line 755
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 757
    .local v0, mesg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 758
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 759
    return-void
.end method

.method private updateUi()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 776
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 779
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v5, :cond_2

    .line 780
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v4}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 782
    :cond_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 789
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v5, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v4, v5, :cond_7

    if-lez v3, :cond_7

    .line 791
    iget-boolean v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v4, :cond_3

    .line 792
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 794
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 818
    :goto_1
    return-void

    .line 785
    :cond_2
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 786
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setClickable(Z)V

    goto :goto_0

    .line 798
    :cond_3
    iget v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v3, v4, :cond_5

    .line 799
    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_4

    const v0, 0x7f090185

    :goto_2
    new-array v1, v1, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 802
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 817
    :goto_3
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1

    .line 799
    :cond_4
    const v0, 0x7f090186

    goto :goto_2

    .line 804
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 805
    if-eqz v0, :cond_6

    .line 806
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 809
    :cond_6
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v2, 0x7f090187

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 810
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 814
    :cond_7
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->alphaHint:I

    :goto_4
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    .line 815
    iget-object v4, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    if-lez v3, :cond_9

    move v0, v1

    :goto_5
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3

    .line 814
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v0, v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->numericHint:I

    goto :goto_4

    :cond_9
    move v0, v2

    .line 815
    goto :goto_5
.end method

.method private validatePassword(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "password"

    .prologue
    .line 460
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-eqz v10, :cond_2

    .line 461
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 462
    const v10, 0x7f09097a

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 581
    :goto_0
    return-object v10

    .line 463
    :cond_0
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10, p1}, Landroid/app/enterprise/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 464
    const v10, 0x7f090191

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 466
    :cond_1
    const/4 v10, 0x0

    goto :goto_0

    .line 471
    :cond_2
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    if-eqz v10, :cond_6

    .line 472
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkSequentialChars(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 473
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_3

    const v10, 0x7f09097c

    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_3
    const v10, 0x7f09097e

    goto :goto_1

    .line 477
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->checkRepeatingChars(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 478
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_5

    const v10, 0x7f09097b

    :goto_2
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_5
    const v10, 0x7f09097d

    goto :goto_2

    .line 484
    :cond_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v10, v11, :cond_8

    .line 485
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_7

    const v10, 0x7f090185

    :goto_3
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    :cond_7
    const v10, 0x7f090186

    goto :goto_3

    .line 489
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v10, v11, :cond_a

    .line 490
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_9

    const v10, 0x7f090189

    :goto_4
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_9
    const v10, 0x7f09018a

    goto :goto_4

    .line 494
    :cond_a
    const/4 v4, 0x0

    .line 495
    .local v4, letters:I
    const/4 v7, 0x0

    .line 496
    .local v7, numbers:I
    const/4 v5, 0x0

    .line 497
    .local v5, lowercase:I
    const/4 v8, 0x0

    .line 498
    .local v8, symbols:I
    const/4 v9, 0x0

    .line 499
    .local v9, uppercase:I
    const/4 v6, 0x0

    .line 500
    .local v6, nonletter:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v3, v10, :cond_10

    .line 501
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 503
    .local v2, c:C
    const/16 v10, 0x20

    if-le v2, v10, :cond_b

    const/16 v10, 0x7f

    if-le v2, v10, :cond_c

    .line 504
    :cond_b
    const v10, 0x7f09018d

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 506
    :cond_c
    const/16 v10, 0x30

    if-lt v2, v10, :cond_d

    const/16 v10, 0x39

    if-gt v2, v10, :cond_d

    .line 507
    add-int/lit8 v7, v7, 0x1

    .line 508
    add-int/lit8 v6, v6, 0x1

    .line 500
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 509
    :cond_d
    const/16 v10, 0x41

    if-lt v2, v10, :cond_e

    const/16 v10, 0x5a

    if-gt v2, v10, :cond_e

    .line 510
    add-int/lit8 v4, v4, 0x1

    .line 511
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 512
    :cond_e
    const/16 v10, 0x61

    if-lt v2, v10, :cond_f

    const/16 v10, 0x7a

    if-gt v2, v10, :cond_f

    .line 513
    add-int/lit8 v4, v4, 0x1

    .line 514
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 516
    :cond_f
    add-int/lit8 v8, v8, 0x1

    .line 517
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 521
    .end local v2           #c:C
    :cond_10
    const/high16 v10, 0x2

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_13

    if-gtz v4, :cond_11

    if-lez v8, :cond_13

    .line 523
    :cond_11
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_12

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    if-gtz v10, :cond_13

    .line 526
    :cond_12
    const v10, 0x7f09018b

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 529
    :cond_13
    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_19

    .line 531
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v10, :cond_14

    .line 532
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const/high16 v11, 0x7f10

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 535
    :cond_14
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v7, v10, :cond_15

    .line 536
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100003

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 539
    :cond_15
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v5, v10, :cond_16

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100001

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 543
    :cond_16
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v9, v10, :cond_17

    .line 544
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100002

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 547
    :cond_17
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v8, v10, :cond_18

    .line 548
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100004

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 551
    :cond_18
    iget v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v6, v10, :cond_1e

    .line 552
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f100005

    iget v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 557
    :cond_19
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_1b

    const/4 v0, 0x1

    .line 559
    .local v0, alphabetic:Z
    :goto_7
    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v10, v11, :cond_1c

    const/4 v1, 0x1

    .line 561
    .local v1, alphanumeric:Z
    :goto_8
    if-nez v0, :cond_1a

    if-eqz v1, :cond_1d

    :cond_1a
    if-nez v4, :cond_1d

    .line 562
    const v10, 0x7f09018e

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 557
    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    :cond_1b
    const/4 v0, 0x0

    goto :goto_7

    .line 559
    .restart local v0       #alphabetic:Z
    :cond_1c
    const/4 v1, 0x0

    goto :goto_8

    .line 564
    .restart local v1       #alphanumeric:Z
    :cond_1d
    if-eqz v1, :cond_1e

    if-nez v7, :cond_1e

    .line 565
    const v10, 0x7f09018f

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 568
    .end local v0           #alphabetic:Z
    .end local v1           #alphanumeric:Z
    :cond_1e
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v10, p1}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_20

    .line 569
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_1f

    const v10, 0x7f090192

    :goto_9
    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    :cond_1f
    const v10, 0x7f09018c

    goto :goto_9

    .line 573
    :cond_20
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getMaximumNumericSequenceLength()I

    move-result v10

    if-nez v10, :cond_21

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/app/enterprise/PasswordPolicy;->getForbiddenStrings(Z)Ljava/util/List;

    move-result-object v10

    if-nez v10, :cond_21

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getMaximumCharacterOccurences()I

    move-result v10

    if-eqz v10, :cond_22

    .line 576
    :cond_21
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10, p1}, Landroid/app/enterprise/PasswordPolicy;->isPasswordPatternMatched(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_22

    .line 577
    const v10, 0x7f090191

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_0

    .line 581
    :cond_22
    const/4 v10, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 822
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 823
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 825
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 826
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 830
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 436
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 437
    const-string v0, "ChooseLockPassword"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult : requestCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " resultCode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    packed-switch p1, :pswitch_data_0

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 440
    :pswitch_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 441
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 438
    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 697
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 752
    :cond_0
    :goto_0
    return-void

    .line 699
    :sswitch_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    goto :goto_0

    .line 704
    :sswitch_1
    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_3

    .line 706
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v0

    if-lez v0, :cond_1

    .line 708
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->userCancelledPwdChange:Z

    .line 709
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const v2, 0xea60

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v3}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 710
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.PWD_CHANGE_TIMEOUT"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v2, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 713
    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0, v1, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 714
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/PasswordPolicy;->setPwdChangeRequested(I)Z

    .line 715
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 717
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 718
    :cond_2
    sget-object v0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 719
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 725
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 729
    :sswitch_2
    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 731
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 732
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 733
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 734
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 735
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 736
    const-string v2, "com.android.phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 738
    :try_start_0
    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 739
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :cond_4
    :goto_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 746
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 740
    :catch_0
    move-exception v0

    goto :goto_1

    .line 697
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b000e -> :sswitch_0
        0x7f0b001e -> :sswitch_1
        0x7f0b005a -> :sswitch_2
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 410
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 411
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, pin:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->onDestroyView()V

    .line 413
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 414
    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 415
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x1

    const/4 v6, 0x4

    .line 223
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 224
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 227
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    .line 230
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 231
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.email"

    const-string v5, "com.android.email.SecurityPolicy$PolicyAdmin"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getSimplePasswordEnabled(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 234
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCheckSimplePassword:Z

    .line 238
    :cond_1
    const-string v2, "lockscreen.password_type"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 240
    const-string v2, "lockscreen.password_min"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 243
    const-string v2, "lockscreen.password_max"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 244
    const-string v2, "lockscreen.password_min_letters"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 246
    const-string v2, "lockscreen.password_min_uppercase"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 248
    const-string v2, "lockscreen.password_min_lowercase"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 250
    const-string v2, "lockscreen.password_min_numeric"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 252
    const-string v2, "lockscreen.password_min_symbols"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 254
    const-string v2, "lockscreen.password_min_nonletter"

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 258
    const/4 v0, 0x4

    .line 259
    .local v0, MIN_PWD_LENGTH:I
    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-lt v2, v6, :cond_8

    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-ge v2, v3, :cond_8

    .line 267
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mAlarmManager:Landroid/app/AlarmManager;

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPowerManager:Landroid/os/PowerManager;

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 271
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v2, :cond_3

    .line 272
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    .line 273
    :cond_3
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2, v7}, Landroid/app/enterprise/PasswordPolicy;->getRequiredPwdPatternRestrictions(Z)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 274
    iput-boolean v7, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    .line 276
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "statusbar"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 279
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v2}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v2

    if-lez v2, :cond_5

    .line 280
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    const/high16 v3, 0x2

    if-lt v2, v3, :cond_5

    .line 281
    iget-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality()I

    move-result v2

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 284
    :cond_5
    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v6, :cond_6

    .line 285
    iput v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 287
    :cond_6
    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v8, :cond_7

    .line 288
    iput v8, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 292
    :cond_7
    new-instance v2, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 293
    return-void

    .line 261
    :cond_8
    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-ge v2, v6, :cond_9

    .line 262
    iput v6, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0

    .line 263
    :cond_9
    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v3, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v3, :cond_2

    .line 264
    iget v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    iput v2, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    goto/16 :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 14
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 300
    const/4 v9, 0x0

    .line 301
    .local v9, view:Landroid/view/View;
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_0

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_8

    :cond_1
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 305
    const v10, 0x7f040023

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 306
    const v10, 0x7f0b005a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    .line 307
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mEmergencyCall:Landroid/widget/Button;

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v12}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v12

    const/4 v13, 0x1

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;IZ)V

    .line 314
    :goto_0
    const v10, 0x7f0b001e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    .line 315
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    sget-boolean v10, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v10, :cond_2

    .line 318
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 319
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 323
    :cond_2
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->getPasswordChangeTimeout()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_3

    .line 325
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setClickable(Z)V

    .line 326
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 329
    :cond_3
    const v10, 0x7f0b000e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 330
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v10, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const/high16 v10, 0x4

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_4

    const/high16 v10, 0x5

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_4

    const/high16 v10, 0x6

    iget v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v10, v11, :cond_4

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->hasPwdPatternRestriction:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v10, :cond_9

    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v10}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v10

    if-lez v10, :cond_9

    :cond_4
    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 339
    const v10, 0x7f0b0053

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/PasswordEntryKeyboardView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    .line 340
    const v10, 0x7f0b0051

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    .line 341
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 342
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 345
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setCursorColor(I)V

    .line 348
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 349
    .local v1, activity:Landroid/app/Activity;
    new-instance v10, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-direct {v10, v1, v11, v12}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;-><init>(Landroid/content/Context;Landroid/inputmethodservice/KeyboardView;Landroid/view/View;)V

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    .line 351
    iget-object v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardHelper:Lcom/android/internal/widget/PasswordEntryKeyboardHelper;

    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_a

    const/4 v10, 0x0

    :goto_2
    invoke-virtual {v11, v10}, Lcom/android/internal/widget/PasswordEntryKeyboardHelper;->setKeyboardMode(I)V

    .line 355
    const v10, 0x7f0b004f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    .line 356
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v10}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 358
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getInputType()I

    move-result v3

    .line 359
    .local v3, currentType:I
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v11, :cond_b

    .end local v3           #currentType:I
    :goto_3
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setInputType(I)V

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 363
    .local v5, intent:Landroid/content/Intent;
    const-string v10, "confirm_credentials"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 364
    .local v2, confirmCredentials:Z
    if-nez p3, :cond_c

    .line 365
    sget-object v10, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 366
    if-eqz v2, :cond_6

    .line 367
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    const/16 v11, 0x3a

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 379
    :cond_6
    :goto_4
    instance-of v10, v1, Landroid/preference/PreferenceActivity;

    if-eqz v10, :cond_7

    move-object v6, v1

    .line 380
    check-cast v6, Landroid/preference/PreferenceActivity;

    .line 381
    .local v6, preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-boolean v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v10, :cond_d

    const v4, 0x7f0904f9

    .line 383
    .local v4, id:I
    :goto_5
    invoke-virtual {p0, v4}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 384
    .local v8, title:Ljava/lang/CharSequence;
    invoke-virtual {v6, v8, v8}, Landroid/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 387
    .end local v4           #id:I
    .end local v6           #preferenceActivity:Landroid/preference/PreferenceActivity;
    .end local v8           #title:Ljava/lang/CharSequence;
    :cond_7
    return-object v9

    .line 310
    .end local v1           #activity:Landroid/app/Activity;
    .end local v2           #confirmCredentials:Z
    .end local v5           #intent:Landroid/content/Intent;
    :cond_8
    const v10, 0x7f040022

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    goto/16 :goto_0

    .line 333
    :cond_9
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 351
    .restart local v1       #activity:Landroid/app/Activity;
    :cond_a
    const/4 v10, 0x1

    goto :goto_2

    .line 359
    .restart local v3       #currentType:I
    :cond_b
    const/16 v3, 0x12

    goto :goto_3

    .line 371
    .end local v3           #currentType:I
    .restart local v2       #confirmCredentials:Z
    .restart local v5       #intent:Landroid/content/Intent;
    :cond_c
    const-string v10, "first_pin"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 372
    const-string v10, "ui_stage"

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 373
    .local v7, state:Ljava/lang/String;
    if-eqz v7, :cond_6

    .line 374
    invoke-static {v7}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 375
    iget-object v10, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v10}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_4

    .line 381
    .end local v7           #state:Ljava/lang/String;
    .restart local v6       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_d
    const v4, 0x7f0904fb

    goto :goto_5
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 763
    if-eqz p2, :cond_0

    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    .line 766
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 767
    const/4 v0, 0x1

    .line 769
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 418
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 419
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 420
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->reenableStatusBar()V

    .line 421
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v0

    if-lez v0, :cond_0

    .line 423
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 393
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->clickedEmergencyCall:Z

    .line 394
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mPwdPolicy:Landroid/app/enterprise/PasswordPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v0

    if-lez v0, :cond_0

    .line 396
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->disableStatusBar()V

    .line 398
    :cond_0
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 399
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mKeyboardView:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v0}, Landroid/inputmethodservice/KeyboardView;->requestFocus()Z

    .line 402
    sget-boolean v0, Lcom/android/settings/ChooseLockPassword;->isChangePwdRequired:Z

    if-eqz v0, :cond_1

    .line 403
    iget-object v0, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f090978

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 406
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 428
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 429
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 834
    return-void
.end method

.method protected updateStage(Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 0
    .parameter "stage"

    .prologue
    .line 449
    iput-object p1, p0, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 450
    invoke-direct {p0}, Lcom/android/settings/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 451
    return-void
.end method
