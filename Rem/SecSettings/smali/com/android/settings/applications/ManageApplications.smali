.class public Lcom/android/settings/applications/ManageApplications;
.super Landroid/app/Fragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/TabHost$OnTabChangeListener;
.implements Landroid/widget/TabHost$TabContentFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    }
.end annotation


# instance fields
.field private mActivityResumed:Z

.field private mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

.field mColorBar:Lcom/android/settings/applications/LinearColorBar;

.field private mComputingSizeStr:Ljava/lang/CharSequence;

.field private mCreatedRunning:Z

.field private mCurView:I

.field private mCurrentPkgName:Ljava/lang/String;

.field private mDataFileStats:Landroid/os/StatFs;

.field private mDefaultTab:Ljava/lang/String;

.field private mFilterApps:I

.field mFreeStorageText:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mLastFreeStorage:J

.field private mLastShowedInternalStorage:Z

.field private mLastUsedStorage:J

.field private mListContainer:Landroid/view/View;

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mResumedRunning:Z

.field private mRootView:Landroid/view/View;

.field final mRunningProcessesAvail:Ljava/lang/Runnable;

.field private mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

.field private mSDCardFileStats:Landroid/os/StatFs;

.field private mShowBackground:Z

.field private mSortOrder:I

.field mStorageChartLabel:Landroid/widget/TextView;

.field private mTabHost:Landroid/widget/TabHost;

.field mUsedStorageText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 118
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 146
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 148
    iput v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 187
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 201
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 205
    new-instance v0, Lcom/android/settings/applications/ManageApplications$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$1;-><init>(Lcom/android/settings/applications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private selectView(I)V
    .locals 7
    .parameter "which"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 941
    if-ne p1, v5, :cond_4

    .line 942
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v2, :cond_0

    .line 943
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v2}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 944
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 946
    :cond_0
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v2, p1, :cond_1

    .line 947
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v2, v6}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 948
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 949
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 951
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v2, :cond_2

    .line 952
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->resume(II)V

    .line 975
    :cond_2
    :goto_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 977
    .local v1, host:Landroid/app/Activity;
    if-eqz v1, :cond_3

    .line 978
    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 980
    :cond_3
    return-void

    .line 954
    .end local v1           #host:Landroid/app/Activity;
    :cond_4
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 955
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    if-nez v2, :cond_5

    .line 956
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView;->doCreate(Landroid/os/Bundle;)V

    .line 957
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 958
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 960
    :cond_5
    const/4 v0, 0x1

    .line 961
    .local v0, haveData:Z
    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-nez v2, :cond_6

    .line 962
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesAvail:Ljava/lang/Runnable;

    invoke-virtual {v2, p0, v3}, Lcom/android/settings/applications/RunningProcessesView;->doResume(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 963
    iput-boolean v5, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 965
    :cond_6
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 966
    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v2, p1, :cond_2

    .line 967
    if-eqz v0, :cond_7

    .line 968
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 972
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 970
    :cond_7
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private startApplicationDetailsActivity()V
    .locals 7

    .prologue
    .line 758
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 759
    const-string v0, "package"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    .line 762
    const-class v1, Lcom/android/settings/applications/InstalledAppDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090530

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 764
    return-void
.end method


# virtual methods
.method public createTabContent(Ljava/lang/String;)Landroid/view/View;
    .locals 1
    .parameter "tag"

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method handleRunningProcessesAvail()V
    .locals 3

    .prologue
    .line 983
    iget v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 984
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 986
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 988
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningProcessesView;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 991
    :cond_0
    return-void
.end method

.method public initTabSize(Landroid/widget/TabHost;)V
    .locals 6
    .parameter "tabHost"

    .prologue
    .line 701
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 702
    .local v0, display:Landroid/view/Display;
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getOrientation()I

    move-result v2

    .line 703
    .local v2, orien:I
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v3

    .line 704
    .local v3, tabCount:I
    if-nez v2, :cond_0

    .line 705
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 706
    invoke-virtual {p1}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/TabWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v5

    div-int/2addr v5, v3

    iput v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 665
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 667
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 750
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState;->requestSize(Ljava/lang/String;)V

    .line 753
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 552
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 554
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    .line 557
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    .line 558
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 559
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 560
    const-string v1, "Downloaded"

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "classname"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 563
    :goto_0
    if-nez v0, :cond_0

    .line 564
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 566
    :cond_0
    const-class v2, Lcom/android/settings/Settings$RunningServicesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, ".RunningServices"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 568
    :cond_1
    const-string v1, "Running"

    .line 580
    :cond_2
    :goto_1
    if-eqz p1, :cond_8

    .line 581
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 582
    const-string v0, "filterApps"

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 583
    const-string v0, "defaultTabTag"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_7

    .line 585
    :goto_2
    const-string v1, "showBackground"

    invoke-virtual {p1, v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 588
    :goto_3
    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 590
    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    .line 591
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090568

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090567

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mComputingSizeStr:Ljava/lang/CharSequence;

    .line 595
    return-void

    .line 561
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 569
    :cond_4
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, ".StorageUse"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    :cond_5
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 573
    iput v5, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 574
    const-string v1, "All"

    goto :goto_1

    .line 575
    :cond_6
    const-string v0, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    const-string v1, "All"

    goto/16 :goto_1

    :cond_7
    move-object v0, v1

    goto :goto_2

    :cond_8
    move-object v0, v1

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 768
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateOptionsMenu in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 772
    const/4 v0, 0x4

    const v1, 0x7f09054b

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 775
    const/4 v0, 0x5

    const/4 v1, 0x2

    const v2, 0x7f09054c

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02011b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 778
    const/4 v0, 0x6

    const v1, 0x7f09054d

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 780
    const/4 v0, 0x7

    const v1, 0x7f09054e

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 782
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 783
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 601
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    .line 602
    const v4, 0x7f04007e

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    .line 603
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0b018d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 604
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0b0187

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 606
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x102000a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 607
    .local v1, lv:Landroid/widget/ListView;
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x1020004

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 608
    .local v0, emptyView:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 611
    :cond_0
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 612
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 613
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 614
    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 615
    invoke-virtual {v1, v6}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 616
    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    .line 617
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 618
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x7f0b0188

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/LinearColorBar;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    .line 620
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x7f0b018a

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    .line 621
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x7f0b0189

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    .line 622
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;

    const v5, 0x7f0b018b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    .line 623
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRootView:Landroid/view/View;

    const v5, 0x7f0b018c

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/RunningProcessesView;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    .line 626
    iput-boolean v8, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    iput-boolean v8, p0, Lcom/android/settings/applications/ManageApplications;->mCreatedRunning:Z

    .line 627
    iput v8, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    .line 629
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f040080

    invoke-virtual {v4, v5, p2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TabHost;

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 630
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->setup()V

    .line 631
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    .line 632
    .local v3, tabHost:Landroid/widget/TabHost;
    const-string v4, "Downloaded"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090553

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020167

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 636
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v4

    if-nez v4, :cond_1

    .line 637
    const-string v4, "OnSdCard"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090555

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02016c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 642
    :cond_1
    const-string v4, "Running"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090554

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02016b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 646
    const-string v4, "All"

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f090552

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f020166

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 650
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 651
    invoke-virtual {v3, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 654
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v4, v5, v8}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/widget/ListView;Z)V

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.hardware.folder_type"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 657
    .local v2, supportFolderType:Z
    if-eqz v2, :cond_2

    .line 658
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageApplications;->initTabSize(Landroid/widget/TabHost;)V

    .line 660
    :cond_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    return-object v4
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .prologue
    .line 792
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 793
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 842
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 843
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 844
    invoke-direct {p0}, Lcom/android/settings/applications/ManageApplications;->startApplicationDetailsActivity()V

    .line 845
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 670
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_0

    move v1, v3

    .line 671
    .local v1, isdown:Z
    :goto_0
    if-eqz v1, :cond_4

    .line 673
    const/16 v5, 0x16

    if-ne p2, v5, :cond_2

    .line 675
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 676
    const/4 v2, 0x2

    .line 681
    .local v2, maxTab:I
    :goto_1
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v5

    if-ge v5, v2, :cond_4

    .line 682
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    .line 683
    .local v0, currentTab:I
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 697
    .end local v0           #currentTab:I
    .end local v2           #maxTab:I
    :goto_2
    return v3

    .end local v1           #isdown:Z
    :cond_0
    move v1, v4

    .line 670
    goto :goto_0

    .line 678
    .restart local v1       #isdown:Z
    :cond_1
    const/4 v2, 0x3

    .restart local v2       #maxTab:I
    goto :goto_1

    .line 686
    .end local v2           #maxTab:I
    :cond_2
    const/16 v5, 0x15

    if-ne p2, v5, :cond_3

    .line 687
    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v5

    if-lez v5, :cond_4

    .line 688
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    .line 689
    .restart local v0       #currentTab:I
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    .line 692
    .end local v0           #currentTab:I
    :cond_3
    const/16 v5, 0x13

    if-ne p2, v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_4

    .line 693
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v4}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v5}, Landroid/widget/TabHost;->getCurrentTab()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    goto :goto_2

    :cond_4
    move v3, v4

    .line 697
    goto :goto_2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 821
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 822
    .local v0, menuId:I
    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 823
    :cond_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    .line 824
    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    if-eq v1, v2, :cond_1

    .line 825
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    iget v2, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    .line 836
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 837
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    return v1

    .line 827
    :cond_2
    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    .line 828
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 829
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 830
    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    goto :goto_0

    .line 831
    :cond_3
    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 832
    iput-boolean v4, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    .line 833
    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v1, v1, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->setShowBackground(Z)V

    .line 834
    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 738
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 739
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 740
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 741
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningProcessesView;->doPause()V

    .line 743
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mResumedRunning:Z

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 746
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0
    .parameter "menu"

    .prologue
    .line 787
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 788
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 718
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 719
    iput-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mActivityResumed:Z

    .line 720
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 722
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setEnabled(Z)V

    .line 723
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 727
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 728
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 729
    const-string v0, "filterApps"

    iget v1, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 730
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 731
    const-string v0, "defautTabTag"

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    :cond_0
    const-string v0, "showBackground"

    iget-boolean v1, p0, Lcom/android/settings/applications/ManageApplications;->mShowBackground:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 734
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 713
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 714
    return-void
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 0
    .parameter "tabId"

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->showCurrentTab()V

    .line 1021
    return-void
.end method

.method public showCurrentTab()V
    .locals 5

    .prologue
    .line 994
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ManageApplications;->mDefaultTab:Ljava/lang/String;

    .line 996
    .local v1, tabId:Ljava/lang/String;
    const-string v2, "Downloaded"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 997
    const/4 v0, 0x1

    .line 1013
    .local v0, newOption:I
    :goto_0
    iput v0, p0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    .line 1014
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    .line 1015
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->updateOptionsMenu()V

    .line 1017
    .end local v0           #newOption:I
    :cond_0
    :goto_1
    return-void

    .line 998
    :cond_1
    const-string v2, "All"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 999
    const/4 v0, 0x0

    .restart local v0       #newOption:I
    goto :goto_0

    .line 1000
    .end local v0           #newOption:I
    :cond_2
    const-string v2, "OnSdCard"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1001
    const/4 v0, 0x2

    .restart local v0       #newOption:I
    goto :goto_0

    .line 1002
    .end local v0           #newOption:I
    :cond_3
    const-string v2, "Running"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1006
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Lcom/android/settings/applications/ManageApplications;->selectView(I)V

    goto :goto_1
.end method

.method updateOptionsMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x6

    const/4 v6, 0x5

    const/4 v5, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 796
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v3, :cond_0

    .line 817
    :goto_0
    return-void

    .line 804
    :cond_0
    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 805
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mRunningProcessesView:Lcom/android/settings/applications/RunningProcessesView;

    iget-object v3, v3, Lcom/android/settings/applications/RunningProcessesView;->mAdapter:Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/applications/RunningProcessesView$ServiceListAdapter;->getShowBackground()Z

    move-result v0

    .line 807
    .local v0, showingBackground:Z
    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 808
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 809
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 810
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v4, 0x7

    invoke-interface {v3, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .end local v0           #showingBackground:Z
    :cond_2
    move v0, v1

    .line 805
    goto :goto_1

    .line 812
    :cond_3
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v5}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget v3, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v3, v5, :cond_4

    move v3, v2

    :goto_2
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 813
    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v3, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iget v4, p0, Lcom/android/settings/applications/ManageApplications;->mSortOrder:I

    if-eq v4, v6, :cond_5

    :goto_3
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 814
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 815
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const/4 v3, 0x7

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_4
    move v3, v1

    .line 812
    goto :goto_2

    :cond_5
    move v2, v1

    .line 813
    goto :goto_3
.end method

.method updateStorageUsage()V
    .locals 22

    .prologue
    .line 856
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mCurView:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 860
    :cond_1
    const-wide/16 v8, 0x0

    .line 861
    .local v8, freeStorage:J
    const-wide/16 v5, 0x0

    .line 862
    .local v5, appStorage:J
    const-wide/16 v13, 0x0

    .line 863
    .local v13, totalStorage:J
    const/4 v11, 0x0

    .line 865
    .local v11, newLabel:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/applications/ManageApplications;->mFilterApps:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 866
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 867
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 869
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f090559

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 872
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 874
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mSDCardFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 879
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 880
    .local v3, N:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    if-ge v10, v3, :cond_7

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 882
    .local v4, ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 880
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 885
    .end local v3           #N:I
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v10           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 886
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/applications/ManageApplications;->mLastShowedInternalStorage:Z

    .line 888
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    const v18, 0x7f090558

    invoke-virtual/range {v17 .. v18}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    const-string v18, "/data"

    invoke-virtual/range {v17 .. v18}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    .line 891
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getBlockCount()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v13, v17, v19

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    mul-long v8, v17, v19

    .line 897
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v7

    .line 898
    .local v7, emulatedStorage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    .line 899
    .restart local v3       #N:I
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_4
    if-ge v10, v3, :cond_6

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsAdapter:Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 901
    .restart local v4       #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->codeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->dataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 902
    if-eqz v7, :cond_5

    .line 903
    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalCodeSize:J

    move-wide/from16 v17, v0

    iget-wide v0, v4, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->externalDataSize:J

    move-wide/from16 v19, v0

    add-long v17, v17, v19

    add-long v5, v5, v17

    .line 899
    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 906
    .end local v4           #ae:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mApplicationsState:Lcom/android/settings/applications/ApplicationsState;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/settings/applications/ApplicationsState;->sumCacheSizes()J

    move-result-wide v17

    add-long v8, v8, v17

    .line 908
    .end local v7           #emulatedStorage:Z
    :cond_7
    if-eqz v11, :cond_8

    .line 909
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mStorageChartLabel:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 911
    :cond_8
    const-wide/16 v17, 0x0

    cmp-long v17, v13, v17

    if-lez v17, :cond_c

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v17, v0

    sub-long v18, v13, v8

    sub-long v18, v18, v5

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    long-to-float v0, v13

    move/from16 v19, v0

    div-float v18, v18, v19

    long-to-float v0, v5

    move/from16 v19, v0

    long-to-float v0, v13

    move/from16 v20, v0

    div-float v19, v19, v20

    long-to-float v0, v8

    move/from16 v20, v0

    long-to-float v0, v13

    move/from16 v21, v0

    div-float v20, v20, v21

    invoke-virtual/range {v17 .. v20}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 914
    sub-long v15, v13, v8

    .line 915
    .local v15, usedStorage:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v15

    if-nez v17, :cond_9

    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 916
    :cond_9
    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 917
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 918
    .local v12, sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090586

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 921
    .end local v12           #sizeStr:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    cmp-long v17, v17, v8

    if-nez v17, :cond_b

    const-string v17, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 922
    :cond_b
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v0, v8, v9}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    .line 924
    .restart local v12       #sizeStr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f090585

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    invoke-virtual/range {v18 .. v20}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 928
    .end local v12           #sizeStr:Ljava/lang/String;
    .end local v15           #usedStorage:J
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mColorBar:Lcom/android/settings/applications/LinearColorBar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Lcom/android/settings/applications/LinearColorBar;->setRatios(FFF)V

    .line 929
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_d

    .line 930
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastUsedStorage:J

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mUsedStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 933
    :cond_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    move-wide/from16 v17, v0

    const-wide/16 v19, -0x1

    cmp-long v17, v17, v19

    if-eqz v17, :cond_0

    .line 934
    const-wide/16 v17, -0x1

    move-wide/from16 v0, v17

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/applications/ManageApplications;->mLastFreeStorage:J

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/ManageApplications;->mFreeStorageText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 895
    .end local v3           #N:I
    .end local v10           #i:I
    :catch_0
    move-exception v17

    goto/16 :goto_3

    .line 876
    :catch_1
    move-exception v17

    goto/16 :goto_1
.end method
