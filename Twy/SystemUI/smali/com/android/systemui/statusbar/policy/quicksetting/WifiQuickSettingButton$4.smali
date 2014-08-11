.class Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$4;
.super Ljava/lang/Object;
.source "WifiQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->showDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 275
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/WifiQuickSettingButton;->setActivateStatus(I)V

    .line 276
    return-void
.end method
