.class public Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmWarningFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2028
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 10
    .parameter "parent"

    .prologue
    const-wide/16 v8, 0x0

    .line 2033
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v1, 0x0

    .line 2056
    :goto_0
    return-object v1

    .line 2035
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 2037
    .local v4, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/settings/widget/ChartDataUsageView;->getLimitBytes()J

    move-result-wide v2

    .line 2038
    .local v2, limitBytes:J
    const-wide v5, 0x80000000L

    .line 2040
    .local v5, warningBytes:J
    #getter for: Lcom/android/settings/DataUsageSummary;->mDisableAtLimit:Landroid/widget/CheckBox;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$2000(Lcom/android/settings/DataUsageSummary;)Landroid/widget/CheckBox;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2041
    cmp-long v7, v2, v8

    if-nez v7, :cond_2

    .line 2042
    const-wide/16 v5, 0x0

    .line 2048
    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2049
    .local v0, args:Landroid/os/Bundle;
    const-string v7, "warningBytes"

    invoke-virtual {v0, v7, v5, v6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 2051
    new-instance v1, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;

    invoke-direct {v1}, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;-><init>()V

    .line 2052
    .local v1, dialog:Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;
    invoke-virtual {v1, v0}, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;->setArguments(Landroid/os/Bundle;)V

    .line 2053
    const/4 v7, 0x0

    invoke-virtual {v1, p0, v7}, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 2054
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "confirmWarning"

    invoke-virtual {v1, v7, v8}, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2043
    .end local v0           #args:Landroid/os/Bundle;
    .end local v1           #dialog:Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;
    :cond_2
    cmp-long v7, v2, v8

    if-lez v7, :cond_1

    const-wide v7, 0x80000000L

    cmp-long v7, v2, v7

    if-gtz v7, :cond_1

    .line 2044
    const-wide/32 v7, 0x100000

    sub-long v5, v2, v7

    goto :goto_1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 2061
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2063
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "warningBytes"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2065
    .local v2, warningBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2066
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090bf0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2067
    const v4, 0x7f090bf1

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 2069
    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment$1;

    invoke-direct {v5, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmWarningFragment;J)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2078
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    return-object v4
.end method
