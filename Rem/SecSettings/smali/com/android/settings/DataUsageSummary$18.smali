.class Lcom/android/settings/DataUsageSummary$18;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;


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
    .line 1625
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInspectRangeChanged()V
    .locals 2

    .prologue
    .line 1628
    const-string v0, "DataUsage"

    const-string v1, "onInspectRangeChanged()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    #calls: Lcom/android/settings/DataUsageSummary;->updateDetailData()V
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$2900(Lcom/android/settings/DataUsageSummary;)V

    .line 1630
    return-void
.end method

.method public onLimitChanged()V
    .locals 3

    .prologue
    .line 1639
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings/DataUsageSummary;->setPolicyLimitBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$2100(Lcom/android/settings/DataUsageSummary;J)V

    .line 1640
    return-void
.end method

.method public onWarningChanged()V
    .locals 3

    .prologue
    .line 1634
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v1}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v1

    #calls: Lcom/android/settings/DataUsageSummary;->setPolicyWarningBytes(J)V
    invoke-static {v0, v1, v2}, Lcom/android/settings/DataUsageSummary;->access$2300(Lcom/android/settings/DataUsageSummary;J)V

    .line 1635
    return-void
.end method

.method public requestLimitEdit()V
    .locals 2

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1653
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1655
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$LimitEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    #setter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1602(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1656
    return-void
.end method

.method public requestWarningEdit()V
    .locals 2

    .prologue
    .line 1644
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0}, Lcom/android/settings/DataUsageSummary;->access$1600(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 1647
    :cond_0
    iget-object v0, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v1, p0, Lcom/android/settings/DataUsageSummary$18;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-static {v1}, Lcom/android/settings/DataUsageSummary$WarningEditorFragment;->show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;

    move-result-object v1

    #setter for: Lcom/android/settings/DataUsageSummary;->mDialog:Landroid/app/DialogFragment;
    invoke-static {v0, v1}, Lcom/android/settings/DataUsageSummary;->access$1602(Lcom/android/settings/DataUsageSummary;Landroid/app/DialogFragment;)Landroid/app/DialogFragment;

    .line 1648
    return-void
.end method
