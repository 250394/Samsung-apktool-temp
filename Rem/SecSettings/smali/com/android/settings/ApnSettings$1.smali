.class Lcom/android/settings/ApnSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "ApnSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApnSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ApnSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v3, 0x3e9

    .line 112
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    #calls: Lcom/android/settings/ApnSettings;->getMobileDataState(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;
    invoke-static {p2}, Lcom/android/settings/ApnSettings;->access$000(Landroid/content/Intent;)Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    .line 115
    .local v0, state:Lcom/android/internal/telephony/Phone$DataState;
    sget-object v1, Lcom/android/settings/ApnSettings$4;->$SwitchMap$com$android$internal$telephony$Phone$DataState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$DataState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 140
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_0
    :goto_0
    return-void

    .line 117
    .restart local v0       #state:Lcom/android/internal/telephony/Phone$DataState;
    :pswitch_0
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 127
    .end local v0           #state:Lcom/android/internal/telephony/Phone$DataState;
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_PROFILE_UPDATE_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 128
    invoke-static {}, Lcom/android/settings/ApnSettings;->access$100()Z

    move-result v1

    if-nez v1, :cond_3

    .line 129
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #calls: Lcom/android/settings/ApnSettings;->fillList()V
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$200(Lcom/android/settings/ApnSettings;)V

    goto :goto_0

    .line 131
    :cond_3
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    invoke-virtual {v1, v3}, Lcom/android/settings/ApnSettings;->showDialog(I)V

    goto :goto_0

    .line 133
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    const-string v1, "ApnSettings"

    const-string v2, "ACTION_DATA_SET_ATTACH_APN_DONE"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$400(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mDelayHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/ApnSettings;->access$400(Lcom/android/settings/ApnSettings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ApnSettings$1;->this$0:Lcom/android/settings/ApnSettings;

    #getter for: Lcom/android/settings/ApnSettings;->mDelayRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/settings/ApnSettings;->access$300(Lcom/android/settings/ApnSettings;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 115
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
