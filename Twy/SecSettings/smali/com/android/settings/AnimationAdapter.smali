.class public Lcom/android/settings/AnimationAdapter;
.super Ljava/lang/Object;
.source "AnimationAdapter.java"


# instance fields
.field mActivity:Landroid/app/Activity;

.field private mAnimationEnabled:I

.field private final mAnimationHandler:Landroid/os/Handler;

.field public mAnimationType:I

.field private mDummyImageView:Landroid/widget/ImageView;

.field private mDummyView:Landroid/view/View;

.field private mSelectedView:Landroid/view/View;

.field private mTransitionScale:F

.field private mViewDelay:J

.field private mViewDuration:J

.field private mViewFadeType:I

.field private mViewGlobalPosition:Landroid/graphics/Rect;

.field private mViewHeight:I

.field private mViewScaleFrom:F

.field private mViewScaleTo:F

.field private mViewStartOffset:I

.field private mViewTranslateFrom:F

.field private mViewTranslateTo:F

.field private mWindow:Landroid/view/View;

.field private mWindowDelay:J

.field private mWindowDuration:J

.field private mWindowFadeType:I

.field private mWindowScaleFrom:F

.field private mWindowScaleTo:F

.field private mWindowStartOffset:I

.field private mWindowTranslateFrom:F

.field private mWindowTranslateTo:F


# direct methods
.method private constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 85
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    .line 43
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 44
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    .line 45
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    .line 50
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    .line 51
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDelay:J

    .line 52
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    .line 53
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    .line 54
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    .line 55
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    .line 56
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    .line 57
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    .line 58
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    .line 63
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    .line 64
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDelay:J

    .line 65
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    .line 66
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    .line 67
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    .line 68
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    .line 69
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    .line 70
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 72
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    .line 73
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 74
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 75
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    .line 77
    new-instance v0, Lcom/android/settings/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AnimationAdapter$1;-><init>(Lcom/android/settings/AnimationAdapter;)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    const/4 v1, 0x0

    .line 90
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    .line 43
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 44
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    .line 45
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    .line 50
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    .line 51
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDelay:J

    .line 52
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    .line 53
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    .line 54
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    .line 55
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    .line 56
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    .line 57
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    .line 58
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    .line 63
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    .line 64
    iput-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDelay:J

    .line 65
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    .line 66
    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    .line 67
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    .line 68
    iput v3, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    .line 69
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    .line 70
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 72
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    .line 73
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 74
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 75
    iput-object v2, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    .line 77
    new-instance v0, Lcom/android/settings/AnimationAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AnimationAdapter$1;-><init>(Lcom/android/settings/AnimationAdapter;)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    .line 91
    if-nez p1, :cond_0

    .line 92
    const-string v0, "AnimationLoader"

    const-string v1, "Construct : Activity is null"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :goto_0
    return-void

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    .line 96
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    .line 97
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/AnimationAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/AnimationAdapter;->startAnimation()Z

    move-result v0

    return v0
.end method

.method private getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;
    .locals 4
    .parameter "fadeType"
    .parameter "duration"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 296
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 297
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 298
    return-object v0

    .line 296
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;
    .locals 4
    .parameter "fadeType"
    .parameter "duration"
    .parameter "startOffSet"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 302
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 303
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    :goto_0
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 304
    int-to-long v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    .line 305
    return-object v0

    .line 302
    .end local v0           #animation:Landroid/view/animation/AlphaAnimation;
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_0
.end method

.method private getDummyViewFromView(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 387
    if-nez p1, :cond_1

    .line 407
    :cond_0
    :goto_0
    return-object v1

    .line 389
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 390
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 392
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 394
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 395
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 396
    const-string v2, "AnimationLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bitmap is recycled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 400
    :cond_2
    const-string v1, "AnimationLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create dummy Bitmap id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    .line 403
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    .line 404
    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 405
    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 407
    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;
    .locals 9
    .parameter "from"
    .parameter "to"
    .parameter "duration"

    .prologue
    const/4 v5, 0x2

    const/high16 v6, 0x3f00

    .line 315
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v1, p1

    move v2, p2

    move v3, p1

    move v4, p2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 318
    .local v0, animation:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v0, p3, p4}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 319
    return-object v0
.end method

.method private getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;
    .locals 9
    .parameter "type"
    .parameter "from"
    .parameter "to"
    .parameter "duration"

    .prologue
    const/4 v2, 0x0

    .line 290
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v1, p1

    move v3, p1

    move v4, v2

    move v5, p1

    move v6, p2

    move v7, p1

    move v8, p3

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 291
    .local v0, animation:Landroid/view/animation/TranslateAnimation;
    invoke-virtual {v0, p4, p5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 292
    return-object v0
.end method

.method private initValues(I)V
    .locals 9
    .parameter "animationType"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 119
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    .line 122
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 123
    .local v1, mWindowManager:Landroid/view/IWindowManager;
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->getAnimationScale(I)F

    move-result v2

    iput v2, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v1           #mWindowManager:Landroid/view/IWindowManager;
    :goto_0
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setWindowDuration(J)Lcom/android/settings/AnimationAdapter;

    .line 129
    const-wide/16 v2, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setViewDuration(J)Lcom/android/settings/AnimationAdapter;

    .line 130
    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setWindowStartOffset(I)Lcom/android/settings/AnimationAdapter;

    .line 131
    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;

    .line 132
    invoke-direct {p0, v4, v4}, Lcom/android/settings/AnimationAdapter;->setWindowScale(FF)Lcom/android/settings/AnimationAdapter;

    .line 133
    invoke-direct {p0, v4, v4}, Lcom/android/settings/AnimationAdapter;->setViewScale(FF)Lcom/android/settings/AnimationAdapter;

    .line 134
    invoke-direct {p0, v5, v5}, Lcom/android/settings/AnimationAdapter;->setWindowTranslate(FF)Lcom/android/settings/AnimationAdapter;

    .line 135
    invoke-direct {p0, v5, v5}, Lcom/android/settings/AnimationAdapter;->setViewTranslate(FF)Lcom/android/settings/AnimationAdapter;

    .line 136
    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;

    .line 137
    invoke-direct {p0, v6}, Lcom/android/settings/AnimationAdapter;->setViewFadeType(I)Lcom/android/settings/AnimationAdapter;

    .line 139
    if-ne p1, v7, :cond_1

    .line 140
    const/high16 v2, 0x4355

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setWindowDuration(J)Lcom/android/settings/AnimationAdapter;

    .line 141
    const v2, 0x3f8ccccd

    invoke-direct {p0, v4, v2}, Lcom/android/settings/AnimationAdapter;->setWindowScale(FF)Lcom/android/settings/AnimationAdapter;

    .line 142
    invoke-direct {p0, v8}, Lcom/android/settings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;

    .line 144
    const v2, 0x3f866666

    invoke-direct {p0, v4, v2}, Lcom/android/settings/AnimationAdapter;->setViewScale(FF)Lcom/android/settings/AnimationAdapter;

    .line 145
    const/high16 v2, 0x42c8

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setViewDuration(J)Lcom/android/settings/AnimationAdapter;

    .line 146
    const/high16 v2, 0x42f0

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;

    .line 147
    invoke-direct {p0, v8}, Lcom/android/settings/AnimationAdapter;->setViewFadeType(I)Lcom/android/settings/AnimationAdapter;

    .line 158
    :cond_0
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/AnimationAdapter;->setOverridePendingTransition(I)Z

    .line 159
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AnimationLoader"

    const-string v3, "can\'t access WindowManger for getAnimationScale"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 149
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    if-ne p1, v8, :cond_0

    .line 150
    const/high16 v2, 0x4348

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setWindowDuration(J)Lcom/android/settings/AnimationAdapter;

    .line 151
    invoke-direct {p0, v7}, Lcom/android/settings/AnimationAdapter;->setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;

    .line 153
    const/high16 v2, 0x4348

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/AnimationAdapter;->setViewDuration(J)Lcom/android/settings/AnimationAdapter;

    .line 154
    const/high16 v2, 0x4234

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mTransitionScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-direct {p0, v2}, Lcom/android/settings/AnimationAdapter;->setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;

    .line 155
    invoke-direct {p0, v7}, Lcom/android/settings/AnimationAdapter;->setViewFadeType(I)Lcom/android/settings/AnimationAdapter;

    goto :goto_1
.end method

.method private setViewDuration(J)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "duration"

    .prologue
    .line 355
    iput-wide p1, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    .line 356
    return-object p0
.end method

.method private setViewFadeType(I)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "fadeType"

    .prologue
    .line 377
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    .line 378
    return-object p0
.end method

.method private setViewScale(FF)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "scaleFrom"
    .parameter "scaleTo"

    .prologue
    .line 365
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    .line 366
    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    .line 367
    return-object p0
.end method

.method private setViewStartOffset(I)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 382
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    .line 383
    return-object p0
.end method

.method private setViewTranslate(FF)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "translateFrom"
    .parameter "translateTo"

    .prologue
    .line 371
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    .line 372
    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    .line 373
    return-object p0
.end method

.method private setWindowDuration(J)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "duration"

    .prologue
    .line 323
    iput-wide p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    .line 324
    return-object p0
.end method

.method private setWindowFadeType(I)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "fadeType"

    .prologue
    .line 345
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    .line 346
    return-object p0
.end method

.method private setWindowScale(FF)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "scaleFrom"
    .parameter "scaleTo"

    .prologue
    .line 333
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    .line 334
    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    .line 335
    return-object p0
.end method

.method private setWindowStartOffset(I)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "startOffset"

    .prologue
    .line 350
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    .line 351
    return-object p0
.end method

.method private setWindowTranslate(FF)Lcom/android/settings/AnimationAdapter;
    .locals 0
    .parameter "translateFrom"
    .parameter "translateTo"

    .prologue
    .line 339
    iput p1, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    .line 340
    iput p2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    .line 341
    return-object p0
.end method

.method private startAnimation()Z
    .locals 11

    .prologue
    .line 189
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    if-nez v0, :cond_6

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 191
    new-instance v7, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 193
    .local v7, WindowAnimationSet:Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 194
    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateFrom:F

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mWindowTranslateTo:F

    iget-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 197
    :cond_2
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_4

    .line 198
    :cond_3
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleFrom:F

    iget v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowScaleTo:F

    iget-wide v2, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 200
    :cond_4
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    if-eqz v0, :cond_5

    .line 201
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowFadeType:I

    iget-wide v1, p0, Lcom/android/settings/AnimationAdapter;->mWindowDuration:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 203
    :cond_5
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mWindowStartOffset:I

    int-to-long v0, v0

    invoke-virtual {v7, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 205
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 210
    .end local v7           #WindowAnimationSet:Landroid/view/animation/AnimationSet;
    :cond_6
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    .line 213
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 214
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 215
    .local v8, decoView:Landroid/view/ViewGroup;
    const/16 v0, 0x99

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 216
    .local v9, findView:Landroid/view/View;
    if-eqz v9, :cond_7

    .line 217
    const-string v0, "AnimationLoader"

    const-string v1, "WindowAnimation has dummy already"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 219
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 224
    .end local v8           #decoView:Landroid/view/ViewGroup;
    .end local v9           #findView:Landroid/view/View;
    :cond_7
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/settings/AnimationAdapter;->getDummyViewFromView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    .line 226
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    if-nez v0, :cond_8

    .line 227
    const/4 v0, 0x0

    .line 286
    :goto_0
    return v0

    .line 228
    :cond_8
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 230
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewHeight:I

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    if-gtz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_b

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    .line 232
    .restart local v8       #decoView:Landroid/view/ViewGroup;
    const/16 v0, 0x99

    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 233
    .restart local v9       #findView:Landroid/view/View;
    if-eqz v9, :cond_a

    .line 234
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 236
    :cond_a
    const-string v0, "AnimationLoader"

    const-string v1, "WindowAnimation only play."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    goto :goto_0

    .line 240
    .end local v8           #decoView:Landroid/view/ViewGroup;
    .end local v9           #findView:Landroid/view/View;
    :cond_b
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 242
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 243
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mViewGlobalPosition:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_c
    new-instance v6, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 251
    .local v6, ViewAnimationSet:Landroid/view/animation/AnimationSet;
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_d

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_e

    .line 252
    :cond_d
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateFrom:F

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mViewTranslateTo:F

    iget-wide v4, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/AnimationAdapter;->getTranslateAnimation(IFFJ)Landroid/view/animation/TranslateAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 255
    :cond_e
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    const/high16 v1, 0x3f80

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_10

    .line 256
    :cond_f
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleFrom:F

    iget v1, p0, Lcom/android/settings/AnimationAdapter;->mViewScaleTo:F

    iget-wide v2, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/AnimationAdapter;->getScaleAnimation(FFJ)Landroid/view/animation/ScaleAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 259
    :cond_10
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    if-eqz v0, :cond_11

    .line 260
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    .line 261
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    iget-wide v1, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/AnimationAdapter;->getAlphaAnimation(IJ)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 266
    :cond_11
    :goto_1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 267
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    int-to-long v0, v0

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    .line 269
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 270
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 271
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyImageView:Landroid/widget/ImageView;

    .line 272
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_13

    .line 276
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 277
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v10, v0, :cond_13

    .line 278
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 277
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 263
    .end local v10           #i:I
    :cond_12
    iget v0, p0, Lcom/android/settings/AnimationAdapter;->mViewFadeType:I

    iget-wide v1, p0, Lcom/android/settings/AnimationAdapter;->mViewDuration:J

    iget v3, p0, Lcom/android/settings/AnimationAdapter;->mViewStartOffset:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/AnimationAdapter;->getAlphaAnimation(IJI)Landroid/view/animation/AlphaAnimation;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 281
    :cond_13
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 286
    .end local v6           #ViewAnimationSet:Landroid/view/animation/AnimationSet;
    :cond_14
    :goto_3
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 284
    .restart local v6       #ViewAnimationSet:Landroid/view/animation/AnimationSet;
    :cond_15
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mDummyView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method


# virtual methods
.method public setAnimation(Landroid/view/View;I)Lcom/android/settings/AnimationAdapter;
    .locals 2
    .parameter "selectedView"
    .parameter "animationType"

    .prologue
    const/4 v1, 0x0

    .line 105
    if-eqz p1, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    .line 109
    iput-object p1, p0, Lcom/android/settings/AnimationAdapter;->mSelectedView:Landroid/view/View;

    .line 114
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/settings/AnimationAdapter;->initValues(I)V

    .line 115
    return-object p0

    .line 112
    :cond_1
    iput v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationEnabled:I

    goto :goto_0
.end method

.method public setOverridePendingTransition(I)Z
    .locals 4
    .parameter "animationType"

    .prologue
    const/4 v3, 0x1

    .line 180
    if-ne p1, v3, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const/high16 v1, 0x7f05

    const v2, 0x7f050001

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 184
    :cond_0
    :goto_0
    return v3

    .line 182
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/AnimationAdapter;->mActivity:Landroid/app/Activity;

    const v1, 0x7f050002

    const v2, 0x7f050003

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method

.method public start()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 167
    iget v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationType:I

    if-nez v1, :cond_0

    .line 172
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/AnimationAdapter;->mAnimationHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 171
    const-string v0, "AnimationLoader"

    const-string v1, "Transition Effect Animation start"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    goto :goto_0
.end method
