.class Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;
.super Landroid/database/ContentObserver;
.source "WifiConnectionMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConnectionMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThreasholdObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConnectionMonitoringService;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 306
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    .line 307
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 308
    return-void
.end method

.method private getValue()I
    .locals 4

    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connection_monitoring_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 327
    .local v0, value:I
    packed-switch v0, :pswitch_data_0

    .line 341
    const/16 v0, -0x55

    .line 345
    :goto_0
    return v0

    .line 329
    :pswitch_0
    const/16 v0, -0x55

    .line 330
    goto :goto_0

    .line 333
    :pswitch_1
    const/16 v0, -0x4b

    .line 334
    goto :goto_0

    .line 337
    :pswitch_2
    const/16 v0, -0x5a

    .line 338
    goto :goto_0

    .line 327
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 320
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$202(Lcom/android/settings/wifi/WifiConnectionMonitoringService;I)I

    .line 321
    return-void
.end method

.method public register()V
    .locals 3

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_connection_monitoring_settings"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->this$0:Lcom/android/settings/wifi/WifiConnectionMonitoringService;

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionMonitoringService$ThreasholdObserver;->getValue()I

    move-result v1

    #setter for: Lcom/android/settings/wifi/WifiConnectionMonitoringService;->mThreshold:I
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiConnectionMonitoringService;->access$202(Lcom/android/settings/wifi/WifiConnectionMonitoringService;I)I

    .line 314
    return-void
.end method
