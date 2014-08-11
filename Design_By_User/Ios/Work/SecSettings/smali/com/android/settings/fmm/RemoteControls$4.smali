.class Lcom/android/settings/fmm/RemoteControls$4;
.super Ljava/lang/Object;
.source "RemoteControls.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/RemoteControls;->showNotificationChargeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/RemoteControls;

.field final synthetic val$chkbox:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/RemoteControls;Landroid/widget/CheckBox;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 263
    iput-object p1, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    iput-object p2, p0, Lcom/android/settings/fmm/RemoteControls$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x1

    .line 266
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$4;->this$0:Lcom/android/settings/fmm/RemoteControls;

    #calls: Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/fmm/RemoteControls;->access$600(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls$4;->val$chkbox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    sput-boolean v2, Lcom/android/settings/fmm/RemoteControls;->chkboxFlag:Z

    .line 270
    :cond_0
    return-void
.end method
