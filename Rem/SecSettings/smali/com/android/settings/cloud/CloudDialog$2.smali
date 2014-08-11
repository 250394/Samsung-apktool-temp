.class Lcom/android/settings/cloud/CloudDialog$2;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cloud/CloudDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudDialog;

.field final synthetic val$accountName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/cloud/CloudDialog$2;->this$0:Lcom/android/settings/cloud/CloudDialog;

    iput-object p2, p0, Lcom/android/settings/cloud/CloudDialog$2;->val$accountName:Ljava/lang/String;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog$2;->this$0:Lcom/android/settings/cloud/CloudDialog;

    iget-object v1, p0, Lcom/android/settings/cloud/CloudDialog$2;->val$accountName:Ljava/lang/String;

    #calls: Lcom/android/settings/cloud/CloudDialog;->removeAccount(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/settings/cloud/CloudDialog;->access$000(Lcom/android/settings/cloud/CloudDialog;Ljava/lang/String;)V

    .line 105
    return-void
.end method
