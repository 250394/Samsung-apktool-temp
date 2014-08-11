.class public Lcom/android/settings/widget/DataUsageListView;
.super Landroid/widget/ListView;
.source "DataUsageListView.java"


# instance fields
.field private mSelected:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 46
    const/16 v0, 0x14

    if-ne p1, v0, :cond_0

    .line 47
    iget-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mSelected:Z

    if-eqz v0, :cond_0

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/DataUsageListView;->mSelected:Z

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageListView;->getHeaderViewsCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DataUsageListView;->setSelection(I)V

    .line 50
    const-string v0, "DataUsageListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/widget/DataUsageListView;->getHeaderViewsCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setSelectable(Z)V
    .locals 0
    .parameter "selected"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/settings/widget/DataUsageListView;->mSelected:Z

    .line 41
    return-void
.end method
