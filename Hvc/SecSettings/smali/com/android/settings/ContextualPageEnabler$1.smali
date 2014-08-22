.class Lcom/android/settings/ContextualPageEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "ContextualPageEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ContextualPageEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ContextualPageEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/ContextualPageEnabler;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/settings/ContextualPageEnabler$1;->this$0:Lcom/android/settings/ContextualPageEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    const-string v1, "ContextualPageEnabler"

    const-string v2, "android.settings.CONTEXTUALPAGE_CHANGED is received"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 41
    :cond_1
    const-string v1, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "ContextualPageEnabler"

    const-string v2, "android.settings.CONTEXTUALPAGE_SWITCH_CHANGED is received"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
