.class public Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;
.super Ljava/lang/Object;
.source "WifiP2pSwitchEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/SwitchPreference;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 66
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 69
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 71
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 72
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 75
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 77
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 83
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 84
    return-void

    .line 80
    :cond_1
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    .line 90
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 91
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 95
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 103
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 104
    return-void

    .line 100
    :cond_1
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsTextSwitchPreference;)V
    .locals 4
    .parameter "context"
    .parameter "switch_"

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler$1;-><init>(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 107
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    .line 108
    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    .line 110
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setChecked(Z)V

    .line 112
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 113
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 115
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    if-nez v0, :cond_0

    .line 116
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "Failed to set up connection with wifi p2p service"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iput-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 118
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setEnabled(Z)V

    .line 124
    :cond_0
    :goto_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 125
    return-void

    .line 121
    :cond_1
    const-string v0, "WifiP2pSwitchEnabler"

    const-string v1, "mWifiP2pManager is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->handleP2pStateChanged(I)V

    return-void
.end method

.method private handleP2pStateChanged(I)V
    .locals 3
    .parameter "state"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 221
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 224
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 254
    const-string v0, "WifiP2pSwitchEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled wifi state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_1
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 228
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 234
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setEnabled(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 240
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_4

    .line 241
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 242
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 244
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_5

    .line 245
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 248
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setEnabled(Z)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsTextSwitchPreference;->setChecked(Z)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isP2pEnabled()Z
    .locals 5

    .prologue
    .line 211
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 212
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 213
    .local v2, netInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 217
    .end local v0           #connectivityManager:Landroid/net/ConnectivityManager;
    .end local v2           #netInfo:Landroid/net/NetworkInfo;
    :goto_0
    return v3

    .line 214
    :catch_0
    move-exception v1

    .line 215
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v3, "WifiP2pSwitchEnabler"

    const-string v4, "isP2pEnabled - NullPointerException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 176
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-nez p2, :cond_4

    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 169
    :cond_4
    if-eqz p2, :cond_5

    .line 170
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 173
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v3, :cond_1

    .line 206
    .end local p2
    :cond_0
    :goto_0
    return v1

    .line 181
    .restart local p2
    :cond_1
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 183
    .local v0, enable:Z
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v3, :cond_3

    .line 184
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_2

    move v1, v2

    .line 185
    goto :goto_0

    .line 188
    :cond_2
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 191
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    if-eqz v3, :cond_5

    .line 192
    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v3}, Lcom/android/settings/SettingsTextSwitchPreference;->isChecked()Z

    move-result v3

    if-ne v3, v0, :cond_4

    move v1, v2

    .line 193
    goto :goto_0

    .line 195
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setEnabled(Z)V

    .line 196
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v2, v0}, Lcom/android/settings/SettingsTextSwitchPreference;->setChecked(Z)V

    .line 199
    :cond_5
    if-eqz v0, :cond_6

    .line 200
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->enableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0

    .line 203
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->isP2pEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->disableP2p(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 153
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/SettingsTextSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    if-eqz v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSwitchEnabler;->mSettingsTextSwitchPreference:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsTextSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method
