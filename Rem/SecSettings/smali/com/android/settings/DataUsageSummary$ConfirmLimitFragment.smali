.class public Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
.super Landroid/app/DialogFragment;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLimitFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1938
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private static buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;
    .locals 4
    .parameter "res"
    .parameter "networkResId"

    .prologue
    .line 1990
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1991
    const v0, 0x7f090bf4

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1994
    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f09075b

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static show(Lcom/android/settings/DataUsageSummary;)Landroid/app/DialogFragment;
    .locals 12
    .parameter "parent"

    .prologue
    const-wide/32 v10, 0x100000

    const-wide v3, 0x140000000L

    .line 1943
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->isAdded()Z

    move-result v9

    if-nez v9, :cond_0

    const/4 v2, 0x0

    .line 1985
    :goto_0
    return-object v2

    .line 1945
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 1948
    .local v6, res:Landroid/content/res/Resources;
    #getter for: Lcom/android/settings/DataUsageSummary;->mChart:Lcom/android/settings/widget/ChartDataUsageView;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/widget/ChartDataUsageView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/settings/widget/ChartDataUsageView;->getWarningBytes()J

    move-result-wide v7

    .line 1951
    .local v7, warningBytes:J
    #getter for: Lcom/android/settings/DataUsageSummary;->mCurrentTab:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/DataUsageSummary;->access$500(Lcom/android/settings/DataUsageSummary;)Ljava/lang/String;

    move-result-object v1

    .line 1952
    .local v1, currentTab:Ljava/lang/String;
    const-string v9, "3g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1953
    const v9, 0x7f090748

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1954
    .local v5, message:Ljava/lang/CharSequence;
    cmp-long v9, v7, v3

    if-ltz v9, :cond_1

    add-long v3, v7, v10

    .line 1976
    .local v3, limitBytes:J
    :cond_1
    :goto_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1977
    .local v0, args:Landroid/os/Bundle;
    const-string v9, "message"

    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 1978
    const-string v9, "limitBytes"

    invoke-virtual {v0, v9, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1980
    new-instance v2, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;

    invoke-direct {v2}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;-><init>()V

    .line 1981
    .local v2, dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    invoke-virtual {v2, v0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 1982
    const/4 v9, 0x0

    invoke-virtual {v2, p0, v9}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1983
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    const-string v10, "confirmLimit"

    invoke-virtual {v2, v9, v10}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1957
    .end local v0           #args:Landroid/os/Bundle;
    .end local v2           #dialog:Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_2
    const-string v9, "4g"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1958
    const v9, 0x7f090747

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1959
    .restart local v5       #message:Ljava/lang/CharSequence;
    cmp-long v9, v7, v3

    if-ltz v9, :cond_3

    add-long v3, v7, v10

    .restart local v3       #limitBytes:J
    :cond_3
    goto :goto_1

    .line 1962
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_4
    const-string v9, "mobile"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1963
    const v9, 0x7f090749

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1964
    .restart local v5       #message:Ljava/lang/CharSequence;
    cmp-long v9, v7, v3

    if-ltz v9, :cond_5

    add-long v3, v7, v10

    .restart local v3       #limitBytes:J
    :cond_5
    goto :goto_1

    .line 1967
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_6
    const-string v9, "wifi"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1968
    const v9, 0x7f090744

    invoke-static {v6, v9}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->buildDialogMessage(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1969
    .restart local v5       #message:Ljava/lang/CharSequence;
    cmp-long v9, v7, v3

    if-ltz v9, :cond_7

    add-long v3, v7, v10

    .restart local v3       #limitBytes:J
    :cond_7
    goto :goto_1

    .line 1973
    .end local v3           #limitBytes:J
    .end local v5           #message:Ljava/lang/CharSequence;
    :cond_8
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "unknown current tab: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 1999
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 2001
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 2002
    .local v4, message:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "limitBytes"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 2004
    .local v2, limitBytes:J
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2006
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$3600()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2007
    const v5, 0x7f090bf3

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2012
    :goto_0
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2014
    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;

    invoke-direct {v6, p0, v2, v3}, Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment$1;-><init>(Lcom/android/settings/DataUsageSummary$ConfirmLimitFragment;J)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2023
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    return-object v5

    .line 2009
    :cond_0
    const v5, 0x7f09075a

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method
