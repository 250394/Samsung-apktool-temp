.class Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;
.super Landroid/content/BroadcastReceiver;
.source "AutoRotateQuickSettingButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)V
    .locals 0
    .parameter

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 53
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mSupportFolderType:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->isFolderOpen()Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotationSecond()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$300(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)Z

    .line 60
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->setActivateStatus(I)V

    .line 61
    const-string v0, "systemui/quicksetting/QuickSettingButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_CONFIGURATION_CHANGED :: mAutoRotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isFolderOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->isFolderOpen()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$100(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mSupportFolderType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mSupportFolderType:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->getAutoRotation()Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$400(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;)Z

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->mAutoRotation:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;->access$202(Lcom/android/systemui/statusbar/policy/quicksetting/AutoRotateQuickSettingButton;Z)Z

    goto :goto_0

    .line 60
    :cond_2
    const/4 v0, 0x2

    goto :goto_1
.end method
