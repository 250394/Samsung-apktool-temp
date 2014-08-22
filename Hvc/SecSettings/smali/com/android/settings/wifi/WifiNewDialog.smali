.class Lcom/android/settings/wifi/WifiNewDialog;
.super Landroid/app/AlertDialog;
.source "WifiNewDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field public static ConnectedCorrectPassword:Ljava/lang/String;

.field public static ConnectedPassword:Ljava/lang/String;

.field public static Remembered:I

.field public static bEdit:I

.field public static changedssid:Ljava/lang/String;

.field public static previousssid:Ljava/lang/String;


# instance fields
.field final details:Z

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field public mAccessPointSecurity:I

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mConnectedAPEdit:I

.field mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field final mEdit:Z

.field private mGatewayView:Landroid/widget/TextView;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mNetworkSetupSpinner:Landroid/widget/Spinner;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field public mSsidView:Landroid/widget/EditText;

.field mTempPassworld:Ljava/lang/String;

.field mTempSsid:Ljava/lang/String;

.field private mView:Landroid/view/View;

.field final manageNetwork:Z

.field passwordWatcher:Landroid/text/TextWatcher;

.field ssidWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 139
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 141
    const-string v0, " "

    sput-object v0, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;Z)V
    .locals 3
    .parameter "context"
    .parameter "style"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 104
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 155
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 156
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 157
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 160
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 174
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 746
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$2;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 780
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$3;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 194
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    .line 196
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    .line 197
    iput-object p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 198
    iput-object p4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 199
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 201
    if-nez p4, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 202
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: style ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )   edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void

    .line 201
    :cond_0
    iget v0, p4, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 3
    .parameter "context"
    .parameter "style"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "details"

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 208
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 104
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 155
    sget-object v1, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 156
    sget-object v1, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 157
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    .line 160
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempSsid:Ljava/lang/String;

    .line 161
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mTempPassworld:Ljava/lang/String;

    .line 162
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 174
    iput-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 746
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$2;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    .line 780
    new-instance v1, Lcom/android/settings/wifi/WifiNewDialog$3;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiNewDialog$3;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    .line 209
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    .line 210
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    .line 211
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    .line 212
    iput-object p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 213
    iput-object p4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 214
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 215
    if-nez p4, :cond_0

    :goto_0
    iput v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 216
    const-string v0, "WifiNewDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiNewDialog: style ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )   edit ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )  details ( "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " )"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 215
    :cond_0
    iget v0, p4, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiNewDialog;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/wifi/WifiNewDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiNewDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->validate()V

    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040113

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 492
    .local v0, row:Landroid/view/View;
    const v1, 0x7f0b00e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 493
    const v1, 0x7f0b015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 495
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 628
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->clear()V

    .line 629
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_0

    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 633
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v0, v3, :cond_1

    .line 634
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiNewDialog;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v0

    .line 635
    if-eqz v0, :cond_1

    move v0, v1

    .line 664
    :goto_1
    return v0

    .line 629
    :cond_0
    sget-object v0, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 640
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 644
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v3, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 647
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 648
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 652
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 653
    :try_start_1
    invoke-static {v4, v3, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    move v6, v3

    move v3, v0

    move v0, v6

    .line 657
    :goto_3
    if-nez v0, :cond_4

    .line 658
    new-instance v0, Landroid/net/ProxyProperties;

    invoke-direct {v0, v4, v3, v5}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 659
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v1, v0}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    :cond_2
    move v0, v2

    .line 664
    goto :goto_1

    .line 640
    :cond_3
    sget-object v0, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 654
    :catch_0
    move-exception v0

    move v0, v1

    .line 655
    :goto_4
    const v3, 0x7f0900d9

    move v6, v3

    move v3, v0

    move v0, v6

    goto :goto_3

    :cond_4
    move v0, v1

    .line 661
    goto :goto_1

    .line 654
    :catch_1
    move-exception v3

    goto :goto_4
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1135
    const v0, 0x7f09024a

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1137
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/security/KeyStore;->saw(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1138
    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_1

    .line 1139
    :cond_0
    new-array v0, v5, [Ljava/lang/String;

    aput-object v2, v0, v4

    .line 1147
    :goto_0
    new-instance v2, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    invoke-direct {v2, v1, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1149
    const v0, 0x1090009

    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1150
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1151
    return-void

    .line 1141
    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1142
    aput-object v2, v0, v4

    .line 1143
    array-length v2, v3

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 1154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keystore://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1155
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1158
    :cond_0
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1161
    if-eqz p2, :cond_0

    .line 1163
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1164
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1165
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1166
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1171
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1164
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 7

    .prologue
    const v6, 0x7f0b0340

    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 1002
    const/4 v0, 0x0

    .line 1004
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b033e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1006
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v1, v5, :cond_8

    .line 1007
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1010
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v3, :cond_7

    .line 1011
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1013
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0341

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    .line 1014
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1015
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0342

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    .line 1016
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1017
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0343

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1019
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1020
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0344

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    .line 1021
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0345

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    .line 1023
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1026
    :cond_0
    new-array v0, v3, [Landroid/text/InputFilter;

    .line 1027
    new-instance v2, Lcom/android/settings/wifi/WifiNewDialog$4;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiNewDialog$4;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    aput-object v2, v0, v4

    .line 1046
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1047
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1048
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1049
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1051
    if-eqz v1, :cond_5

    .line 1052
    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1053
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1054
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1056
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1057
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    :cond_1
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    .line 1062
    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1063
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    :cond_3
    invoke-virtual {v1}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1069
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1070
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1072
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1073
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1080
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1085
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 1086
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1087
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1088
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1089
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1090
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1095
    :cond_6
    return-void

    .line 1077
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_8
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showNetworkSetupFields()V
    .locals 4

    .prologue
    const v3, 0x7f0b032f

    const/4 v2, 0x0

    .line 974
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b032b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 976
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 977
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b032c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    .line 978
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 981
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 991
    iget v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-eqz v1, :cond_2

    .line 992
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 994
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 999
    :cond_2
    :goto_0
    return-void

    .line 996
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 7

    .prologue
    const v6, 0x7f0b033a

    const v5, 0x7f0b0339

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1098
    const/4 v0, 0x0

    .line 1100
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b0337

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1102
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    move-object v1, v0

    .line 1106
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1108
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1109
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1110
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b033b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    .line 1111
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1112
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b033c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    .line 1113
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1114
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b033d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1117
    :cond_0
    if-eqz v1, :cond_1

    .line 1118
    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v0

    .line 1119
    if-eqz v0, :cond_1

    .line 1120
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1121
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1129
    :cond_1
    :goto_1
    return-void

    .line 1126
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto/16 :goto_0
.end method

.method private showSecurityFields()V
    .locals 7

    .prologue
    const v4, 0x7f0b032f

    const v3, 0x7f0b0312

    const/4 v6, -0x1

    const/16 v2, 0x8

    const/4 v5, 0x0

    .line 877
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 879
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-nez v0, :cond_1

    .line 880
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 882
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 887
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-nez v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b02e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    .line 889
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 890
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 892
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 893
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 894
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 895
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 904
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    .line 905
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 897
    :cond_3
    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 908
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0330

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0331

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 912
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 913
    const-string v1, "PEAP"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 914
    const-string v1, "TLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 915
    const-string v1, "TTLS"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 916
    const-string v1, "FAST"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 917
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090008

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 918
    const v0, 0x1090009

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 919
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 920
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 922
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0351

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 923
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0332

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 924
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0333

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0334

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0335

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    .line 927
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0336

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    .line 929
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_7

    .line 933
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 934
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 936
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    .line 937
    if-eqz v1, :cond_5

    .line 938
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v3, "fast_provisioning="

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 942
    :cond_5
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 943
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    const-string v3, "auth="

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 946
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 948
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v6, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v1, v1, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/enterprise/WifiPolicy;->isEnterpriseNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getAllowUserPolicyChanges()Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    const-string v0, "WifiPolicy"

    const-string v1, "Enterprise Wifi settings not editable"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 966
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 967
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setEnabled(Z)V

    goto/16 :goto_0

    .line 954
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 955
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    const-string v1, "MSCHAPV2"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private validate()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, -0x3

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 595
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v0, v2, :cond_5

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->chosenNetworkSetupMethod()I

    move-result v0

    if-nez v0, :cond_5

    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_5

    .line 602
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 603
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 625
    :cond_4
    :goto_0
    return-void

    .line 604
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v0, v2, :cond_8

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiNewDialog;->chosenNetworkSetupMethod()I

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v5, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    .line 609
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 610
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 612
    :cond_8
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->ipAndProxyFieldsAreValid()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 613
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 614
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 618
    :cond_9
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 619
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 5
    .parameter

    .prologue
    const v1, 0x7f090312

    const/4 v0, 0x0

    .line 668
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    if-nez v2, :cond_1

    .line 716
    :cond_0
    :goto_0
    return v0

    .line 671
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 674
    :try_start_0
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 679
    const/4 v2, -0x1

    .line 681
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result v2

    .line 685
    :goto_1
    if-ltz v2, :cond_2

    const/16 v4, 0x20

    if-le v2, v4, :cond_3

    .line 686
    :cond_2
    const v0, 0x7f090313

    goto :goto_0

    .line 675
    :catch_0
    move-exception v0

    .line 676
    const v0, 0x7f090310

    goto :goto_0

    .line 688
    :cond_3
    new-instance v4, Landroid/net/LinkAddress;

    invoke-direct {v4, v3, v2}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v4}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)V

    .line 690
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 693
    :try_start_2
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 697
    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v2}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    .line 699
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 702
    :try_start_3
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v2

    .line 706
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 707
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 708
    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 710
    :try_start_4
    invoke-static {v2}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v1

    .line 714
    invoke-virtual {p1, v1}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_0

    .line 694
    :catch_1
    move-exception v0

    .line 695
    const v0, 0x7f090311

    goto :goto_0

    .line 703
    :catch_2
    move-exception v0

    move v0, v1

    .line 704
    goto :goto_0

    .line 711
    :catch_3
    move-exception v0

    move v0, v1

    .line 712
    goto :goto_0

    .line 682
    :catch_4
    move-exception v4

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "editable"

    .prologue
    .line 820
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->validate()V

    .line 821
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 817
    return-void
.end method

.method public chosenNetworkSetupMethod()I
    .locals 1

    .prologue
    .line 1174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1175
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1177
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 498
    const-string v3, "WifiNewDialog"

    const-string v4, "getConfig()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-eq v3, v8, :cond_0

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v3, :cond_0

    .line 500
    const/4 v0, 0x0

    .line 591
    :goto_0
    return-object v0

    .line 503
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 505
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v3, :cond_2

    .line 506
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 509
    iput-boolean v7, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 520
    :goto_1
    iget v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    packed-switch v3, :pswitch_data_0

    .line 587
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 588
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 589
    new-instance v3, Landroid/net/LinkProperties;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v3, v4}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 510
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    if-ne v3, v8, :cond_3

    .line 511
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 514
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-eqz v3, :cond_4

    .line 515
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 517
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v3, v3, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 522
    :pswitch_0
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    goto :goto_2

    .line 526
    :pswitch_1
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 527
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v5}, Ljava/util/BitSet;->set(I)V

    .line 528
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 529
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 530
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 531
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v1

    .line 532
    .local v1, length:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 534
    .local v2, password:Ljava/lang/String;
    const/16 v3, 0xa

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_5

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_6

    :cond_5
    const-string v3, "[0-9A-Fa-f]*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 536
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v3, v5

    goto/16 :goto_2

    .line 538
    :cond_6
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    goto/16 :goto_2

    .line 544
    .end local v1           #length:I
    .end local v2           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v3, v7}, Ljava/util/BitSet;->set(I)V

    .line 545
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 546
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 547
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .restart local v2       #password:Ljava/lang/String;
    const-string v3, "[0-9A-Fa-f]{64}"

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 549
    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 551
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 557
    .end local v2           #password:Ljava/lang/String;
    :pswitch_3
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 558
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->set(I)V

    .line 559
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 560
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v3

    const-string v4, "FAST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 561
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->phase1:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fast_provisioning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 562
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->pac_file:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    const-string v4, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 565
    :cond_8
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->phase2:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_9

    const-string v3, ""

    :goto_3
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 567
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->ca_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_a

    const-string v3, ""

    :goto_4
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 570
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->client_cert:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_b

    const-string v3, ""

    :goto_5
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 573
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->private_key:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_c

    const-string v3, ""

    :goto_6
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 576
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_d

    const-string v3, ""

    :goto_7
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 578
    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->anonymous_identity:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_e

    const-string v3, ""

    :goto_8
    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 580
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 581
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 582
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 565
    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "auth="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 567
    :cond_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://CACERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_4

    .line 570
    :cond_b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRCERT_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_5

    .line 573
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keystore://USRPKEY_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 576
    :cond_d
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_7

    .line 578
    :cond_e
    iget-object v3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8

    .line 520
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method getWpsConfig()Landroid/net/wifi/WpsInfo;
    .locals 3

    .prologue
    .line 850
    new-instance v1, Landroid/net/wifi/WpsInfo;

    invoke-direct {v1}, Landroid/net/wifi/WpsInfo;-><init>()V

    .line 851
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 862
    const/4 v0, 0x4

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 863
    const-string v0, "WifiNewDialog"

    const-string v2, "WPS not selected type"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 872
    :goto_0
    return-object v0

    .line 853
    :pswitch_0
    const/4 v0, 0x0

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    .line 866
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v2, 0x7f0b032e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->pin:Ljava/lang/String;

    .line 867
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->bssid:Ljava/lang/String;

    :goto_2
    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->BSSID:Ljava/lang/String;

    .line 869
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 870
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 871
    new-instance v0, Landroid/net/LinkProperties;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiNewDialog;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v0, v2}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v0, v1, Landroid/net/wifi/WpsInfo;->linkProperties:Landroid/net/LinkProperties;

    move-object v0, v1

    .line 872
    goto :goto_0

    .line 859
    :pswitch_1
    const/4 v0, 0x1

    iput v0, v1, Landroid/net/wifi/WpsInfo;->setup:I

    goto :goto_1

    .line 867
    :cond_0
    const/4 v0, 0x0

    goto :goto_2

    .line 851
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 1198
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "on back pressed"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1199
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 1200
    invoke-super {p0}, Landroid/app/AlertDialog;->onBackPressed()V

    .line 1201
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b0360

    .line 720
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b0312

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 722
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/enterprise/WifiPolicy;->getPasswordHidden()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    const/16 v1, 0x81

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 724
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 725
    const-string v0, "WifiNewDialog"

    const-string v1, "onClick: EDM is called when the user clicks the show password"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const-string v1, "WifiNewDialog"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick: the user clicks the show password     "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, p1

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x90

    :goto_1
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 734
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    .line 730
    :cond_2
    const/16 v0, 0x80

    goto :goto_1

    .line 736
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0b035f

    if-ne v0, v1, :cond_0

    .line 737
    check-cast p1, Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 738
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 740
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 235
    const-string v17, "WifiNewDialog"

    const-string v18, "onCreate()"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 237
    .local v6, context:Landroid/content/Context;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 238
    .local v11, resources:Landroid/content/res/Resources;
    const-string v17, "enterprise_policy"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 239
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v17

    const v18, 0x7f040111

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setView(Landroid/view/View;)V

    .line 241
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0310

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b033f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0338

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0044

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 253
    .local v9, infoMsg:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-nez v17, :cond_6

    .line 254
    const-string v17, "WifiNewDialog"

    const-string v18, "onCreate: mAccessPoint == null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    const v17, 0x7f090219

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(I)V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b01a7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b030e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 261
    const/16 v17, -0x1

    const v18, 0x7f0902fd

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 262
    const/16 v17, -0x3

    const v18, 0x7f0902ff

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getWindow()Landroid/view/Window;

    move-result-object v17

    const/16 v18, 0x14

    invoke-virtual/range {v17 .. v18}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 399
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-nez v17, :cond_18

    .line 400
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    move/from16 v17, v0

    if-eqz v17, :cond_17

    .line 401
    const/16 v17, -0x3

    const v18, 0x7f09022f

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 410
    :goto_1
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 425
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    .line 426
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 427
    sget v17, Lcom/android/settings/wifi/WifiNewDialog;->Remembered:I

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 428
    const/16 v17, -0x1

    const v18, 0x7f09022f

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 431
    :cond_1
    const/16 v17, 0x1

    sput v17, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 432
    sget v17, Lcom/android/settings/wifi/WifiSettings;->mManageNetworkConnected:I

    if-nez v17, :cond_1b

    .line 433
    const/16 v17, -0x2

    const v18, 0x7f090232

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 434
    const/16 v17, 0x1

    sput v17, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 439
    :goto_3
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mConnectedAPEdit:I

    .line 442
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 443
    sget v17, Lcom/android/settings/wifi/WifiNewDialog;->Remembered:I

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 444
    const/16 v17, -0x1

    const v18, 0x7f0902fd

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 447
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setInverseBackgroundForced(Z)V

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    if-nez v17, :cond_1c

    .line 449
    const v17, 0x7f090304

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 456
    :cond_3
    :goto_4
    const/16 v17, -0x3

    const v18, 0x7f09022f

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 457
    const/16 v17, -0x2

    const v18, 0x7f090230

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 459
    :cond_4
    invoke-super/range {p0 .. p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 461
    const/16 v17, -0x3

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v17

    if-eqz v17, :cond_5

    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 462
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->validate()V

    .line 466
    :cond_5
    new-instance v17, Lcom/android/settings/wifi/WifiNewDialog$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog$1;-><init>(Lcom/android/settings/wifi/WifiNewDialog;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 473
    return-void

    .line 267
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    if-nez v17, :cond_f

    .line 268
    const v17, 0x7f090305

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 273
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b030d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 274
    .local v7, group:Landroid/view/ViewGroup;
    const-string v17, "WifiNewDialog"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "onCreate: details "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    .line 276
    .local v14, state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v14, :cond_7

    .line 277
    const v17, 0x7f090238

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->getContext()Landroid/content/Context;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v14}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 279
    :cond_7
    const v17, 0x7f0a0016

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 280
    .local v15, type:[Ljava/lang/String;
    const v17, 0x7f090236

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v10

    .line 283
    .local v10, level:I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_9

    .line 284
    const v17, 0x7f0a0025

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v13

    .line 285
    .local v13, signal:[Ljava/lang/String;
    array-length v0, v13

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v10, v0, :cond_8

    .line 286
    const-string v17, "WifiNewDialog"

    const-string v18, "Force level of wifi signal"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    array-length v0, v13

    move/from16 v17, v0

    add-int/lit8 v10, v17, -0x1

    .line 289
    :cond_8
    const v17, 0x7f090237

    aget-object v18, v13, v10

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 292
    .end local v13           #signal:[Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v8

    .line 294
    .local v8, info:Landroid/net/wifi/WifiInfo;
    if-eqz v8, :cond_a

    .line 295
    const v17, 0x7f090239

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "Mbps"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 297
    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v4

    .line 298
    .local v4, address:I
    if-eqz v4, :cond_a

    .line 299
    const v17, 0x7f09023a

    invoke-static {v4}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 303
    .end local v4           #address:I
    :cond_a
    const/4 v12, 0x0

    .line 304
    .local v12, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    .line 305
    const-string v17, "WifiNewDialog"

    const-string v18, "network id is valid"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 307
    .local v5, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_10

    .line 308
    const-string v17, "WifiNewDialog"

    const-string v18, "ip assignment static"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 310
    const/4 v12, 0x1

    .line 316
    :goto_6
    iget-object v0, v5, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v17, v0

    sget-object v18, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_11

    .line 317
    const-string v17, "WifiNewDialog"

    const-string v18, "proxy static"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 319
    const/4 v12, 0x1

    .line 324
    :goto_7
    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->status:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    iget v0, v5, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_b

    .line 326
    const-string v17, "WifiNewDialog"

    const-string v18, "DNS FAILURE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const v17, 0x7f09024f

    const v18, 0x7f090250

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v7, v1, v2}, Lcom/android/settings/wifi/WifiNewDialog;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 333
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->wpsAvailable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 335
    const-string v17, "WifiNewDialog"

    const-string v18, "wps AVAILABLE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/app/enterprise/EnterpriseDeviceManager;->getWifiPolicy()Landroid/app/enterprise/WifiPolicy;

    move-result-object v16

    .line 337
    .local v16, wp:Landroid/app/enterprise/WifiPolicy;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/enterprise/WifiPolicy;->isNetworkBlocked(Ljava/lang/String;Z)Z

    move-result v17

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/app/enterprise/WifiPolicy;->isNetworkSecure(IZ)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 339
    const-string v17, "WifiNewDialog"

    const-string v18, "to show network setup  after wps"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showNetworkSetupFields()V

    .line 345
    .end local v16           #wp:Landroid/app/enterprise/WifiPolicy;
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    move/from16 v17, v0

    if-eqz v17, :cond_12

    .line 346
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 351
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e

    .line 352
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showSecurityFields()V

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showIpConfigFields()V

    .line 354
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiNewDialog;->showProxyFields()V

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b035e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b035f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    if-eqz v12, :cond_e

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b035f

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CheckBox;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0360

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 363
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    move/from16 v17, v0

    if-eqz v17, :cond_13

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b01a7

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b030e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    .line 366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0310

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b0310

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 370
    const/16 v17, 0x0

    sput-boolean v17, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 371
    const-string v17, "WifiNewDialog"

    const-string v18, "vzwViewFlag sets to false - onCreate, mEdit is true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const/16 v17, -0x1

    const v18, 0x7f0902fd

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 373
    const/16 v17, -0x3

    const v18, 0x7f0902ff

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 374
    const-string v17, "WifiNewDialog"

    const-string v18, "EDIT true connect and submit btn set "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    sput-object v17, Lcom/android/settings/wifi/WifiNewDialog;->previousssid:Ljava/lang/String;

    .line 376
    const/16 v17, 0x1

    sput v17, Lcom/android/settings/wifi/WifiNewDialog;->bEdit:I

    goto/16 :goto_0

    .line 270
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #info:Landroid/net/wifi/WifiInfo;
    .end local v10           #level:I
    .end local v12           #showAdvancedFields:Z
    .end local v14           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v15           #type:[Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiNewDialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 312
    .restart local v5       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v7       #group:Landroid/view/ViewGroup;
    .restart local v8       #info:Landroid/net/wifi/WifiInfo;
    .restart local v10       #level:I
    .restart local v12       #showAdvancedFields:Z
    .restart local v14       #state:Landroid/net/NetworkInfo$DetailedState;
    .restart local v15       #type:[Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_6

    .line 321
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 348
    .end local v5           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_12
    const/16 v17, 0x8

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 378
    :cond_13
    if-nez v14, :cond_16

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_16

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v17, v0

    if-nez v17, :cond_15

    .line 380
    const v17, 0x7f090304

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 386
    :cond_14
    :goto_9
    const/16 v17, -0x1

    const v18, 0x7f0902fd

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 387
    const-string v17, "WifiNewDialog"

    const-string v18, "EDIT false state null set connect button "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v17

    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->manageNetwork:Z

    move/from16 v17, v0

    if-nez v17, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->details:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    .line 393
    const/16 v17, -0x1

    const v18, 0x7f0902fe

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 382
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_14

    .line 383
    const v17, 0x7f090231

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_9

    .line 389
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b033e

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .line 403
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v8           #info:Landroid/net/wifi/WifiInfo;
    .end local v10           #level:I
    .end local v12           #showAdvancedFields:Z
    .end local v14           #state:Landroid/net/NetworkInfo$DetailedState;
    .end local v15           #type:[Ljava/lang/String;
    :cond_17
    const/16 v17, -0x3

    const v18, 0x7f09022e

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 404
    const/16 v17, 0x1

    sput-boolean v17, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 405
    const-string v17, "WifiNewDialog"

    const-string v18, "vzwViewFlag sets to true"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    const/16 v17, -0x2

    const v18, 0x7f09022f

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 407
    const/16 v17, 0x0

    sput v17, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_1

    .line 412
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1a

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v14

    .line 414
    .restart local v14       #state:Landroid/net/NetworkInfo$DetailedState;
    if-eqz v14, :cond_1a

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_19

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    if-eq v14, v0, :cond_19

    sget-object v17, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v17

    if-ne v14, v0, :cond_1a

    .line 417
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    move-object/from16 v17, v0

    const v18, 0x7f0b030d

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 418
    .restart local v7       #group:Landroid/view/ViewGroup;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 421
    .end local v7           #group:Landroid/view/ViewGroup;
    .end local v14           #state:Landroid/net/NetworkInfo$DetailedState;
    :cond_1a
    const/16 v17, -0x2

    const v18, 0x7f090300

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_2

    .line 436
    :cond_1b
    const/16 v17, -0x2

    const v18, 0x7f090230

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiNewDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 437
    const/16 v17, 0x1

    sput v17, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    goto/16 :goto_3

    .line 452
    :cond_1c
    const v17, 0x7f090231

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 453
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0b0350

    const/16 v2, 0x8

    .line 824
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_0

    .line 825
    iput p3, p0, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    .line 826
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showSecurityFields()V

    .line 843
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->validate()V

    .line 844
    return-void

    .line 827
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mNetworkSetupSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_1

    .line 828
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showNetworkSetupFields()V

    goto :goto_0

    .line 829
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_2

    .line 830
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showProxyFields()V

    goto :goto_0

    .line 831
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 832
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 833
    if-eqz v0, :cond_3

    const-string v1, "FAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 835
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0353

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 836
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    const v1, 0x7f0b0354

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 838
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiNewDialog;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 841
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiNewDialog;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 847
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 814
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, -0x3

    const/4 v3, -0x1

    const/high16 v2, 0x4160

    .line 1181
    const-string v0, "WifiNewDialog"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    invoke-super {p0}, Landroid/app/AlertDialog;->show()V

    .line 1184
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1185
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->setSingleLine()V

    .line 1186
    invoke-virtual {p0, v3}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1188
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1189
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1191
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1192
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiNewDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextSize(F)V

    .line 1194
    :cond_2
    return-void
.end method
