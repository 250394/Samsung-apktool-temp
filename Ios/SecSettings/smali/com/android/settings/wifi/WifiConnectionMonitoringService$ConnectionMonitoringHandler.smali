.class Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;
.super Landroid/os/Handler;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectionMonitoringHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitoringService;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    .line 267
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 268
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 272
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 273
    .local v0, arguments:Landroid/os/Bundle;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 282
    :goto_0
    return-void

    .line 275
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->doWifiConnectionMonitoringPolicy()V

    .line 276
    const/16 v1, 0x3e9

    const-wide/16 v2, 0x3e8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ConnectionMonitoringHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 273
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
