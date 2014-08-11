.class Lcom/android/settings/cloud/CloudSettingsMainFragment$AccountConfigTask;
.super Landroid/os/AsyncTask;
.source "CloudSettingsMainFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccountConfigTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/accounts/AccountManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Ljava/lang/Void;",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field private requestCode:I

.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# virtual methods
.method protected varargs doInBackground([Landroid/accounts/AccountManagerFuture;)Landroid/content/Intent;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 532
    .local p1, params:[Landroid/accounts/AccountManagerFuture;,"[Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 533
    .local v1, bundle:Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 535
    .local v3, intent:Landroid/content/Intent;
    const/4 v4, 0x0

    :try_start_0
    aget-object v4, p1, v4

    invoke-interface {v4}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/os/Bundle;

    move-object v1, v0

    .line 536
    const-string v4, "intent"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/Intent;

    move-object v3, v0
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 544
    :goto_0
    return-object v3

    .line 537
    :catch_0
    move-exception v2

    .line 538
    .local v2, e:Landroid/accounts/OperationCanceledException;
    const-string v4, "CloudSettings"

    invoke-virtual {v2}, Landroid/accounts/OperationCanceledException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 539
    .end local v2           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v2

    .line 540
    .local v2, e:Landroid/accounts/AuthenticatorException;
    const-string v4, "CloudSettings"

    invoke-virtual {v2}, Landroid/accounts/AuthenticatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 541
    .end local v2           #e:Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v2

    .line 542
    .local v2, e:Ljava/io/IOException;
    const-string v4, "CloudSettings"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 508
    check-cast p1, [Landroid/accounts/AccountManagerFuture;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/cloud/CloudSettingsMainFragment$AccountConfigTask;->doInBackground([Landroid/accounts/AccountManagerFuture;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 522
    if-eqz p1, :cond_0

    .line 523
    const/high16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 524
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$AccountConfigTask;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    iget v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$AccountConfigTask;->requestCode:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 527
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 508
    check-cast p1, Landroid/content/Intent;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/cloud/CloudSettingsMainFragment$AccountConfigTask;->onPostExecute(Landroid/content/Intent;)V

    return-void
.end method
