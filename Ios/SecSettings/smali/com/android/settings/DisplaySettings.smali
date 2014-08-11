.class public Lcom/android/settings/DisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAccelerometerRotationObserver:Landroid/database/ContentObserver;

.field private mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

.field private mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationImage:[I

.field private mAnimationIndex:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mAutoLockmode:Landroid/preference/CheckBoxPreference;

.field private mBrightness:Lcom/android/settings/BrightnessPreference;

.field private mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field private mDirect:I

.field mDirectUri:Landroid/net/Uri;

.field private mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

.field private mFontSize:Lcom/android/settings/FontSizeListPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private mGuideDialog:Landroid/app/AlertDialog;

.field private mIntelligentScreen:Landroid/preference/PreferenceScreen;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mQuickLaunchPreference:Landroid/preference/ListPreference;

.field private mScreen:Landroid/preference/PreferenceCategory;

.field private mScreenTimeoutObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mSleep:Landroid/preference/CheckBoxPreference;

.field private mSmartRoationGuideDialog:Landroid/app/AlertDialog;

.field private mSmartRotation:Landroid/preference/CheckBoxPreference;

.field private mSmartRotationAnimationImage:[I

.field private mSmartStayAnimationImage:[I

.field mSupportFolderType:Z

.field private mTouchKeyLight:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 114
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 128
    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 129
    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    .line 135
    iput v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 136
    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 137
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartRotationAnimationImage:[I

    .line 144
    iput v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 145
    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 155
    iput-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 161
    new-instance v0, Lcom/android/settings/DisplaySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$1;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 206
    new-instance v0, Lcom/android/settings/DisplaySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$2;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    .line 213
    new-instance v0, Lcom/android/settings/DisplaySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$3;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    .line 221
    new-instance v0, Lcom/android/settings/DisplaySettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/DisplaySettings$4;-><init>(Lcom/android/settings/DisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    .line 230
    new-instance v0, Lcom/android/settings/DisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/DisplaySettings$5;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    return-void

    .line 137
    nop

    :array_0
    .array-data 0x4
        0xb1t 0x2t 0x2t 0x7ft
        0xb2t 0x2t 0x2t 0x7ft
        0xb3t 0x2t 0x2t 0x7ft
        0xb4t 0x2t 0x2t 0x7ft
    .end array-data

    .line 138
    :array_1
    .array-data 0x4
        0x89t 0x2t 0x2t 0x7ft
        0x8at 0x2t 0x2t 0x7ft
        0x8bt 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Lcom/android/settings/BrightnessPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/DisplaySettings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/DisplaySettings;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->stopAnimation()V

    return-void
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 23
    .parameter "screenTimeoutPreference"

    .prologue
    .line 486
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v19

    const-string v20, "device_policy"

    invoke-virtual/range {v19 .. v20}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 487
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_1

    const/16 v19, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v3, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    .line 488
    .local v10, maxTimeout:J
    :goto_0
    const-string v19, "ro.csc.sales_code"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 491
    .local v14, sSalesCode:Ljava/lang/String;
    const-string v19, "VZW"

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 492
    const-wide/32 v19, 0x927c0

    move-wide/from16 v0, v19

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 493
    const-wide/16 v19, 0x1

    cmp-long v19, v10, v19

    if-gez v19, :cond_0

    .line 494
    const-wide/32 v10, 0x927c0

    .line 499
    :cond_0
    const-wide/16 v19, 0x0

    cmp-long v19, v10, v19

    if-nez v19, :cond_2

    .line 563
    :goto_1
    return-void

    .line 487
    .end local v10           #maxTimeout:J
    .end local v14           #sSalesCode:Ljava/lang/String;
    :cond_1
    const-wide/16 v10, 0x0

    goto :goto_0

    .line 503
    .restart local v10       #maxTimeout:J
    .restart local v14       #sSalesCode:Ljava/lang/String;
    :cond_2
    const/4 v7, -0x1

    .line 504
    .local v7, idx:I
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 505
    .local v4, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v18

    .line 506
    .local v18, values:[Ljava/lang/CharSequence;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v12, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v13, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 509
    aget-object v19, v18, v6

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v15

    .line 510
    .local v15, timeout:J
    cmp-long v19, v15, v10

    if-gtz v19, :cond_3

    .line 511
    aget-object v19, v4, v6

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    aget-object v19, v18, v6

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v19

    if-nez v19, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v19, v19, v15

    if-gez v19, :cond_3

    .line 518
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v7, v0, :cond_3

    move v7, v6

    .line 508
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 524
    .end local v15           #timeout:J
    :cond_4
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "("

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ")"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 525
    .local v5, entry:Ljava/lang/String;
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v7, v0, :cond_5

    .line 526
    invoke-virtual {v12, v7, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 527
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v7, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 531
    :cond_5
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-eqz v19, :cond_6

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-nez v19, :cond_8

    .line 532
    :cond_6
    const v19, 0x7f090a5d

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 533
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_7
    :goto_3
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 547
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 549
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 550
    .local v17, userPreference:I
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v19, v0

    cmp-long v19, v19, v10

    if-gtz v19, :cond_9

    .line 551
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 561
    :goto_4
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_a

    const/16 v19, 0x1

    :goto_5
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 535
    .end local v17           #userPreference:I
    :cond_8
    const-string v19, "DisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "revisedValues.size() : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    sub-long v8, v10, v19

    .line 537
    .local v8, last_timeout:J
    const-string v19, "DisplaySettings"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "last_timeout : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    const-wide/16 v19, 0x0

    cmp-long v19, v8, v19

    if-lez v19, :cond_7

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v19, v0

    add-int/lit8 v19, v19, -0x1

    aget-object v19, v18, v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v19

    cmp-long v19, v10, v19

    if-gez v19, :cond_7

    .line 539
    const v19, 0x7f090a5d

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 553
    .end local v8           #last_timeout:J
    .restart local v17       #userPreference:I
    :cond_9
    const-string v19, "DisplaySettings"

    const-string v20, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static/range {v19 .. v20}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_4

    .line 561
    :cond_a
    const/16 v19, 0x0

    goto/16 :goto_5
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 11
    .parameter

    .prologue
    const-wide/16 v4, 0x3c

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-wide/16 v7, 0x0

    .line 1044
    const-wide/16 v0, 0x3e8

    div-long v0, p1, v0

    .line 1045
    div-long v2, v0, v4

    .line 1046
    rem-long v4, v0, v4

    .line 1048
    const-string v0, ""

    .line 1049
    cmp-long v1, v2, v7

    if-lez v1, :cond_0

    .line 1050
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100006

    long-to-int v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    new-array v1, v10, [Ljava/lang/Object;

    long-to-int v6, v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v9

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1052
    :cond_0
    cmp-long v1, v2, v7

    if-lez v1, :cond_1

    cmp-long v1, v4, v7

    if-lez v1, :cond_1

    .line 1053
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    :cond_1
    cmp-long v1, v4, v7

    if-lez v1, :cond_2

    .line 1056
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100007

    long-to-int v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v1

    new-array v2, v10, [Ljava/lang/Object;

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    :cond_2
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTimeoutNewEntry : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    return-object v0
.end method

.method private isInDefaultTimeoutList(J)Z
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1036
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a0003

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    move v0, v1

    .line 1037
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 1038
    aget-object v3, v2, v0

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_1

    const/4 v1, 0x1

    .line 1040
    :cond_0
    return v1

    .line 1037
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private refreshScreenTimeoutList(Landroid/preference/ListPreference;)V
    .locals 18
    .parameter "screenTimeoutPreference"

    .prologue
    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    const-string v15, "device_policy"

    invoke-virtual {v14, v15}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 570
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v6

    .line 571
    .local v6, maxTimeout:J
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "screen_off_timeout"

    const-wide/16 v16, 0x7530

    invoke-static/range {v14 .. v17}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    .line 573
    .local v1, currentTimeout:J
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 574
    .local v4, entries:[Ljava/lang/CharSequence;
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v13

    .line 575
    .local v13, values:[Ljava/lang/CharSequence;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v8, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 577
    .local v9, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    array-length v14, v13

    if-ge v5, v14, :cond_2

    .line 578
    aget-object v14, v13, v5

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 580
    .local v10, timeout:J
    cmp-long v14, v10, v6

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v14

    if-nez v14, :cond_1

    cmp-long v14, v1, v10

    if-eqz v14, :cond_1

    .line 577
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 570
    .end local v1           #currentTimeout:J
    .end local v4           #entries:[Ljava/lang/CharSequence;
    .end local v5           #i:I
    .end local v6           #maxTimeout:J
    .end local v8           #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v9           #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v10           #timeout:J
    .end local v13           #values:[Ljava/lang/CharSequence;
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 583
    .restart local v1       #currentTimeout:J
    .restart local v4       #entries:[Ljava/lang/CharSequence;
    .restart local v5       #i:I
    .restart local v6       #maxTimeout:J
    .restart local v8       #revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v9       #revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v10       #timeout:J
    .restart local v13       #values:[Ljava/lang/CharSequence;
    :cond_1
    aget-object v14, v4, v5

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    aget-object v14, v13, v5

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 587
    .end local v10           #timeout:J
    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 589
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    new-array v14, v14, [Ljava/lang/CharSequence;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 591
    invoke-virtual/range {p1 .. p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 592
    .local v12, userPreference:I
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "startAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 266
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    goto :goto_0
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    const-string v0, "DisplaySettings"

    const-string v1, "stopAnimation()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAccelerometerRotationCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 721
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 722
    return-void
.end method

.method private updateAccelerometerRotationSecondCheckbox()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 725
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {v1, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 726
    return-void
.end method

.method private updateAnimation()V
    .locals 4

    .prologue
    const/16 v3, 0x66

    .line 241
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CHANGE_ANIMATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 245
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 248
    :cond_2
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    .line 250
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 251
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->stopAnimation()V

    .line 252
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationIndex:I

    if-nez v0, :cond_3

    .line 253
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 255
    :cond_3
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAnimationHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter "fontSizePref"

    .prologue
    .line 1066
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 1067
    .local v0, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 1069
    .local v4, values:[Ljava/lang/CharSequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    .local v2, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1071
    .local v3, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 1072
    add-int/lit8 v5, v1, 0x2

    aget-object v5, v0, v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1073
    aget-object v5, v4, v1

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1071
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1076
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1078
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1080
    return-void
.end method

.method private updateState()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 700
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationCheckbox()V

    .line 701
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 704
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 706
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "intelligent_rotation_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 707
    :goto_1
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 709
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "display_battery_percentage"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 711
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "button_key_light"

    const/16 v5, 0x5dc

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 713
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 714
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAccelerometerRotationSecondCheckbox()V

    .line 715
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "sub_lcd_auto_lock"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 716
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "key_night_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_5

    :goto_4
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 718
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 703
    goto :goto_0

    :cond_2
    move v0, v2

    .line 706
    goto :goto_1

    :cond_3
    move v0, v2

    .line 709
    goto :goto_2

    :cond_4
    move v0, v2

    .line 715
    goto :goto_3

    :cond_5
    move v1, v2

    .line 716
    goto :goto_4
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 15
    .parameter "currentTimeout"

    .prologue
    .line 438
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 439
    .local v6, preference:Landroid/preference/ListPreference;
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v11

    const-string v12, "device_policy"

    invoke-virtual {v11, v12}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    .line 440
    .local v3, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v3, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 443
    .local v0, adminTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, p1, v11

    if-gez v11, :cond_1

    .line 445
    const-string v7, ""

    .line 482
    .local v7, summary:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 483
    return-void

    .line 440
    .end local v0           #adminTimeout:J
    .end local v7           #summary:Ljava/lang/String;
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 446
    .restart local v0       #adminTimeout:J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v11

    if-nez v11, :cond_2

    cmp-long v11, p1, v0

    if-gtz v11, :cond_2

    .line 447
    const v11, 0x7f0903dd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #summary:Ljava/lang/String;
    goto :goto_1

    .line 450
    .end local v7           #summary:Ljava/lang/String;
    :cond_2
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 451
    .local v4, entries:[Ljava/lang/CharSequence;
    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 452
    .local v10, values:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .line 453
    .local v2, best:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v11, v10

    if-ge v5, v11, :cond_4

    .line 454
    aget-object v11, v10, v5

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 455
    .local v8, timeout:J
    cmp-long v11, p1, v8

    if-ltz v11, :cond_3

    .line 456
    move v2, v5

    .line 453
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 462
    .end local v8           #timeout:J
    :cond_4
    array-length v11, v4

    if-eqz v11, :cond_5

    array-length v11, v10

    if-nez v11, :cond_6

    .line 463
    :cond_5
    const v11, 0x7f0903dd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #summary:Ljava/lang/String;
    goto :goto_1

    .line 465
    .end local v7           #summary:Ljava/lang/String;
    :cond_6
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    cmp-long v11, v11, v0

    if-gez v11, :cond_7

    cmp-long v11, v0, p1

    if-gez v11, :cond_7

    .line 466
    const-string v11, "DisplaySettings"

    const-string v12, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const v11, 0x7f0903dd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #summary:Ljava/lang/String;
    goto/16 :goto_1

    .line 469
    .end local v7           #summary:Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v11

    if-eqz v11, :cond_9

    cmp-long v11, p1, v0

    if-ltz v11, :cond_8

    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-nez v11, :cond_9

    .line 470
    :cond_8
    const v11, 0x7f0903dd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aget-object v14, v4, v2

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #summary:Ljava/lang/String;
    goto/16 :goto_1

    .line 472
    .end local v7           #summary:Ljava/lang/String;
    :cond_9
    const-wide/16 v11, 0x0

    cmp-long v11, v0, v11

    if-nez v11, :cond_a

    .line 473
    const v11, 0x7f0903dd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct/range {p0 .. p2}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #summary:Ljava/lang/String;
    goto/16 :goto_1

    .line 475
    .end local v7           #summary:Ljava/lang/String;
    :cond_a
    const v11, 0x7f0903dd

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .restart local v7       #summary:Ljava/lang/String;
    goto/16 :goto_1
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter "val"

    .prologue
    .line 598
    iget-boolean v4, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v4, :cond_0

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, indices:[Ljava/lang/String;
    :goto_0
    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 604
    .local v2, lastVal:F
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    array-length v4, v1

    if-ge v0, v4, :cond_2

    .line 605
    aget-object v4, v1, v0

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 606
    .local v3, thisVal:F
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v4, v2

    cmpg-float v4, p1, v4

    if-gez v4, :cond_1

    .line 607
    add-int/lit8 v4, v0, -0x1

    .line 611
    .end local v3           #thisVal:F
    :goto_2
    return v4

    .line 601
    .end local v0           #i:I
    .end local v1           #indices:[Ljava/lang/String;
    .end local v2           #lastVal:F
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a000b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .restart local v1       #indices:[Ljava/lang/String;
    goto :goto_0

    .line 609
    .restart local v0       #i:I
    .restart local v2       #lastVal:F
    .restart local v3       #thisVal:F
    :cond_1
    move v2, v3

    .line 604
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 611
    .end local v3           #thisVal:F
    :cond_2
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x1

    .line 187
    iget-boolean v1, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    .line 188
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v1, v3, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(Z)V

    .line 199
    :cond_0
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    return-void

    .line 192
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 194
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v1, v3}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(Z)V

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DisplaySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 281
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 284
    .local v5, resolver:Landroid/content/ContentResolver;
    const v7, 0x7f070025

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 287
    const-string v7, "font_size"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/FontSizeListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    .line 288
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings/FontSizeListPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 289
    const-string v7, "brightness"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/BrightnessPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    .line 290
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v7, p0}, Lcom/android/settings/BrightnessPreference;->setObject(Lcom/android/settings/DisplaySettings;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 293
    .local v0, activity:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    .line 294
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    if-eqz v7, :cond_0

    .line 295
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mDirectUri:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 296
    const-string v7, "Direct"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "mDirect : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 303
    const-string v7, "intelligent_screen"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mIntelligentScreen:Landroid/preference/PreferenceScreen;

    .line 304
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mIntelligentScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 307
    const-string v7, "intelligent_sleep"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 314
    const-string v7, "intelligent_rotation"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 320
    const-string v7, "accelerometer"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 321
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 323
    const-string v7, "brightness"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/BrightnessPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    .line 325
    const-string v7, "screen_timeout"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 326
    const-string v7, "screen_off_timeout"

    const-wide/16 v10, 0x7530

    invoke-static {v5, v7, v10, v11}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 327
    .local v2, currentTimeout:J
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 328
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 329
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 330
    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 332
    const-string v7, "font_size"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 333
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 335
    const-string v7, "display_battery_level"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 338
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 341
    :cond_1
    const-string v7, "notification_pulse"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 342
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x111001a

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_6

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 355
    :cond_2
    :goto_0
    const-string v7, "touch_key_light"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    .line 356
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x1110037

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eq v7, v8, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v10, 0x7f0c0012

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-nez v7, :cond_4

    .line 359
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 361
    :cond_4
    const-string v7, "power_saving_mode"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 362
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    const-string v7, "power_saving_mode"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 365
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v7, "mode"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 366
    const-string v7, "DisplaySettings"

    const-string v10, "remove Screen mode"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    const-string v7, "screen_category"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mScreen:Landroid/preference/PreferenceCategory;

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mScreen:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    const-string v7, "g_sensor"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 394
    const-string v7, "DisplaySettings"

    const-string v10, "remove Gyro calibration"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v7, "quick_launch"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    .line 399
    const-string v7, "quick_launch_app"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 401
    .local v1, currentQuicklaunch:I
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 402
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 405
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mQuickLaunchPreference:Landroid/preference/ListPreference;

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 407
    :cond_5
    const-string v7, "accelerometer_second"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    .line 408
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v9}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 409
    const-string v7, "sub_lcd_auto_lock"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    .line 410
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    const-string v7, "sub_lcd_auto_lock"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_9

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 411
    const-string v7, "key_backlight"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    .line 413
    .local v4, keyBacklightPreference:Landroid/preference/ListPreference;
    const-string v7, "key_backlight_timeout"

    const/16 v10, 0xbb8

    invoke-static {v5, v7, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 416
    const-string v7, "key_night_mode"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/CheckBoxPreference;

    iput-object v7, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    .line 417
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    const-string v7, "key_night_mode"

    invoke-static {v5, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_a

    move v7, v8

    :goto_3
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 419
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    .line 420
    iget-boolean v7, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v7, :cond_b

    .line 421
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f090c05

    invoke-virtual {v7, v10}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 422
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    const v10, 0x7f090c10

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v9

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v11, v8

    invoke-virtual {p0, v10, v11}, Lcom/android/settings/DisplaySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 424
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    const v8, 0x7f090a55

    invoke-virtual {v7, v8}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 425
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-direct {p0, v7}, Lcom/android/settings/DisplaySettings;->updateFontsizeList(Landroid/preference/ListPreference;)V

    .line 432
    :goto_4
    return-void

    .line 346
    .end local v1           #currentQuicklaunch:I
    .end local v4           #keyBacklightPreference:Landroid/preference/ListPreference;
    :cond_6
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v7, :cond_2

    .line 347
    iget-object v10, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v7, "notification_light_pulse"

    invoke-static {v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    if-ne v7, v8, :cond_7

    move v7, v8

    :goto_5
    invoke-virtual {v10, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 348
    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 350
    :catch_0
    move-exception v6

    .line 351
    .local v6, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v7, "DisplaySettings"

    const-string v10, "notification_light_pulse not found"

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v6           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_7
    move v7, v9

    .line 347
    goto :goto_5

    :cond_8
    move v7, v9

    .line 362
    goto/16 :goto_1

    .restart local v1       #currentQuicklaunch:I
    :cond_9
    move v7, v9

    .line 410
    goto/16 :goto_2

    .restart local v4       #keyBacklightPreference:Landroid/preference/ListPreference;
    :cond_a
    move v7, v9

    .line 417
    goto :goto_3

    .line 427
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 429
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 915
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 916
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 917
    const v3, 0x7f0400a2

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 918
    const v0, 0x7f0b00e4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 919
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 921
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 936
    :goto_0
    return-object v0

    .line 923
    :pswitch_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09000f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x104000a

    new-instance v4, Lcom/android/settings/DisplaySettings$6;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/settings/DisplaySettings$6;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 921
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 680
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 681
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->stopAnimation()V

    .line 683
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 686
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 688
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 691
    iget-boolean v0, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mBrightnessPreference:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 696
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    .line 826
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 827
    const-string v1, "screen_timeout"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 828
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 830
    int-to-long v2, v1

    invoke-direct {p0, v2, v3}, Lcom/android/settings/DisplaySettings;->isInDefaultTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 831
    const-string v0, "DisplaySettings"

    const-string v2, "isInDefaultTimeoutList = true"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_off_timeout_rollback"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 840
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "screen_off_timeout"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 841
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->refreshScreenTimeoutList(Landroid/preference/ListPreference;)V

    .line 842
    int-to-long v0, v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/DisplaySettings;->updateTimeoutPreferenceDescription(J)V

    .line 843
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SCREENTIMEOUT_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 910
    :cond_1
    :goto_1
    return v6

    .line 834
    :catch_0
    move-exception v0

    .line 835
    const-string v2, "DisplaySettings"

    const-string v3, "could not persist screen timeout setting"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 845
    :catch_1
    move-exception v0

    .line 846
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist screen timeout setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 848
    :cond_2
    const-string v1, "font_size"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v0, p2

    .line 850
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v0

    .line 851
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "font_size"

    invoke-static {v1, v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 852
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v2, :cond_3

    .line 853
    add-int/lit8 v0, v0, 0x1

    .line 855
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 856
    if-ge v1, v4, :cond_6

    if-ne v0, v4, :cond_6

    .line 857
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 858
    const-string v2, "large_font"

    invoke-virtual {v1, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 859
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 861
    const-string v1, "DisplaySettings"

    const-string v2, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 872
    const-string v2, "pref_font_noti"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 874
    if-ne v0, v4, :cond_5

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    if-eq v0, v4, :cond_5

    .line 875
    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->showDialog(I)V

    .line 877
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/settings/DisplaySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 878
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/DisplaySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    goto/16 :goto_1

    .line 862
    :cond_6
    if-ne v1, v4, :cond_4

    if-ge v0, v4, :cond_4

    .line 863
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 864
    const-string v2, "large_font"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 867
    const-string v1, "DisplaySettings"

    const-string v2, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 880
    :cond_7
    const-string v1, "touch_key_light"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 881
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 883
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "button_key_light"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 884
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mTouchKeyLight:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_1

    .line 885
    :catch_2
    move-exception v0

    .line 886
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist Touch key light setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 888
    :cond_8
    const-string v1, "quick_launch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 889
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 891
    :try_start_3
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_launch_app"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 893
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 895
    const-string v0, "DisplaySettings"

    const-string v1, "android.settings.QUICKLAUNCH_CHANGED is broadcasted"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 897
    :catch_3
    move-exception v0

    .line 898
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist quick launch setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 900
    :cond_9
    const-string v1, "key_backlight"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 901
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 903
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "key_backlight_timeout"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 905
    :catch_4
    move-exception v0

    .line 906
    const-string v1, "DisplaySettings"

    const-string v2, "could not persist key backlight setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 758
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 760
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 761
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 762
    invoke-interface {v0}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    :goto_1
    return v1

    .line 766
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 768
    invoke-interface {v0}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 769
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 778
    :catch_0
    move-exception v0

    .line 779
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to save auto-rotate setting"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 771
    :cond_2
    const/4 v1, -0x1

    :try_start_2
    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_0

    .line 775
    :cond_3
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 781
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 782
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mDisplayBatteryLevel:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 783
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_battery_percentage"

    if-eqz v0, :cond_5

    move v0, v1

    :goto_2
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    .line 785
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 786
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 787
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "notification_light_pulse"

    if-eqz v0, :cond_7

    move v2, v1

    :cond_7
    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 789
    :cond_8
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 790
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "power_saving_mode"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_9

    :goto_3
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 791
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)Z

    goto/16 :goto_0

    :cond_9
    move v1, v2

    .line 790
    goto :goto_3

    .line 792
    :cond_a
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSleep:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v0, p2

    .line 793
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_sleep_mode"

    if-eqz v0, :cond_b

    :goto_4
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 795
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 796
    const-string v3, "pref_smart_stay_noti"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 798
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 799
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showGuideDialog()V

    goto/16 :goto_0

    :cond_b
    move v1, v2

    .line 794
    goto :goto_4

    .line 800
    :cond_c
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartRotation:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p2

    .line 801
    check-cast v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 802
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_rotation_mode"

    if-eqz v0, :cond_d

    :goto_5
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 803
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 804
    const-string v3, "pref_smart_rotation_noti"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 807
    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->showSmartRatationGuideDialog()V

    goto/16 :goto_0

    :cond_d
    move v1, v2

    .line 802
    goto :goto_5

    .line 809
    :cond_e
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 810
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerSecond:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 811
    if-nez v0, :cond_f

    .line 812
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "user_rotation_second"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 814
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accelerometer_rotation_second"

    if-eqz v0, :cond_10

    :goto_6
    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_10
    move v1, v2

    goto :goto_6

    .line 815
    :cond_11
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 816
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "sub_lcd_auto_lock"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAutoLockmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_12

    :goto_7
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_12
    move v1, v2

    goto :goto_7

    .line 818
    :cond_13
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "key_night_mode"

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mKeyBacklightmode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_14

    :goto_8
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_14
    move v1, v2

    goto :goto_8
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 645
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 646
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateAnimation()V

    .line 647
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->updateState()V

    .line 649
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_off_timeout"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mScreenTimeoutObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 657
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 658
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 659
    const-string v2, "com.android.settings.action.FONT_SIZE_CLOSE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 661
    const-string v2, "DisplaySettings"

    const-string v3, "onResume() : registerReceiver Intent.ACTION_BATTERY_CHANGED"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 666
    .local v1, resolver:Landroid/content/ContentResolver;
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_2

    .line 667
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mBrightness:Lcom/android/settings/BrightnessPreference;

    invoke-virtual {v2}, Lcom/android/settings/BrightnessPreference;->directBrightness()V

    .line 673
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v2, :cond_1

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAccelerometerRotationSecondObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 676
    :cond_1
    return-void

    .line 668
    :cond_2
    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 669
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mFontSize:Lcom/android/settings/FontSizeListPreference;

    invoke-virtual {v2}, Lcom/android/settings/FontSizeListPreference;->directFontsize()V

    goto :goto_0
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 9
    .parameter "pref"

    .prologue
    const/4 v8, 0x0

    .line 616
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->floatToIndex(F)I

    move-result v3

    .line 624
    .local v3, index:I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : font index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "font_size"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 626
    .local v1, fontIndex:I
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Settings.System.FONT_SIZE : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const/4 v5, 0x3

    if-ne v3, v5, :cond_0

    const/4 v5, 0x4

    if-ne v1, v5, :cond_0

    .line 628
    const/4 v3, 0x4

    .line 629
    const-string v5, "DisplaySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 634
    iget-boolean v5, p0, Lcom/android/settings/DisplaySettings;->mSupportFolderType:Z

    if-eqz v5, :cond_1

    .line 635
    add-int/lit8 v3, v3, 0x1

    .line 638
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 639
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0a000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 640
    .local v2, fontSizeNames:[Ljava/lang/String;
    const v5, 0x7f0903eb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aget-object v7, v2, v3

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 641
    return-void

    .line 617
    .end local v1           #fontIndex:I
    .end local v2           #fontSizeNames:[Ljava/lang/String;
    .end local v3           #index:I
    .end local v4           #res:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 618
    .local v0, e:Landroid/os/RemoteException;
    const-string v5, "DisplaySettings"

    const-string v6, "Unable to retrieve font size"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public showGuideDialog()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f0b00e6

    .line 942
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 944
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 945
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 947
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 949
    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 952
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 953
    const v1, 0x7f0400a9

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 954
    const v0, 0x7f0b00e4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 955
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 957
    const v1, 0x7f0b01fa

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 958
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090a50

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    const v1, 0x7f0b01fb

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 960
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090a51

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 961
    const v1, 0x7f0b01fc

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 962
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090a52

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 963
    const v1, 0x7f0b01fd

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 964
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090b8c

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 966
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 967
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartStayAnimationImage:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    .line 969
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 970
    const v1, 0x7f090a4a

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 972
    const v1, 0x104000a

    new-instance v4, Lcom/android/settings/DisplaySettings$7;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/settings/DisplaySettings$7;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 978
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    .line 979
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 980
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/DisplaySettings$8;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$8;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 985
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->startAnimation()V

    .line 986
    return-void
.end method

.method public showSmartRatationGuideDialog()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const v7, 0x7f0b00e6

    .line 990
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 992
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 993
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 995
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 997
    iput-object v4, p0, Lcom/android/settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    .line 1000
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1001
    const v1, 0x7f0400a8

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1002
    const v0, 0x7f0b00e4

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1003
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 1005
    const v1, 0x7f0b01f4

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1006
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090a51

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    const v1, 0x7f0b01f5

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1008
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090a52

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1009
    const v1, 0x7f0b01f6

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1010
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090b8c

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1012
    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationView:Landroid/widget/ImageView;

    .line 1013
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mSmartRotationAnimationImage:[I

    iput-object v1, p0, Lcom/android/settings/DisplaySettings;->mAnimationImage:[I

    .line 1015
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1016
    const v1, 0x7f090a4c

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1018
    const v1, 0x104000a

    new-instance v4, Lcom/android/settings/DisplaySettings$9;

    invoke-direct {v4, p0, v3, v0}, Lcom/android/settings/DisplaySettings$9;-><init>(Lcom/android/settings/DisplaySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1024
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    .line 1025
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1026
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mSmartRoationGuideDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/settings/DisplaySettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/DisplaySettings$10;-><init>(Lcom/android/settings/DisplaySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1031
    invoke-direct {p0}, Lcom/android/settings/DisplaySettings;->startAnimation()V

    .line 1032
    return-void
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 731
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 732
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/high16 v1, 0x3fc0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 734
    const v0, 0x3fa66666

    .line 735
    const-string v1, "DisplaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 741
    iget v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 742
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference1 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    .line 744
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 754
    :goto_0
    return-void

    .line 747
    :cond_1
    const-string v0, "DisplaySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeFontSizePreference2 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/DisplaySettings;->mDirect:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 751
    :catch_0
    move-exception v0

    .line 752
    const-string v0, "DisplaySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
