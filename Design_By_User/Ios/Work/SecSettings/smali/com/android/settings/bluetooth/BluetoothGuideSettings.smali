.class public abstract Lcom/android/settings/bluetooth/BluetoothGuideSettings;
.super Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;
.source "BluetoothGuideSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static mBluetoothSettings:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

.field protected static mIsInBtGuideMode:Z


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBonded:Z

.field private mFirstStart:Z

.field private mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

.field private mShowedDialog:I

.field private mShowedLayout:I

.field private onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mIsInBtGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;-><init>()V

    .line 39
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 42
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedDialog:I

    .line 43
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedLayout:I

    .line 45
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBonded:Z

    .line 46
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;

    .line 48
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 49
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mFirstStart:Z

    .line 292
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showCompleteDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/settings/bluetooth/BluetoothGuideSettings;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBluetoothSettings:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    return-object v0
.end method

.method private initHelpDialogContent(I)V
    .locals 3
    .parameter "resID"

    .prologue
    .line 261
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 263
    .local v0, bubble_view:Landroid/view/View;
    const v2, 0x7f0b012f

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 265
    .local v1, summary:Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 266
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 267
    :cond_0
    return-void
.end method

.method private initHelpDialogContent(II)V
    .locals 5
    .parameter "resID"
    .parameter "layout"

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 239
    .local v1, bubble_view:Landroid/view/View;
    const v3, 0x7f0b012f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 241
    .local v2, summary:Landroid/widget/TextView;
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 243
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v3, v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setContentView(Landroid/view/View;)V

    .line 245
    const v3, 0x7f0b0131

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 247
    .local v0, btn_close:Landroid/widget/ImageButton;
    if-eqz v0, :cond_0

    .line 248
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothGuideSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings$2;-><init>(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    :cond_0
    return-void
.end method

.method private showCompleteDialog()V
    .locals 4

    .prologue
    .line 270
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 273
    .local v0, builderstart:Landroid/app/AlertDialog$Builder;
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090bc1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090bc0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090286

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v3, Lcom/android/settings/bluetooth/BluetoothGuideSettings$3;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings$3;-><init>(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 290
    return-void
.end method

.method private showHelpDialog(III)V
    .locals 3
    .parameter "resID"
    .parameter "layout"
    .parameter "type"

    .prologue
    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, created:Z
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-nez v1, :cond_0

    .line 169
    new-instance v1, Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 170
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setTouchTransparencyMode(I)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setShowWrongInputToast(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 173
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedLayout:I

    .line 174
    const/4 v0, 0x1

    .line 177
    :cond_0
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedLayout:I

    if-eq v1, p2, :cond_2

    .line 178
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->initHelpDialogContent(II)V

    .line 182
    :goto_0
    if-eqz v0, :cond_1

    .line 183
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->show()V

    .line 184
    :cond_1
    iput p3, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedDialog:I

    .line 185
    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedLayout:I

    .line 186
    return-void

    .line 180
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->initHelpDialogContent(I)V

    goto :goto_0
.end method


# virtual methods
.method protected changeHelpDialogState(Z)V
    .locals 0
    .parameter "scanstarted"

    .prologue
    .line 112
    return-void
.end method

.method protected dismissHelpDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 198
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwHelpDialog;->dismiss()V

    .line 200
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 201
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedDialog:I

    .line 202
    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedLayout:I

    .line 203
    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;

    .line 205
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    sput-object p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBluetoothSettings:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mFirstStart:Z

    .line 63
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onDestroy()V

    .line 86
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settings/bluetooth/CachedBluetoothDevice;I)V
    .locals 3
    .parameter "cachedDevice"
    .parameter "bondState"

    .prologue
    .line 117
    const-string v0, "BluetoothGuideSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDeviceBondStateChanged bondState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-super {p0}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mIsInBtGuideMode:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBonded:Z

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mFirstStart:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mIsInBtGuideMode:Z

    if-eqz v0, :cond_3

    .line 74
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->changeHelpDialogState(Z)V

    .line 77
    :cond_1
    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mFirstStart:Z

    .line 78
    return-void

    :cond_2
    move v0, v1

    .line 70
    goto :goto_0

    .line 75
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mBonded:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mIsInBtGuideMode:Z

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showHelpDialog(I)V

    goto :goto_1
.end method

.method public onScanningStateChanged(Z)V
    .locals 3
    .parameter "started"

    .prologue
    .line 90
    const-string v0, "BluetoothGuideSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanningStateChanged started="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; mIsInGuideMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mIsInBtGuideMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-super {p0, p1}, Lcom/android/settings/bluetooth/DeviceListPreferenceFragment;->onScanningStateChanged(Z)V

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->changeHelpDialogState(Z)V

    .line 95
    return-void
.end method

.method protected showHelpDialog(I)V
    .locals 2
    .parameter "type"

    .prologue
    const v1, 0x7f040065

    .line 134
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mShowedDialog:I

    if-ne v0, p1, :cond_1

    .line 159
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    sget-boolean v0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->mIsInBtGuideMode:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;

    .line 139
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 155
    :pswitch_0
    const v0, 0x7f090bc4

    const v1, 0x7f040062

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showHelpDialog(III)V

    goto :goto_0

    .line 141
    :pswitch_1
    const v0, 0x7f090bc5

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showHelpDialog(III)V

    goto :goto_0

    .line 144
    :pswitch_2
    const v0, 0x7f090bc3

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showHelpDialog(III)V

    goto :goto_0

    .line 147
    :pswitch_3
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings$1;-><init>(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;

    .line 152
    const v0, 0x7f090bc2

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showHelpDialog(III)V

    goto :goto_0

    .line 139
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
