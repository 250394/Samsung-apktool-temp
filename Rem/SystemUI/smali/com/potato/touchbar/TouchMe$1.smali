.class Lcom/potato/touchbar/TouchMe$1;
.super Landroid/content/BroadcastReceiver;
.source "TouchMe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/touchbar/TouchMe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/touchbar/TouchMe;


# direct methods
.method constructor <init>(Lcom/potato/touchbar/TouchMe;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    .line 67
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 70
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.potato.folkYouBroThanksForKanging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    invoke-virtual {v2}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 73
    const-string v3, "stat_bg"

    .line 72
    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/potato/touchbar/TouchMe;->color:Ljava/lang/String;

    .line 74
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    invoke-virtual {v2}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 75
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "swipe_left"

    .line 74
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/potato/touchbar/TouchMe;->left_action:I
    invoke-static {v1, v2}, Lcom/potato/touchbar/TouchMe;->access$0(Lcom/potato/touchbar/TouchMe;I)V

    .line 76
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    invoke-virtual {v2}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 77
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "swipe_right"

    .line 76
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/potato/touchbar/TouchMe;->right_action:I
    invoke-static {v1, v2}, Lcom/potato/touchbar/TouchMe;->access$1(Lcom/potato/touchbar/TouchMe;I)V

    .line 78
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    invoke-virtual {v2}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 79
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "double"

    .line 78
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/potato/touchbar/TouchMe;->double_action:I
    invoke-static {v1, v2}, Lcom/potato/touchbar/TouchMe;->access$2(Lcom/potato/touchbar/TouchMe;I)V

    .line 80
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    invoke-virtual {v2}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long"

    .line 80
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/potato/touchbar/TouchMe;->long_action:I
    invoke-static {v1, v2}, Lcom/potato/touchbar/TouchMe;->access$3(Lcom/potato/touchbar/TouchMe;I)V

    .line 82
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    invoke-virtual {v2}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 83
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibra"

    .line 82
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/potato/touchbar/TouchMe;->vibrasis:I
    invoke-static {v1, v2}, Lcom/potato/touchbar/TouchMe;->access$4(Lcom/potato/touchbar/TouchMe;I)V

    .line 84
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    invoke-virtual {v2}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 85
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "action_color"

    .line 84
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/potato/touchbar/TouchMe;->action_color:I
    invoke-static {v1, v2}, Lcom/potato/touchbar/TouchMe;->access$5(Lcom/potato/touchbar/TouchMe;I)V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    const-string v1, "com.potato.folkYouBroThanksForKangingColorShits"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$1;->this$0:Lcom/potato/touchbar/TouchMe;

    #calls: Lcom/potato/touchbar/TouchMe;->updateStat()V
    invoke-static {v1}, Lcom/potato/touchbar/TouchMe;->access$6(Lcom/potato/touchbar/TouchMe;)V

    goto :goto_0
.end method
