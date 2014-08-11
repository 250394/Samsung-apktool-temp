.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IconMerger"


# instance fields
.field public mCarrierNameShown:Z

.field private mIconSize:I

.field public mLongCarrierNameShown:Z

.field private mMoreView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    .line 45
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method private checkOverflow(I)V
    .locals 10
    .parameter "width"

    .prologue
    const/16 v9, 0x8

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 82
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 85
    .local v0, N:I
    const/4 v5, 0x0

    .line 86
    .local v5, visibleChildren:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 87
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v9, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 86
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 89
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_6

    move v4, v6

    .line 91
    .local v4, overflowShown:Z
    :goto_2
    if-eqz v4, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 92
    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v8, v5

    if-le v8, p1, :cond_7

    move v3, v6

    .line 94
    .local v3, moreRequired:Z
    :goto_3
    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    if-gt p1, v8, :cond_5

    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    if-ne p1, v8, :cond_8

    :cond_5
    move v1, v6

    .line 96
    .local v1, availableWidth:Z
    :goto_4
    if-eq v3, v4, :cond_9

    .line 97
    new-instance v6, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;ZZ)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #availableWidth:Z
    .end local v3           #moreRequired:Z
    .end local v4           #overflowShown:Z
    :cond_6
    move v4, v7

    .line 89
    goto :goto_2

    .restart local v4       #overflowShown:Z
    :cond_7
    move v3, v7

    .line 92
    goto :goto_3

    .restart local v3       #moreRequired:Z
    :cond_8
    move v1, v7

    .line 94
    goto :goto_4

    .line 113
    .restart local v1       #availableWidth:Z
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    if-nez v1, :cond_a

    .line 114
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    if-eqz v6, :cond_0

    .line 116
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 76
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 77
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 78
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredWidth()I

    move-result v0

    .line 71
    .local v0, width:I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    .line 72
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    .line 64
    return-void
.end method
