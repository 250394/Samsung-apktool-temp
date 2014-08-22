.class public Lcom/android/settings/BrightnessPreference;
.super Landroid/preference/SeekBarDialogPreference;
.source "BrightnessPreference.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/BrightnessPreference$SavedState;
    }
.end annotation


# instance fields
.field auto_detail_custom_layout:Landroid/widget/LinearLayout;

.field auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

.field private currentLevel:I

.field private isWidget:Ljava/lang/Boolean;

.field private mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

.field private mAutoDetailSeekBar:Landroid/widget/SeekBar;

.field private mAutoNotiTextView:Landroid/widget/TextView;

.field private mAutomaticAvailable:Z

.field private mBrightness:Lcom/android/settings/DisplaySettings;

.field private mBrightnessModeObserver:Landroid/database/ContentObserver;

.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private mCheckBox:Landroid/widget/CheckBox;

.field private mCurrentProgress:I

.field private mCustomBar:[Landroid/widget/ImageView;

.field private mFlipCloseStatus:Z

.field private mMaxBrightness:I

.field private mOldAutoDetailLevel:I

.field private mOldAutomatic:I

.field private mOldBrightness:I

.field private mRestoredOldState:Z

.field private mScreenBrightnessDim:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field mSharedPreference:Landroid/content/SharedPreferences;

.field private mSupportFolderType:Z

.field private mTextView:Landroid/widget/TextView;

.field seekbar_layout:Landroid/widget/LinearLayout;

.field supportAutoBrightnessDetail:Z

.field supportDA:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v5, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Landroid/preference/SeekBarDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 69
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 87
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 90
    iput v5, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 92
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    .line 93
    iput-boolean v5, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x10e001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    iput v4, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 107
    new-instance v4, Lcom/android/settings/BrightnessPreference$1;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/BrightnessPreference$1;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 114
    new-instance v4, Lcom/android/settings/BrightnessPreference$2;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/BrightnessPreference$2;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    .line 121
    new-instance v4, Lcom/android/settings/BrightnessPreference$3;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-direct {v4, p0, v5}, Lcom/android/settings/BrightnessPreference$3;-><init>(Lcom/android/settings/BrightnessPreference;Landroid/os/Handler;)V

    iput-object v4, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    .line 142
    const-string v4, "BrightnessPreference"

    const-string v5, "getSensorMgr"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    const-string v4, "sensor"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    .line 144
    .local v2, sensorMgr:Landroid/hardware/SensorManager;
    const-string v4, "BrightnessPreference"

    const-string v5, "getsensorList"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v1

    .line 146
    .local v1, sensorList:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 147
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    .line 149
    .local v3, sensorType:I
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    .line 151
    const-string v4, "BrightnessPreference"

    const-string v5, "EnableAuto"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    .line 146
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    .end local v3           #sensorType:I
    :cond_1
    const-string v4, "ro.lcd_min_brightness"

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    .line 159
    const-string v4, "BrightnessPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "min Brightness : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    const v4, 0x7f0400a0

    invoke-virtual {p0, v4}, Lcom/android/settings/BrightnessPreference;->setDialogLayoutResource(I)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->isSupportAutoBrightnessDetail()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    .line 164
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->isSupportDA()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    .line 165
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onBrightnessModeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/BrightnessPreference;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->onAutoBrightnessDetailChanged()V

    return-void
.end method

.method private getBrightness(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 391
    move v0, p1

    .line 393
    .local v0, brightness:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 397
    :goto_0
    return v0

    .line 395
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getBrightnessMode(I)I
    .locals 3
    .parameter "defaultValue"

    .prologue
    .line 401
    move v0, p1

    .line 403
    .local v0, brightnessMode:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 407
    :goto_0
    return v0

    .line 405
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isSupportAutoBrightnessDetail()Z
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method private isSupportDA()Z
    .locals 1

    .prologue
    .line 417
    const/4 v0, 0x0

    return v0
.end method

.method private onAutoBrightnessDetailChanged()V
    .locals 4

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 427
    .local v0, value:I
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    .line 428
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 430
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    .line 433
    :cond_0
    return-void
.end method

.method private onBrightnessChanged()V
    .locals 3

    .prologue
    .line 421
    const/16 v1, 0xff

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->getBrightness(I)I

    move-result v0

    .line 422
    .local v0, brightness:I
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 423
    return-void
.end method

.method private onBrightnessModeChanged()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 436
    invoke-direct {p0, v2}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 437
    .local v0, checked:Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 439
    if-eqz v0, :cond_3

    .line 440
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 441
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_2

    .line 443
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    :cond_0
    :goto_1
    return-void

    .end local v0           #checked:Z
    :cond_1
    move v0, v2

    .line 436
    goto :goto_0

    .line 447
    .restart local v0       #checked:Z
    :cond_2
    const-string v1, "BrightnessPreference"

    const-string v3, "setMode : auto_detail_custom_layout.setVisibility(View.VISIBLE)"

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v3, 0x7f090b2e

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 455
    :goto_2
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 459
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 461
    iget-boolean v1, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v1, :cond_4

    .line 462
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detail_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 466
    :cond_4
    const-string v1, "BrightnessPreference"

    const-string v2, "setMode : auto_detaauto_detail_custom_layoutil_seekbar_layout.setVisibility(View.GONE)"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const v2, 0x7f09055d

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 473
    :goto_3
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 470
    :catch_0
    move-exception v1

    goto :goto_3

    .line 452
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private restoreOldState()V
    .locals 3

    .prologue
    .line 509
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 511
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_1

    .line 512
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 514
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-nez v0, :cond_5

    .line 515
    :cond_2
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 521
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_4

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 525
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    goto :goto_0

    .line 517
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v0, :cond_3

    .line 518
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_1
.end method

.method private setBrightness(I)V
    .locals 2
    .parameter "brightness"

    .prologue
    .line 530
    :try_start_0
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 532
    .local v0, power:Landroid/os/IPowerManager;
    if-eqz v0, :cond_0

    .line 533
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v0           #power:Landroid/os/IPowerManager;
    :cond_0
    :goto_0
    return-void

    .line 535
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    .line 541
    if-ne p1, v2, :cond_1

    .line 543
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 548
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 551
    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 554
    :cond_0
    return-void

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public directBrightness()V
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 131
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onClick()V

    .line 132
    return-void
.end method

.method initCustomBar(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 286
    const/16 v0, 0xa

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    .line 287
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x0

    const v0, 0x7f0b01d7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 288
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x1

    const v0, 0x7f0b01d8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 289
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x2

    const v0, 0x7f0b01d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 290
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x3

    const v0, 0x7f0b01da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 291
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x4

    const v0, 0x7f0b01db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 292
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x5

    const v0, 0x7f0b01dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 293
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x6

    const v0, 0x7f0b01dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 294
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/4 v2, 0x7

    const v0, 0x7f0b01de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 295
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x8

    const v0, 0x7f0b01df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 296
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    const/16 v2, 0x9

    const v0, 0x7f0b01e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    aput-object v0, v1, v2

    .line 297
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/16 v7, 0x8

    const/4 v4, 0x0

    .line 193
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 196
    const v2, 0x7f0b01cf

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 197
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    rsub-int v5, v5, 0xff

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 199
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v2, :cond_0

    .line 200
    const v2, 0x7f0b01d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    .line 201
    const v2, 0x7f0b01d6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    .line 202
    const v2, 0x7f0b01d2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    .line 203
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 206
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 208
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-nez v2, :cond_2

    .line 209
    const-string v2, "BrightnessPreference"

    const-string v5, "onBindDialogView : auto_detail_seekbar_layout.setVisibility(View.VISIBLE)"

    invoke-static {v2, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    :goto_0
    const v2, 0x7f0b01d5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    .line 220
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    const/16 v5, 0xc8

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setMax(I)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_brightness_detail"

    const/16 v6, 0x64

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    .line 222
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 223
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mOldAutoDetailLevel:I

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 224
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 228
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v2, :cond_0

    .line 229
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 230
    invoke-virtual {p1, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 232
    invoke-virtual {p0, p1}, Lcom/android/settings/BrightnessPreference;->initCustomBar(Landroid/view/View;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    .line 237
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 240
    const v2, 0x7f0b01e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    .line 241
    const v2, 0x7f0b01d1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 245
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v5, "pref_siop_brightness"

    const/4 v6, -0x1

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    .line 247
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessPreference;->returnMaxBrightness(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    .line 248
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-le v2, v5, :cond_4

    .line 249
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 252
    :goto_1
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    const/16 v5, 0xff

    if-ne v2, v5, :cond_1

    .line 253
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    :cond_1
    const v2, 0x7f0b01d0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    .line 257
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mAutomaticAvailable:Z

    if-eqz v2, :cond_6

    .line 258
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 259
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 260
    iget-object v5, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-eqz v2, :cond_5

    move v2, v3

    :goto_2
    invoke-virtual {v5, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    :goto_3
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "android.hardware.folder_type"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mSupportFolderType:Z

    .line 267
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v2, :cond_8

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 270
    .local v1, config:Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_7

    .line 271
    iput-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 275
    :goto_4
    iget-boolean v2, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    invoke-virtual {p0, v2}, Lcom/android/settings/BrightnessPreference;->setFlipCloseStatus(Z)V

    .line 276
    const v2, 0x7f0b01d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    .local v0, bright_level:Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 282
    .end local v0           #bright_level:Landroid/widget/TextView;
    .end local v1           #config:Landroid/content/res/Configuration;
    :goto_5
    return-void

    .line 213
    :cond_2
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->auto_detail_custom_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 216
    :cond_3
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->seekbar_layout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 251
    :cond_4
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v5, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iget v6, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v5, v6

    invoke-virtual {v2, v5}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1

    :cond_5
    move v2, v4

    .line 260
    goto :goto_2

    .line 262
    :cond_6
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 273
    .restart local v1       #config:Landroid/content/res/Configuration;
    :cond_7
    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    goto :goto_4

    .line 280
    .end local v1           #config:Landroid/content/res/Configuration;
    :cond_8
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoNotiTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_5
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 383
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 385
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    if-nez v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 388
    :cond_0
    return-void

    .line 383
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDialogClosed(Z)V
    .locals 4
    .parameter "positiveResult"

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onDialogClosed(Z)V

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 485
    .local v0, resolver:Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 486
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 487
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 489
    if-eqz p1, :cond_2

    .line 490
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 491
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 493
    :cond_0
    const-string v1, "screen_brightness"

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/BrightnessPreference;->isWidget:Ljava/lang/Boolean;

    .line 503
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mBrightness:Lcom/android/settings/DisplaySettings;

    invoke-virtual {v1}, Lcom/android/settings/DisplaySettings;->finish()V

    .line 506
    :cond_1
    return-void

    .line 497
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/BrightnessPreference;->restoreOldState()V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 312
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_0
    move v1, v2

    .line 334
    :cond_1
    :goto_0
    return v1

    .line 315
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 316
    .local v0, isdown:Z
    :goto_1
    packed-switch p2, :pswitch_data_0

    move v1, v2

    .line 334
    goto :goto_0

    .end local v0           #isdown:Z
    :cond_3
    move v0, v2

    .line 315
    goto :goto_1

    .line 318
    .restart local v0       #isdown:Z
    :pswitch_0
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    if-lez v2, :cond_1

    .line 319
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, -0x14

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 320
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 326
    :pswitch_1
    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    const/16 v3, 0xc8

    if-ge v2, v3, :cond_1

    .line 327
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    add-int/lit8 v2, v2, 0x14

    iput v2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 328
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 329
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_brightness_detail"

    iget v4, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->updateCustomBar()V

    goto :goto_0

    .line 316
    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromTouch"

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_1

    .line 354
    iput p2, p0, Lcom/android/settings/BrightnessPreference;->mCurrentProgress:I

    .line 355
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int v0, p2, v1

    .line 356
    .local v0, mCurrentBrightness:I
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 358
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    .line 364
    .end local v0           #mCurrentBrightness:I
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mAutoDetailSeekBar:Landroid/widget/SeekBar;

    if-ne p1, v1, :cond_0

    .line 360
    iput p2, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_brightness_detail"

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 362
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auto_brightness_detail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 593
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 595
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 605
    :goto_0
    return-void

    .line 599
    :cond_1
    check-cast p1, Lcom/android/settings/BrightnessPreference$SavedState;

    .line 600
    invoke-virtual {p1}, Lcom/android/settings/BrightnessPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/preference/SeekBarDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 601
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    .line 602
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    .line 603
    iget-boolean v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    if-eqz v0, :cond_3

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/settings/BrightnessPreference;->setMode(I)V

    .line 604
    iget v0, p1, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/BrightnessPreference;->setBrightness(I)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 602
    goto :goto_1

    :cond_3
    move v1, v2

    .line 603
    goto :goto_2
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 575
    invoke-super {p0}, Landroid/preference/SeekBarDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 576
    .local v1, superState:Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v0, v1

    .line 588
    :goto_0
    return-object v0

    .line 579
    :cond_1
    new-instance v0, Lcom/android/settings/BrightnessPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/android/settings/BrightnessPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 580
    .local v0, myState:Lcom/android/settings/BrightnessPreference$SavedState;
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->automatic:Z

    .line 581
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    iput v3, v0, Lcom/android/settings/BrightnessPreference$SavedState;->progress:I

    .line 582
    iget v3, p0, Lcom/android/settings/BrightnessPreference;->mOldAutomatic:I

    if-ne v3, v2, :cond_2

    :goto_1
    iput-boolean v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldAutomatic:Z

    .line 583
    iget v2, p0, Lcom/android/settings/BrightnessPreference;->mOldBrightness:I

    iput v2, v0, Lcom/android/settings/BrightnessPreference$SavedState;->oldProgress:I

    goto :goto_0

    .line 582
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seekBar"

    .prologue
    .line 368
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .parameter "seekBar"

    .prologue
    .line 373
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mCurrentProgress:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    if-gt v0, v1, :cond_0

    .line 374
    const-string v0, "BrightnessPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is below than MaxBrightness"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :goto_0
    return-void

    .line 376
    :cond_0
    iget v0, p0, Lcom/android/settings/BrightnessPreference;->mMaxBrightness:I

    iget v1, p0, Lcom/android/settings/BrightnessPreference;->mScreenBrightnessDim:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 377
    const-string v0, "BrightnessPreference"

    const-string v1, "onStopTrackingTouch() : Current progress is over than MaxBrightness"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public returnMaxBrightness(I)I
    .locals 1
    .parameter "max"

    .prologue
    .line 341
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 344
    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    const/16 p1, 0xff

    goto :goto_0
.end method

.method public setFlipCloseStatus(Z)V
    .locals 4
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 557
    iput-boolean p1, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    .line 558
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/android/settings/BrightnessPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    move v0, v1

    .line 561
    .local v0, mode:I
    :goto_0
    if-ne v0, v1, :cond_3

    .line 562
    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mSupportFolderType:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/settings/BrightnessPreference;->mFlipCloseStatus:Z

    if-eqz v3, :cond_2

    .line 563
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 571
    .end local v0           #mode:I
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 559
    goto :goto_0

    .line 565
    .restart local v0       #mode:I
    :cond_2
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1

    .line 568
    :cond_3
    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setObject(Lcom/android/settings/DisplaySettings;)V
    .locals 0
    .parameter "displaySettings"

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/settings/BrightnessPreference;->mBrightness:Lcom/android/settings/DisplaySettings;

    .line 137
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 5
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 169
    invoke-super {p0, p1}, Landroid/preference/SeekBarDialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mBrightnessModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_brightness_detail"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/BrightnessPreference;->mAutoBrightnessDetailObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    iput-boolean v4, p0, Lcom/android/settings/BrightnessPreference;->mRestoredOldState:Z

    .line 184
    invoke-direct {p0, v4}, Lcom/android/settings/BrightnessPreference;->getBrightnessMode(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportDA:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/BrightnessPreference;->supportAutoBrightnessDetail:Z

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f090b2e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 189
    :cond_0
    return-void
.end method

.method updateCustomBar()V
    .locals 4

    .prologue
    .line 300
    const-string v1, "BrightnessPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateCustomBar(),  currentLevel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 303
    iget v1, p0, Lcom/android/settings/BrightnessPreference;->currentLevel:I

    mul-int/lit8 v2, v0, 0x14

    if-gt v1, v2, :cond_0

    .line 304
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/settings/BrightnessPreference;->mCustomBar:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Lcom/android/settings/BrightnessPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02002e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 309
    :cond_1
    return-void
.end method
