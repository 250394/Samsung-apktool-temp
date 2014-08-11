.class public Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;,
        Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
    }
.end annotation


# static fields
.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static isAirplaneModeOn:I

.field private static isConnectivityModeOn:I

.field private static mContext:Landroid/content/Context;

.field private static final sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private static final sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

.field private static final sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;


# instance fields
.field private mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 60
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.powersavingmode.ConnectivityLocationWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 63
    sput-object v3, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    .line 93
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$WifiStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 95
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$BluetoothStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 97
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$GpsStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 99
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$SyncStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 101
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;

    invoke-direct {v0, v3}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataStateTracker;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V

    sput-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    .line 103
    sput v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 105
    sput v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 109
    new-instance v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;-><init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;)V

    iput-object v0, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    .line 57
    return-void
.end method

.method static synthetic access$600()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/bluetooth/LocalBluetoothAdapter;)Lcom/android/settings/bluetooth/LocalBluetoothAdapter;
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    sput-object p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sLocalBluetoothAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$700(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Landroid/content/Context;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 602
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04002a

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 604
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b0062

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 606
    const v1, 0x7f0b0065

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 608
    const v1, 0x7f0b0069

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 610
    const v1, 0x7f0b006d

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 612
    const v1, 0x7f0b0071

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 614
    const v1, 0x7f0b0075

    const/4 v2, 0x5

    invoke-static {p0, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 617
    invoke-static {v0, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 618
    return-object v0
.end method

.method private static getDataState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 962
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 964
    .local v0, connectivityManager:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v1

    return v1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 944
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 945
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 778
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 779
    const-class v1, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 780
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 782
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 783
    return-object v0
.end method

.method private static getOffState(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 974
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v4

    .line 975
    .local v4, wifiState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v0

    .line 976
    .local v0, btState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    .line 977
    .local v1, dataState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v3

    .line 978
    .local v3, syncState:I
    sget-object v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v6, p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v2

    .line 983
    .local v2, gpsState:I
    if-eq v4, v5, :cond_1

    if-eq v4, v7, :cond_1

    if-eq v0, v5, :cond_1

    if-eq v0, v7, :cond_1

    if-ne v1, v5, :cond_0

    sget v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v6, v5, :cond_1

    :cond_0
    if-eq v3, v5, :cond_1

    if-ne v2, v5, :cond_2

    .line 988
    :cond_1
    :goto_0
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static getSync(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 897
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 898
    .local v0, sync:Z
    return v0
.end method

.method private toogleOffMode(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 992
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 994
    .local v1, connManager:Landroid/net/ConnectivityManager;
    const-string v5, "wifi"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 996
    .local v4, wifiManager:Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    .line 997
    .local v0, backgroundData:Z
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v3

    .line 999
    .local v3, sync:Z
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1000
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_0

    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_1

    .line 1001
    :cond_0
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 1003
    :cond_1
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-eq v5, v7, :cond_2

    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_3

    .line 1004
    :cond_2
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 1006
    :cond_3
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1007
    sget v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-nez v5, :cond_4

    .line 1008
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 1011
    :cond_4
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_5

    .line 1012
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 1014
    :cond_5
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v6, :cond_6

    .line 1015
    sget-object v5, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v5, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 1017
    new-instance v2, Landroid/content/Intent;

    const-string v5, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1019
    .local v2, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1022
    .end local v2           #intent_widget:Landroid/content/Intent;
    :cond_6
    return-void
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 8
    .parameter "views"
    .parameter "context"

    .prologue
    const v7, 0x7f020234

    const/4 v6, 0x0

    const v5, 0x7f0d0019

    const v4, 0x7f020233

    const v3, 0x7f0d001a

    .line 642
    const v0, 0x7f0b0062

    invoke-virtual {p0, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 643
    const v0, 0x7f0b0065

    invoke-virtual {p0, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 644
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 645
    const v0, 0x7f0b0071

    invoke-virtual {p0, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 646
    const v0, 0x7f0b0075

    invoke-virtual {p0, v0, v6}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 648
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 680
    :pswitch_0
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : WiFi state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :goto_0
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 685
    const v0, 0x7f0b0076

    const v1, 0x7f02023e

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 686
    const v0, 0x7f0b0077

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 687
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 693
    :goto_1
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getGpsState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 694
    const v0, 0x7f0b0072

    const v1, 0x7f02023c

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 695
    const v0, 0x7f0b0073

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 696
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 702
    :goto_2
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getOffState(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 703
    const v0, 0x7f0b0063

    const v1, 0x7f020240

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 704
    const v0, 0x7f0b0064

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 709
    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    .line 711
    sput v6, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    .line 714
    sget v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 715
    const v0, 0x7f0b006e

    const v1, 0x7f020239

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 716
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 717
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 730
    :goto_4
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 763
    :pswitch_1
    const-string v0, "ConnectivityLocationWidgetProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtons() : BT state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v2, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :goto_5
    return-void

    .line 650
    :pswitch_2
    const v0, 0x7f0b0066

    const v1, 0x7f020241

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 651
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 653
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 656
    :pswitch_3
    const v0, 0x7f0b0066

    const v1, 0x7f020242

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 657
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 659
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 667
    :pswitch_4
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const v0, 0x7f0b0066

    const v1, 0x7f0201af

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 669
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 671
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 673
    :cond_0
    const v0, 0x7f0b0066

    const v1, 0x7f0201ae

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 674
    const v0, 0x7f0b0067

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 676
    const v0, 0x7f0b0068

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 689
    :cond_1
    const v0, 0x7f0b0076

    const v1, 0x7f02023d

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 690
    const v0, 0x7f0b0077

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 691
    const v0, 0x7f0b0078

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1

    .line 698
    :cond_2
    const v0, 0x7f0b0072

    const v1, 0x7f02023b

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 699
    const v0, 0x7f0b0073

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 700
    const v0, 0x7f0b0074

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_2

    .line 706
    :cond_3
    const v0, 0x7f0b0063

    const v1, 0x7f02023f

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 707
    const v0, 0x7f0b0064

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    goto/16 :goto_3

    .line 719
    :cond_4
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 720
    const v0, 0x7f0b006e

    const v1, 0x7f02023a

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 721
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 722
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 724
    :cond_5
    const v0, 0x7f0b006e

    const v1, 0x7f020239

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 725
    const v0, 0x7f0b006f

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 726
    const v0, 0x7f0b0070

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_4

    .line 732
    :pswitch_5
    const v0, 0x7f0b006a

    const v1, 0x7f020237

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 733
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 735
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 738
    :pswitch_6
    const v0, 0x7f0b006a

    const v1, 0x7f020238

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 739
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 741
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 749
    :pswitch_7
    sget-object v0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 750
    const v0, 0x7f0b006a

    const v1, 0x7f020238

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 751
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 753
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 755
    :cond_6
    const v0, 0x7f0b006a

    const v1, 0x7f020237

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 757
    const v0, 0x7f0b006b

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 759
    const v0, 0x7f0b006c

    invoke-virtual {p0, v0, v4}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_5

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 730
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 627
    invoke-static {p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 630
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 631
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 632
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 592
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.ConnectivityLocationWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 595
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 596
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 580
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    .line 581
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 582
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, ".powersavingmode.ConnectivityLocationWidgetProvider"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v4, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 585
    sget-object v1, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mobile_data"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mDataObserver:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$DataObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 587
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const v9, 0x7f09020c

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 794
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 795
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 796
    .local v0, action:Ljava/lang/String;
    const-string v4, "ConnectivityLocationWidgetProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive : action = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 798
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 875
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 876
    :cond_1
    return-void

    .line 799
    :cond_2
    const-string v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 800
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 801
    :cond_3
    const-string v4, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 802
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 812
    :cond_4
    const-string v4, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Landroid/content/SyncStorageEngine;->SYNC_CONNECTION_SETTING_CHANGED_INTENT:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 814
    :cond_5
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1, p2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 816
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 818
    .local v3, intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 819
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_6
    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 820
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 821
    :cond_7
    const-string v4, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 822
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->updateWidget(Landroid/content/Context;)V

    goto :goto_0

    .line 823
    :cond_8
    const-string v4, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 824
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 825
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 827
    .local v1, buttonId:I
    sget v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isConnectivityModeOn:I

    if-nez v4, :cond_0

    .line 828
    if-nez v1, :cond_9

    .line 829
    invoke-direct {p0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->toogleOffMode(Landroid/content/Context;)V

    goto :goto_0

    .line 830
    :cond_9
    if-ne v1, v7, :cond_b

    .line 831
    sget v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v4, v7, :cond_a

    .line 832
    invoke-static {p1, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 835
    :cond_a
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sWifiState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 837
    :cond_b
    const/4 v4, 0x2

    if-ne v1, v4, :cond_c

    .line 839
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sBluetoothState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 840
    :cond_c
    const/4 v4, 0x3

    if-ne v1, v4, :cond_e

    .line 841
    sget v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->isAirplaneModeOn:I

    if-ne v4, v7, :cond_d

    .line 842
    invoke-static {p1, v9, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 845
    :cond_d
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sDataState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 847
    :cond_e
    const/4 v4, 0x4

    if-ne v1, v4, :cond_f

    .line 848
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sGpsState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 850
    :cond_f
    const/4 v4, 0x5

    if-ne v1, v4, :cond_0

    .line 851
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    .line 853
    new-instance v3, Landroid/content/Intent;

    const-string v4, "DataCallSettingWidget.intent.action.DATACALL_WIDGET_UPDATE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    .restart local v3       #intent_widget:Landroid/content/Intent;
    invoke-virtual {p1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 864
    .end local v1           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #intent_widget:Landroid/content/Intent;
    :cond_10
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED_FROM_WIDGET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 867
    sget-object v4, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->sSyncState:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    invoke-virtual {v4, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 571
    invoke-static {p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 573
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 574
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 576
    :cond_0
    return-void
.end method
