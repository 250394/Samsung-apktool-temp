.class Lcom/android/settings/AppEncryption$1;
.super Landroid/content/BroadcastReceiver;
.source "AppEncryption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AppEncryption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AppEncryption;


# direct methods
.method constructor <init>(Lcom/android/settings/AppEncryption;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/settings/AppEncryption$1;->this$0:Lcom/android/settings/AppEncryption;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "i"

    .prologue
    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 45
    iget-object v1, p0, Lcom/android/settings/AppEncryption$1;->this$0:Lcom/android/settings/AppEncryption;

    invoke-virtual {v1, v0}, Lcom/android/settings/AppEncryption;->startActivity(Landroid/content/Intent;)V

    .line 46
    return-void
.end method
