.class public Lcom/android/settings/wifi/WifiApDialog;
.super Landroid/app/AlertDialog;
.source "WifiApDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private isShowPassword:Z

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mChannel:Landroid/widget/Spinner;

.field private mContext:Landroid/content/Context;

.field public mDismissIfOpen:Z

.field private mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mHideSsid:Landroid/widget/CheckBox;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMacaddrAcl:I

.field private mMaxclient_Num:Landroid/widget/Spinner;

.field private mMaxclient_Title:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/EditText;

.field private mSecurity:Landroid/widget/Spinner;

.field private mSecurityTypeIndex:I

.field private mSelectedChannel:I

.field private mSelectedMaxclient:I

.field private mSsid:Landroid/widget/EditText;

.field private mTempPassworld:Ljava/lang/String;

.field private mTempSecurityTypeIndex:I

.field private mTempSsid:Ljava/lang/String;

.field private mUserSelectOpenSecurity:Z

.field private mView:Landroid/view/View;

.field mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 123
    const v0, 0x7f0f002c

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 87
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 88
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 89
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxclient:I

    .line 107
    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 108
    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 109
    iput v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 110
    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 116
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 460
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 495
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 124
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 125
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 126
    if-eqz p3, :cond_0

    .line 127
    invoke-static {p3}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 129
    iget v0, p3, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 130
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 136
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;ZZ)V
    .locals 4
    .parameter "context"
    .parameter "listener"
    .parameter "wifiConfig"
    .parameter "tempWifiConfig"
    .parameter "permitDismiss"
    .parameter "continueOpen"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 142
    const v0, 0x7f0f002c

    invoke-direct {p0, p1, v0}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 87
    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 88
    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 89
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 96
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxclient:I

    .line 107
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    .line 108
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    .line 109
    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 110
    iput-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 116
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 117
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 119
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 460
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$2;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 495
    new-instance v0, Lcom/android/settings/wifi/WifiApDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiApDialog$3;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 143
    iput-object p2, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 144
    if-eqz p4, :cond_2

    .line 145
    iput-object p4, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    .line 149
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiApDialog;->getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 151
    const-string v0, "WifiApDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiApDialog2 - mSecurityTypeIndex ?  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   permitDismiss ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   continueOpen ?   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 154
    if-eqz p6, :cond_3

    .line 155
    iput v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 161
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    .line 162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    .line 168
    :cond_1
    return-void

    .line 147
    :cond_2
    iput-object p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    goto :goto_0

    .line 156
    :cond_3
    if-nez p6, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v0, :cond_0

    .line 157
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiApDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiApDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSsid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiApDialog;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiApDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiApDialog;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/wifi/WifiApDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempPassworld:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiApDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method public static getSecurityTypeIndex(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .parameter "wifiConfig"

    .prologue
    const/4 v0, 0x1

    .line 172
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    :goto_0
    return v0

    .line 174
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const/4 v0, 0x2

    goto :goto_0

    .line 177
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 5

    .prologue
    const v4, 0x7f0b0311

    .line 644
    const-string v1, "WifiApDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSecurityFields - mSecurityTypeIndex ?  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  mDismissIfOpen ? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-nez v1, :cond_1

    .line 646
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 648
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 649
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 650
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 653
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :goto_0
    return-void

    .line 657
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissIfOpen:Z

    .line 658
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 660
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 661
    .restart local v0       #imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_2

    .line 662
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 666
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 668
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0312

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x80

    goto :goto_1
.end method

.method private validate()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 532
    const/4 v2, 0x0

    .line 533
    .local v2, trimedSsidLength:I
    const/4 v1, 0x0

    .line 534
    .local v1, trimedPasswordLength:I
    const/4 v0, 0x1

    .line 536
    .local v0, enabled:Z
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    .line 537
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 539
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_0

    if-nez v2, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x0

    .line 544
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    if-eqz v3, :cond_2

    .line 545
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    .line 548
    :cond_2
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_4

    :cond_3
    if-eqz v1, :cond_6

    :cond_4
    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-ne v3, v5, :cond_7

    :cond_5
    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    const/16 v4, 0x8

    if-ge v3, v4, :cond_7

    .line 550
    :cond_6
    const/4 v0, 0x0

    .line 553
    :cond_7
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiApDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 554
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 594
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 595
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 591
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 676
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMaxclient_Num:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMaxclient_Num:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 679
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mMaxclient_Num:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 680
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 681
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 682
    :cond_2
    return-void
.end method

.method public getCheckShowPassword()Z
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 182
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 190
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 195
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 196
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 197
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMacaddrAcl:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->macaddrAcl:I

    .line 203
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v2, :pswitch_data_0

    .line 226
    const/4 v0, 0x0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_0
    :goto_0
    return-object v0

    .line 205
    .restart local v0       #config:Landroid/net/wifi/WifiConfiguration;
    :pswitch_0
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    .line 209
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 210
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 211
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 212
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    .local v1, password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 218
    .end local v1           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 219
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 220
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 222
    .restart local v1       #password:Ljava/lang/String;
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_0

    .line 203
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getOpenWarningFlag()Z
    .locals 1

    .prologue
    .line 601
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-nez v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 440
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 441
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    packed-switch v0, :pswitch_data_0

    .line 457
    :cond_2
    :goto_0
    return-void

    .line 443
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_0

    .line 446
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 447
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 450
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 451
    iget-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 441
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    const v2, 0x7f0b0314

    .line 557
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 585
    .end local p1
    :goto_0
    return-void

    .line 559
    .restart local p1
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x90

    :goto_1
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 564
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, password:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 566
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->invalidate()V

    goto :goto_0

    .line 559
    .end local v0           #password:Ljava/lang/String;
    :cond_0
    const/16 v1, 0x80

    goto :goto_1

    .line 569
    .restart local p1
    :pswitch_1
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 570
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 573
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0312
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0b0312

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040105

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    .line 291
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0310

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    .line 293
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setView(Landroid/view/View;)V

    .line 294
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiApDialog;->setInverseBackgroundForced(Z)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 297
    .local v0, context:Landroid/content/Context;
    iput-object v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mContext:Landroid/content/Context;

    .line 299
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v3, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 301
    const v2, 0x7f0902e9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    .line 306
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b01a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b030e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    .line 309
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b02e8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    .line 310
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 312
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b030f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    .line 313
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2, v6}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 314
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    const/4 v2, -0x1

    const v3, 0x7f0902ff

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 318
    const/4 v2, -0x2

    const v3, 0x7f090300

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiApDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/settings/wifi/WifiApDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 321
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_1

    .line 322
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 328
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mHideSsid:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 332
    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    if-eq v2, v5, :cond_0

    iget v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 334
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v3, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 335
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 345
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->ssidWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 346
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 347
    new-instance v2, Lcom/android/settings/wifi/WifiApDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiApDialog$1;-><init>(Lcom/android/settings/wifi/WifiApDialog;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 355
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 361
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 362
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0313

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 363
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurity:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 364
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0315

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    .line 365
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, pos:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v2, :cond_2

    .line 368
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v2, Landroid/net/wifi/WifiConfiguration;->channel:I

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mChannel:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 371
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0316

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMaxclient_Title:Landroid/widget/TextView;

    .line 372
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0317

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMaxclient_Num:Landroid/widget/Spinner;

    .line 420
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMaxclient_Title:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 421
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mMaxclient_Num:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 424
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    .line 428
    return-void

    .line 303
    .end local v1           #pos:I
    :cond_3
    const v2, 0x7f09037d

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiApDialog;->setTitle(I)V

    goto/16 :goto_0

    .line 337
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiApDialog;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
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
    .line 605
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 637
    :goto_0
    return-void

    .line 607
    :sswitch_0
    iget v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    iput v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mTempSecurityTypeIndex:I

    .line 608
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSecurityTypeIndex:I

    .line 617
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 626
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->showSecurityFields()V

    .line 627
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiApDialog;->validate()V

    goto :goto_0

    .line 630
    :sswitch_1
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedChannel:I

    goto :goto_0

    .line 634
    :sswitch_2
    iput p3, p0, Lcom/android/settings/wifi/WifiApDialog;->mSelectedMaxclient:I

    goto :goto_0

    .line 605
    :sswitch_data_0
    .sparse-switch
        0x7f0b0310 -> :sswitch_0
        0x7f0b0315 -> :sswitch_1
        0x7f0b0317 -> :sswitch_2
    .end sparse-switch
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 641
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 588
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 7
    .parameter "hasFocus"

    .prologue
    const v6, 0x7f0b0312

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "enterprise_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 697
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0310

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 698
    .local v1, mSecurity:Landroid/widget/Spinner;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/enterprise/WifiPolicy;->isWifiApSettingUserModificationAllowed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 699
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 700
    invoke-virtual {v1, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 701
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 702
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 709
    :goto_0
    return-void

    .line 704
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mSsid:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 705
    invoke-virtual {v1, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 706
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 707
    iget-object v2, p0, Lcom/android/settings/wifi/WifiApDialog;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setCheckShowPassword(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 686
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->isShowPassword:Z

    .line 687
    return-void
.end method

.method public setOpenWarningFlag(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 598
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiApDialog;->mUserSelectOpenSecurity:Z

    .line 599
    return-void
.end method
