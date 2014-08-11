.class Lcom/android/settings/ContextualPageSettings$1;
.super Landroid/database/ContentObserver;
.source "ContextualPageSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ContextualPageSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ContextualPageSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ContextualPageSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/ContextualPageSettings$1;->this$0:Lcom/android/settings/ContextualPageSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 72
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings$1;->this$0:Lcom/android/settings/ContextualPageSettings;

    #calls: Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V
    invoke-static {v1}, Lcom/android/settings/ContextualPageSettings;->access$000(Lcom/android/settings/ContextualPageSettings;)V

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings$1;->this$0:Lcom/android/settings/ContextualPageSettings;

    invoke-virtual {v1}, Lcom/android/settings/ContextualPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    const-string v1, "ContextualPageSettings"

    const-string v2, "onChange() CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return-void
.end method
