.class Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;
.super Ljava/lang/Object;
.source "WifiP2pSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/p2p/WifiP2pSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

.field final synthetic val$items:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/p2p/WifiP2pSettings;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 958
    iput-object p1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    iput-object p2, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->val$items:[Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "item"

    .prologue
    .line 960
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090337

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x5

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3300(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    .line 972
    :cond_1
    :goto_0
    return-void

    .line 966
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->val$items:[Ljava/lang/String;

    aget-object v0, v0, p2

    iget-object v1, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    invoke-virtual {v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090338

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 967
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 968
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    #getter for: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->mMoreDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3200(Lcom/android/settings/wifi/p2p/WifiP2pSettings;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 970
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/p2p/WifiP2pSettings$12;->this$0:Lcom/android/settings/wifi/p2p/WifiP2pSettings;

    const/4 v1, 0x6

    #calls: Lcom/android/settings/wifi/p2p/WifiP2pSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/wifi/p2p/WifiP2pSettings;->access$3400(Lcom/android/settings/wifi/p2p/WifiP2pSettings;I)V

    goto :goto_0
.end method
