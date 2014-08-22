.class Lcom/android/settings/wifi/WifiSettings$18;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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
    .line 2623
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 2625
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    #getter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->access$2200(Lcom/android/settings/wifi/WifiSettings;)Lcom/android/settings/wifi/WifiNewDialog;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2626
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$18;->this$0:Lcom/android/settings/wifi/WifiSettings;

    const/4 v1, 0x0

    #setter for: Lcom/android/settings/wifi/WifiSettings;->mNewDialog:Lcom/android/settings/wifi/WifiNewDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiSettings;->access$2202(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/WifiNewDialog;)Lcom/android/settings/wifi/WifiNewDialog;

    .line 2627
    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->vzwEditFlag:Z

    .line 2628
    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->vzwViewFlag:Z

    .line 2629
    sput-boolean v2, Lcom/android/settings/wifi/WifiSettings;->manageNetwork:Z

    .line 2630
    sput v2, Lcom/android/settings/wifi/WifiSettings;->forget_network:I

    .line 2631
    sput v2, Lcom/android/settings/wifi/WifiSettings;->cancel_network:I

    .line 2632
    sput v2, Lcom/android/settings/wifi/WifiSettings;->edit_network:I

    .line 2633
    const-string v0, "WifiSettings"

    const-string v1, "vzwViewFlag sets to false : mDismissListener"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2640
    :cond_0
    return-void
.end method
