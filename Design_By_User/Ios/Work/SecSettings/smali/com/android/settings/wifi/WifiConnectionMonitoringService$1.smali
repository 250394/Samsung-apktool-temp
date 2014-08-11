.class Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)V
    .locals 0
    .parameter

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 62
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, action:Ljava/lang/String;
    const-string v13, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 64
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    const/4 v14, 0x0

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mScreenOff:Z
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$002(Lcom/android/settings/wifi/WifiConnectionMonitoringService;Z)Z

    .line 65
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mContext:Landroid/content/Context;

    const-string v14, "connectivity"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    .line 67
    .local v4, connectivity:Landroid/net/ConnectivityManager;
    if-eqz v4, :cond_0

    .line 68
    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v8

    .line 69
    .local v8, info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 70
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->startMonitoring()V

    .line 71
    const-string v13, "WifiConnectionMonitoringService"

    const-string v14, "onReceive, ACTION_SCREEN_ON startMonitoring "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .end local v4           #connectivity:Landroid/net/ConnectivityManager;
    .end local v8           #info:Landroid/net/NetworkInfo;
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    const-string v13, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 75
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    const/4 v14, 0x1

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mScreenOff:Z
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$002(Lcom/android/settings/wifi/WifiConnectionMonitoringService;Z)Z

    .line 76
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->stopMonitoring()V

    .line 77
    const-string v13, "WifiConnectionMonitoringService"

    const-string v14, "onReceive, ACTION_SCREEN_OFF stopMonitoring "

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 78
    :cond_2
    const-string v13, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 79
    const-string v13, "networkInfo"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/net/NetworkInfo;

    .line 80
    .restart local v8       #info:Landroid/net/NetworkInfo;
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mScreenOff:Z
    invoke-static {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$000(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 81
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->startMonitoring()V

    goto :goto_0

    .line 83
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->stopMonitoring()V

    goto :goto_0

    .line 85
    .end local v8           #info:Landroid/net/NetworkInfo;
    :cond_4
    const-string v13, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 87
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v14, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v14

    .line 88
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_6

    .line 89
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 91
    .local v3, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v3, :cond_7

    .line 92
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 124
    :cond_5
    :goto_1
    const-string v13, "WifiConnectionMonitoringService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, blacklist: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_6
    monitor-exit v14

    goto/16 :goto_0

    :catchall_0
    move-exception v13

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v13

    .line 94
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    :cond_7
    const/4 v5, 0x0

    .line 95
    .local v5, found:Z
    const/4 v9, 0x0

    .line 97
    .local v9, removeSsid:Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 98
    .local v12, string:Ljava/lang/String;
    const/4 v5, 0x0

    .line 100
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 101
    .local v2, config:Landroid/net/wifi/WifiConfiguration;
    if-eqz v2, :cond_9

    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_9

    if-eqz v12, :cond_9

    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 103
    iget v13, v2, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v15, 0x2

    if-ne v13, v15, :cond_a

    .line 104
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    iget v15, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v13, v15}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 105
    :cond_a
    const/4 v5, 0x1

    .line 110
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    :cond_b
    const-string v13, "WifiConnectionMonitoringService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, find "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-nez v5, :cond_8

    .line 113
    const-string v13, "WifiConnectionMonitoringService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " from blacklist"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    move-object v9, v12

    .line 119
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v12           #string:Ljava/lang/String;
    :cond_c
    if-nez v5, :cond_5

    .line 120
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 127
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v5           #found:Z
    .end local v9           #removeSsid:Ljava/lang/String;
    :cond_d
    const-string v13, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 129
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v14, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    monitor-enter v14

    .line 130
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_10

    .line 131
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v11

    .line 133
    .local v11, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v11, :cond_10

    .line 134
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/ScanResult;

    .line 135
    .local v10, result:Landroid/net/wifi/ScanResult;
    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget v13, v10, Landroid/net/wifi/ScanResult;->level:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v15}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)I

    move-result v15

    add-int/lit8 v15, v15, 0x5

    if-lt v13, v15, :cond_e

    .line 136
    const-string v13, "WifiConnectionMonitoringService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, SSID:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", RSSI:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v10, Landroid/net/wifi/ScanResult;->level:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", threashold:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    move-object/from16 v16, v0

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static/range {v16 .. v16}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$200(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const-string v13, "WifiConnectionMonitoringService"

    const-string v15, "onReceive, remove from the blacklist"

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    iget-object v13, v13, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 139
    const-string v13, "WifiConnectionMonitoringService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, blacklist:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mBlacklist:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    .line 143
    .restart local v3       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v3, :cond_e

    .line 144
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 145
    .restart local v2       #config:Landroid/net/wifi/WifiConfiguration;
    iget-object v13, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-eqz v13, :cond_f

    iget-object v13, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iget-object v15, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 146
    const-string v13, "WifiConnectionMonitoringService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "onReceive, EnableNetwork : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget-object v0, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$1;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    #getter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$100(Lcom/android/settings/wifi/WifiConnectionMonitoringService;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    iget v15, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v15, v0}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 148
    monitor-exit v14

    goto/16 :goto_0

    .line 156
    .end local v2           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v3           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #result:Landroid/net/wifi/ScanResult;
    .end local v11           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :catchall_1
    move-exception v13

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v13

    :cond_10
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0
.end method
