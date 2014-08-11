.class Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;
.super Landroid/content/BroadcastReceiver;
.source "MiniModeAppsPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 598
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 599
    .local v0, action:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 600
    .local v1, config:Landroid/content/res/Configuration;
    iget-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 602
    .local v2, locale:Ljava/util/Locale;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 606
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 607
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 608
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    invoke-virtual {v2}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    #setter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;
    invoke-static {v4, v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$1802(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;

    .line 610
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 611
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 612
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;->this$0:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;

    #calls: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->access$2200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 614
    :cond_1
    return-void
.end method
