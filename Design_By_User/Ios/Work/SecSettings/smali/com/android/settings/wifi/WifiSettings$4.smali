.class Lcom/android/settings/wifi/WifiSettings$4;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->showProgressDialog(Ljava/lang/String;)V
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
    .line 1287
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialogInterface"
    .parameter "whichButton"

    .prologue
    .line 1289
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiSettings;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1292
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->wpsCommandCancel()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$400(Lcom/android/settings/wifi/WifiSettings;)V

    .line 1293
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #calls: Lcom/android/settings/wifi/WifiSettings;->dismissProgressDialog()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$500(Lcom/android/settings/wifi/WifiSettings;)V

    .line 1295
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$200(Lcom/android/settings/wifi/WifiSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$4;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mScanner:Lcom/android/settings/wifi/WifiSettings$Scanner;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$300(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiSettings$Scanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSettings$Scanner;->pause()V

    .line 1299
    :cond_1
    return-void
.end method
