.class public Lcom/sec/android/touchwiz/widget/TwTouchPunchView;
.super Landroid/view/View;
.source "TwTouchPunchView.java"


# instance fields
.field private mBrush:Landroid/graphics/Paint;

.field private mHitRect:Landroid/graphics/Rect;

.field private mInitialized:Z

.field private mRadius:F

.field private mShape:Ljava/lang/String;

.field private mShapeShow:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    const-string v1, ""

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShape:Ljava/lang/String;

    .line 32
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShapeShow:Z

    .line 33
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    .line 34
    iput-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    .line 35
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mRadius:F

    .line 36
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mInitialized:Z

    .line 52
    sget-object v1, Lcom/android/settings/R$styleable;->TwTouchPunchView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 54
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShape:Ljava/lang/String;

    .line 55
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShapeShow:Z

    .line 57
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    .line 60
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    const v2, 0xffffff

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 62
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    const/16 v2, 0x96

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 64
    iput-boolean v3, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mInitialized:Z

    .line 65
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    .line 108
    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mInitialized:Z

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShapeShow:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShape:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShape:Ljava/lang/String;

    const-string v2, "circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationX()F

    move-result v1

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationY()F

    move-result v2

    iget-object v3, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget v3, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mRadius:F

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationX()F

    move-result v3

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationY()F

    move-result v4

    iget-object v5, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    .local v0, position:Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mBrush:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mInitialized:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 130
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    .line 131
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 132
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 133
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 134
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 136
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mRadius:F

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mInitialized:Z

    .line 140
    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->invalidate()V

    .line 142
    :cond_1
    return-void

    .line 136
    :cond_2
    iget-object v0, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    const/4 v12, 0x0

    const-wide/high16 v10, 0x4000

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    .line 74
    .local v2, flags:I
    iget-boolean v4, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mInitialized:Z

    if-nez v4, :cond_1

    .line 100
    :cond_0
    :goto_0
    return v12

    .line 78
    :cond_1
    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShape:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mShape:Ljava/lang/String;

    const-string v5, "circle"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationX()F

    move-result v5

    iget-object v6, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    add-float/2addr v7, v8

    sub-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 88
    .local v0, diff:D
    iget v4, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mRadius:F

    float-to-double v4, v4

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 89
    or-int/lit16 v4, v2, 0x80

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    goto :goto_0

    .line 92
    .end local v0           #diff:D
    :cond_2
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationX()F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->getTranslationY()F

    move-result v7

    iget-object v8, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    iget-object v9, p0, Lcom/sec/android/touchwiz/widget/TwTouchPunchView;->mHitRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    add-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 95
    .local v3, position:Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    or-int/lit16 v4, v2, 0x80

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setEdgeFlags(I)V

    goto/16 :goto_0
.end method
