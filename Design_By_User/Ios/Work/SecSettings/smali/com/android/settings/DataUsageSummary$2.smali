.class Lcom/android/settings/DataUsageSummary$2;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/DataUsageSummary;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 447
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v7, 0x14

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 451
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 452
    .local v0, location:[I
    if-eq p2, v7, :cond_0

    const/16 v3, 0x13

    if-ne p2, v3, :cond_2

    .line 453
    :cond_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->getLocationOnScreen([I)V

    .line 454
    aget v1, v0, v6

    .line 455
    .local v1, x:I
    aget v2, v0, v5

    .line 456
    .local v2, y:I
    const/16 v3, 0x1e

    if-gt v2, v3, :cond_3

    .line 457
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->setClickable(Z)V

    .line 462
    :goto_0
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #calls: Lcom/android/settings/DataUsageSummary;->isAppDetailMode()Z
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 463
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/ChartDataUsageView;->setFocus(Z)V

    .line 467
    :goto_1
    if-ne p2, v7, :cond_1

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mDataEnabled:Landroid/widget/CheckBox;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$400(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mobile"

    if-ne v3, v4, :cond_1

    .line 468
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/widget/DataUsageListView;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/DataUsageListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/DataUsageListView;->setSelectable(Z)V

    .line 470
    :cond_1
    if-ne p2, v7, :cond_2

    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "wifi"

    if-ne v3, v4, :cond_2

    .line 471
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mListView:Lcom/android/settings/widget/DataUsageListView;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$600(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/DataUsageListView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/settings/widget/DataUsageListView;->setSelectable(Z)V

    .line 474
    .end local v1           #x:I
    .end local v2           #y:I
    :cond_2
    return v6

    .line 459
    .restart local v1       #x:I
    .restart local v2       #y:I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mCycleSpinner:Landroid/widget/Spinner;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$100(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Spinner;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Spinner;->setClickable(Z)V

    goto :goto_0

    .line 465
    :cond_4
    iget-object v3, p0, Lcom/android/settings/DataUsageSummary$2;->this$0:Lcom/android/settings/DataUsageSummary;

    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/settings/widget/ChartDataUsageView;->setFocus(Z)V

    goto :goto_1
.end method
