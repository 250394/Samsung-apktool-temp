.class Lcom/android/settings/wifi/WifiSettings$19;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 2643
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 18
    .parameter "dialog"
    .parameter "button"

    .prologue
    .line 2645
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_5

    .line 2646
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MangeNetwork dialog bttn clicked: button = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2647
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_2

    .line 2648
    const-string v13, "WifiSettings"

    const-string v14, "COnnect button clicked  in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2649
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v13

    const v14, 0x7fffffff

    if-ne v13, v14, :cond_1

    .line 2650
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2843
    :cond_0
    :goto_0
    return-void

    .line 2652
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2653
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;I)V

    goto :goto_0

    .line 2655
    :cond_2
    const/4 v13, -0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_3

    .line 2656
    const-string v13, "WifiSettings"

    const-string v14, "Neutral edit  button clicked  in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2657
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    goto :goto_0

    .line 2658
    :cond_3
    const/4 v13, -0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_0

    .line 2659
    const-string v13, "WifiSettings"

    const-string v14, "Remove button clicked  in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2660
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 2667
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2669
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 2674
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_7

    const/4 v13, -0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_7

    sget v13, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_7

    .line 2675
    const-string v13, "WifiSettings"

    const-string v14, "negative forget button in connected network dialog in manage network dialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2676
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 2682
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 2683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2685
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    .line 2686
    const-string v13, " "

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2689
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_9

    const/4 v2, 0x1

    .line 2691
    .local v2, forgetable:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_a

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_a

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_a

    sget v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    if-nez v13, :cond_a

    .line 2692
    const-string v13, "WifiSettings"

    const-string v14, "forget button in connected network dialog in normal wifi settings"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2693
    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_FORGET"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->forgetNetwork(I)V

    .line 2700
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 2701
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2703
    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    .line 2704
    const-string v13, " "

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    goto/16 :goto_0

    .line 2689
    .end local v2           #forgetable:Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_1

    .line 2706
    .restart local v2       #forgetable:Z
    :cond_a
    const/4 v13, -0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_b

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_b

    .line 2707
    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_VIEW"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const-string v13, "WifiSettings"

    const-string v14, "View button in connected netork dialog in normal wifi settings"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;ZZ)V
    invoke-static/range {v13 .. v16}, Lcom/android/settings/wifi/WifiSettings;->access$3000(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 2710
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    goto/16 :goto_0

    .line 2711
    :cond_b
    const/4 v13, -0x3

    move/from16 v0, p2

    if-eq v0, v13, :cond_c

    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1d

    :cond_c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_1d

    sget v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    if-nez v13, :cond_1d

    .line 2712
    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_SUBMIT/BUTTON_CONNECT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2715
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiNewDialog;->chosenNetworkSetupMethod()I

    move-result v9

    .line 2716
    .local v9, networkSetup:I
    if-eqz v9, :cond_e

    .line 2717
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iput v9, v13, Lcom/android/settings/wifi/WifiSettings;->mNetworkSetup:I

    .line 2718
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 2719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v14, 0x1

    #setter for: Lcom/android/settings/wifi/WifiSettings;->mWpsInProgress:Z
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$602(Lcom/android/settings/wifi/WifiSettings;Z)Z

    .line 2720
    const/4 v13, 0x2

    if-eq v9, v13, :cond_d

    .line 2721
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v14, 0x0

    #calls: Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(Ljava/lang/String;)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$2600(Lcom/android/settings/wifi/WifiSettings;Ljava/lang/String;)V

    .line 2722
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/wifi/WifiNewDialog;->getWpsConfig()Landroid/net/wifi/WpsInfo;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->startWps(Landroid/net/wifi/WpsInfo;)V

    goto/16 :goto_0

    .line 2726
    :cond_e
    sget-object v11, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2727
    .local v11, previousPass:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiNewDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 2728
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    const-string v12, ""

    .line 2730
    .local v12, sChangedpassword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    if-eqz v13, :cond_f

    .line 2731
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->changedssid:Ljava/lang/String;

    .line 2734
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mAccessPointSecurity:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v13, v14, :cond_10

    const/4 v7, 0x1

    .line 2735
    .local v7, nSecuritysame:Z
    :goto_2
    sget-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 2737
    .local v6, nPasswordsame:Z
    if-nez v1, :cond_12

    .line 2738
    const-string v13, "WifiSettings"

    const-string v14, " config null "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2739
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v14

    #calls: Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$3100(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2740
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;I)V

    goto/16 :goto_0

    .line 2734
    .end local v6           #nPasswordsame:Z
    .end local v7           #nSecuritysame:Z
    :cond_10
    const/4 v7, 0x0

    goto :goto_2

    :cond_11
    const/4 v7, 0x1

    goto :goto_2

    .line 2742
    .restart local v6       #nPasswordsame:Z
    .restart local v7       #nSecuritysame:Z
    :cond_12
    iget v13, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_18

    .line 2743
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    if-eqz v13, :cond_0

    .line 2744
    const-string v13, "WifiSettings"

    const-string v14, " mSelectedAccessPoint != null"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2745
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    invoke-virtual {v13, v14}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 2747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 2748
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings$Scanner;->resume()V

    .line 2750
    :cond_13
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    .line 2752
    const/4 v13, -0x1

    move/from16 v0, p2

    if-eq v0, v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v14, :cond_16

    .line 2753
    :cond_14
    const-string v13, "WifiSettings"

    const-string v14, " Uzzal EDIT--> CONNECT clicked."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2754
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iget-boolean v13, v13, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v13, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2755
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 2757
    .local v3, found:Z
    if-nez v3, :cond_15

    .line 2758
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    .line 2759
    .local v10, newNetId:I
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveNetwork():newNetId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2761
    const/4 v13, -0x1

    if-eq v10, v13, :cond_15

    .line 2762
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v10}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 2764
    .end local v10           #newNetId:I
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget v14, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 2765
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 2767
    .end local v3           #found:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v14, 0x7f090233

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2768
    .local v5, messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 2769
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    iget-boolean v13, v13, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v13, v1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 2770
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3200(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    .line 2772
    .restart local v3       #found:Z
    if-nez v3, :cond_17

    .line 2773
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result v10

    .line 2774
    .restart local v10       #newNetId:I
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "saveNetwork():newNetId = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", and enabled"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2775
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v10, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2776
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2779
    .end local v10           #newNetId:I
    :cond_17
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    goto/16 :goto_0

    .line 2783
    .end local v3           #found:Z
    .end local v5           #messageRes:Ljava/lang/String;
    :cond_18
    const-string v13, "WifiSettings"

    const-string v14, "new network"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->getNewNetworkId(Landroid/net/wifi/WifiConfiguration;)I
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3300(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)I

    move-result v8

    .line 2785
    .local v8, networkId:I
    const/4 v13, -0x1

    if-ne v8, v13, :cond_19

    .line 2786
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f090234

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 2789
    :cond_19
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v8, v14}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 2790
    iput v8, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2791
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-boolean v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mEdit:Z

    if-nez v13, :cond_1a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    invoke-static {v13, v1}, Lcom/android/settings/wifi/WifiSettings;->access$3100(Lcom/android/settings/wifi/WifiSettings;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 2792
    :cond_1a
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_1b

    .line 2793
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 2794
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    .line 2795
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 2797
    new-instance v4, Landroid/content/Intent;

    const-string v13, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2798
    .local v4, intent:Landroid/content/Intent;
    const-string v13, "wifi_state"

    const/4 v14, 0x3

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2799
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v14}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Lcom/android/settings/wifi/WifiSettings;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2800
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateAccessPoints()V
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2900(Lcom/android/settings/wifi/WifiSettings;)V

    .line 2801
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    sget-object v14, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #calls: Lcom/android/settings/wifi/WifiSettings;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v13, v14}, Lcom/android/settings/wifi/WifiSettings;->access$3400(Lcom/android/settings/wifi/WifiSettings;Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_0

    .line 2803
    .end local v4           #intent:Landroid/content/Intent;
    :cond_1b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const v14, 0x7f090233

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    iget-object v0, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/settings/wifi/AccessPoint;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2804
    .restart local v5       #messageRes:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v13}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 2805
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v13

    invoke-virtual {v13}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    goto/16 :goto_0

    .line 2808
    .end local v5           #messageRes:Ljava/lang/String;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->connectNetwork(I)V
    invoke-static {v13, v8}, Lcom/android/settings/wifi/WifiSettings;->access$1400(Lcom/android/settings/wifi/WifiSettings;I)V

    .line 2809
    sget-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedCorrectPassword:Ljava/lang/String;

    .line 2811
    const-string v13, "WifiSettings"

    const-string v14, "Uzzal else "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2815
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #nPasswordsame:Z
    .end local v7           #nSecuritysame:Z
    .end local v8           #networkId:I
    .end local v9           #networkSetup:I
    .end local v11           #previousPass:Ljava/lang/String;
    .end local v12           #sChangedpassword:Ljava/lang/String;
    :cond_1d
    const/4 v13, -0x3

    move/from16 v0, p2

    if-ne v0, v13, :cond_1f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_1f

    .line 2816
    const-string v13, "WifiSettings"

    const-string v14, "onClick() BUTTON_CONNECTED_EDIT neutral edit button in unconnected network dialog in manage networks"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_1e

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v13, :cond_1e

    .line 2818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2819
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "password is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2822
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 2823
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2824
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 2821
    :cond_1e
    const-string v13, "WifiSettings"

    const-string v14, "   mNewDialog.mPasswordView is null 1 "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 2825
    :cond_1f
    const/4 v13, -0x2

    move/from16 v0, p2

    if-ne v0, v13, :cond_21

    sget-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    const/4 v14, 0x1

    if-ne v13, v14, :cond_21

    .line 2826
    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_EDIT"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2827
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    if-eqz v13, :cond_20

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    if-eqz v13, :cond_20

    .line 2828
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v13}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v13

    iget-object v13, v13, Lcom/android/settings/wifi/WifiNewDialog;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v13}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    sput-object v13, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    .line 2829
    const-string v13, "WifiSettings"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "password is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Lcom/android/settings/wifi/WifiNewDialog;->ConnectedPassword:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2832
    :goto_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 2833
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    goto/16 :goto_0

    .line 2831
    :cond_20
    const-string v13, "WifiSettings"

    const-string v14, "  mNewDialog.mPasswordView is null  "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2834
    :cond_21
    const/4 v13, -0x1

    move/from16 v0, p2

    if-ne v0, v13, :cond_22

    sget v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_22

    .line 2835
    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_EDIT NW"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2836
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiSettings$19;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settings/wifi/AccessPoint;
    invoke-static {v14}, Lcom/android/settings/wifi/WifiSettings;->access$2700(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/AccessPoint;

    move-result-object v14

    const/4 v15, 0x1

    #calls: Lcom/android/settings/wifi/WifiSettings;->showNewDialog(Lcom/android/settings/wifi/AccessPoint;Z)V
    invoke-static {v13, v14, v15}, Lcom/android/settings/wifi/WifiSettings;->access$2800(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/AccessPoint;Z)V

    .line 2837
    const/4 v13, 0x0

    sput-boolean v13, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2838
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0

    .line 2840
    :cond_22
    const-string v13, "WifiSettings"

    const-string v14, "button == WifiNewDialog.BUTTON_NEGATIVE"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2841
    const/4 v13, 0x0

    sput v13, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    goto/16 :goto_0
.end method
