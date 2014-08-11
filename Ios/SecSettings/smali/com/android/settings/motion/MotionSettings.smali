.class public Lcom/android/settings/motion/MotionSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MotionSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mActivity:Landroid/app/Activity;

.field private mAdvancedSettings:Landroid/preference/Preference;

.field private mAirCallAccept:Landroid/preference/CheckBoxPreference;

.field private mAirClip:Landroid/preference/CheckBoxPreference;

.field private mAirGlanceView:Landroid/preference/CheckBoxPreference;

.field private mAirItemMove:Landroid/preference/CheckBoxPreference;

.field private mAirMotionCategory:Landroid/preference/PreferenceCategory;

.field private mAirMotionScroll:Landroid/preference/CheckBoxPreference;

.field private mAirMotionTutorial:Landroid/preference/Preference;

.field private mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mAirNoteSwap:Landroid/preference/CheckBoxPreference;

.field private mAirWebNavigate:Landroid/preference/CheckBoxPreference;

.field private mDoubleTap:Landroid/preference/CheckBoxPreference;

.field private mGlanceView:Landroid/preference/CheckBoxPreference;

.field private mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mMotionUnlockDialog:Landroid/app/AlertDialog;

.field private mPalmSwipe:Landroid/preference/CheckBoxPreference;

.field private mPalmTouch:Landroid/preference/CheckBoxPreference;

.field private mPan:Landroid/preference/CheckBoxPreference;

.field private mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

.field private mPickUp:Landroid/preference/CheckBoxPreference;

.field private mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSensitivitySettings:Landroid/preference/Preference;

.field private mShake:Landroid/preference/CheckBoxPreference;

.field private mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

.field private mTapAndTwist:Landroid/preference/CheckBoxPreference;

.field private mTilt:Landroid/preference/CheckBoxPreference;

.field private mTiltToScrollList:Landroid/preference/CheckBoxPreference;

.field private mTurnOver:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/motion/MotionSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/motion/MotionSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/motion/MotionSettings;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method private broadcastMotionChanged(Z)V
    .locals 2
    .parameter "isEnable"

    .prologue
    .line 482
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.motions.MOTIONS_SETTINGS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, motion_changed:Landroid/content/Intent;
    const-string v1, "isEnable"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    return-void
.end method

.method private showMotionUnlockDialog(I)V
    .locals 4
    .parameter "message_res_id"

    .prologue
    const/4 v3, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 457
    iput-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 460
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0908f8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09055d

    new-instance v2, Lcom/android/settings/motion/MotionSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/motion/MotionSettings$1;-><init>(Lcom/android/settings/motion/MotionSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    .line 474
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mMotionUnlockDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/motion/MotionSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/motion/MotionSettings$2;-><init>(Lcom/android/settings/motion/MotionSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 479
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 329
    if-nez p2, :cond_6

    .line 330
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 331
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const/4 v2, 0x0

    .line 332
    .local v2, motion_unlock:Z
    const/4 v0, 0x0

    .line 333
    .local v0, camera_short_cut:Z
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v5

    if-nez v5, :cond_0

    .line 334
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "lock_motion_tilt_to_unlock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_0

    .line 336
    const/4 v2, 0x1

    .line 340
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_unlock_camera_short_cut"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    .line 341
    const/4 v0, 0x1

    .line 343
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 344
    const v3, 0x7f090948

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    .line 358
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 359
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 360
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 361
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 362
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 363
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 364
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 365
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 366
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 367
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 369
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 370
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, p2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 371
    iget-object v3, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v3, p2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 384
    return-void

    .line 345
    .restart local v0       #camera_short_cut:Z
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .restart local v2       #motion_unlock:Z
    :cond_2
    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 346
    const v3, 0x7f090947

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 347
    :cond_3
    if-eqz v2, :cond_4

    if-nez v0, :cond_4

    .line 348
    const v3, 0x7f090946

    invoke-direct {p0, v3}, Lcom/android/settings/motion/MotionSettings;->showMotionUnlockDialog(I)V

    goto :goto_0

    .line 350
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_5

    :goto_1
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    invoke-direct {p0, p2}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    .line 350
    goto :goto_1

    .line 354
    .end local v0           #camera_short_cut:Z
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    .end local v2           #motion_unlock:Z
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "motion_engine"

    if-eqz p2, :cond_7

    :goto_2
    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    invoke-direct {p0, p2}, Lcom/android/settings/motion/MotionSettings;->broadcastMotionChanged(Z)V

    goto :goto_0

    :cond_7
    move v3, v4

    .line 354
    goto :goto_2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v7, 0x10

    const/4 v8, -0x2

    const/4 v6, 0x0

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 113
    const v4, 0x7f07003e

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->addPreferencesFromResource(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    .line 116
    new-instance v4, Landroid/widget/Switch;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 117
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_0

    .line 118
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 120
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 121
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 123
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 127
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 130
    .end local v1           #padding:I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 134
    const-string v4, "glance_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    .line 135
    const-string v4, "tilt"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    .line 136
    const-string v4, "tilt_to_scroll_list"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    .line 137
    const-string v4, "pan"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    .line 138
    const-string v4, "pan_to_browse_image"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    .line 139
    const-string v4, "shake"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    .line 140
    const-string v4, "double_tap"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    .line 141
    const-string v4, "pick_up"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    .line 142
    const-string v4, "pick_up_to_call_out"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    .line 143
    const-string v4, "turn_over"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    .line 144
    const-string v4, "palm_swipe"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    .line 145
    const-string v4, "palm_touch"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    .line 146
    const-string v4, "tap_and_twist"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    .line 147
    const-string v4, "category_motion_tutorial"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 148
    const-string v4, "category_surface_tutorial"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 149
    const-string v4, "sensitivity_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    .line 150
    const-string v4, "glance_view_advanced_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAdvancedSettings:Landroid/preference/Preference;

    .line 153
    const-string v4, "category_air_motion"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    .line 154
    const-string v4, "air_motion_glance_view"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    .line 155
    const-string v4, "air_motion_web_navigate"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    .line 156
    const-string v4, "air_motion_note_swap"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    .line 157
    const-string v4, "air_motion_scroll"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    .line 158
    const-string v4, "air_motion_item_move"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    .line 159
    const-string v4, "air_motion_clip"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    .line 160
    const-string v4, "air_call_accept"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    .line 161
    const-string v4, "category_air_motion_tutorial"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    .line 162
    const-string v4, "learn_about_air_motion"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionTutorial:Landroid/preference/Preference;

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 166
    .local v3, ps:Landroid/preference/PreferenceScreen;
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    .line 169
    .local v0, isTablet:Z
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 172
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 178
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 181
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 184
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 190
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 193
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 202
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 207
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    const v5, 0x7f090911

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 208
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 213
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mSurfaceTutorialCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    const-string v4, "category_surface"

    invoke-virtual {p0, v4}, Lcom/android/settings/motion/MotionSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 215
    .local v2, pc:Landroid/preference/PreferenceCategory;
    if-eqz v2, :cond_1

    .line 216
    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 221
    :cond_1
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 222
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 224
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 225
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 226
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 227
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 228
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 229
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 230
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionTutorial:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 237
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mMotionTutorialCategory:Landroid/preference/PreferenceCategory;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mAdvancedSettings:Landroid/preference/Preference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 238
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 241
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 388
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1

    .line 389
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_glance_view"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    move v0, v1

    :cond_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 450
    :goto_0
    return v1

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_3

    .line 392
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_zooming"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    :cond_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 394
    :cond_3
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_5

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_tilt_to_list_scrolling"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_4

    move v0, v1

    :cond_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 397
    :cond_5
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_7

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_panning"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 400
    :cond_7
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pan_to_browse_image"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v0, v1

    :cond_8
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 403
    :cond_9
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_shake"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v0, v1

    :cond_a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 406
    :cond_b
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_double_tap"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v0, v1

    :cond_c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 409
    :cond_d
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_f

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_e

    move v0, v1

    :cond_e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 412
    :cond_f
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_11

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_pick_up_to_call_out"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    move v0, v1

    :cond_10
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 415
    :cond_11
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_13

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "motion_overturn"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    move v0, v1

    :cond_12
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 418
    :cond_13
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_15

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_swipe"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    move v0, v1

    :cond_14
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 421
    :cond_15
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_17

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_palm_touch"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_16

    move v0, v1

    :cond_16
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 424
    :cond_17
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_19

    .line 425
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "surface_tap_and_twist"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_18

    move v0, v1

    :cond_18
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 427
    :cond_19
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1b

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_glance_view"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1a

    move v0, v1

    :cond_1a
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 430
    :cond_1b
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1d

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_web_navigate"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirWebNavigate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1c

    move v0, v1

    :cond_1c
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 433
    :cond_1d
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_1f

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_note_swap"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirNoteSwap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1e

    move v0, v1

    :cond_1e
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 436
    :cond_1f
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_21

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_scroll"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirMotionScroll:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_20

    move v0, v1

    :cond_20
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 439
    :cond_21
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_23

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_item_move"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirItemMove:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_22

    move v0, v1

    :cond_22
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 442
    :cond_23
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_25

    .line 443
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_clip"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirClip:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_24

    move v0, v1

    :cond_24
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 445
    :cond_25
    iget-object v2, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_27

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_motion_call_accept"

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mAirCallAccept:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_26

    move v0, v1

    :cond_26
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 450
    :cond_27
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/16 v6, 0x10

    const/4 v8, -0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 245
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 246
    const-string v4, "MotionsSettings"

    const-string v5, "onResume()"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    instance-of v4, v4, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_0

    .line 249
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 251
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3, v3, v1, v3}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 252
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 254
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v6, Landroid/app/ActionBar$LayoutParams;

    const/16 v7, 0x15

    invoke-direct {v6, v8, v8, v7}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v5, v6}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 258
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    .line 261
    .end local v1           #padding:I
    :cond_0
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v4, :cond_1

    .line 262
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/motion/MotionSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    .line 266
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v5, "motion_engine"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 267
    .local v0, motionEngineState:Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 268
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4}, Landroid/widget/Switch;->requestFocus()Z

    .line 270
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 271
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 272
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 273
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 274
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 275
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 276
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 277
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 278
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 279
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 280
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 281
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 282
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 283
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mSensitivitySettings:Landroid/preference/Preference;

    invoke-virtual {v4, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 285
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mGlanceView:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "air_motion_glance_view"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 286
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTilt:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_zooming"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    move v4, v2

    :goto_2
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 287
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTiltToScrollList:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_tilt_to_list_scrolling"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_5

    move v4, v2

    :goto_3
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 288
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPan:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_panning"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_6

    move v4, v2

    :goto_4
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 289
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPanToBrowseImage:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pan_to_browse_image"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_7

    move v4, v2

    :goto_5
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 290
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mShake:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_shake"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_8

    move v4, v2

    :goto_6
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 291
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mDoubleTap:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_double_tap"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_9

    move v4, v2

    :goto_7
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 292
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUp:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_a

    move v4, v2

    :goto_8
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 293
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPickUpToCallOut:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_b

    move v4, v2

    :goto_9
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mTurnOver:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "motion_overturn"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_c

    move v4, v2

    :goto_a
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 295
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmSwipe:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_swipe"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_d

    move v4, v2

    :goto_b
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 296
    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mPalmTouch:Landroid/preference/CheckBoxPreference;

    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_palm_touch"

    invoke-static {v4, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_e

    move v4, v2

    :goto_c
    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 297
    iget-object v4, p0, Lcom/android/settings/motion/MotionSettings;->mTapAndTwist:Landroid/preference/CheckBoxPreference;

    iget-object v5, p0, Lcom/android/settings/motion/MotionSettings;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "surface_tap_and_twist"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_f

    :goto_d
    invoke-virtual {v4, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 318
    return-void

    .end local v0           #motionEngineState:Z
    :cond_2
    move v0, v3

    .line 266
    goto/16 :goto_0

    .restart local v0       #motionEngineState:Z
    :cond_3
    move v4, v3

    .line 285
    goto/16 :goto_1

    :cond_4
    move v4, v3

    .line 286
    goto/16 :goto_2

    :cond_5
    move v4, v3

    .line 287
    goto/16 :goto_3

    :cond_6
    move v4, v3

    .line 288
    goto/16 :goto_4

    :cond_7
    move v4, v3

    .line 289
    goto/16 :goto_5

    :cond_8
    move v4, v3

    .line 290
    goto/16 :goto_6

    :cond_9
    move v4, v3

    .line 291
    goto :goto_7

    :cond_a
    move v4, v3

    .line 292
    goto :goto_8

    :cond_b
    move v4, v3

    .line 293
    goto :goto_9

    :cond_c
    move v4, v3

    .line 294
    goto :goto_a

    :cond_d
    move v4, v3

    .line 295
    goto :goto_b

    :cond_e
    move v4, v3

    .line 296
    goto :goto_c

    :cond_f
    move v2, v3

    .line 297
    goto :goto_d
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 322
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 323
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settings/motion/MotionSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 325
    :cond_0
    return-void
.end method
