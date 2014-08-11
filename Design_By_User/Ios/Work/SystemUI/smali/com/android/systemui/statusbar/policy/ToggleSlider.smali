.class public Lcom/android/systemui/statusbar/policy/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;,
        Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.ToggleSlider"


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mKeyboardHidden:I

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mSupportFolderType:Z

.field private mToggle:Landroid/widget/CompoundButton;

.field private mTracking:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 77
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSupportFolderType:Z

    .line 275
    new-instance v5, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    .line 99
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_3

    .line 100
    const v5, 0x7f030033

    invoke-static {p1, v5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 106
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 107
    .local v3, res:Landroid/content/res/Resources;
    sget-object v5, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 110
    .local v0, a:Landroid/content/res/TypedArray;
    const v5, 0x7f0f00a9

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CompoundButton;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    .line 111
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v5, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 113
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSupportFolderType:Z

    if-eqz v5, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isFolderOpen()Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v7}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 118
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    new-instance v6, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 140
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-nez v5, :cond_1

    .line 141
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const v6, 0x7f0200e7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_1
    const v5, 0x7f0f00aa

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SeekBar;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    .line 144
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 146
    const v5, 0x7f0f00ab

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 147
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 157
    sget-boolean v5, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_2

    .line 158
    new-instance v4, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 159
    .local v4, touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    const v5, 0x7f0f00e8

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 160
    .local v1, autoBrightnessGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_4

    .line 161
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 168
    .end local v1           #autoBrightnessGroup:Landroid/view/ViewGroup;
    .end local v4           #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.hardware.folder_type"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSupportFolderType:Z

    .line 170
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 171
    return-void

    .line 102
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v2           #filter:Landroid/content/IntentFilter;
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_3
    const v5, 0x7f03001f

    invoke-static {p1, v5, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 163
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v1       #autoBrightnessGroup:Landroid/view/ViewGroup;
    .restart local v2       #filter:Landroid/content/IntentFilter;
    .restart local v3       #res:Landroid/content/res/Resources;
    .restart local v4       #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSupportFolderType:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isFolderOpen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->changedFont()V

    return-void
.end method

.method private changedFont()V
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    return-void
.end method

.method private isFolderOpen()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 336
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iput v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mKeyboardHidden:I

    .line 337
    iget v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mKeyboardHidden:I

    if-ne v2, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public hideToggle()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 323
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 325
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .parameter "toggle"
    .parameter "checked"

    .prologue
    .line 175
    sget-boolean v3, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-nez v3, :cond_2

    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 179
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_1

    .line 180
    const v3, 0x1080623

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 181
    .local v2, thumb:Landroid/graphics/drawable/Drawable;
    const v3, 0x7f0200e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 187
    .local v1, slider:Landroid/graphics/drawable/Drawable;
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 188
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v3, :cond_0

    .line 191
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, p0, v4, p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 199
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #slider:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_1
    return-void

    .line 183
    .restart local v0       #res:Landroid/content/res/Resources;
    :cond_1
    const v3, 0x1080627

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 184
    .restart local v2       #thumb:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080629

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .restart local v1       #slider:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 194
    .end local v0           #res:Landroid/content/res/Resources;
    .end local v1           #slider:Landroid/graphics/drawable/Drawable;
    .end local v2           #thumb:Landroid/graphics/drawable/Drawable;
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-interface {v3, p0, v4, p2, v5}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isFolderOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_1

    .line 204
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 206
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->setChecked(Z)V

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    invoke-interface {v0, p0, v1, v2, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 216
    :cond_1
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 219
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 220
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 225
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 229
    :cond_1
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 232
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 233
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 236
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 244
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 252
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    .line 240
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 256
    return-void
.end method

.method public showToggle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 329
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 330
    return-void
.end method
