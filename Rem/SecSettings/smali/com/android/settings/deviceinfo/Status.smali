.class public Lcom/android/settings/deviceinfo/Status;
.super Landroid/preference/PreferenceActivity;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/Status$MyHandler;
    }
.end annotation


# static fields
.field private static final PHONE_RELATED_ENTRIES:[Ljava/lang/String;

.field private static buf:[B

.field private static sSalesCode:Ljava/lang/String;


# instance fields
.field private NAI_length:I

.field private isSysScopeStatus:I

.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mImsRegistered:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRes:Landroid/content/res/Resources;

.field private mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

.field private mServiceMessenger:Landroid/os/Messenger;

.field private mSignalStrength:Landroid/preference/Preference;

.field private mSvcModeMessenger:Landroid/os/Messenger;

.field private mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

.field private mSysScopeReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUptime:Landroid/preference/Preference;

.field private mUserName:Landroid/preference/Preference;

.field private rilHandler:Landroid/os/Handler;

.field private sUnknown:Ljava/lang/String;

.field private user_name:Ljava/lang/String;

.field private zero_eight:Ljava/lang/String;

.field private zero_five:Ljava/lang/String;

.field private zero_four:Ljava/lang/String;

.field private zero_nine:Ljava/lang/String;

.field private zero_seven:Ljava/lang/String;

.field private zero_six:Ljava/lang/String;

.field private zero_three:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 148
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "data_state"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_state"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operator_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "roaming_state"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "network_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "imei"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "imei_sv"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "prl_version"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "eri_version"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "min_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "meid_number"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "signal_strength"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "icc_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "sid_number"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nid_number"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 101
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    .line 138
    const-string v0, "000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    .line 139
    const-string v0, "0000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    .line 140
    const-string v0, "00000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    .line 141
    const-string v0, "000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    .line 142
    const-string v0, "0000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    .line 143
    const-string v0, "00000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    .line 144
    const-string v0, "000000000"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    .line 146
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    .line 178
    iput-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 234
    new-instance v0, Lcom/android/settings/deviceinfo/Status$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$1;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 247
    new-instance v0, Lcom/android/settings/deviceinfo/Status$2;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$2;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    new-instance v0, Lcom/android/settings/deviceinfo/Status$3;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$3;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 334
    new-instance v0, Lcom/android/settings/deviceinfo/Status$4;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$4;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    .line 371
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->rilHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    .line 937
    new-instance v0, Lcom/android/settings/deviceinfo/Status$5;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$5;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1214
    new-instance v0, Lcom/android/settings/deviceinfo/Status$6;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/Status$6;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/Status;)Lcom/android/internal/telephony/PhoneStateIntentReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/Status;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1084(Lcom/android/settings/deviceinfo/Status;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->user_name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/settings/deviceinfo/Status;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/Status;->mImsRegistered:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/settings/deviceinfo/Status;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->getOemData()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$700()[B
    .locals 1

    .prologue
    .line 101
    sget-object v0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object v0
.end method

.method static synthetic access$702([B)[B
    .locals 0
    .parameter "x0"

    .prologue
    .line 101
    sput-object p0, Lcom/android/settings/deviceinfo/Status;->buf:[B

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status;->mUserName:Landroid/preference/Preference;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/deviceinfo/Status;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/settings/deviceinfo/Status;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput p1, p0, Lcom/android/settings/deviceinfo/Status;->NAI_length:I

    return p1
.end method

.method private changeSysScopeStatus()V
    .locals 7

    .prologue
    const-wide/16 v3, 0x3e8

    const v6, 0x7f090118

    const/4 v5, -0x1

    .line 878
    const-string v0, "sysscope_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 880
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    div-long/2addr v0, v3

    .line 881
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    div-long/2addr v0, v3

    .line 883
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    .line 884
    const-wide/16 v0, 0x1

    .line 887
    :cond_0
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v3}, Lcom/sec/android/app/sysscope/service/SysScope;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    const-wide/16 v3, 0x78

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 888
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 905
    :goto_0
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 906
    return-void

    .line 891
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/SysScope;->getLastScanResult()Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/sysscope/service/SysScopeResultInfo;->getResult()I

    move-result v0

    iput v0, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :goto_1
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 897
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 892
    :catch_0
    move-exception v0

    .line 893
    iput v5, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    goto :goto_1

    .line 898
    :cond_2
    iget v0, p0, Lcom/android/settings/deviceinfo/Status;->isSysScopeStatus:I

    if-ne v0, v5, :cond_3

    .line 899
    const v0, 0x7f090119

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 901
    :cond_3
    const v0, 0x7f090117

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private connectToRilService()V
    .locals 3

    .prologue
    .line 1207
    const-string v0, "Status"

    const-string v1, "connect To Secphone service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1209
    const-string v1, "com.sec.phone"

    const-string v2, "com.sec.phone.SecPhoneService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1210
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSecPhoneServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1211
    return-void
.end method

.method private convert(J)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const-wide/16 v3, 0x3c

    .line 929
    rem-long v0, p1, v3

    long-to-int v0, v0

    .line 930
    div-long v1, p1, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    .line 931
    const-wide/16 v2, 0xe10

    div-long v2, p1, v2

    long-to-int v2, v2

    .line 933
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 3
    .parameter "devID"

    .prologue
    .line 980
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 981
    .local v0, len:I
    const/4 v1, 0x0

    .line 983
    .local v1, out:Ljava/lang/StringBuilder;
    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 984
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 988
    :cond_0
    :goto_0
    return-object v1

    .line 985
    :cond_1
    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    .line 986
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/Status;->convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    goto :goto_0
.end method

.method private convertHexaESNtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/4 v2, 0x2

    .line 998
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 999
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1000
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1001
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1009
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1033
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1003
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1006
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1012
    :pswitch_2
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1015
    :pswitch_3
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1018
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1021
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1024
    :pswitch_6
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1027
    :pswitch_7
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1030
    :pswitch_8
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1001
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1010
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private convertHexaMEIDtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0x8

    .line 1043
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 1044
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 1045
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1046
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1075
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 1099
    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    return-object v0

    .line 1048
    :pswitch_0
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1051
    :pswitch_1
    const-string v3, "00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1054
    :pswitch_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1057
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1060
    :pswitch_4
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1063
    :pswitch_5
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1066
    :pswitch_6
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1069
    :pswitch_7
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_eight:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1072
    :pswitch_8
    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->zero_nine:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1078
    :pswitch_9
    const-string v0, "0"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1081
    :pswitch_a
    const-string v0, "00"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1084
    :pswitch_b
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_three:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1087
    :pswitch_c
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_four:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1090
    :pswitch_d
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_five:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1093
    :pswitch_e
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_six:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1096
    :pswitch_f
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->zero_seven:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1046
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1076
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private getOemData()V
    .locals 7

    .prologue
    .line 296
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 300
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x3

    .line 301
    .local v3, fileSize:I
    const/16 v4, 0x51

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 302
    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 303
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 304
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/android/settings/deviceinfo/Status;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 309
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 315
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v2

    .line 312
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 309
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 311
    :catch_2
    move-exception v2

    .line 312
    const-string v4, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 308
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 309
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 310
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 313
    :goto_1
    throw v4

    .line 311
    :catch_3
    move-exception v2

    .line 312
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 3
    .parameter "data"
    .parameter "response"

    .prologue
    .line 318
    invoke-virtual {p2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 319
    .local v0, req:Landroid/os/Bundle;
    const-string v1, "request"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 321
    invoke-virtual {p2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 322
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSvcModeMessenger:Landroid/os/Messenger;

    iput-object v1, p2, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mServiceMessenger:Landroid/os/Messenger;

    invoke-virtual {v1, p2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 331
    :goto_0
    return-void

    .line 328
    :cond_0
    const-string v1, "Status"

    const-string v2, "mServiceMessenger is null. Do nothing."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .parameter "n"

    .prologue
    .line 921
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 922
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 924
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 629
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 630
    .local v0, pref:Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 633
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 3

    .prologue
    .line 830
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 831
    const-string v1, "bt_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 833
    if-nez v0, :cond_0

    .line 835
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 841
    :goto_0
    return-void

    .line 837
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 838
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_2
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 837
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 838
    :cond_2
    const v0, 0x7f090455

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setFipsStatus()V
    .locals 4

    .prologue
    const v3, 0x7f09043c

    .line 845
    const-string v0, "fips_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 847
    const-string v0, "ro.fipsui"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 868
    :goto_0
    return-void

    .line 855
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/settings/fips/FipsStatus;->getFipsStatus()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const v0, 0x7f090853

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    .line 857
    :goto_1
    const-string v0, "rw.km_fips_status"

    const-string v2, "undefined"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ready"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f090853

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 864
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f090852

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 866
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 855
    :cond_1
    const v0, 0x7f090854

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 859
    :catch_0
    move-exception v0

    .line 860
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    .line 861
    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 857
    :cond_2
    const v0, 0x7f090854

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 2

    .prologue
    .line 820
    const-string v0, "wifi_ip_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 821
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 822
    if-eqz v1, :cond_0

    .line 823
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 827
    :goto_0
    return-void

    .line 825
    :cond_0
    const v1, 0x7f090455

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setRssiNoti(I)V
    .locals 7
    .parameter "onOff"

    .prologue
    .line 270
    const-string v4, "Status"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setRssiNoti() : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 272
    .local v0, bos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 275
    .local v1, dos:Ljava/io/DataOutputStream;
    const/4 v3, 0x5

    .line 276
    .local v3, fileSize:I
    const/16 v4, 0x18

    :try_start_0
    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 277
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 278
    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 279
    invoke-virtual {v1, p1}, Ljava/io/DataOutputStream;->writeByte(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    if-eqz v1, :cond_0

    .line 285
    :try_start_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 291
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 292
    return-void

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, e:Ljava/io/IOException;
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 280
    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 281
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    if-eqz v1, :cond_0

    .line 285
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 286
    :catch_2
    move-exception v2

    .line 287
    const-string v4, "Status"

    const-string v5, "setRssiNoti : dos.close() error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 283
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 284
    if-eqz v1, :cond_1

    .line 285
    :try_start_4
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 288
    :cond_1
    :goto_1
    throw v4

    .line 286
    :catch_3
    move-exception v2

    .line 287
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "Status"

    const-string v6, "setRssiNoti : dos.close() error"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "preference"
    .parameter "property"
    .parameter "alt"

    .prologue
    .line 642
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {p2, p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 644
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "preference"
    .parameter "text"

    .prologue
    .line 650
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    iget-object p2, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 654
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 655
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 657
    :cond_1
    return-void
.end method

.method private setSysScopeStatus()V
    .locals 2

    .prologue
    .line 872
    const-string v0, "sysscope_status"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 873
    const v1, 0x7f090119

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 874
    new-instance v0, Lcom/sec/android/app/sysscope/service/SysScope;

    invoke-direct {v0, p0}, Lcom/sec/android/app/sysscope/service/SysScope;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScope:Lcom/sec/android/app/sysscope/service/SysScope;

    .line 875
    return-void
.end method

.method private setWifiStatus()V
    .locals 3

    .prologue
    .line 810
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 811
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 813
    const-string v1, "wifi_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 814
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 815
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 817
    return-void

    .line 814
    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 815
    :cond_1
    const v0, 0x7f090455

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private setWimaxStatus()V
    .locals 3

    .prologue
    .line 794
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 795
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 797
    if-nez v0, :cond_1

    .line 798
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 799
    const-string v1, "wimax_mac_address"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 800
    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    const-string v0, "wimax_mac_address"

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 803
    const-string v1, "net.wimax.mac.address"

    const v2, 0x7f090455

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/Status;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 805
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateDataState()V
    .locals 4

    .prologue
    .line 672
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    .line 673
    .local v1, state:I
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 675
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 690
    :goto_0
    const-string v2, "data_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    return-void

    .line 677
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09004b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 678
    goto :goto_0

    .line 680
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09004c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 681
    goto :goto_0

    .line 683
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09004a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 684
    goto :goto_0

    .line 686
    :pswitch_3
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090049

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 675
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateNetworkType()V
    .locals 5

    .prologue
    .line 661
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    const-string v2, "gsm.network.type"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, networkType:Ljava/lang/String;
    const-string v2, "[:]"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 664
    .local v1, split:[Ljava/lang/String;
    const-string v2, "network_type"

    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .end local v0           #networkType:Ljava/lang/String;
    .end local v1           #split:[Ljava/lang/String;
    :goto_0
    return-void

    .line 667
    :cond_0
    const-string v2, "network_type"

    const-string v3, "gsm.network.type"

    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v4}, Lcom/android/settings/deviceinfo/Status;->setSummary(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 7
    .parameter "serviceState"

    .prologue
    const v6, 0x7f090045

    const v5, 0x7f090044

    .line 694
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 695
    .local v1, state:I
    const-string v2, "Status"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "service state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09004d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 698
    .local v0, display:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 711
    :goto_0
    const-string v2, "service_state"

    invoke-direct {p0, v2, v0}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Common_UseChameleon"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 714
    const-string v2, "persist.sys.roaming_menu"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 715
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 716
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    :goto_1
    const-string v2, "CTC"

    sget-object v3, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 732
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 733
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    const-string v3, "China Telecom"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 734
    const-string v2, "operator_name"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v4, 0x1040698

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_1
    :goto_2
    return-void

    .line 700
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f09003f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 701
    goto :goto_0

    .line 704
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090040

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 705
    goto :goto_0

    .line 707
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f090042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 718
    :cond_2
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 723
    :cond_3
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 724
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 726
    :cond_4
    const-string v2, "roaming_state"

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 737
    :cond_5
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 742
    :cond_6
    const-string v2, "operator_name"

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 698
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "icicle"

    .prologue
    .line 375
    invoke-super/range {p0 .. p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 378
    new-instance v17, Lcom/android/settings/deviceinfo/Status$MyHandler;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status$MyHandler;-><init>(Lcom/android/settings/deviceinfo/Status;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    .line 380
    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 382
    const v17, 0x7f070022

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->addPreferencesFromResource(I)V

    .line 383
    const-string v17, "battery_level"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryLevel:Landroid/preference/Preference;

    .line 384
    const-string v17, "battery_status"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mBatteryStatus:Landroid/preference/Preference;

    .line 386
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mRes:Landroid/content/res/Resources;

    move-object/from16 v17, v0

    const v18, 0x7f09002e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    .line 388
    const-string v17, "ro.csc.sales_code"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    .line 390
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 392
    const-string v17, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    .line 393
    const-string v17, "up_time"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    .line 395
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 396
    sget-object v4, Lcom/android/settings/deviceinfo/Status;->PHONE_RELATED_ENTRIES:[Ljava/lang/String;

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_0
    if-ge v8, v10, :cond_7

    aget-object v9, v4, v8

    .line 397
    .local v9, key:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 396
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 402
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v8           #i$:I
    .end local v9           #key:Ljava/lang/String;
    .end local v10           #len$:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v17

    const-string v18, "CDMA"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_18

    .line 403
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableDeviceInfo4Vzw"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 405
    const-string v17, "ril.eri_ver_1"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 406
    .local v3, ERI_SysProp:Ljava/lang/String;
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_d

    .line 407
    const-string v17, "eri_version"

    const/16 v18, 0x2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    .end local v3           #ERI_SysProp:Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Setting_EnableConversion4MEIDAndESN"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 417
    .local v6, devId:Ljava/lang/String;
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    if-eqz v6, :cond_f

    .line 419
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .local v11, meid:Ljava/lang/StringBuilder;
    const-string v17, "Dec:"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/deviceinfo/Status;->convertDeviceIdtoDec(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "\nHex:0x"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    const-string v17, "meid_number"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "KEY_MEID_NUMBER() : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    .end local v6           #devId:Ljava/lang/String;
    .end local v11           #meid:Ljava/lang/StringBuilder;
    :goto_2
    const-string v17, "MTR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 433
    const-string v17, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 436
    :cond_1
    const-string v17, "min_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0c0015

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 438
    const-string v17, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    const v18, 0x7f090447

    invoke-virtual/range {v17 .. v18}, Landroid/preference/Preference;->setTitle(I)V

    .line 440
    :cond_2
    const-string v17, "prl_version"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    const-string v17, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_13

    .line 445
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v17, "USC"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "MTR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "XAR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 448
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0xd

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_11

    .line 449
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0xe

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    :goto_3
    const-string v17, "CTC"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_16

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .line 466
    .local v5, cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v5, :cond_4

    .line 467
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v16

    .line 468
    .local v16, sid:I
    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v12

    .line 469
    .local v12, nid:I
    const-string v18, "sid_number"

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v18, "nid_number"

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->sUnknown:Ljava/lang/String;

    move-object/from16 v17, v0

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v5           #cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v12           #nid:I
    .end local v16           #sid:I
    :cond_4
    :goto_6
    const-string v17, "SPR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_17

    .line 479
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->connectToRilService()V

    .line 507
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v13

    .line 508
    .local v13, rawNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .line 509
    .local v7, formattedNumber:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 510
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 511
    const-string v17, "\\+82"

    const-string v18, "0"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 512
    :cond_5
    invoke-static {v13}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 515
    :cond_6
    const-string v17, "number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v7}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    new-instance v17, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v17, v0

    const/16 v18, 0xc8

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifySignalStrength(I)V

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    move-object/from16 v17, v0

    const/16 v18, 0x12c

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 522
    .end local v7           #formattedNumber:Ljava/lang/String;
    .end local v13           #rawNumber:Ljava/lang/String;
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setWimaxStatus()V

    .line 523
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setWifiStatus()V

    .line 524
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setBtStatus()V

    .line 525
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setIpAddressStatus()V

    .line 526
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setFipsStatus()V

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/deviceinfo/Status;->setSysScopeStatus()V

    .line 532
    const-string v17, "ril.serialnumber"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_1a

    const-string v14, "ro.serialno"

    .line 533
    .local v14, serial:Ljava/lang/String;
    :goto_8
    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 534
    .local v15, serialNum:Ljava/lang/String;
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "serial:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const-string v17, "Status"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "serialNum:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_1b

    .line 539
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v15}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :goto_9
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 546
    const-string v17, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 547
    const-string v17, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 548
    const-string v17, "wifi_ip_address"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 549
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 551
    const-string v17, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 552
    const-string v17, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 553
    const-string v17, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 554
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 555
    const-string v17, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 557
    :cond_8
    const-string v17, "VZW"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "SPR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "USC"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "XAR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    const-string v17, "MTR"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 558
    :cond_9
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 560
    :cond_a
    const-string v17, "DCM"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 561
    const-string v17, "signal_strength"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 562
    const-string v17, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 563
    const-string v17, "imei_sv"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 565
    :cond_b
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v17

    const-string v18, "CscFeature_Common_UseChameleon"

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 566
    const-string v17, "persist.sys.roaming_menu"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_c

    .line 567
    const-string v17, "roaming_state"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 572
    :cond_c
    return-void

    .line 409
    .end local v14           #serial:Ljava/lang/String;
    .end local v15           #serialNum:Ljava/lang/String;
    .restart local v3       #ERI_SysProp:Ljava/lang/String;
    :cond_d
    const-string v17, "eri_version"

    const-string v18, "ERI : <unknown>"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 412
    .end local v3           #ERI_SysProp:Ljava/lang/String;
    :cond_e
    const-string v17, "eri_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 426
    .restart local v6       #devId:Ljava/lang/String;
    :cond_f
    const-string v17, "meid_number"

    const-string v18, "Unknown"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 429
    .end local v6           #devId:Ljava/lang/String;
    :cond_10
    const-string v17, "meid_number"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 451
    :cond_11
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 454
    :cond_12
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 460
    :cond_13
    const-string v17, "imei"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 461
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 469
    .restart local v5       #cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    .restart local v12       #nid:I
    .restart local v16       #sid:I
    :cond_14
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_4

    .line 470
    :cond_15
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    goto/16 :goto_5

    .line 474
    .end local v5           #cdmaCell:Landroid/telephony/cdma/CdmaCellLocation;
    .end local v12           #nid:I
    .end local v16           #sid:I
    :cond_16
    const-string v17, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 475
    const-string v17, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 481
    :cond_17
    const-string v17, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 485
    :cond_18
    const-string v17, "LGT"

    sget-object v18, Lcom/android/settings/deviceinfo/Status;->sSalesCode:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 486
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    :goto_a
    const-string v18, "imei_sv"

    const-string v17, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/Status;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    const-string v17, "prl_version"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 499
    const-string v17, "meid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 500
    const-string v17, "min_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 501
    const-string v17, "icc_id"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 502
    const-string v17, "sid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 503
    const-string v17, "nid_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    .line 504
    const-string v17, "user_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 489
    :cond_19
    const-string v17, "imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/deviceinfo/Status;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 532
    :cond_1a
    const-string v14, "ril.serialnumber"

    goto/16 :goto_8

    .line 541
    .restart local v14       #serial:Ljava/lang/String;
    .restart local v15       #serialNum:Ljava/lang/String;
    :cond_1b
    const-string v17, "serial_number"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/settings/deviceinfo/Status;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 605
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 609
    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 610
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 611
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 613
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 619
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/Status;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 621
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 622
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 576
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->setRssiNoti(I)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 583
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrength()V

    .line 584
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/Status;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 585
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->updateDataState()V

    .line 587
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 592
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mSysScopeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/Status;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 593
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/Status;->changeSysScopeStatus()V

    .line 600
    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 601
    return-void
.end method

.method updateSignalStrength()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 751
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v4, :cond_0

    .line 753
    iget-boolean v4, p0, Lcom/android/settings/deviceinfo/Status;->mImsRegistered:Z

    if-eqz v4, :cond_1

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->updateSignalStrengthToZeroWhenIMSRegistered()V

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    .line 760
    .local v3, state:I
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 762
    .local v0, r:Landroid/content/res/Resources;
    const/4 v4, 0x1

    if-eq v4, v3, :cond_2

    const/4 v4, 0x3

    if-ne v4, v3, :cond_3

    .line 764
    :cond_2
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 767
    :cond_3
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthDbm()I

    move-result v2

    .line 769
    .local v2, signalDbm:I
    if-ne v6, v2, :cond_4

    const/4 v2, 0x0

    .line 771
    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getSignalStrengthLevelAsu()I

    move-result v1

    .line 773
    .local v1, signalAsu:I
    if-ne v6, v1, :cond_5

    const/4 v1, 0x0

    .line 775
    :cond_5
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090050

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f090051

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method updateSignalStrengthToZeroWhenIMSRegistered()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 784
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/Status;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 785
    .local v0, r:Landroid/content/res/Resources;
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    if-eqz v1, :cond_0

    .line 786
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status;->mSignalStrength:Landroid/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090050

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x7f090051

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 791
    :cond_0
    return-void
.end method

.method updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 910
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 911
    .local v0, at:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 913
    .local v2, ut:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 914
    const-wide/16 v2, 0x1

    .line 917
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/Status;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/Status;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 918
    return-void
.end method
