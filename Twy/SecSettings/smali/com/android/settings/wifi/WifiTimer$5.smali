.class Lcom/android/settings/wifi/WifiTimer$5;
.super Ljava/lang/Object;
.source "WifiTimer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiTimer;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiTimer;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiTimer;)V
    .locals 0
    .parameter

    .prologue
    .line 277
    iput-object p1, p0, Lcom/android/settings/wifi/WifiTimer$5;->this$0:Lcom/android/settings/wifi/WifiTimer;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/settings/wifi/WifiTimer$5;->this$0:Lcom/android/settings/wifi/WifiTimer;

    #calls: Lcom/android/settings/wifi/WifiTimer;->hideKeypad()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiTimer;->access$200(Lcom/android/settings/wifi/WifiTimer;)V

    .line 282
    return-void
.end method
