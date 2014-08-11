.class public Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "MobileDataQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;
    }
.end annotation


# static fields
.field private static final MOBILE_DATA_WARNING_CHECKED:Ljava/lang/String; = "quickpanel_mobiledata_checked"


# instance fields
.field private isAirPlaneMode:I

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMobileData:Z

.field private mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

.field mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    .line 115
    const/4 v2, 0x0

    const v3, 0x7f09008c

    const v4, 0x7f02014e

    const v5, 0x7f02014d

    const v6, 0x7f02014c

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 57
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    .line 122
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    .line 126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    .line 128
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 129
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 130
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    .line 135
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v1, "statusbar"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 139
    return-void

    .line 132
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->getMobileData()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->updateActivateStatus(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setMobileDataEnabled(Z)V

    return-void
.end method

.method private getMobileData()Z
    .locals 4

    .prologue
    .line 177
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 179
    .local v0, SimState:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 181
    .local v1, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 183
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    .line 185
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isSimReady()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 219
    .local v0, SimState:I
    if-eqz v0, :cond_0

    if-ne v0, v3, :cond_2

    .line 221
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 222
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f09009f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 223
    const v3, 0x7f0900a0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 225
    const v3, 0x104000a

    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v3, :cond_1

    .line 233
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapse()V

    .line 237
    :cond_1
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 238
    .local v1, alert:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v5, 0x7d9

    invoke-virtual {v3, v5}, Landroid/view/Window;->setType(I)V

    .line 239
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    move v3, v4

    .line 242
    .end local v1           #alert:Landroid/app/AlertDialog;
    .end local v2           #builder:Landroid/app/AlertDialog$Builder;
    :cond_2
    return v3
.end method

.method private onDisplayMobileDataOffAlert()V
    .locals 7

    .prologue
    .line 258
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 260
    .local v3, mMobileDataAlertLayout:Landroid/view/LayoutInflater;
    const v5, 0x7f030025

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 263
    .local v4, mMobileDataAlertView:Landroid/view/View;
    const v5, 0x7f0f00b3

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 265
    .local v2, mDisableAlertCheckBox:Landroid/widget/CheckBox;
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$3;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 281
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f09008c

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 283
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 284
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 290
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$5;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 296
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 299
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v5, :cond_0

    .line 300
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapse()V

    .line 304
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 305
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 306
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 307
    return-void
.end method

.method private onORGDisplayMobileDataOffAlert()V
    .locals 4

    .prologue
    .line 310
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 311
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 312
    const v2, 0x7f09007d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 313
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 314
    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$6;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$6;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 320
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$7;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$7;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 328
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    .line 329
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 334
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 335
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 336
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 337
    return-void
.end method

.method private onORGDisplayMobileDataOnAlert()V
    .locals 4

    .prologue
    .line 341
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f09008c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 343
    const v2, 0x7f09007c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 344
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 345
    const v2, 0x104000a

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$8;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$8;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 351
    const/high16 v2, 0x104

    new-instance v3, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$9;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$9;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 359
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v2, :cond_0

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v2}, Landroid/app/StatusBarManager;->collapse()V

    .line 365
    :cond_0
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 366
    .local v0, alert:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d9

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 367
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 368
    return-void
.end method

.method private setMobileData(Z)V
    .locals 4
    .parameter "on"

    .prologue
    .line 189
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quickpanel_mobiledata_checked"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, mChecked:I
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mobile data waring checked : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 194
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onDisplayMobileDataOffAlert()V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setMobileDataEnabled(Z)V

    goto :goto_0
.end method

.method private setMobileDataEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 246
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 249
    .local v0, mConnectivityManager:Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    .line 250
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMobileDataEnabled : set to  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    const-string v2, "setMobileDataEnabled : connectivityManager = null"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setORGMobileData(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 201
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Orange Mobile data waring checked on : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez p1, :cond_0

    .line 204
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onORGDisplayMobileDataOffAlert()V

    .line 208
    :goto_0
    return-void

    .line 206
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->onORGDisplayMobileDataOnAlert()V

    goto :goto_0
.end method

.method private updateActivateStatus(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    .line 215
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    return-void
.end method

.method public init()V
    .locals 5

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileDataObserver:Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton$MobileDataObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 150
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() : mMobileData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void
.end method

.method public onClick(Z)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    .line 159
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    .line 161
    iget v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isAirPlaneMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setActivateStatus(I)V

    .line 167
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->isSimReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->mMobileData:Z

    if-eq p1, v0, :cond_0

    .line 168
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_EnablePromptPopupWhenActivatingDataConnection"

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setORGMobileData(Z)V

    goto :goto_0

    .line 171
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/MobileDataQuickSettingButton;->setMobileData(Z)V

    goto :goto_0
.end method
