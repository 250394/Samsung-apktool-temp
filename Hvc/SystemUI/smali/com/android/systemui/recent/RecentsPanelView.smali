.class public Lcom/android/systemui/recent/RecentsPanelView;
.super Landroid/widget/RelativeLayout;
.source "RecentsPanelView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/systemui/recent/RecentsCallback;
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;,
        Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;,
        Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;,
        Lcom/android/systemui/recent/RecentsPanelView$OnLongClickDelegate;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field public static final INTENT_ACTION_TASK_MANAGER:Ljava/lang/String; = "com.sec.android.app.controlpanel.MAIN"

.field static final TAG:Ljava/lang/String; = "RecentsPanelView"


# instance fields
.field private mBar:Lcom/android/systemui/statusbar/StatusBar;

.field private mChoreo:Lcom/android/systemui/recent/Choreographer;

.field private mContext:Landroid/content/Context;

.field private mFitThumbnailToXY:Z

.field private mIsTaskManagerInstalled:Z

.field private mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

.field private mNoRecentApp:Landroid/widget/TextView;

.field private mPopupmenu:Landroid/widget/PopupMenu;

.field private mPreloadTasksRunnable:Ljava/lang/Runnable;

.field private mRecentTaskDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentTasksDirty:Z

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsContainer:Landroid/view/ViewGroup;

.field private mRecentsDismissButton:Landroid/view/View;

.field private mRecentsLaunchButton:Landroid/widget/Button;

.field private mRecentsNoApps:Landroid/view/View;

.field private mRecentsRemoveAllButton:Landroid/widget/Button;

.field private mRecentsScrim:Landroid/view/View;

.field private mShowRecentRemoveAllButton:Z

.field private mShowing:Z

.field private mStatusBarCanHide:Z

.field private mThumbnailWidth:I

.field private mUseTouchWizGUI:Z

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 419
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 422
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    .line 423
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    .line 424
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->updateValuesFromResources()V

    .line 428
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    .line 429
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080017

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 436
    :goto_0
    :try_start_1
    const-string v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/IWindowManager;

    .line 438
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarCanHide:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 444
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/recent/RecentsPanelView;->isTaskManagerInstalled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    .line 446
    return-void

    .line 430
    :catch_0
    move-exception v0

    .line 431
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    .line 432
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    goto :goto_0

    .line 439
    .end local v0           #ex:Landroid/content/res/Resources$NotFoundException;
    :catch_1
    move-exception v0

    .line 440
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "RecentsPanelView"

    const-string v2, "RemoteException from IWindowManager"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    iput-boolean v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mStatusBarCanHide:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/recent/RecentsPanelView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/recent/RecentTasksLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/recent/RecentsPanelView;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/recent/RecentsPanelView;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/recent/RecentsPanelView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/RecentsPanelView;->startApplicationDetailsActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/recent/RecentsPanelView;)Lcom/android/systemui/statusbar/StatusBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    return-object v0
.end method

.method private createCustomAnimations(Landroid/animation/LayoutTransition;)V
    .locals 3
    .parameter "transitioner"

    .prologue
    .line 604
    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 605
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 606
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 607
    return-void
.end method

.method private isTaskManagerInstalled()Z
    .locals 5

    .prologue
    .line 865
    const/4 v3, 0x0

    .line 866
    .local v3, retVal:Z
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 867
    .local v2, packageManager:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.controlpanel.MAIN"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 868
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 870
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v3, 0x1

    .line 872
    :cond_0
    return v3
.end method

.method private refreshRecentTasksList(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 729
    .local p1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    if-eqz p1, :cond_0

    .line 730
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    .line 734
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 735
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateUiElements(Landroid/content/res/Configuration;)V

    .line 736
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 738
    return-void

    .line 732
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->getRecentTasks()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private startApplicationDetailsActivity(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 819
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 821
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 822
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 823
    return-void
.end method

.method private updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V
    .locals 5
    .parameter "h"
    .parameter "thumbnail"
    .parameter "show"
    .parameter "anim"

    .prologue
    .line 624
    if-eqz p2, :cond_4

    .line 628
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 632
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 635
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    if-eqz v2, :cond_5

    .line 636
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 645
    :cond_1
    :goto_0
    if-eqz p3, :cond_3

    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_3

    .line 646
    if-eqz p4, :cond_2

    .line 647
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v4, 0x7f04000f

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 650
    :cond_2
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 652
    :cond_3
    iput-object p2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImageBitmap:Landroid/graphics/Bitmap;

    .line 654
    :cond_4
    return-void

    .line 638
    :cond_5
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 639
    .local v1, scaleMatrix:Landroid/graphics/Matrix;
    iget v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    int-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v0, v2, v3

    .line 640
    .local v0, scale:F
    invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 641
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 642
    iget-object v2, p1, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->thumbnailViewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0
.end method

.method private updateUiElements(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "config"

    .prologue
    const/4 v4, 0x0

    .line 745
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 747
    .local v0, items:I
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-lez v0, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 750
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 752
    .local v1, numRecentApps:I
    if-nez v1, :cond_1

    .line 753
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 759
    .local v2, recentAppsAccessibilityDescription:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 761
    return-void

    .line 747
    .end local v1           #numRecentApps:I
    .end local v2           #recentAppsAccessibilityDescription:Ljava/lang/String;
    :cond_0
    const/16 v3, 0x8

    goto :goto_0

    .line 756
    .restart local v1       #numRecentApps:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f0c

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-virtual {v3, v5, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #recentAppsAccessibilityDescription:Ljava/lang/String;
    goto :goto_1
.end method


# virtual methods
.method public clearRecentTasksList()V
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    .line 715
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 716
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;->notifyDataSetInvalidated()V

    .line 717
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 719
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 321
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 322
    return-void
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 385
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 386
    .local v1, y:I
    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getWidth()I

    move-result v2

    if-ge v0, v2, :cond_0

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getHeight()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 387
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 389
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public getRecentTasksList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public handleLongPress(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .parameter "selectedView"
    .parameter "anchorView"
    .parameter "thumbnailView"

    .prologue
    .line 828
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 861
    .end local p2
    :goto_0
    return-void

    .line 830
    .restart local p2
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/view/View;->setSelected(Z)V

    .line 832
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    if-nez p2, :cond_1

    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    .line 833
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f0e

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 834
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/recent/RecentsPanelView$3;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 853
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$4;

    invoke-direct {v1, p0, p3}, Lcom/android/systemui/recent/RecentsPanelView$4;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 859
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    goto :goto_0
.end method

.method public handleOnClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const/4 v5, 0x1

    .line 764
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v4, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 765
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 766
    .local v2, context:Landroid/content/Context;
    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 768
    .local v1, am:Landroid/app/ActivityManager;
    iget v4, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    if-ltz v4, :cond_0

    .line 770
    iget v4, v0, Lcom/android/systemui/recent/TaskDescription;->taskId:I

    invoke-virtual {v1, v4, v5}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 779
    :goto_0
    invoke-virtual {p0, v5}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 780
    return-void

    .line 772
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/recent/TaskDescription;->intent:Landroid/content/Intent;

    .line 773
    .local v3, intent:Landroid/content/Intent;
    const v4, 0x10104000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 777
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public handleShowBackground(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 334
    if-eqz p1, :cond_1

    .line 335
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const v1, 0x7f0201de

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 342
    :goto_0
    return-void

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const v1, 0x7f0201d5

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public handleSwipe(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 787
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    iget-object v0, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    .line 789
    .local v0, ad:Lcom/android/systemui/recent/TaskDescription;
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 794
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 795
    invoke-virtual {p0, v6}, Lcom/android/systemui/recent/RecentsPanelView;->hide(Z)V

    .line 799
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_1

    .line 801
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 802
    iput-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    .line 807
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 809
    .local v1, am:Landroid/app/ActivityManager;
    iget v2, v0, Lcom/android/systemui/recent/TaskDescription;->persistentTaskId:I

    invoke-virtual {v1, v2, v4}, Landroid/app/ActivityManager;->removeTask(II)Z

    .line 812
    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const v3, 0x7f090075

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 814
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->sendAccessibilityEvent(I)V

    .line 815
    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/RecentsPanelView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 816
    return-void
.end method

.method public hide(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 325
    if-nez p1, :cond_0

    .line 326
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBar;->animateCollapse()V

    .line 331
    :cond_1
    return-void
.end method

.method public isInContentArea(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    .line 221
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    .line 222
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    .line 223
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    .line 224
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    .line 225
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public isRecentsVisible()Z
    .locals 1

    .prologue
    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 410
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 349
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .parameter "animation"

    .prologue
    .line 352
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v1, :cond_0

    .line 353
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 354
    .local v0, transitioner:Landroid/animation/LayoutTransition;
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 355
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->createCustomAnimations(Landroid/animation/LayoutTransition;)V

    .line 360
    .end local v0           #transitioner:Landroid/animation/LayoutTransition;
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 363
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 366
    return-void
.end method

.method protected onFinishInflate()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 465
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 466
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 467
    const v0, 0x7f0f008f

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 468
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    .line 469
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    if-eqz v0, :cond_4

    .line 470
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v7, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    .line 472
    .local v7, scrollView:Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 473
    invoke-virtual {v7, p0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    .line 485
    .end local v7           #scrollView:Lcom/android/systemui/recent/RecentsHorizontalScrollView;
    :goto_0
    const v0, 0x7f0f005b

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    .line 486
    const v0, 0x7f0f0091

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    .line 487
    new-instance v0, Lcom/android/systemui/recent/Choreographer;

    iget-object v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    move-object v1, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/recent/Choreographer;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    .line 488
    const v0, 0x7f0f0092

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDismissButton:Landroid/view/View;

    .line 490
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDismissButton:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDismissButton:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/RecentsPanelView$1;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 497
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsDismissButton:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f02010c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 503
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_2

    .line 504
    const v0, 0x7f0f00e6

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    .line 505
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v0, :cond_1

    .line 506
    const v0, 0x7f0f00e7

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    .line 508
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 510
    .local v6, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 511
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 512
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/recent/RecentsPanelView$OnClickLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 514
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 515
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 517
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v0, :cond_2

    .line 519
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/recent/RecentsPanelView$OnClickRemoveAllButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;

    invoke-direct {v1, p0, v8}, Lcom/android/systemui/recent/RecentsPanelView$OnKeyLaunchButton;-><init>(Lcom/android/systemui/recent/RecentsPanelView;Lcom/android/systemui/recent/RecentsPanelView$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 522
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 528
    .end local v6           #lp:Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsScrim:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 532
    :cond_3
    const v0, 0x7f0f006d

    invoke-virtual {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    .line 534
    new-instance v0, Lcom/android/systemui/recent/RecentsPanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/recent/RecentsPanelView$2;-><init>(Lcom/android/systemui/recent/RecentsPanelView;)V

    iput-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    .line 540
    return-void

    .line 474
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    if-eqz v0, :cond_5

    .line 475
    iget-object v7, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v7, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    .line 477
    .local v7, scrollView:Lcom/android/systemui/recent/RecentsVerticalScrollView;
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mListAdapter:Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;

    invoke-virtual {v7, v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setAdapter(Lcom/android/systemui/recent/RecentsPanelView$TaskDescriptionAdapter;)V

    .line 478
    invoke-virtual {v7, p0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->setCallback(Lcom/android/systemui/recent/RecentsCallback;)V

    goto/16 :goto_0

    .line 481
    .end local v7           #scrollView:Lcom/android/systemui/recent/RecentsVerticalScrollView;
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 783
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p2}, Lcom/android/systemui/recent/RecentsPanelView;->handleOnClick(Landroid/view/View;)V

    .line 784
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 209
    const/16 v0, 0x13

    if-eq p1, v0, :cond_0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_2

    .line 210
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->requestFocus()Z

    .line 213
    :cond_1
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 199
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 203
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 375
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 376
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/Choreographer;->setPanelHeight(I)V

    .line 377
    return-void
.end method

.method onTaskThumbnailLoaded(Lcom/android/systemui/recent/TaskDescription;)V
    .locals 8
    .parameter "ad"

    .prologue
    const/4 v5, 0x1

    .line 657
    monitor-enter p1

    .line 658
    :try_start_0
    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 659
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    .line 660
    .local v1, container:Landroid/view/ViewGroup;
    instance-of v6, v1, Landroid/widget/HorizontalScrollView;

    if-nez v6, :cond_0

    instance-of v6, v1, Landroid/widget/ScrollView;

    if-eqz v6, :cond_1

    .line 662
    :cond_0
    const v6, 0x7f0f0090

    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #container:Landroid/view/ViewGroup;
    check-cast v1, Landroid/view/ViewGroup;

    .line 666
    .restart local v1       #container:Landroid/view/ViewGroup;
    :cond_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_4

    .line 667
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 668
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    if-eqz v6, :cond_2

    .line 669
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;

    .line 670
    .local v2, h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    iget-object v6, v2, Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;->taskDescription:Lcom/android/systemui/recent/TaskDescription;

    if-ne v6, p1, :cond_2

    .line 673
    iget-boolean v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v6

    const v7, 0x3caaaaab

    cmpl-float v6, v6, v7

    if-lez v6, :cond_3

    move v0, v5

    .line 675
    .local v0, animateShow:Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v2, v6, v7, v0}, Lcom/android/systemui/recent/RecentsPanelView;->updateThumbnail(Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;Landroid/graphics/Bitmap;ZZ)V

    .line 666
    .end local v0           #animateShow:Z
    .end local v2           #h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 673
    .restart local v2       #h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 680
    .end local v1           #container:Landroid/view/ViewGroup;
    .end local v2           #h:Lcom/android/systemui/recent/RecentsPanelView$ViewHolder;
    .end local v3           #i:I
    .end local v4           #v:Landroid/view/View;
    :cond_4
    monitor-exit p1

    .line 681
    return-void

    .line 680
    :catchall_0
    move-exception v5

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "ev"

    .prologue
    const/16 v2, 0x8

    .line 687
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-nez v1, :cond_0

    .line 688
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    .line 689
    .local v0, action:I
    if-nez v0, :cond_1

    .line 693
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->post(Ljava/lang/Runnable;)Z

    .line 708
    .end local v0           #action:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 694
    .restart local v0       #action:I
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 695
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 696
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    .line 698
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 699
    :cond_2
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPreloadTasksRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/systemui/recent/RecentsPanelView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 702
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 703
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 704
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->clearRecentTasksList()V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 611
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 614
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsHorizontalScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsHorizontalScrollView;->onRecentsVisibilityChanged()V

    .line 621
    :goto_0
    return-void

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    instance-of v0, v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    if-eqz v0, :cond_1

    .line 617
    iget-object v0, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsContainer:Landroid/view/ViewGroup;

    check-cast v0, Lcom/android/systemui/recent/RecentsVerticalScrollView;

    invoke-virtual {v0}, Lcom/android/systemui/recent/RecentsVerticalScrollView;->onRecentsVisibilityChanged()V

    goto :goto_0

    .line 619
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing Recents[Horizontal]ScrollView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public refreshRecentTasksList()V
    .locals 1

    .prologue
    .line 722
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    .line 723
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 1
    .parameter "eventType"

    .prologue
    .line 395
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 398
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->sendAccessibilityEvent(I)V

    .line 403
    :cond_1
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/StatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mBar:Lcom/android/systemui/statusbar/StatusBar;

    .line 415
    return-void
.end method

.method public setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V
    .locals 0
    .parameter "loader"

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 118
    return-void
.end method

.method public show(ZZ)V
    .locals 1
    .parameter "show"
    .parameter "animate"

    .prologue
    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;)V

    .line 230
    return-void
.end method

.method public show(ZZLjava/util/ArrayList;)V
    .locals 9
    .parameter "show"
    .parameter "animate"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, recentTaskDescriptions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    const/4 v8, 0x0

    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 235
    const-string v5, "RecentsPanelView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "show:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " animate:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    if-eqz p1, :cond_b

    .line 238
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/enterprise/kioskmode/KioskMode;->getInstance(Landroid/content/Context;)Landroid/app/enterprise/kioskmode/KioskMode;

    move-result-object v0

    .line 239
    .local v0, kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0, v2}, Landroid/app/enterprise/kioskmode/KioskMode;->isTaskManagerAllowed(Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 318
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_0
    :goto_0
    return-void

    .line 249
    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    if-eqz v5, :cond_2

    .line 251
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    invoke-virtual {v5}, Landroid/widget/PopupMenu;->dismiss()V

    .line 252
    iput-object v8, p0, Lcom/android/systemui/recent/RecentsPanelView;->mPopupmenu:Landroid/widget/PopupMenu;

    .line 255
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/systemui/recent/RecentsPanelView;->refreshRecentTasksList(Ljava/util/ArrayList;)V

    .line 259
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTaskDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_8

    move v1, v2

    .line 260
    .local v1, noApps:Z
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 261
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsNoApps:Landroid/view/View;

    if-eqz v1, :cond_3

    move v4, v3

    :cond_3
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 262
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v4, :cond_4

    .line 263
    if-eqz v1, :cond_9

    .line 264
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 279
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v4, :cond_5

    .line 280
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 281
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v4, :cond_5

    .line 282
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 299
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v1           #noApps:Z
    :cond_5
    :goto_3
    if-eqz p2, :cond_c

    .line 300
    iget-boolean v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    if-eq v4, p1, :cond_7

    .line 301
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 302
    if-eqz p1, :cond_6

    .line 303
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 305
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/Choreographer;->startAnimation(Z)V

    .line 313
    :cond_7
    :goto_4
    if-eqz p1, :cond_0

    .line 314
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusable(Z)V

    .line 315
    invoke-virtual {p0, v2}, Lcom/android/systemui/recent/RecentsPanelView;->setFocusableInTouchMode(Z)V

    .line 316
    invoke-virtual {p0}, Lcom/android/systemui/recent/RecentsPanelView;->requestFocus()Z

    goto :goto_0

    .restart local v0       #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    :cond_8
    move v1, v3

    .line 259
    goto :goto_1

    .line 266
    .restart local v1       #noApps:Z
    :cond_9
    iget-object v4, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    invoke-virtual {v4, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_2

    .line 269
    :cond_a
    if-eqz v1, :cond_4

    .line 273
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v3}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    .line 274
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    goto :goto_0

    .line 289
    .end local v0           #kioskMode:Landroid/app/enterprise/kioskmode/KioskMode;
    .end local v1           #noApps:Z
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v5}, Lcom/android/systemui/recent/RecentTasksLoader;->cancelLoadingThumbnails()V

    .line 290
    iput-boolean v2, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentTasksDirty:Z

    .line 292
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v5, :cond_5

    .line 293
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 294
    iget-boolean v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v5, :cond_5

    .line 295
    iget-object v5, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_3

    .line 308
    :cond_c
    iput-boolean p1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowing:Z

    .line 309
    if-eqz p1, :cond_d

    :goto_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 310
    iget-object v3, p0, Lcom/android/systemui/recent/RecentsPanelView;->mChoreo:Lcom/android/systemui/recent/Choreographer;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/Choreographer;->jumpTo(Z)V

    .line 311
    invoke-virtual {p0, v8}, Lcom/android/systemui/recent/RecentsPanelView;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_4

    .line 309
    :cond_d
    const/16 v3, 0x8

    goto :goto_5
.end method

.method public updateValuesFromResources()V
    .locals 3

    .prologue
    .line 449
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 450
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mThumbnailWidth:I

    .line 451
    const v1, 0x7f080001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mFitThumbnailToXY:Z

    .line 454
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mUseTouchWizGUI:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mIsTaskManagerInstalled:Z

    if-eqz v1, :cond_1

    .line 455
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsLaunchButton:Landroid/widget/Button;

    const v2, 0x7f090083

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 456
    iget-boolean v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mShowRecentRemoveAllButton:Z

    if-eqz v1, :cond_0

    .line 457
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mRecentsRemoveAllButton:Landroid/widget/Button;

    const v2, 0x7f0900c4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 458
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/recent/RecentsPanelView;->mNoRecentApp:Landroid/widget/TextView;

    const v2, 0x7f09000c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 461
    :cond_1
    return-void
.end method
