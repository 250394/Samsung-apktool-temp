.class Lcom/android/settings/DataUsageSummary$12;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0
    .parameter

    .prologue
    .line 1405
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 1408
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mAppRestrict:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$2400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 1410
    .local v0, restrictBackground:Z
    :goto_0
    if-eqz v0, :cond_4

    .line 1411
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #calls: Lcom/android/settings/DataUsageSummary;->hasLimitedNetworks()Z
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$2500(Lcom/android/settings/DataUsageSummary;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1415
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1416
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 1418
    :cond_0
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary$ConfirmAppRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    #setter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1602(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1430
    :goto_1
    return-void

    .end local v0           #restrictBackground:Z
    :cond_1
    move v0, v1

    .line 1408
    goto :goto_0

    .line 1422
    .restart local v0       #restrictBackground:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1423
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 1425
    :cond_3
    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v2}, Lcom/android/settings/DataUsageSummary$DeniedRestrictFragment;->show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v2

    #setter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v1, v2}, Lcom/android/settings/DataUsageSummary;->access$1602(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    goto :goto_1

    .line 1428
    :cond_4
    iget-object v2, p0, Lcom/android/settings/DataUsageSummary$12;->this$0:Lcom/android/settings/DataUsageSummary;

    #calls: Lcom/android/settings/DataUsageSummary;->setAppRestrictBackground(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/DataUsageSummary;->access$2600(Lcom/android/settings/DataUsageSummary;Z)V

    goto :goto_1
.end method
