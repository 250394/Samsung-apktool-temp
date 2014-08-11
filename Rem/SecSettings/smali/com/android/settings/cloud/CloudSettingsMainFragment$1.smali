.class Lcom/android/settings/cloud/CloudSettingsMainFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 354
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 357
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;
    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 359
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, action:Ljava/lang/String;
    const-string v2, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 362
    const-string v2, "CloudSettings"

    const-string v3, "Received current cloud settings - CloudSettingsMainFragment"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const-string v3, "cloudSettings"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cloud/CloudSettings;->getInstance(Landroid/os/Bundle;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v3

    #setter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v2, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;

    .line 368
    const-string v2, "CloudSettings"

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #getter for: Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;
    invoke-static {v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/settings/cloud/CloudSettings;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->initPreferences()V
    invoke-static {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 385
    .end local v0           #action:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 370
    .restart local v0       #action:Ljava/lang/String;
    :cond_2
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 371
    const-string v2, "noConnectivity"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 374
    .local v1, noConnectivity:Z
    if-eqz v1, :cond_1

    .line 375
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 376
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    const v4, 0x7f090c2e

    invoke-virtual {v3, v4}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 379
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
