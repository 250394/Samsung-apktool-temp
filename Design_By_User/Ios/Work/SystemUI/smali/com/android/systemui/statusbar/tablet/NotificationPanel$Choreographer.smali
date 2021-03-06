.class Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;
.super Ljava/lang/Object;
.source "NotificationPanel.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/NotificationPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Choreographer"
.end annotation


# static fields
.field static final CLOSE_DURATION:I = 0xfa

.field static final OPEN_DURATION:I = 0xfa


# instance fields
.field final HYPERSPACE_OFFRAMP:I

.field mContentAnim:Landroid/animation/AnimatorSet;

.field mPanelHeight:I

.field mVisible:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/NotificationPanel;)V
    .locals 1
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 490
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->HYPERSPACE_OFFRAMP:I

    .line 493
    return-void
.end method


# virtual methods
.method createAnimation(Z)V
    .locals 13
    .parameter "appearing"

    .prologue
    .line 497
    sget-boolean v8, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_3

    .line 498
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v9, 0x7f0f0076

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 499
    .local v5, root:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 502
    .local v2, height:I
    if-eqz p1, :cond_1

    .line 503
    int-to-float v6, v2

    .line 504
    .local v6, start:F
    const/4 v0, 0x0

    .line 510
    .local v0, end:F
    :goto_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v6, v10, v11

    const/4 v11, 0x1

    aput v0, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 511
    .local v3, posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_2

    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v9, 0x4000

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    :goto_1
    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 515
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    const-string v9, "translationX"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    sget v12, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->QUICK_SETTINGS_START_OFFSET:I

    neg-int v12, v12

    int-to-float v12, v12

    aput v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 518
    .local v4, quickSettingAnim:Landroid/animation/Animator;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 519
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 522
    :cond_0
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 530
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 532
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    const-wide/16 v9, 0xfa

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 533
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 576
    .end local v2           #height:I
    .end local v4           #quickSettingAnim:Landroid/animation/Animator;
    .end local v5           #root:Landroid/view/View;
    :goto_2
    return-void

    .line 506
    .end local v0           #end:F
    .end local v3           #posAnim:Landroid/animation/Animator;
    .end local v6           #start:F
    .restart local v2       #height:I
    .restart local v5       #root:Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    .line 507
    .restart local v6       #start:F
    int-to-float v0, v2

    .restart local v0       #end:F
    goto :goto_0

    .line 511
    .restart local v3       #posAnim:Landroid/animation/Animator;
    :cond_2
    new-instance v8, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v9, 0x3f80

    invoke-direct {v8, v9}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto :goto_1

    .line 542
    .end local v0           #end:F
    .end local v2           #height:I
    .end local v3           #posAnim:Landroid/animation/Animator;
    .end local v5           #root:Landroid/view/View;
    .end local v6           #start:F
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v7

    .line 543
    .local v7, y:F
    if-eqz p1, :cond_7

    .line 546
    const/4 v0, 0x0

    .line 547
    .restart local v0       #end:F
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v8, v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mNotificationCount:I

    if-nez v8, :cond_4

    .line 548
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget v8, v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentFrameMissingTranslation:F

    add-float/2addr v0, v8

    .line 550
    :cond_4
    const/high16 v8, 0x4348

    add-float v6, v8, v0

    .line 556
    .restart local v6       #start:F
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v9, "translationY"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    aput v6, v10, v11

    const/4 v11, 0x1

    aput v0, v10, v11

    invoke-static {v8, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 558
    .restart local v3       #posAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_8

    sget-object v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    :goto_4
    invoke-virtual {v3, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 560
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 561
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8}, Landroid/animation/AnimatorSet;->cancel()V

    .line 564
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v9, v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const-string v10, "alpha"

    const/4 v8, 0x1

    new-array v11, v8, [F

    const/4 v12, 0x0

    if-eqz p1, :cond_9

    const/high16 v8, 0x3f80

    :goto_5
    aput v8, v11, v12

    invoke-static {v9, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 566
    .local v1, fadeAnim:Landroid/animation/Animator;
    if-eqz p1, :cond_a

    sget-object v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    :goto_6
    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 568
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 569
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 573
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    if-eqz p1, :cond_6

    :cond_6
    const/16 v9, 0xfa

    int-to-long v9, v9

    invoke-virtual {v8, v9, v10}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 574
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v8, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_2

    .line 552
    .end local v0           #end:F
    .end local v1           #fadeAnim:Landroid/animation/Animator;
    .end local v3           #posAnim:Landroid/animation/Animator;
    .end local v6           #start:F
    :cond_7
    move v6, v7

    .line 553
    .restart local v6       #start:F
    const/high16 v8, 0x4348

    add-float v0, v7, v8

    .restart local v0       #end:F
    goto :goto_3

    .line 558
    .restart local v3       #posAnim:Landroid/animation/Animator;
    :cond_8
    sget-object v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sAccelerateInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_4

    .line 564
    :cond_9
    const/4 v8, 0x0

    goto :goto_5

    .line 566
    .restart local v1       #fadeAnim:Landroid/animation/Animator;
    :cond_a
    sget-object v8, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->sDecelerateInterpolator:Landroid/view/animation/Interpolator;

    goto :goto_6
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 597
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    const/4 v2, 0x0

    .line 603
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->setVisibility(I)V

    .line 606
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->mContentParent:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->setLayerType(ILandroid/graphics/Paint;)V

    .line 607
    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    .line 610
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 613
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 616
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 619
    return-void
.end method

.method startAnimation(Z)V
    .locals 1
    .parameter "appearing"

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->createAnimation(Z)V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mContentAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 585
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    .line 588
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->mVisible:Z

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/NotificationPanel$Choreographer;->this$0:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->updateClearButton()V

    .line 591
    :cond_0
    return-void
.end method
