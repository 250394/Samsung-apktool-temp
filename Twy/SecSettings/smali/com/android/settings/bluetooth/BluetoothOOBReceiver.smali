.class public final Lcom/android/settings/bluetooth/BluetoothOOBReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothOOBReceiver.java"


# static fields
.field private static BTRemoteOOBData:Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

.field private static device:Landroid/bluetooth/BluetoothDevice;

.field private static mOOB_BluetoothOn:Z


# instance fields
.field private cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

.field private mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

.field private manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->mOOB_BluetoothOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static checkBluetoothOn(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Z
    .locals 3
    .parameter "LocalBTadapter"

    .prologue
    const/4 v0, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 92
    const-string v1, "BluetoothOOBReceiver"

    const-string v2, "checkBluetoothOn - Bluetooth state off"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->mOOB_BluetoothOn:Z

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    .line 95
    const/4 v0, 0x0

    .line 97
    :cond_0
    return v0
.end method

.method private handleOOBConnection()V
    .locals 5

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    sget-object v2, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 61
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_2

    .line 62
    const-string v1, "BluetoothOOBReceiver"

    const-string v2, "cachedDevice is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v2}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    sget-object v4, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;Lcom/android/settings/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    .line 65
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->BTRemoteOOBData:Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;->getCODOOB()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 66
    .local v0, btClass:I
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    new-instance v2, Landroid/bluetooth/BluetoothClass;

    invoke-direct {v2, v0}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->setBtClass(Landroid/bluetooth/BluetoothClass;)V

    .line 68
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_1

    .line 89
    .end local v0           #btClass:I
    :cond_0
    :goto_0
    return-void

    .line 69
    .restart local v0       #btClass:I
    :cond_1
    const-string v1, "BluetoothOOBReceiver"

    const-string v2, "DeviceFoundHandler created new CachedBluetoothDevice: cachedDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .end local v0           #btClass:I
    :cond_2
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_3

    .line 73
    const-string v1, "BluetoothOOBReceiver"

    const-string v2, "try bond device"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v1

    if-nez v1, :cond_3

    .line 75
    const-string v1, "BluetoothOOBReceiver"

    const-string v2, "Failed createBond"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 79
    :cond_3
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 81
    const-string v1, "BluetoothOOBReceiver"

    const-string v2, "already connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 85
    :cond_4
    const-string v1, "BluetoothOOBReceiver"

    const-string v2, "OOBPaired Device connect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->cachedDevice:Lcom/android/settings/bluetooth/CachedBluetoothDevice;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 36
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, action:Ljava/lang/String;
    const-string v1, "BluetoothOOBReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    invoke-static {p1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 39
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->mDeviceManager:Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    .line 40
    const-string v1, "android.bluetooth.device.action.REMOTE_OOB_DATA_FOUND"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 41
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->device:Landroid/bluetooth/BluetoothDevice;

    .line 42
    const-string v1, "android.bluetooth.device.extra.CLASS"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

    sput-object v1, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->BTRemoteOOBData:Landroid/bluetooth/BluetoothAdapter$BluetoothOutofBandData;

    .line 44
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->checkBluetoothOn(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->handleOOBConnection()V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_0

    .line 52
    sget-boolean v1, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->mOOB_BluetoothOn:Z

    if-eqz v1, :cond_0

    .line 53
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->mOOB_BluetoothOn:Z

    .line 54
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothOOBReceiver;->handleOOBConnection()V

    goto :goto_0
.end method
