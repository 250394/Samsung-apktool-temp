.class Lcom/android/settings/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/ChooseAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback",
        "<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/ChooseAccountActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, future:Landroid/accounts/AccountManagerFuture;,"Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v5, 0x1

    .line 95
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 96
    .local v0, bundle:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 98
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    .line 102
    :cond_0
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account added: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_2

    .line 111
    :cond_1
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 112
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 118
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_2
    :goto_0
    return-void

    .line 114
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_0

    .line 103
    .end local v0           #bundle:Landroid/os/Bundle;
    :catch_0
    move-exception v1

    .line 104
    .local v1, e:Landroid/accounts/OperationCanceledException;
    :try_start_1
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "ChooseAccountActivity"

    const-string v3, "addAccount was canceled"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_4
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 112
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_0

    .line 114
    :cond_5
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_0

    .line 105
    .end local v1           #e:Landroid/accounts/OperationCanceledException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, e:Ljava/io/IOException;
    :try_start_2
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 111
    :cond_6
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_0

    .line 114
    :cond_7
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_0

    .line 107
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 108
    .local v1, e:Landroid/accounts/AuthenticatorException;
    :try_start_3
    const-string v2, "ChooseAccountActivity"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "ChooseAccountActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addAccount failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 111
    :cond_8
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 112
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_0

    .line 114
    :cond_9
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v5, :cond_2

    .line 115
    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v2}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_0

    .line 111
    .end local v1           #e:Landroid/accounts/AuthenticatorException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 112
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 115
    :cond_a
    :goto_1
    throw v2

    .line 114
    :cond_b
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v3, v5, :cond_a

    .line 115
    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity$1;->this$0:Lcom/android/settings/accounts/ChooseAccountActivity;

    invoke-virtual {v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto :goto_1
.end method
