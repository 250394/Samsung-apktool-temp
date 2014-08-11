.class public Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "WifiQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static final DIALOG_ANSWER_DISABLE_HOTSPOT:I = 0x1

.field private static final DIALOG_ANSWER_DISABLE_WIFI_DIRECT:I = 0x3

.field private static final DIALOG_PROGRESS_DISABLE_HOTSPOT:I = 0x2


# instance fields
.field private isAirPlaneMode:I

.field private mBlockWifiInFlightMode:Z

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field mProgressDialog:Landroid/app/AlertDialog;

.field mStatusBarManager:Landroid/app/StatusBarManager;

.field private mWifiActivated:Z

.field mWifiDirectDialog:Landroid/app/AlertDialog;

.field mWifiHotspotDialog:Landroid/app/AlertDialog;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private toastAlert:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 83
    const/4 v2, 0x0

    const v3, 0x7f090084

    const v4, 0x7f020167

    const v5, 0x7f020166

    const v6, 0x7f020162

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 92
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    const v1, 0x7f090018

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 110
    :cond_0
    return-void

    .line 101
    :catch_0
    move-exception v9

    .line 102
    .local v9, ex:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->handleStateChanged(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->dismissDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->showDialog(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dismissDialog(I)V
    .locals 2
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 199
    packed-switch p1, :pswitch_data_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 201
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiHotspotDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiHotspotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiHotspotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 203
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiHotspotDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 214
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiDirectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiDirectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiDirectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 216
    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiDirectDialog:Landroid/app/AlertDialog;

    goto :goto_0

    .line 199
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleStateChanged(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 179
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wifi state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    packed-switch p1, :pswitch_data_0

    .line 194
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 183
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 187
    :pswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 191
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 181
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 299
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 300
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 302
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 306
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 303
    :catch_0
    move-exception v1

    .line 304
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "systemui/quicksetting/QuickSettingButton"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private showDialog(I)V
    .locals 9
    .parameter "id"

    .prologue
    const v8, 0x104000a

    const/high16 v7, 0x104

    const v6, 0x1010355

    const/4 v4, 0x1

    const/16 v5, 0x7d9

    .line 224
    packed-switch p1, :pswitch_data_0

    .line 294
    :goto_0
    return-void

    .line 226
    :pswitch_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900c5

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 230
    .local v1, newDialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V

    invoke-virtual {v1, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 243
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V

    invoke-virtual {v1, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->dismissDialog(I)V

    .line 249
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    .line 250
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 253
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiHotspotDialog:Landroid/app/AlertDialog;

    .line 254
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiHotspotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setType(I)V

    .line 255
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiHotspotDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 260
    .end local v1           #newDialog:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->dismissDialog(I)V

    .line 261
    new-instance v2, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    .line 262
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 263
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setType(I)V

    .line 264
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mProgressDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 268
    :pswitch_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1040014

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0900c7

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 272
    .local v0, newAlertDialog:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V

    invoke-virtual {v0, v8, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    new-instance v2, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 282
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->dismissDialog(I)V

    .line 284
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 288
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiDirectDialog:Landroid/app/AlertDialog;

    .line 289
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiDirectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setType(I)V

    .line 290
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiDirectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 224
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 124
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 114
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiActivated:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    .line 120
    return-void

    .line 118
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 7
    .parameter "state"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    .line 128
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/sec/enterprise/WifiPolicyCache;->getInstance(Landroid/content/Context;)Landroid/sec/enterprise/WifiPolicyCache;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/sec/enterprise/WifiPolicyCache;->isWifiAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    const-string v2, "systemui/quicksetting/QuickSettingButton"

    const-string v3, "onClick(): Wifi state change is not allowed"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    const-string v2, "systemui/quicksetting/QuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick() - newValue : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    if-eqz p1, :cond_5

    .line 138
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mBlockWifiInFlightMode:Z

    if-eqz v2, :cond_2

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->isAirPlaneMode:I

    .line 141
    iget v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->isAirPlaneMode:I

    if-ne v2, v5, :cond_2

    .line 142
    const-string v2, "systemui/quicksetting/QuickSettingButton"

    const-string v3, "Flight mode is on"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v3, 0x7f090018

    invoke-virtual {v2, v3}, Landroid/widget/Toast;->setText(I)V

    .line 144
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 151
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 152
    .local v1, wifiApState:I
    const/16 v2, 0xc

    if-eq v1, v2, :cond_3

    const/16 v2, 0xd

    if-ne v1, v2, :cond_4

    .line 155
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->showDialog(I)V

    .line 167
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 168
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->showDialog(I)V

    goto :goto_0

    .line 159
    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.SHOW_AP_LIST_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "show_dialog_once"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    .line 173
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wifiApState:I
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method
