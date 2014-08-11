.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBar.KeyButtonView"

.field private static mGetSumSizeMethod:Ljava/lang/reflect/Method;

.field private static mIsExistPalmMethod:Z


# instance fields
.field final BUTTON_QUIESCENT_ALPHA:F

.field final GLOW_MAX_SCALE_FACTOR:F

.field mCheckLongPress:Ljava/lang/Runnable;

.field mCode:I

.field mDownTime:J

.field mDrawingAlpha:F

.field mGlowAlpha:F

.field mGlowBG:Landroid/graphics/drawable/Drawable;

.field mGlowScale:F

.field private mIsPalm:Z

.field mPerformLongClick:Z

.field mRect:Landroid/graphics/RectF;

.field mSupportsLongpress:Z

.field mTouchSlop:I

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 84
    :try_start_0
    const-string v2, "android.view.MotionEvent"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 85
    .local v0, classMotionEvent:Ljava/lang/Class;
    const-string v2, "getSumSize"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGetSumSizeMethod:Ljava/lang/reflect/Method;

    .line 86
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsExistPalmMethod:Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 94
    :goto_0
    return-void

    .line 87
    :catch_0
    move-exception v1

    .line 88
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const-string v2, "StatusBar.KeyButtonView"

    const-string v3, "ClassNotFoundException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    sput-boolean v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsExistPalmMethod:Z

    goto :goto_0

    .line 90
    .end local v1           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 91
    .local v1, ex:Ljava/lang/NoSuchMethodException;
    const-string v2, "StatusBar.KeyButtonView"

    const-string v3, "NoSuchMethodException"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sput-boolean v4, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsExistPalmMethod:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 123
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const v1, 0x3fa66666

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->GLOW_MAX_SCALE_FACTOR:F

    .line 61
    iput v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->BUTTON_QUIESCENT_ALPHA:F

    .line 70
    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    iput v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    iput v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 71
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 72
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    .line 97
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 125
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 128
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 130
    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 132
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 133
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 134
    iput v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 137
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mWindowManager:Landroid/view/IWindowManager;

    .line 142
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    .line 143
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    .line 144
    return-void
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 169
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 191
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter "canvas"

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x437f

    const/high16 v6, 0x3f00

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v1

    .line 151
    .local v1, w:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v0

    .line 152
    .local v0, h:I
    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    int-to-float v4, v1

    mul-float/2addr v4, v6

    int-to-float v5, v0

    mul-float/2addr v5, v6

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v8, v8, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 154
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 156
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 157
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v1

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 159
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    mul-float/2addr v3, v7

    float-to-int v3, v3

    const/16 v4, 0x1f

    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 161
    .end local v0           #h:I
    .end local v1           #w:I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 163
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 165
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/16 v11, 0x20

    const/high16 v10, 0x4110

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 249
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 253
    .local v0, action:I
    const/4 v3, 0x0

    .line 268
    .local v3, sumSize:F
    packed-switch v0, :pswitch_data_0

    .line 403
    :cond_0
    :goto_0
    return v7

    .line 271
    :pswitch_0
    cmpl-float v8, v3, v10

    if-lez v8, :cond_1

    .line 272
    const-string v6, "StatusBar.KeyButtonView"

    const-string v8, "D.PALM"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    goto :goto_0

    .line 277
    :cond_1
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    .line 281
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 282
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 284
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPerformLongClick:Z

    .line 286
    :cond_2
    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v8, :cond_5

    .line 287
    iget-wide v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v6, v6, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 297
    :cond_3
    :goto_1
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v6, :cond_4

    .line 298
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 299
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :cond_4
    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v6, :cond_0

    .line 304
    const/16 v6, 0x12

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    goto :goto_0

    .line 291
    :cond_5
    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-nez v6, :cond_3

    .line 293
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_1

    .line 309
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v4, v8

    .line 310
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v5, v8

    .line 312
    .local v5, y:I
    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v8, v8

    if-lt v4, v8, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v8, v9

    if-ge v4, v8, :cond_6

    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v8, v8

    if-lt v5, v8, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v8, v9

    if-ge v5, v8, :cond_6

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    if-nez v8, :cond_6

    move v6, v7

    :cond_6
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 318
    cmpl-float v6, v3, v10

    if-lez v6, :cond_7

    .line 319
    const-string v6, "StatusBar.KeyButtonView"

    const-string v8, "M.PALM"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    .line 323
    :cond_7
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    if-eqz v6, :cond_0

    .line 324
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v6, :cond_0

    .line 325
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 332
    .end local v4           #x:I
    .end local v5           #y:I
    :pswitch_2
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 334
    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v6, :cond_8

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPerformLongClick:Z

    if-nez v6, :cond_0

    .line 336
    :cond_8
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_9

    .line 337
    invoke-virtual {p0, v7, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 339
    :cond_9
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v6, :cond_0

    .line 340
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 345
    :pswitch_3
    cmpl-float v8, v3, v10

    if-lez v8, :cond_a

    .line 346
    const-string v8, "StatusBar.KeyButtonView"

    const-string v9, "U.PALM"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    .line 350
    :cond_a
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mIsPalm:Z

    if-eqz v8, :cond_b

    .line 351
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto/16 :goto_0

    .line 356
    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    .line 357
    .local v1, doIt:Z
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 359
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_c

    iget-boolean v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPerformLongClick:Z

    if-nez v8, :cond_0

    .line 361
    :cond_c
    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v8, :cond_f

    .line 362
    if-eqz v1, :cond_e

    .line 363
    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 364
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 366
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-nez v8, :cond_d

    .line 367
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 397
    :cond_d
    :goto_2
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v6, :cond_0

    .line 398
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 371
    :cond_e
    invoke-virtual {p0, v7, v11}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_2

    .line 375
    :cond_f
    if-eqz v1, :cond_d

    .line 382
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isSoundEffectsEnabled()Z

    move-result v2

    .line 383
    .local v2, oldValue:Z
    sget-boolean v8, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_10

    .line 384
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setSoundEffectsEnabled(Z)V

    .line 388
    :cond_10
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performClick()Z

    .line 391
    sget-boolean v6, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v6, :cond_d

    .line 392
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setSoundEffectsEnabled(Z)V

    goto :goto_2

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEvent(II)V
    .locals 2
    .parameter "action"
    .parameter "flags"

    .prologue
    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 408
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13
    .parameter "action"
    .parameter "flags"
    .parameter "when"

    .prologue
    .line 411
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 412
    .local v7, repeatCount:I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v3, p2, 0x8

    or-int/lit8 v11, v3, 0x40

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 418
    .local v0, ev:Landroid/view/KeyEvent;
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, v0}, Landroid/view/IWindowManager;->injectInputEventNoWait(Landroid/view/InputEvent;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :goto_1
    return-void

    .line 411
    .end local v0           #ev:Landroid/view/KeyEvent;
    .end local v7           #repeatCount:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 419
    .restart local v0       #ev:Landroid/view/KeyEvent;
    .restart local v7       #repeatCount:I
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 176
    :goto_0
    return-void

    .line 174
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 175
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    goto :goto_0
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 9
    .parameter "x"

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const v5, 0x3e999998

    .line 195
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 216
    :goto_0
    return-void

    .line 196
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 198
    .local v3, w:F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 203
    .local v0, h:F
    mul-float v4, v3, v5

    div-float/2addr v4, v7

    add-float v1, v4, v6

    .line 204
    .local v1, rx:F
    mul-float v4, v0, v5

    div-float/2addr v4, v7

    add-float v2, v4, v6

    .line 205
    .local v2, ry:F
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v4}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 9
    .parameter "pressed"

    .prologue
    const/4 v8, 0x2

    const v4, 0x3fa66666

    const/high16 v7, 0x3f80

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 220
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->canStatusBarHide:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 221
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 222
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 223
    .local v0, as:Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_3

    .line 224
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 225
    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    .line 226
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_1

    .line 227
    iput v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    .line 228
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    .line 229
    new-array v1, v8, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 233
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 242
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 245
    .end local v0           #as:Landroid/animation/AnimatorSet;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 246
    return-void

    .line 235
    .restart local v0       #as:Landroid/animation/AnimatorSet;
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "drawingAlpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 240
    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method
