.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.super Lcom/android/systemui/statusbar/StatusBar;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;,
        Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;
    }
.end annotation


# static fields
.field public static final ACTION_STATUSBAR_START:Ljava/lang/String; = "com.android.internal.policy.statusbar.START"

.field static final ANIM_FRAME_DURATION:I = 0x10

.field public static final CHATTY:Z = false

.field private static final CLOSE_PANEL_WHEN_EMPTIED:Z = true

.field public static final DEBUG:Z = false

.field public static final DUMPTRUCK:Z = true

.field static final EXPANDED_FULL_OPEN:I = -0x2711

.field static final EXPANDED_LEAVE_ALONE:I = -0x2710

.field private static final INTRUDER_ALERT_DECAY_MS:I = 0x2710

.field private static final MSG_ANIMATE:I = 0x64

.field private static final MSG_ANIMATE_REVEAL:I = 0x65

.field private static final MSG_CLOSE_NOTIFICATION_PANEL:I = 0x3e9

.field private static final MSG_CLOSE_RECENTS_PANEL:I = 0x3fd

.field private static final MSG_HIDE_INTRUDER:I = 0x3eb

.field private static final MSG_OPEN_NOTIFICATION_PANEL:I = 0x3e8

.field private static final MSG_OPEN_RECENTS_PANEL:I = 0x3fc

.field private static final MSG_SHOW_INTRUDER:I = 0x3ea

.field public static final SPEW:Z = false

.field static final TAG:Ljava/lang/String; = "PhoneStatusBar"

.field private static final TIMEOUT:I = 0xfa0

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PhoneStatusBar"


# instance fields
.field brightnessController:Landroid/view/View;

.field doNotDisturbIcon:Landroid/view/View;

.field doNotDisturbIconShow:Z

.field mAbsPos:[I

.field mAnimAccel:F

.field mAnimLastTime:J

.field mAnimVel:F

.field mAnimY:F

.field mAnimating:Z

.field mAnimatingReveal:Z

.field mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryText:Landroid/widget/TextView;

.field private mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

.field mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallOnGoingView:Landroid/view/View;

.field mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

.field mClearButton:Landroid/view/View;

.field mClearButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field private mClock:Landroid/view/View;

.field mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

.field private mCollapseAccelPx:F

.field private mCollapseMinDisplayFraction:F

.field mCurAnimationTime:J

.field mDateView:Lcom/android/systemui/statusbar/policy/DateView;

.field mDisabled:I

.field mDisplay:Landroid/view/Display;

.field mDisplayMetrics:Landroid/util/DisplayMetrics;

.field mDisplayPlmnIcon:Z

.field mEdgeBorder:I

.field private mExpandAccelPx:F

.field private mExpandMinDisplayFraction:F

.field mExpanded:Z

.field mExpandedContents:Landroid/view/View;

.field mExpandedDialog:Landroid/app/Dialog;

.field mExpandedParams:Landroid/view/WindowManager$LayoutParams;

.field mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

.field mExpandedVisible:Z

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

.field mIconHPadding:I

.field mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

.field mIconSize:I

.field mIcons:Landroid/widget/LinearLayout;

.field private mIntruderAlertView:Landroid/view/View;

.field mLatestNotificationText:Landroid/widget/TextView;

.field mLatestNotificationTitle:Landroid/widget/LinearLayout;

.field mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

.field private mMiniConPile:Landroid/widget/LinearLayout;

.field mMiniControllerTextIsScrolling:Z

.field mMoreIcon:Landroid/view/View;

.field mNaturalBarHeight:I

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mNoNotificationsText:Landroid/widget/TextView;

.field mNoNotificationsTitle:Landroid/widget/LinearLayout;

.field mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

.field mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

.field mOldConfig:Landroid/content/res/Configuration;

.field mOngoingNotificationText:Landroid/widget/TextView;

.field mOngoingNotificationTitle:Landroid/widget/LinearLayout;

.field mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mPLMNLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

.field mPLMNPanel:Landroid/widget/RelativeLayout;

.field private mPanelSlightlyVisible:Z

.field mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

.field mPixelFormat:I

.field mPlmnDefault:Ljava/lang/String;

.field mPositionTmp:[I

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mQueueLock:Ljava/lang/Object;

.field mQuickSettingScroller:Landroid/widget/HorizontalScrollView;

.field mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

.field private mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

.field private mRecentsClickListener:Landroid/view/View$OnClickListener;

.field private mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

.field mScrollView:Landroid/widget/ScrollView;

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field mSettingsButton:Landroid/view/View;

.field private mSettingsButtonListener:Landroid/view/View$OnClickListener;

.field mSettingsButtonText:Landroid/widget/TextView;

.field mSettingsLaunchButton:Landroid/view/View;

.field mStartTracing:Ljava/lang/Runnable;

.field private mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

.field mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field mStatusIcons:Landroid/widget/LinearLayout;

.field mStopTracing:Ljava/lang/Runnable;

.field mSystemUiVisibility:I

.field private mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

.field private mTickerView:Landroid/view/View;

.field private mTicking:Z

.field mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

.field mTracking:Z

.field mTrackingParams:Landroid/view/WindowManager$LayoutParams;

.field mTrackingPosition:I

.field mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

.field mTrackingViewAttached:Z

.field private mUseMiniCon:Z

.field private mUseStatusBarMarquee:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field mViewDelta:I

.field mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBar;-><init>()V

    .line 188
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    .line 189
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIconShow:Z

    .line 206
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 207
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 208
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 215
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-direct {v0, p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    .line 216
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    .line 243
    new-instance v0, Lcom/android/systemui/statusbar/NotificationData;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/NotificationData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    .line 256
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    .line 267
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 297
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 299
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    .line 300
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 304
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 307
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 309
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 338
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniControllerTextIsScrolling:Z

    .line 346
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingViewAttached:Z

    .line 809
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    .line 1867
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 1876
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 2570
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$5;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    .line 3028
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$7;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 3139
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$8;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    .line 3152
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 3332
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$11;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    .line 3342
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$12;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStopTracing:Ljava/lang/Runnable;

    .line 3470
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    .line 3471
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPwdChangeEnforced()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseStatusBarMarquee:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setIntruderAlertVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 136
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    return-object v0
.end method

.method private addIntruderView()V
    .locals 9

    .prologue
    .line 872
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarHeight()I

    move-result v6

    .line 874
    .local v6, height:I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e1

    const v4, 0x820328

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 885
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 886
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-double v1, v1

    int-to-double v3, v6

    const-wide/high16 v7, 0x3ff8

    mul-double/2addr v3, v7

    add-double/2addr v1, v3

    double-to-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 887
    const-string v1, "IntruderAlert"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 889
    const v1, 0x7f0d000a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 891
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 892
    return-void
.end method

.method private addNavigationBar()V
    .locals 3

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 834
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 828
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSystemBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 829
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 850
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e3

    const v4, 0x4800068

    move v2, v1

    move v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 861
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 865
    :cond_0
    const-string v1, "NavigationBar"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 866
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 868
    return-object v0
.end method

.method private inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z
    .locals 20
    .parameter "entry"
    .parameter "parent"

    .prologue
    .line 1503
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v18, v0

    .line 1504
    .local v18, sbn:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 1505
    .local v16, remoteViews:Landroid/widget/RemoteViews;
    if-nez v16, :cond_0

    .line 1506
    const/4 v4, 0x0

    .line 1580
    :goto_0
    return v4

    .line 1510
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 1514
    .local v14, inflater:Landroid/view/LayoutInflater;
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_1

    const v4, 0x7f030030

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 1518
    .local v17, row:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v19

    .line 1519
    .local v19, vetoButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f09006f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1523
    const v4, 0x7f0f0085

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1524
    .local v15, largeIcon:Landroid/widget/ImageView;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 1525
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1526
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1531
    :goto_2
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1534
    const v4, 0x7f0f0079

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1536
    .local v9, content:Landroid/view/ViewGroup;
    const/high16 v4, 0x6

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1538
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1539
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_3

    .line 1540
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1544
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1550
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_3
    const/4 v12, 0x0

    .line 1551
    .local v12, expanded:Landroid/view/View;
    const/4 v11, 0x0

    .line 1553
    .local v11, exception:Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1558
    :goto_4
    if-nez v12, :cond_4

    .line 1559
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1560
    .local v13, ident:Ljava/lang/String;
    const-string v4, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1561
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1514
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #content:Landroid/view/ViewGroup;
    .end local v11           #exception:Ljava/lang/Exception;
    .end local v12           #expanded:Landroid/view/View;
    .end local v13           #ident:Ljava/lang/String;
    .end local v15           #largeIcon:Landroid/widget/ImageView;
    .end local v17           #row:Landroid/view/View;
    .end local v19           #vetoButton:Landroid/view/View;
    :cond_1
    const v4, 0x7f030017

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    goto/16 :goto_1

    .line 1528
    .restart local v15       #largeIcon:Landroid/widget/ImageView;
    .restart local v17       #row:Landroid/view/View;
    .restart local v19       #vetoButton:Landroid/view/View;
    :cond_2
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1529
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1546
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    .restart local v9       #content:Landroid/view/ViewGroup;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1555
    .restart local v11       #exception:Ljava/lang/Exception;
    .restart local v12       #expanded:Landroid/view/View;
    :catch_0
    move-exception v10

    .line 1556
    .local v10, e:Ljava/lang/RuntimeException;
    move-object v11, v10

    goto :goto_4

    .line 1566
    .end local v10           #e:Ljava/lang/RuntimeException;
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_5

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-nez v4, :cond_6

    .line 1567
    :cond_5
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1570
    :cond_6
    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1573
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 1575
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1576
    move-object/from16 v0, p1

    iput-object v9, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    .line 1577
    move-object/from16 v0, p1

    iput-object v12, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    .line 1578
    move-object/from16 v0, p1

    iput-object v15, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    .line 1580
    const/4 v4, 0x1

    goto/16 :goto_0
.end method

.method private isPwdChangeEnforced()Z
    .locals 3

    .prologue
    .line 1808
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 1810
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPasswordPolicy()Landroid/app/enterprise/PasswordPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/enterprise/PasswordPolicy;->isChangeRequested()I

    move-result v1

    if-lez v1, :cond_0

    .line 1811
    const/4 v1, 0x1

    .line 1813
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
    .locals 2
    .parameter "id"
    .parameter "listener"

    .prologue
    .line 2581
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 2582
    .local v0, anim:Landroid/view/animation/Animation;
    if-eqz p2, :cond_0

    .line 2583
    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2585
    :cond_0
    return-object v0
.end method

.method private loadNotificationShade()V
    .locals 11

    .prologue
    .line 1310
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1312
    .local v0, N:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1314
    .local v7, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1315
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v5, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1316
    .local v5, row:Landroid/view/View;
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1319
    .end local v5           #row:Landroid/view/View;
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1320
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1321
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1322
    .local v1, child:Landroid/view/View;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1323
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1327
    .end local v1           #child:Landroid/view/View;
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1328
    .local v4, remove:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v9, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_2

    .line 1331
    .end local v4           #remove:Landroid/view/View;
    :cond_3
    const/4 v2, 0x0

    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 1332
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1333
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_4

    .line 1334
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v10, 0x0

    invoke-virtual {v9, v8, v10}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 1331
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1337
    .end local v8           #v:Landroid/view/View;
    :cond_5
    return-void
.end method

.method private makeExpandedVisible()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1886
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v0, :cond_1

    .line 1915
    :cond_0
    :goto_0
    return-void

    .line 1889
    :cond_1
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 1890
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 1892
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1893
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 1894
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v1, v1, -0x9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1895
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1899
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1900
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ExpandedView;->requestFocus(I)Z

    .line 1901
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/TrackingView;->setVisibility(I)V

    .line 1903
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    if-ne v0, v3, :cond_0

    .line 1904
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnDefault:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1905
    const/high16 v0, 0x10a

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 1906
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIconShow:Z

    if-eqz v0, :cond_2

    .line 1907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1909
    :cond_2
    const v0, 0x10a0001

    invoke-virtual {p0, v4, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_0
.end method

.method private notifyUiVisibilityChanged()V
    .locals 2

    .prologue
    .line 2405
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->statusBarVisibilityChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2408
    :goto_0
    return-void

    .line 2406
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private prepareNavigationBarView()V
    .locals 2

    .prologue
    .line 816
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    .line 818
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getRecentsButton()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 820
    return-void
.end method

.method private reloadAllNotificationIcons()V
    .locals 1

    .prologue
    .line 1438
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    if-nez v0, :cond_0

    .line 1441
    :goto_0
    return-void

    .line 1439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeAllViews()V

    .line 1440
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    goto :goto_0
.end method

.method private repositionNavigationBar()V
    .locals 3

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v0, :cond_1

    .line 847
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareNavigationBarView()V

    .line 842
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSystemBarHidden()Z

    move-result v0

    if-nez v0, :cond_0

    .line 843
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private setAreThereNotifications()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/high16 v4, 0x3f80

    .line 1639
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v6

    if-lez v6, :cond_1

    move v0, v2

    .line 1641
    .local v0, any:Z
    :goto_0
    if-eqz v0, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationData;->hasClearableItems()Z

    move-result v6

    if-eqz v6, :cond_2

    move v1, v2

    .line 1649
    .local v1, clearable:Z
    :goto_1
    sget-boolean v6, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v6, :cond_7

    .line 1650
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->isShown()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1651
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v6

    cmpl-float v6, v6, v4

    if-nez v6, :cond_3

    move v6, v2

    :goto_2
    if-eq v1, v6, :cond_0

    .line 1652
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    const-string v7, "alpha"

    new-array v8, v2, [F

    if-eqz v1, :cond_4

    move v2, v4

    :goto_3
    aput v2, v8, v3

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xfa

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 1681
    :cond_0
    :goto_4
    return-void

    .end local v0           #any:Z
    .end local v1           #clearable:Z
    :cond_1
    move v0, v3

    .line 1639
    goto :goto_0

    .restart local v0       #any:Z
    :cond_2
    move v1, v3

    .line 1641
    goto :goto_1

    .restart local v1       #clearable:Z
    :cond_3
    move v6, v3

    .line 1651
    goto :goto_2

    :cond_4
    move v2, v5

    .line 1652
    goto :goto_3

    .line 1658
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v1, :cond_6

    :goto_5
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_4

    :cond_6
    move v4, v5

    goto :goto_5

    .line 1661
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isShown()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1662
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    if-eqz v1, :cond_8

    :goto_6
    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    .line 1663
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 1662
    :cond_8
    const v4, 0x3ecccccd

    goto :goto_6
.end method

.method private setIntruderAlertVisibility(Z)V
    .locals 2
    .parameter "vis"

    .prologue
    .line 3251
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3252
    return-void

    .line 3251
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private tick(Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 2
    .parameter "n"

    .prologue
    .line 2500
    iget-object v0, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2501
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0xa

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 2503
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/Ticker;->addEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 2506
    :cond_0
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 2365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 2366
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 2367
    .local v1, deltaY:F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2368
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2369
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 2370
    return-void
.end method

.method private tw_loadNotificationShade()V
    .locals 15

    .prologue
    .line 1341
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1343
    .local v0, N:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1344
    .local v11, toShowOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v9, toShowLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1347
    .local v10, toShowMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 1348
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v5, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    .line 1349
    .local v5, row:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1350
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1347
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1351
    :cond_0
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v14, v0, v2

    add-int/lit8 v14, v14, -0x1

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v13

    iget-object v13, v13, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v13}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 1352
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1354
    :cond_1
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1357
    .end local v5           #row:Landroid/view/View;
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1359
    .local v8, toRemoveOngoing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_2
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_4

    .line 1360
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1361
    .local v1, child:Landroid/view/View;
    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1362
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1366
    .end local v1           #child:Landroid/view/View;
    :cond_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1368
    .local v6, toRemoveLatest:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_3
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_6

    .line 1369
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1370
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 1371
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1368
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1375
    .end local v1           #child:Landroid/view/View;
    :cond_6
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1377
    .local v7, toRemoveMiniCon:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_4
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v2, v13, :cond_8

    .line 1378
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1379
    .restart local v1       #child:Landroid/view/View;
    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_7

    .line 1380
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1384
    .end local v1           #child:Landroid/view/View;
    :cond_8
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1385
    .local v4, remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_5

    .line 1388
    .end local v4           #remove:Landroid/view/View;
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1389
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v13, v4}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->removeView(Landroid/view/View;)V

    goto :goto_6

    .line 1392
    .end local v4           #remove:Landroid/view/View;
    :cond_a
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1393
    .restart local v4       #remove:Landroid/view/View;
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v4}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 1396
    .end local v4           #remove:Landroid/view/View;
    :cond_b
    const/4 v2, 0x0

    :goto_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_d

    .line 1397
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1398
    .local v12, v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_c

    .line 1399
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 1396
    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1403
    .end local v12           #v:Landroid/view/View;
    :cond_d
    const/4 v2, 0x0

    :goto_9
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_f

    .line 1404
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1405
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_e

    .line 1406
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->addView(Landroid/view/View;I)V

    .line 1403
    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1410
    .end local v12           #v:Landroid/view/View;
    :cond_f
    const/4 v2, 0x0

    :goto_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v2, v13, :cond_11

    .line 1411
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/View;

    .line 1412
    .restart local v12       #v:Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    if-nez v13, :cond_10

    .line 1413
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1410
    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 1417
    .end local v12           #v:Landroid/view/View;
    :cond_11
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_12

    .line 1418
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1423
    :goto_b
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-eqz v13, :cond_13

    .line 1424
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1429
    :goto_c
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_14

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-nez v13, :cond_14

    .line 1430
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1434
    :goto_d
    return-void

    .line 1420
    :cond_12
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    .line 1426
    :cond_13
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_c

    .line 1432
    :cond_14
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_d
.end method

.method private updateNotificationIcons()V
    .locals 11

    .prologue
    .line 1452
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v9, :cond_0

    .line 1453
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tw_loadNotificationShade()V

    .line 1461
    :goto_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    invoke-direct {v4, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1464
    .local v4, params:Landroid/widget/LinearLayout$LayoutParams;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1470
    .local v0, N:I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1472
    .local v7, toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1474
    sget-boolean v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v9}, Lcom/android/internal/statusbar/StatusBarNotification;->isInvisibleIconNotification()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1472
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1455
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v4           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v7           #toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V

    goto :goto_0

    .line 1479
    .restart local v0       #N:I
    .restart local v2       #i:I
    .restart local v4       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7       #toShow:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v10, v0, v2

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    iget-object v9, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1482
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1483
    .local v6, toRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 1484
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1485
    .local v1, child:Landroid/view/View;
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 1486
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1483
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1490
    .end local v1           #child:Landroid/view/View;
    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1491
    .local v5, remove:Landroid/view/View;
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->removeView(Landroid/view/View;)V

    goto :goto_4

    .line 1494
    .end local v5           #remove:Landroid/view/View;
    :cond_5
    const/4 v2, 0x0

    :goto_5
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_7

    .line 1495
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 1496
    .local v8, v:Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-nez v9, :cond_6

    .line 1497
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v9, v8, v2, v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1494
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1500
    .end local v8           #v:Landroid/view/View;
    :cond_7
    return-void
.end method

.method public static viewInfo(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "v"

    .prologue
    .line 2589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 5
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "icon"

    .prologue
    .line 897
    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 898
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p4}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 899
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 900
    return-void
.end method

.method public addNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 12
    .parameter "key"
    .parameter "notification"

    .prologue
    const/16 v11, 0x3eb

    .line 916
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v9

    .line 917
    .local v9, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    if-nez v9, :cond_0

    .line 969
    :goto_0
    return-void

    .line 919
    :cond_0
    const/4 v10, 0x0

    .line 921
    .local v10, immersive:Z
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->isTopActivityImmersive()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v10

    .line 927
    :goto_1
    if-eqz v10, :cond_2

    .line 928
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    .line 929
    const-string v0, "PhoneStatusBar"

    const-string v1, "Presenting high-priority notification in immersive activity"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0f000c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 934
    .local v6, alertIcon:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0f000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 935
    .local v7, alertText:Landroid/widget/TextView;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 938
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    const v1, 0x7f0f000b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 941
    .local v8, button:Landroid/view/View;
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v2, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 946
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v11, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessageDelayed(IJ)Z

    .line 967
    .end local v6           #alertIcon:Landroid/widget/ImageView;
    .end local v7           #alertText:Landroid/widget/TextView;
    .end local v8           #button:Landroid/view/View;
    :cond_1
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 968
    const/16 v0, -0x2710

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0

    .line 952
    :cond_2
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_3

    .line 954
    const-string v0, "PhoneStatusBar"

    const-string v1, "Notification has fullScreenIntent; sending fullScreenIntent"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :try_start_1
    iget-object v0, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 957
    :catch_0
    move-exception v0

    goto :goto_2

    .line 963
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    goto :goto_2

    .line 925
    :catch_1
    move-exception v0

    goto/16 :goto_1
.end method

.method addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 10
    .parameter "key"
    .parameter "notification"

    .prologue
    const/4 v9, 0x0

    .line 1242
    new-instance v7, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-direct {v7, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;)V

    .line 1245
    .local v7, iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1247
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v2, v2, Landroid/app/Notification;->icon:I

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->iconLevel:I

    iget-object v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->number:I

    iget-object v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v5, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 1252
    .local v0, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    invoke-virtual {v7, v0}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t create icon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1306
    .end local v7           #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_0
    :goto_0
    return-object v7

    .line 1257
    .restart local v7       #iconView:Lcom/android/systemui/statusbar/StatusBarIconView;
    :cond_1
    new-instance v6, Lcom/android/systemui/statusbar/NotificationData$Entry;

    invoke-direct {v6, p1, p2, v7}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Lcom/android/systemui/statusbar/StatusBarIconView;)V

    .line 1260
    .local v6, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1261
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADD:MiniCon-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v3, v3, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1265
    goto :goto_0

    .line 1270
    :cond_2
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v1, :cond_4

    .line 1271
    iget-object v1, v6, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v1}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1272
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1275
    goto :goto_0

    .line 1278
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1281
    goto/16 :goto_0

    .line 1285
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t expand RemoteViews for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V

    move-object v7, v9

    .line 1288
    goto/16 :goto_0

    .line 1296
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1, v6}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v8

    .line 1300
    .local v8, pos:I
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 1303
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1304
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removePlmnString()V

    goto/16 :goto_0
.end method

.method public animateCollapse()V
    .locals 1

    .prologue
    .line 1931
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(Z)V

    .line 1932
    return-void
.end method

.method public animateCollapse(Z)V
    .locals 1
    .parameter "excludeRecents"

    .prologue
    .line 1935
    const/high16 v0, 0x3f80

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(ZF)V

    .line 1936
    return-void
.end method

.method public animateCollapse(ZF)V
    .locals 4
    .parameter "excludeRecents"
    .parameter "velocityMultiplier"

    .prologue
    const/16 v3, 0x3fd

    const/4 v2, 0x1

    .line 1948
    if-nez p1, :cond_0

    .line 1949
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1950
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 1953
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v1, :cond_1

    .line 1968
    :goto_0
    return-void

    .line 1958
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v1, :cond_2

    .line 1959
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v0, v1

    .line 1965
    .local v0, y:I
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    .line 1966
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    .line 1967
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    neg-float v1, v1

    mul-float/2addr v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto :goto_0

    .line 1961
    .end local v0           #y:I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v0, v1, -0x1

    .restart local v0       #y:I
    goto :goto_1
.end method

.method public animateExpand()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1919
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1922
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v0, :cond_0

    .line 1926
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    .line 1927
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto :goto_0
.end method

.method public applyEDMPolicy()V
    .locals 4

    .prologue
    .line 3456
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->applyEDMPolicy()V

    .line 3458
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSystemBarHidden()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3459
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1, v2}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 3466
    :goto_0
    return-void

    .line 3461
    :cond_0
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3463
    :catch_0
    move-exception v0

    .line 3464
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed Applying policy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V
    .locals 6
    .parameter "sbn"
    .parameter "content"

    .prologue
    .line 1584
    iget-object v3, p1, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v3}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v3

    const v4, 0x10900da

    if-eq v3, v4, :cond_0

    .line 1586
    const/4 v2, 0x0

    .line 1588
    .local v2, version:I
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1589
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget v2, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1594
    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-lez v2, :cond_1

    const/16 v3, 0x9

    if-ge v2, v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v3, :cond_1

    .line 1596
    const v3, 0x7f02003e

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1607
    .end local v2           #version:I
    :cond_0
    :goto_1
    return-void

    .line 1590
    .restart local v2       #version:I
    :catch_0
    move-exception v0

    .line 1591
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed looking up ApplicationInfo for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1599
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_2

    .line 1600
    const v3, 0x7f02013f

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1602
    :cond_2
    const v3, 0x7f02003d

    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public disable(I)V
    .locals 11
    .parameter "state"

    .prologue
    const/high16 v10, 0x80

    const/high16 v9, 0x8

    const/high16 v8, 0x1

    const/high16 v7, 0x2

    const/4 v5, 0x0

    .line 1694
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 1695
    .local v2, old:I
    xor-int v0, p1, v2

    .line 1696
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 1703
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1704
    .local v1, flagdbg:Ljava/lang/StringBuilder;
    const-string v4, "disable: < "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1705
    and-int v4, p1, v8

    if-eqz v4, :cond_5

    const-string v4, "EXPAND"

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    and-int v4, v0, v8

    if-eqz v4, :cond_6

    const-string v4, "* "

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1707
    and-int v4, p1, v7

    if-eqz v4, :cond_7

    const-string v4, "ICONS"

    :goto_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1708
    and-int v4, v0, v7

    if-eqz v4, :cond_8

    const-string v4, "* "

    :goto_3
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1709
    const/high16 v4, 0x4

    and-int/2addr v4, p1

    if-eqz v4, :cond_9

    const-string v4, "ALERTS"

    :goto_4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1710
    const/high16 v4, 0x4

    and-int/2addr v4, v0

    if-eqz v4, :cond_a

    const-string v4, "* "

    :goto_5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1711
    and-int v4, p1, v9

    if-eqz v4, :cond_b

    const-string v4, "TICKER"

    :goto_6
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1712
    and-int v4, v0, v9

    if-eqz v4, :cond_c

    const-string v4, "* "

    :goto_7
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    const/high16 v4, 0x10

    and-int/2addr v4, p1

    if-eqz v4, :cond_d

    const-string v4, "SYSTEM_INFO"

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1714
    const/high16 v4, 0x10

    and-int/2addr v4, v0

    if-eqz v4, :cond_e

    const-string v4, "* "

    :goto_9
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1715
    const/high16 v4, 0x40

    and-int/2addr v4, p1

    if-eqz v4, :cond_f

    const-string v4, "BACK"

    :goto_a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    const/high16 v4, 0x40

    and-int/2addr v4, v0

    if-eqz v4, :cond_10

    const-string v4, "* "

    :goto_b
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1717
    const/high16 v4, 0x20

    and-int/2addr v4, p1

    if-eqz v4, :cond_11

    const-string v4, "HOME"

    :goto_c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1718
    const/high16 v4, 0x20

    and-int/2addr v4, v0

    if-eqz v4, :cond_12

    const-string v4, "* "

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1719
    const/high16 v4, 0x100

    and-int/2addr v4, p1

    if-eqz v4, :cond_13

    const-string v4, "RECENT"

    :goto_e
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1720
    const/high16 v4, 0x100

    and-int/2addr v4, v0

    if-eqz v4, :cond_14

    const-string v4, "* "

    :goto_f
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1721
    and-int v4, p1, v10

    if-eqz v4, :cond_15

    const-string v4, "CLOCK"

    :goto_10
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1722
    and-int v4, v0, v10

    if-eqz v4, :cond_16

    const-string v4, "* "

    :goto_11
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1723
    const-string v4, ">"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1724
    const-string v4, "PhoneStatusBar"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1726
    and-int v4, v0, v10

    if-eqz v4, :cond_0

    .line 1727
    and-int v4, p1, v10

    if-nez v4, :cond_17

    const/4 v3, 0x1

    .line 1728
    .local v3, show:Z
    :goto_12
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showClock(Z)V

    .line 1730
    .end local v3           #show:Z
    :cond_0
    and-int v4, v0, v8

    if-eqz v4, :cond_1

    .line 1731
    and-int v4, p1, v8

    if-eqz v4, :cond_1

    .line 1732
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 1736
    :cond_1
    const/high16 v4, 0x160

    and-int/2addr v4, v0

    if-eqz v4, :cond_3

    .line 1740
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V

    .line 1742
    :cond_2
    const/high16 v4, 0x100

    and-int/2addr v4, p1

    if-eqz v4, :cond_3

    .line 1744
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v6, 0x3fd

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 1745
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v6, 0x3fd

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 1753
    :cond_3
    and-int v4, v0, v7

    if-eqz v4, :cond_1f

    .line 1756
    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_1c

    .line 1757
    and-int v4, p1, v7

    if-eqz v4, :cond_1a

    .line 1759
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getVisibility()I

    move-result v4

    if-nez v4, :cond_18

    .line 1760
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIconShow:Z

    .line 1804
    :cond_4
    :goto_13
    return-void

    .line 1705
    :cond_5
    const-string v4, "expand"

    goto/16 :goto_0

    .line 1706
    :cond_6
    const-string v4, " "

    goto/16 :goto_1

    .line 1707
    :cond_7
    const-string v4, "icons"

    goto/16 :goto_2

    .line 1708
    :cond_8
    const-string v4, " "

    goto/16 :goto_3

    .line 1709
    :cond_9
    const-string v4, "alerts"

    goto/16 :goto_4

    .line 1710
    :cond_a
    const-string v4, " "

    goto/16 :goto_5

    .line 1711
    :cond_b
    const-string v4, "ticker"

    goto/16 :goto_6

    .line 1712
    :cond_c
    const-string v4, " "

    goto/16 :goto_7

    .line 1713
    :cond_d
    const-string v4, "system_info"

    goto/16 :goto_8

    .line 1714
    :cond_e
    const-string v4, " "

    goto/16 :goto_9

    .line 1715
    :cond_f
    const-string v4, "back"

    goto/16 :goto_a

    .line 1716
    :cond_10
    const-string v4, " "

    goto/16 :goto_b

    .line 1717
    :cond_11
    const-string v4, "home"

    goto/16 :goto_c

    .line 1718
    :cond_12
    const-string v4, " "

    goto/16 :goto_d

    .line 1719
    :cond_13
    const-string v4, "recent"

    goto/16 :goto_e

    .line 1720
    :cond_14
    const-string v4, " "

    goto/16 :goto_f

    .line 1721
    :cond_15
    const-string v4, "clock"

    goto/16 :goto_10

    .line 1722
    :cond_16
    const-string v4, " "

    goto/16 :goto_11

    :cond_17
    move v3, v5

    .line 1727
    goto/16 :goto_12

    .line 1762
    :cond_18
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_19

    .line 1763
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 1764
    :cond_19
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 1765
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1769
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "device_provisioned"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    .line 1770
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIcon:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 1775
    :cond_1a
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    if-eqz v4, :cond_1b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1b

    .line 1776
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIconShow:Z

    goto/16 :goto_13

    .line 1778
    :cond_1b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 1780
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIcon:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_13

    .line 1785
    :cond_1c
    and-int v4, p1, v7

    if-eqz v4, :cond_1e

    .line 1786
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_1d

    .line 1787
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    goto/16 :goto_13

    .line 1789
    :cond_1d
    const v4, 0x10a0001

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto/16 :goto_13

    .line 1792
    :cond_1e
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v4, :cond_4

    .line 1793
    const/4 v4, 0x1

    const/high16 v5, 0x10a

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto/16 :goto_13

    .line 1799
    :cond_1f
    and-int v4, v0, v9

    if-eqz v4, :cond_4

    .line 1800
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v4, :cond_4

    and-int v4, p1, v9

    if-eqz v4, :cond_4

    .line 1801
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    goto/16 :goto_13
.end method

.method doAnimation()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 2104
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 2107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->incrementAnim()V

    .line 2109
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 2111
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 2112
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performExpand()V

    .line 2127
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 2117
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 2118
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performCollapse()V

    goto :goto_0

    .line 2122
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2123
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 2124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method doRevealAnimation()V
    .locals 5

    .prologue
    .line 2149
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x1

    .line 2150
    .local v0, h:I
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 2151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->incrementAnim()V

    .line 2152
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_1

    .line 2153
    int-to-float v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 2154
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2162
    :cond_0
    :goto_0
    return-void

    .line 2156
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2157
    iget-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 2158
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 2594
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQueueLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2595
    :try_start_0
    const-string v5, "Current Status Bar state:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2596
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpanded="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mExpandedVisible="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2598
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTicking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2599
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTracking="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2600
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimating="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimY="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimVel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", mAnimAccel="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2603
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCurAnimationTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mAnimLastTime="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2605
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mAnimatingReveal="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " mViewDelta="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2607
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisplayMetrics="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2608
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedParams: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2609
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2610
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mExpandedDialog: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2611
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTrackingParams: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2612
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTrackingView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2614
    sget-boolean v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v5, :cond_0

    .line 2615
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mOngoingNotifications: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mLatestNotifications: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2622
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mNoNotificationsTitle: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2623
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mCloseView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2624
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mTickerView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2625
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mScrollView: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " scroll "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ","

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2627
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2629
    const-string v5, "  mNavigationBarView="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2630
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-nez v5, :cond_1

    .line 2631
    const-string v5, "null"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2637
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    monitor-enter v6

    .line 2638
    :try_start_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2639
    .local v0, N:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  notification icons: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2640
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v0, :cond_2

    .line 2641
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v1

    .line 2642
    .local v1, e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] key="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " icon="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2643
    iget-object v4, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 2644
    .local v4, n:Lcom/android/internal/statusbar/StatusBarNotification;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " id="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " priority="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2645
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         notification="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "         tickerText=\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2640
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2

    .line 2618
    .end local v0           #N:I
    .end local v1           #e:Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v2           #i:I
    .end local v4           #n:Lcom/android/internal/statusbar/StatusBarNotification;
    :cond_0
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mPile: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->viewInfo(Landroid/view/View;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2627
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 2633
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2648
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_2
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2650
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 2651
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  system icons: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 2653
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 2654
    .local v3, ic:Lcom/android/systemui/statusbar/StatusBarIconView;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] icon="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2652
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2648
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #ic:Lcom/android/systemui/statusbar/StatusBarIconView;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5

    .line 2684
    .restart local v0       #N:I
    .restart local v2       #i:I
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v5, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/NetworkController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2685
    return-void
.end method

.method getExpandedHeight(I)I
    .locals 2
    .parameter "disph"

    .prologue
    .line 2919
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v0

    sub-int v0, p1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;
    .locals 7
    .parameter "layoutParams"

    .prologue
    .line 739
    const/4 v6, 0x0

    .line 740
    .local v6, opaque:Z
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v3, 0x7de

    const v4, 0x820100

    if-eqz v6, :cond_0

    const/4 v5, -0x1

    :goto_0
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 754
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 755
    const-string v1, "RecentsPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 756
    const v1, 0x7f0d0008

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 757
    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 759
    return-object v0

    .line 740
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_0
    const/4 v5, -0x3

    goto :goto_0
.end method

.method protected getStatusBarGravity()I
    .locals 1

    .prologue
    .line 801
    const/16 v0, 0x37

    return v0
.end method

.method public getStatusBarHeight()I
    .locals 2

    .prologue
    .line 805
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 806
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x105000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "n"
    .parameter "message"

    .prologue
    .line 2515
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 2517
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p2, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v3, p2, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget v4, p2, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p2, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2521
    :goto_0
    return-void

    .line 2518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public hideCallOnGoingView()V
    .locals 2

    .prologue
    .line 3450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->removeView(Landroid/view/View;)V

    .line 3451
    return-void
.end method

.method incrementAnim()V
    .locals 8

    .prologue
    .line 2136
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 2137
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v3, v6, v7

    .line 2138
    .local v3, t:F
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 2139
    .local v5, y:F
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 2140
    .local v4, v:F
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 2141
    .local v0, a:F
    mul-float v6, v4, v3

    add-float/2addr v6, v5

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v3

    mul-float/2addr v7, v3

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 2142
    mul-float v6, v0, v3

    add-float/2addr v6, v4

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 2143
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    .line 2146
    return-void
.end method

.method interceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "event"

    .prologue
    .line 2279
    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v12, 0x1

    and-int/2addr v11, v12

    if-eqz v11, :cond_0

    .line 2280
    const/4 v11, 0x0

    .line 2359
    :goto_0
    return v11

    .line 2283
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2284
    .local v0, action:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v5

    .line 2285
    .local v5, statusBarSize:I
    mul-int/lit8 v2, v5, 0x2

    .line 2286
    .local v2, hitSize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v11

    float-to-int v9, v11

    .line 2287
    .local v9, y:I
    if-nez v0, :cond_7

    .line 2289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 2290
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pokeWakelock()V

    .line 2293
    :cond_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v11, :cond_5

    .line 2294
    sub-int v11, v5, v9

    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    .line 2299
    :goto_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v11, :cond_2

    if-lt v9, v2, :cond_3

    :cond_2
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    sub-int/2addr v11, v2

    if-le v9, v11, :cond_4

    .line 2305
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v11

    float-to-int v7, v11

    .line 2306
    .local v7, x:I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 2307
    .local v1, edgeBorder:I
    if-lt v7, v1, :cond_4

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v11, v1

    if-ge v7, v11, :cond_4

    .line 2308
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {p0, v9, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->prepareTracking(IZ)V

    .line 2309
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->trackMovement(Landroid/view/MotionEvent;)V

    .line 2359
    .end local v1           #edgeBorder:I
    .end local v7           #x:I
    :cond_4
    :goto_3
    const/4 v11, 0x0

    goto :goto_0

    .line 2296
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/phone/TrackingView;->getLocationOnScreen([I)V

    .line 2297
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAbsPos:[I

    const/4 v12, 0x1

    aget v11, v11, v12

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v12

    add-int/2addr v11, v12

    sub-int/2addr v11, v9

    iput v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    goto :goto_1

    .line 2308
    .restart local v1       #edgeBorder:I
    .restart local v7       #x:I
    :cond_6
    const/4 v11, 0x0

    goto :goto_2

    .line 2312
    .end local v1           #edgeBorder:I
    .end local v7           #x:I
    :cond_7
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    if-eqz v11, :cond_4

    .line 2313
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->trackMovement(Landroid/view/MotionEvent;)V

    .line 2314
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getHeight()I

    move-result v11

    add-int v3, v5, v11

    .line 2315
    .local v3, minY:I
    const/4 v11, 0x2

    if-ne v0, v11, :cond_a

    .line 2317
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isUnsecureKeyguardLocked()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 2318
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->pokeWakelock()V

    .line 2321
    :cond_8
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    if-eqz v11, :cond_9

    if-lt v9, v3, :cond_4

    .line 2324
    :cond_9
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 2325
    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v11, v9

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_3

    .line 2327
    :cond_a
    const/4 v11, 0x1

    if-eq v0, v11, :cond_b

    const/4 v11, 0x3

    if-ne v0, v11, :cond_4

    .line 2329
    :cond_b
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v12, 0x3e8

    invoke-virtual {v11, v12}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 2331
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    .line 2332
    .local v10, yVel:F
    const/4 v11, 0x0

    cmpg-float v11, v10, v11

    if-gez v11, :cond_f

    const/4 v4, 0x1

    .line 2334
    .local v4, negative:Z
    :goto_4
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v11}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v8

    .line 2335
    .local v8, xVel:F
    const/4 v11, 0x0

    cmpg-float v11, v8, v11

    if-gez v11, :cond_c

    .line 2336
    neg-float v8, v8

    .line 2338
    :cond_c
    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    cmpl-float v11, v8, v11

    if-lez v11, :cond_d

    .line 2339
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    .line 2342
    :cond_d
    float-to-double v11, v10

    float-to-double v13, v8

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v11

    double-to-float v6, v11

    .line 2343
    .local v6, vel:F
    if-eqz v4, :cond_e

    .line 2344
    neg-float v6, v6

    .line 2355
    :cond_e
    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v11, v9

    const/4 v12, 0x0

    invoke-virtual {p0, v11, v6, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->performFling(IFZ)V

    goto/16 :goto_3

    .line 2332
    .end local v4           #negative:Z
    .end local v6           #vel:F
    .end local v8           #xVel:F
    :cond_f
    const/4 v4, 0x0

    goto :goto_4
.end method

.method protected loadDimens()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 3283
    iget-object v3, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3285
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x105000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNaturalBarHeight:I

    .line 3288
    const v3, 0x105000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3290
    .local v1, newIconSize:I
    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3293
    .local v0, newIconHPadding:I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    if-ne v0, v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    if-eq v1, v3, :cond_1

    .line 3295
    :cond_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconHPadding:I

    .line 3296
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 3300
    :cond_1
    const/high16 v3, 0x7f0b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 3302
    const v3, 0x7f0b0012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfExpandVelocityPx:F

    .line 3303
    const v3, 0x7f0b0013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSelfCollapseVelocityPx:F

    .line 3304
    const v3, 0x7f0b0014

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    .line 3305
    const v3, 0x7f0b0015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    .line 3307
    const v3, 0x7f0b0017

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    .line 3308
    const v3, 0x7f0b0018

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    .line 3310
    const v3, 0x7f0b0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    .line 3311
    const v3, 0x7f0b001a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    .line 3313
    const v3, 0x7f0b0016

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingGestureMaxXVelocityPx:F

    .line 3316
    return-void
.end method

.method public makeClicker(Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;
    .locals 6
    .parameter "intent"
    .parameter "pkg"
    .parameter "tag"
    .parameter "id"

    .prologue
    .line 2434
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method makeNotificationView(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/ViewGroup;)[Landroid/view/View;
    .locals 20
    .parameter "notification"
    .parameter "parent"

    .prologue
    .line 1171
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    move-object/from16 v16, v0

    .line 1172
    .local v16, n:Landroid/app/Notification;
    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v17, v0

    .line 1173
    .local v17, remoteViews:Landroid/widget/RemoteViews;
    if-nez v17, :cond_0

    .line 1174
    const/4 v4, 0x0

    .line 1234
    :goto_0
    return-object v4

    .line 1178
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    .line 1182
    .local v14, inflater:Landroid/view/LayoutInflater;
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_1

    const v4, 0x7f030030

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    .line 1187
    .local v18, row:Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    move-result-object v19

    .line 1188
    .local v19, vetoButton:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v6, 0x7f09006f

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1192
    const v4, 0x7f0f0085

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 1193
    .local v15, largeIcon:Landroid/widget/ImageView;
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 1194
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1201
    :goto_2
    const v4, 0x7f0f0079

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/view/ViewGroup;

    .line 1202
    .local v9, content:Landroid/view/ViewGroup;
    const/high16 v4, 0x6

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 1203
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1204
    move-object/from16 v0, v16

    iget-object v5, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1205
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_3

    .line 1206
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1209
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1215
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_3
    const/4 v12, 0x0

    .line 1216
    .local v12, expanded:Landroid/view/View;
    const/4 v11, 0x0

    .line 1218
    .local v11, exception:Ljava/lang/Exception;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    invoke-virtual {v0, v4, v9}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 1223
    :goto_4
    if-nez v12, :cond_4

    .line 1224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1225
    .local v13, ident:Ljava/lang/String;
    const-string v4, "PhoneStatusBar"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "couldn\'t inflate view for notification "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1226
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1182
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v9           #content:Landroid/view/ViewGroup;
    .end local v11           #exception:Ljava/lang/Exception;
    .end local v12           #expanded:Landroid/view/View;
    .end local v13           #ident:Ljava/lang/String;
    .end local v15           #largeIcon:Landroid/widget/ImageView;
    .end local v18           #row:Landroid/view/View;
    .end local v19           #vetoButton:Landroid/view/View;
    :cond_1
    const v4, 0x7f030017

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v14, v4, v0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    goto/16 :goto_1

    .line 1196
    .restart local v15       #largeIcon:Landroid/widget/ImageView;
    .restart local v18       #row:Landroid/view/View;
    .restart local v19       #vetoButton:Landroid/view/View;
    :cond_2
    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v6, 0x0

    iput v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1197
    const/4 v4, 0x4

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 1211
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    .restart local v9       #content:Landroid/view/ViewGroup;
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 1220
    .restart local v11       #exception:Ljava/lang/Exception;
    .restart local v12       #expanded:Landroid/view/View;
    :catch_0
    move-exception v10

    .line 1221
    .local v10, e:Ljava/lang/RuntimeException;
    move-object v11, v10

    goto :goto_4

    .line 1228
    .end local v10           #e:Ljava/lang/RuntimeException;
    :cond_4
    invoke-virtual {v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1229
    const/4 v4, 0x1

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 1232
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->applyLegacyRowBackground(Lcom/android/internal/statusbar/StatusBarNotification;Landroid/view/View;)V

    .line 1234
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/view/View;

    const/4 v6, 0x0

    aput-object v18, v4, v6

    const/4 v6, 0x1

    aput-object v9, v4, v6

    const/4 v6, 0x2

    aput-object v12, v4, v6

    goto/16 :goto_0
.end method

.method protected makeStatusBarView()Landroid/view/View;
    .locals 22

    .prologue
    .line 393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 395
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 397
    .local v12, res:Landroid/content/res/Resources;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 400
    const v18, 0x105000e

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconSize:I

    .line 407
    const/4 v6, 0x0

    .line 408
    .local v6, expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_b

    .line 410
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_a

    .line 412
    const v18, 0x7f030029

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6           #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    check-cast v6, Lcom/android/systemui/statusbar/phone/ExpandedView;

    .line 421
    .restart local v6       #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f08000b

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_1
    move-object/from16 v0, p0

    iput-object v0, v6, Lcom/android/systemui/statusbar/phone/ExpandedView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x10403ac

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnDefault:Ljava/lang/String;

    .line 445
    const v18, 0x7f030003

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIntruderAlertView:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setClickable(Z)V

    .line 452
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_c

    .line 453
    const v18, 0x7f030027

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 459
    .local v13, sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    :goto_2
    move-object/from16 v0, p0

    iput-object v0, v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 460
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .line 463
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/IWindowManager;->hasNavigationBar()Z

    move-result v15

    .line 464
    .local v15, showNav:Z
    if-eqz v15, :cond_0

    .line 466
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_d

    .line 467
    const v18, 0x7f030022

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    .line 475
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setDisabledFlags(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 482
    .end local v15           #showNav:Z
    :cond_0
    :goto_4
    const/16 v18, -0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPixelFormat:I

    .line 483
    const v18, 0x7f0f002c

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    .line 484
    const v18, 0x7f0f002b

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    .line 485
    const v18, 0x7f0f002a

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMoreIcon:Landroid/view/View;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/IconMerger;->setOverflowIndicator(Landroid/view/View;)V

    .line 487
    const v18, 0x7f0f0029

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIcons:Landroid/widget/LinearLayout;

    .line 488
    const v18, 0x7f0f0031

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTickerView:Landroid/view/View;

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v18, v0

    const v19, 0x7f0f00ba

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIcon:Landroid/view/View;

    .line 492
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_1

    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useStatusBarWorldClock:Z

    if-eqz v18, :cond_1

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    move-object/from16 v18, v0

    const v19, 0x7f0f0030

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setClickable(Z)V

    .line 508
    :cond_1
    new-instance v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$ExpandedDialog;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    .line 509
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    .line 510
    const v18, 0x7f0f0047

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    .line 511
    const v18, 0x7f0f00c9

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsText:Landroid/widget/TextView;

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsTitle:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 514
    const v18, 0x7f0f0046

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setAlpha(F)V

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setEnabled(Z)V

    .line 518
    const v18, 0x7f0f0044

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/DateView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    .line 520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 521
    const/16 v9, 0xb

    .line 522
    .local v9, padding_in_dp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v14, v0, Landroid/util/DisplayMetrics;->density:F

    .line 523
    .local v14, scale:F
    int-to-float v0, v9

    move/from16 v18, v0

    mul-float v18, v18, v14

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v10, v0

    .line 524
    .local v10, padding_in_px:I
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v18, -0x2

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 527
    .local v11, params:Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v18, 0xf

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/policy/DateView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/DateView;->setPadding(IIII)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDateView:Lcom/android/systemui/statusbar/policy/DateView;

    move-object/from16 v18, v0

    const/16 v19, -0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/policy/DateView;->setTextColor(I)V

    .line 532
    .end local v9           #padding_in_dp:I
    .end local v10           #padding_in_px:I
    .end local v11           #params:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v14           #scale:F
    :cond_2
    const v18, 0x7f0f00b9

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/CarrierLabel;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setVisibility(I)V

    .line 537
    const v18, 0x7f0f00c4

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/CarrierLabel;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPLMNLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    .line 540
    const v18, 0x7f0f00c2

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPLMNPanel:Landroid/widget/RelativeLayout;

    .line 542
    const v18, 0x7f0f0045

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/view/View;

    .line 543
    const v18, 0x7f0f00c3

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsLaunchButton:Landroid/view/View;

    .line 545
    const v18, 0x7f0f00c8

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonText:Landroid/widget/TextView;

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButton:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsLaunchButton:Landroid/view/View;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonListener:Landroid/view/View$OnClickListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsLaunchButton:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setHoverPopupType(I)V

    .line 551
    const v18, 0x7f0f0048

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ScrollView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Landroid/widget/ScrollView;

    .line 552
    sget-boolean v18, Lcom/android/systemui/statusbar/StatusBar;->isNetworkSupported:Z

    if-nez v18, :cond_3

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPLMNPanel:Landroid/widget/RelativeLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 556
    :cond_3
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_e

    .line 557
    const v18, 0x7f0f00ca

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationTitle:Landroid/widget/LinearLayout;

    .line 558
    const v18, 0x7f0f00cd

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    .line 559
    const v18, 0x7f0f00cc

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 560
    const v18, 0x7f0f00cf

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 561
    const v18, 0x7f0f00cb

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    .line 562
    const v18, 0x7f0f00ce

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 571
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationTitle:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButtonFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 574
    new-instance v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$MyTicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/content/Context;Landroid/view/View;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 576
    const v18, 0x7f0f0033

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Lcom/android/systemui/statusbar/phone/TickerView;

    .line 577
    .local v17, tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/TickerView;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    .line 580
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_f

    .line 581
    const v18, 0x7f030034

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    .line 587
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/TrackingView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v18, v0

    const v19, 0x7f0f00ac

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/TrackingView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 592
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_4

    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showStatusBarHelp:Z

    if-eqz v18, :cond_4

    .line 593
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStatusBarHelpView()V

    .line 597
    :cond_4
    const/high16 v18, 0x7f0b

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEdgeBorder:I

    .line 600
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 603
    new-instance v18, Lcom/android/systemui/statusbar/policy/LocationController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/systemui/statusbar/policy/LocationController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLocationController:Lcom/android/systemui/statusbar/policy/LocationController;

    .line 604
    new-instance v18, Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v19, v0

    const v18, 0x7f0f002f

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/ImageView;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController;->addIconView(Landroid/widget/ImageView;)V

    .line 608
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_5

    .line 609
    const v18, 0x7f0f0080

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/policy/BatteryController;->addLabelView(Landroid/widget/TextView;)V

    .line 612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "display_battery_percentage"

    invoke-static/range {v19 .. v19}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryTextObserver:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$BatteryTextObserver;

    move-object/from16 v21, v0

    invoke-virtual/range {v18 .. v21}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v20, "display_battery_percentage"

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v18

    const/16 v20, 0x1

    move/from16 v0, v18

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v18, 0x0

    :goto_7
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 619
    new-instance v18, Lcom/android/systemui/statusbar/policy/FaceDetectionController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;-><init>(Landroid/content/Context;)V

    .line 624
    :cond_5
    new-instance v18, Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    invoke-direct/range {v18 .. v19}, Lcom/android/systemui/statusbar/policy/NetworkController;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 625
    const v18, 0x7f0f002e

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/systemui/statusbar/SignalClusterView;

    .line 627
    .local v16, signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->addSignalCluster(Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;)V

    .line 628
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkController;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/SignalClusterView;->setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V

    .line 635
    new-instance v18, Lcom/android/systemui/recent/RecentTasksLoader;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Lcom/android/systemui/recent/RecentTasksLoader;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    .line 636
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsPanel()V

    .line 639
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 640
    .local v7, filter:Landroid/content/IntentFilter;
    const-string v18, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 641
    const-string v18, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 642
    const-string v18, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string v18, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 650
    const-string v18, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 653
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v4, v0, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 656
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v18, :cond_7

    .line 657
    const v18, 0x7f0f00c0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/HorizontalScrollView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingScroller:Landroid/widget/HorizontalScrollView;

    .line 658
    const v18, 0x7f0f00c1

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    const/16 v20, 0x0

    invoke-virtual/range {v18 .. v20}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->setLayerType(ILandroid/graphics/Paint;)V

    .line 672
    :cond_7
    const v18, 0x7f080007

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    .line 673
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    .line 674
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v18, -0x1

    const/16 v19, -0x2

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 676
    .local v11, params:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v18, Landroid/widget/LinearLayout;

    move-object/from16 v0, v18

    invoke-direct {v0, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 679
    const v18, 0x7f0f00c5

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 681
    .local v8, miniControllerLayout:Landroid/widget/LinearLayout;
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBrightController:Z

    if-eqz v18, :cond_11

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 691
    .end local v8           #miniControllerLayout:Landroid/widget/LinearLayout;
    .end local v11           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    :goto_8
    const v18, 0x7f080009

    move/from16 v0, v18

    invoke-virtual {v12, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseStatusBarMarquee:Z

    .line 695
    new-instance v19, Lcom/android/systemui/statusbar/policy/BrightnessController;

    const v18, 0x7f0f00a0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/ToggleSlider;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1}, Lcom/android/systemui/statusbar/policy/BrightnessController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    move-object/from16 v18, v0

    const v19, 0x7f0f00c6

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 702
    sget-boolean v18, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showBrightController:Z

    if-eqz v18, :cond_12

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 712
    :cond_9
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tw_loadNotificationShade()V

    .line 719
    return-object v13

    .line 416
    .end local v7           #filter:Landroid/content/IntentFilter;
    .end local v13           #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .end local v16           #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    .end local v17           #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_a
    const v18, 0x7f030028

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6           #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    check-cast v6, Lcom/android/systemui/statusbar/phone/ExpandedView;

    .restart local v6       #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    goto/16 :goto_0

    .line 422
    :catch_0
    move-exception v5

    .line 423
    .local v5, ex:Landroid/content/res/Resources$NotFoundException;
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    goto/16 :goto_1

    .line 428
    .end local v5           #ex:Landroid/content/res/Resources$NotFoundException;
    :cond_b
    const v18, 0x7f03000a

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .end local v6           #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    check-cast v6, Lcom/android/systemui/statusbar/phone/ExpandedView;

    .restart local v6       #expanded:Lcom/android/systemui/statusbar/phone/ExpandedView;
    goto/16 :goto_1

    .line 455
    :cond_c
    const v18, 0x7f030008

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    .restart local v13       #sb:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    goto/16 :goto_2

    .line 470
    .restart local v15       #showNav:Z
    :cond_d
    const v18, 0x7f030004

    const/16 v19, 0x0

    :try_start_2
    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_3

    .line 477
    .end local v15           #showNav:Z
    :catch_1
    move-exception v18

    goto/16 :goto_4

    .line 565
    :cond_e
    const v18, 0x7f0f0049

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/phone/ExpandedView;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    goto/16 :goto_5

    .line 583
    .restart local v17       #tickerView:Lcom/android/systemui/statusbar/phone/TickerView;
    :cond_f
    const v18, 0x7f030020

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/android/systemui/statusbar/phone/TrackingView;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    goto/16 :goto_6

    .line 615
    :cond_10
    const/16 v18, 0x8

    goto/16 :goto_7

    .line 684
    .restart local v7       #filter:Landroid/content/IntentFilter;
    .restart local v8       #miniControllerLayout:Landroid/widget/LinearLayout;
    .restart local v11       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v16       #signalCluster:Lcom/android/systemui/statusbar/SignalClusterView;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniConPile:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_8

    .line 705
    .end local v8           #miniControllerLayout:Landroid/widget/LinearLayout;
    .end local v11           #params:Landroid/widget/LinearLayout$LayoutParams;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9
.end method

.method onBarViewAttached()V
    .locals 7

    .prologue
    const/4 v1, -0x1

    .line 2689
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingViewAttached:Z

    if-eqz v2, :cond_0

    .line 2731
    :goto_0
    return-void

    .line 2696
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 2703
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/TrackingView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 2704
    .local v6, bg:Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 2705
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    .line 2708
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e1

    const v4, 0x20300

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2717
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v1}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2718
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x100

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2721
    :cond_2
    const/16 v1, 0x37

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2722
    const-string v1, "TrackingView"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2723
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2724
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    .line 2726
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2728
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingViewAttached:Z

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x0

    .line 1132
    const-string v2, "STATUSBAR-PhoneStatusBar"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged - Configuration:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v1, 0x1

    .line 1136
    .local v1, update:Z
    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "android.hardware.folder_type"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 1138
    .local v0, supportFolderType:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOldConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOldConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v3, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOldConfig:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 1140
    const/4 v1, 0x0

    .line 1142
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOldConfig:Landroid/content/res/Configuration;

    .line 1146
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v2, :cond_1

    .line 1147
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v2, v5, v5}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->prepareTranslationX(Z)V

    .line 1153
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateStatusBarHelpView()V

    .line 1156
    if-eqz v1, :cond_2

    .line 1157
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentsPanel()V

    .line 1161
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    .line 1165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateDisplaySize()V

    .line 1167
    return-void
.end method

.method onTrackingViewAttached()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 2738
    const/4 v1, -0x3

    .line 2740
    .local v1, pixelFormat:I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 2741
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/4 v2, 0x0

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 2742
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2743
    const/16 v2, 0x7e1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 2744
    const/16 v2, 0x1328

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2750
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    invoke-static {v2}, Landroid/app/ActivityManager;->isHighEndGfx(Landroid/view/Display;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2751
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x100

    or-int/2addr v2, v3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2753
    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 2754
    const/16 v2, 0x37

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 2755
    const-string v2, "StatusBarExpanded"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 2756
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    .line 2757
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    .line 2758
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setFormat(I)V

    .line 2760
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 2761
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedView:Lcom/android/systemui/statusbar/phone/ExpandedView;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2764
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2765
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 2766
    return-void
.end method

.method performCollapse()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2028
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v4, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2033
    :cond_1
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showStatusBarHelp:Z

    if-eqz v4, :cond_2

    .line 2034
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->show(Z)V

    .line 2039
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniControllerTextIsScrolling:Z

    if-eqz v4, :cond_5

    .line 2040
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "Mini Controller text scroll : OFF"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2041
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 2042
    .local v0, N:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2043
    .local v3, miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_4

    .line 2044
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v5, v0, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v4}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2045
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v5, v0, v2

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v4

    iget-object v4, v4, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setSelected(Z)V

    .line 2043
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2047
    :cond_4
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniControllerTextIsScrolling:Z

    .line 2052
    .end local v0           #N:I
    .end local v2           #i:I
    .end local v3           #miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPLMNLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v4, v7}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setSelected(Z)V

    .line 2055
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "performCollapse()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2057
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    .line 2058
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    .line 2059
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2060
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v6, -0x20001

    and-int/2addr v5, v6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 2061
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2062
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/TrackingView;->setVisibility(I)V

    .line 2064
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v5, 0x2

    and-int/2addr v4, v5

    if-nez v4, :cond_6

    .line 2065
    const/high16 v4, 0x10a

    invoke-virtual {p0, v8, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    .line 2069
    :cond_6
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    if-ne v4, v8, :cond_9

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getVisibility()I

    move-result v4

    if-nez v4, :cond_9

    .line 2070
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v4

    if-gtz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIconShow:Z

    if-eqz v4, :cond_8

    .line 2071
    :cond_7
    const v4, 0x10a0001

    invoke-virtual {p0, v7, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 2073
    :cond_8
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIconShow:Z

    if-eqz v4, :cond_9

    .line 2074
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIcon:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2080
    :cond_9
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.systemui.statusbar.phone.COLLAPSED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2081
    .local v1, collapseIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.EXPAND_STATUS_BAR"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 2084
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v4, :cond_0

    .line 2087
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    .line 2088
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v4, :cond_a

    .line 2089
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 2090
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 2094
    :cond_a
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_b

    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useStatusBarWorldClock:Z

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setClickable(Z)V

    .line 2097
    :cond_b
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_0

    .line 2098
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v4, v7, v7}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 2099
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->prepareTranslationX(Z)V

    goto/16 :goto_0
.end method

.method performDisableActions(I)V
    .locals 6
    .parameter "net"

    .prologue
    const/high16 v5, 0x8

    const/high16 v4, 0x2

    const/high16 v3, 0x1

    .line 2995
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 2996
    .local v1, old:I
    xor-int v0, p1, v1

    .line 2997
    .local v0, diff:I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    .line 3000
    and-int v2, v0, v3

    if-eqz v2, :cond_0

    .line 3001
    and-int v2, p1, v3

    if-eqz v2, :cond_0

    .line 3002
    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_EXPAND: yes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3003
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 3006
    :cond_0
    and-int v2, v0, v4

    if-eqz v2, :cond_4

    .line 3007
    and-int v2, p1, v4

    if-eqz v2, :cond_3

    .line 3008
    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_NOTIFICATION_ICONS: yes"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3009
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v2, :cond_2

    .line 3010
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 3011
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 3026
    :cond_1
    :goto_0
    return-void

    .line 3013
    :cond_2
    const/4 v2, 0x0

    const v3, 0x10a0001

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 3016
    :cond_3
    const-string v2, "PhoneStatusBar"

    const-string v3, "DISABLE_NOTIFICATION_ICONS: no"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3017
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v2, :cond_1

    .line 3018
    const/4 v2, 0x1

    const/high16 v3, 0x10a

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setNotificationIconVisibility(ZI)V

    goto :goto_0

    .line 3021
    :cond_4
    and-int v2, v0, v5

    if-eqz v2, :cond_1

    .line 3022
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicking:Z

    if-eqz v2, :cond_1

    and-int v2, p1, v5

    if-eqz v2, :cond_1

    .line 3023
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    goto :goto_0
.end method

.method performExpand()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 1972
    iget v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisabled:I

    const/high16 v4, 0x1

    and-int/2addr v3, v4

    if-eqz v3, :cond_1

    .line 2022
    :cond_0
    :goto_0
    return-void

    .line 1975
    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-nez v3, :cond_0

    .line 1983
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniControllerTextIsScrolling:Z

    if-nez v3, :cond_4

    .line 1984
    const-string v3, "STATUSBAR-PhoneStatusBar"

    const-string v4, "Mini Controller text scroll : ON"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v0

    .line 1986
    .local v0, N:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1987
    .local v2, miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 1988
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1989
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    sub-int v4, v0, v1

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v3

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    .line 1987
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1991
    :cond_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mMiniControllerTextIsScrolling:Z

    .line 1996
    .end local v0           #N:I
    .end local v1           #i:I
    .end local v2           #miniController:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPLMNLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setSelected(Z)V

    .line 1999
    const-string v3, "STATUSBAR-PhoneStatusBar"

    const-string v4, "performExpand()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2001
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    .line 2002
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    .line 2003
    const/16 v3, -0x2711

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2008
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_5

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useStatusBarWorldClock:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClock:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setClickable(Z)V

    .line 2012
    :cond_5
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->getChildCount()I

    move-result v3

    if-eqz v3, :cond_6

    .line 2013
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQuickSettingView:Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingPanel;->startScrollAnimation()V

    .line 2018
    :cond_6
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showStatusBarHelp:Z

    if-eqz v3, :cond_0

    .line 2019
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->show(Z)V

    goto/16 :goto_0
.end method

.method performFling(IFZ)V
    .locals 8
    .parameter "y"
    .parameter "vel"
    .parameter "always"

    .prologue
    const/16 v7, 0x64

    const/high16 v6, 0x3f80

    const/4 v5, 0x0

    .line 2206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 2208
    int-to-float v2, p1

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 2209
    iput p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 2213
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpanded:Z

    if-eqz v2, :cond_3

    .line 2214
    if-nez p3, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 2220
    :cond_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 2221
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 2222
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 2256
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2257
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    .line 2258
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 2259
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 2260
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2261
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2262
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2263
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->stopTracking()V

    .line 2264
    return-void

    .line 2227
    .end local v0           #now:J
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 2228
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 2229
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_0

    .line 2233
    :cond_3
    if-nez p3, :cond_4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_4

    int-to-float v2, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandMinDisplayFraction:F

    sub-float v4, v6, v4

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingCollapseMinVelocityPx:F

    neg-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_5

    .line 2239
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 2240
    cmpg-float v2, p2, v5

    if-gez v2, :cond_1

    .line 2241
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_0

    .line 2247
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCollapseAccelPx:F

    neg-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 2248
    cmpl-float v2, p2, v5

    if-lez v2, :cond_1

    .line 2249
    iput v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    goto :goto_0
.end method

.method postStartTracing()V
    .locals 4

    .prologue
    .line 3323
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStartTracing:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3324
    return-void
.end method

.method prepareTracking(IZ)V
    .locals 6
    .parameter "y"
    .parameter "opening"

    .prologue
    const/16 v5, 0x65

    const/16 v3, 0x64

    const/4 v4, 0x1

    .line 2171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    .line 2173
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    .line 2174
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2175
    if-eqz p2, :cond_0

    .line 2176
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandAccelPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimAccel:F

    .line 2177
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mFlingExpandMinVelocityPx:F

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimVel:F

    .line 2178
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    .line 2179
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimY:F

    float-to-int v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 2180
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 2181
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingReveal:Z

    .line 2182
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2183
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2185
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimLastTime:J

    .line 2186
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    .line 2187
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 2188
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 2190
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedVisible()V

    .line 2199
    .end local v0           #now:J
    :goto_0
    return-void

    .line 2193
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-eqz v2, :cond_1

    .line 2194
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    .line 2195
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2197
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mViewDelta:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto :goto_0
.end method

.method public removeIcon(Ljava/lang/String;II)V
    .locals 1
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 913
    return-void
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 2
    .parameter "key"

    .prologue
    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    .line 1112
    .local v0, old:Lcom/android/internal/statusbar/StatusBarNotification;
    if-eqz v0, :cond_1

    .line 1115
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v1, :cond_0

    .line 1116
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/Ticker;->removeEntry(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1120
    :cond_0
    const/16 v1, -0x2710

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    .line 1122
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimating:Z

    if-nez v1, :cond_1

    .line 1123
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 1127
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1128
    return-void
.end method

.method removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 6
    .parameter "key"

    .prologue
    .line 1610
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/NotificationData;->remove(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v0

    .line 1611
    .local v0, entry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v0, :cond_0

    .line 1612
    const-string v3, "PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeNotification for unknown key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    const/4 v3, 0x0

    .line 1635
    :goto_0
    return-object v3

    .line 1617
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    invoke-virtual {v3}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1618
    const-string v3, "STATUSBAR-PhoneStatusBar"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "REMOVE:MiniCon-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v5, v5, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v5, v5, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1620
    .local v1, expandedParent:Landroid/view/ViewGroup;
    if-eqz v1, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1626
    .end local v1           #expandedParent:Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 1631
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1632
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 1635
    :cond_2
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    goto :goto_0

    .line 1623
    :cond_3
    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1624
    .local v2, rowParent:Landroid/view/ViewGroup;
    if-eqz v2, :cond_1

    iget-object v3, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method removePlmnString()V
    .locals 3

    .prologue
    .line 3238
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v1, :cond_0

    .line 3239
    const/4 v1, 0x0

    const v2, 0x10a0001

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 3241
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 3242
    .local v0, count:I
    if-nez v0, :cond_0

    .line 3243
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    .line 3247
    .end local v0           #count:I
    :cond_0
    return-void
.end method

.method setCarrierLabelVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 2770
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    const/16 v2, 0x12

    if-le v1, v2, :cond_1

    .line 2771
    if-eqz p1, :cond_0

    .line 2772
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    .line 2779
    :goto_0
    if-eqz p1, :cond_2

    .line 2780
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    .line 2784
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setVisibility(I)V

    .line 2786
    return-void

    .line 2774
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    goto :goto_0

    .line 2777
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    goto :goto_0

    .line 2782
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    goto :goto_1

    .line 2784
    :cond_3
    const/16 v0, 0x8

    goto :goto_2
.end method

.method public setHardKeyboardStatus(ZZ)V
    .locals 0
    .parameter "available"
    .parameter "enabled"

    .prologue
    .line 2431
    return-void
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 0
    .parameter "token"
    .parameter "vis"
    .parameter "backDisposition"

    .prologue
    .line 2429
    return-void
.end method

.method public setLightsOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    .line 2395
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLightsOn("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2396
    if-eqz p1, :cond_0

    .line 2397
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    and-int/lit8 v0, v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(I)V

    .line 2401
    :goto_0
    return-void

    .line 2399
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    or-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public setMaxBrightness(I)V
    .locals 1
    .parameter "maxLevel"

    .prologue
    .line 3489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightness:Lcom/android/systemui/statusbar/policy/BrightnessController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/BrightnessController;->setMaxBrightness(I)V

    .line 3490
    return-void
.end method

.method setNotificationIconVisibility(ZI)V
    .locals 4
    .parameter "visible"
    .parameter "anim"

    .prologue
    .line 2790
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getVisibility()I

    move-result v0

    .line 2791
    .local v0, old:I
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 2792
    .local v1, v:I
    :goto_0
    if-eq v0, v1, :cond_0

    .line 2793
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->setVisibility(I)V

    .line 2794
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadAnim(ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/IconMerger;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2796
    :cond_0
    return-void

    .line 2791
    .end local v1           #v:I
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setSystemUiVisibility(I)V
    .locals 4
    .parameter "vis"

    .prologue
    .line 2374
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 2375
    .local v2, old:I
    xor-int v0, p1, v2

    .line 2377
    .local v0, diff:I
    if-eqz v0, :cond_2

    .line 2378
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSystemUiVisibility:I

    .line 2380
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    .line 2381
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 2382
    .local v1, lightsOut:Z
    :goto_0
    if-eqz v1, :cond_0

    .line 2383
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse()V

    .line 2385
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v3, :cond_1

    .line 2386
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setLowProfile(Z)V

    .line 2390
    .end local v1           #lightsOut:Z
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyUiVisibilityChanged()V

    .line 2392
    :cond_2
    return-void

    .line 2381
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public showCallOnGoingView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 3438
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 3439
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    .line 3440
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    const v2, 0x7f0201ca

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3442
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 3443
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 3445
    .local v0, vglp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCallOnGoingView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3447
    .end local v0           #vglp:Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void
.end method

.method public showClock(Z)V
    .locals 3
    .parameter "show"

    .prologue
    .line 1684
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const v2, 0x7f0f0030

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1685
    .local v0, clock:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1686
    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1688
    :cond_0
    return-void

    .line 1686
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method showPlmnString()V
    .locals 4

    .prologue
    .line 3216
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCarrierLabel:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPlmnDefault:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3220
    const/4 v1, 0x1

    const/high16 v2, 0x10a

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setCarrierLabelVisibility(ZI)V

    .line 3223
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationIcons:Lcom/android/systemui/statusbar/phone/IconMerger;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->doNotDisturbIconShow:Z

    if-eqz v1, :cond_1

    .line 3224
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 3225
    .local v0, mPlmnHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3234
    .end local v0           #mPlmnHandler:Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    .line 376
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWindowManager:Landroid/view/IWindowManager;

    .line 379
    invoke-super {p0}, Lcom/android/systemui/statusbar/StatusBar;->start()V

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNavigationBar()V

    .line 386
    new-instance v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIconPolicy:Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;

    .line 387
    return-void
.end method

.method stopTracking()V
    .locals 1

    .prologue
    .line 2130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTracking:Z

    .line 2131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2133
    return-void
.end method

.method public toggleNotificationPanel()V
    .locals 2

    .prologue
    .line 2969
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x3e9

    .line 2971
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2972
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 2973
    return-void

    .line 2969
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x3e8

    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 2

    .prologue
    .line 2961
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v1}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x3fd

    .line 2963
    .local v0, msg:I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->removeMessages(I)V

    .line 2964
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$H;->sendEmptyMessage(I)Z

    .line 2965
    return-void

    .line 2961
    .end local v0           #msg:I
    :cond_0
    const/16 v0, 0x3fc

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 1
    .parameter "showMenu"

    .prologue
    .line 2414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    if-eqz v0, :cond_0

    .line 2419
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(Z)V

    .line 2425
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLightsOn(Z)V

    .line 2426
    :cond_1
    return-void
.end method

.method updateDisplaySize()V
    .locals 2

    .prologue
    .line 2923
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2927
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedSize()V

    .line 2928
    return-void
.end method

.method updateExpandedInvisiblePosition()V
    .locals 3

    .prologue
    .line 2799
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    if-eqz v0, :cond_0

    .line 2800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 2802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2803
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2806
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_1

    .line 2807
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v1, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2808
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2810
    :cond_1
    return-void
.end method

.method updateExpandedSize()V
    .locals 4

    .prologue
    .line 2932
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2933
    const-string v1, "STATUSBAR-PhoneStatusBar"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateExpandedSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v3, 0x320

    if-lt v0, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2938
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    if-eqz v0, :cond_0

    .line 2939
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2940
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedHeight(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2941
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v0, :cond_2

    .line 2942
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedInvisiblePosition()V

    .line 2951
    :cond_0
    :goto_1
    return-void

    .line 2933
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2944
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_1
.end method

.method updateExpandedViewPos(I)V
    .locals 12
    .parameter "expandedPosition"

    .prologue
    const/16 v11, -0x2710

    const/4 v7, 0x1

    .line 2819
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->getHeight()I

    move-result v3

    .line 2820
    .local v3, h:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2824
    .local v2, disph:I
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedVisible:Z

    if-nez v8, :cond_1

    .line 2825
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedInvisiblePosition()V

    .line 2912
    :cond_0
    :goto_0
    return-void

    .line 2831
    :cond_1
    const/16 v8, -0x2711

    if-ne p1, v8, :cond_6

    .line 2832
    move v6, v3

    .line 2845
    .local v6, pos:I
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iput v6, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2846
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    sub-int v9, v2, v3

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2847
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2849
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v8, :cond_0

    .line 2850
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getWindowVisibility()I

    move-result v8

    if-nez v8, :cond_a

    .line 2851
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCloseView:Lcom/android/systemui/statusbar/phone/CloseDragHandle;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/phone/CloseDragHandle;->getLocationInWindow([I)V

    .line 2852
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    aget v0, v8, v7

    .line 2855
    .local v0, closePos:I
    sget-boolean v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v8

    if-eqz v8, :cond_9

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    :goto_2
    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    .line 2858
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    invoke-virtual {v8, v9}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2859
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPositionTmp:[I

    aget v8, v8, v7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedContents:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v9

    add-int v1, v8, v9

    .line 2861
    .local v1, contentsBottom:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v9, v6

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v10, v0

    sub-int/2addr v9, v10

    sub-int/2addr v9, v1

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2879
    .end local v0           #closePos:I
    .end local v1           #contentsBottom:I
    :goto_3
    move v4, v3

    .line 2880
    .local v4, max:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-le v8, v4, :cond_3

    .line 2881
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2883
    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .line 2884
    .local v5, min:I
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ge v8, v5, :cond_4

    .line 2885
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2888
    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingView:Lcom/android/systemui/statusbar/phone/TrackingView;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/TrackingView;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    if-le v8, v3, :cond_b

    .line 2889
    .local v7, visible:Z
    :goto_4
    if-nez v7, :cond_5

    .line 2892
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    neg-int v9, v2

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 2894
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedDialog:Landroid/app/Dialog;

    invoke-virtual {v8}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2899
    if-eq p1, v11, :cond_0

    .line 2901
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->visibilityChanged(Z)V

    goto/16 :goto_0

    .line 2834
    .end local v4           #max:I
    .end local v5           #min:I
    .end local v6           #pos:I
    .end local v7           #visible:Z
    :cond_6
    if-ne p1, v11, :cond_7

    .line 2835
    iget v6, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTrackingPosition:I

    .restart local v6       #pos:I
    goto/16 :goto_1

    .line 2838
    .end local v6           #pos:I
    :cond_7
    if-gt p1, v2, :cond_8

    .line 2839
    move v6, p1

    .line 2843
    .restart local v6       #pos:I
    :goto_5
    sub-int v8, v2, v3

    sub-int/2addr v6, v8

    goto/16 :goto_1

    .line 2841
    .end local v6           #pos:I
    :cond_8
    move v6, v2

    .restart local v6       #pos:I
    goto :goto_5

    .line 2855
    .restart local v0       #closePos:I
    :cond_9
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotifications:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    goto :goto_2

    .line 2877
    .end local v0           #closePos:I
    :cond_a
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandedParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v9, v9, Landroid/util/DisplayMetrics;->heightPixels:I

    neg-int v9, v9

    iput v9, v8, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_3

    .line 2888
    .restart local v4       #max:I
    .restart local v5       #min:I
    :cond_b
    const/4 v7, 0x0

    goto :goto_4
.end method

.method public updateIcon(Ljava/lang/String;IILcom/android/internal/statusbar/StatusBarIcon;Lcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 2
    .parameter "slot"
    .parameter "index"
    .parameter "viewIndex"
    .parameter "old"
    .parameter "icon"

    .prologue
    .line 906
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 907
    .local v0, view:Lcom/android/systemui/statusbar/StatusBarIconView;
    invoke-virtual {v0, p5}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    .line 908
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)V
    .locals 22
    .parameter "key"
    .parameter "notification"

    .prologue
    .line 974
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/NotificationData;->findByKey(Landroid/os/IBinder;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v17

    .line 975
    .local v17, oldEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-nez v17, :cond_0

    .line 976
    const-string v4, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNotification for unknown key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    :goto_0
    return-void

    .line 980
    :cond_0
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    move-object/from16 v18, v0

    .line 981
    .local v18, oldNotification:Lcom/android/internal/statusbar/StatusBarNotification;
    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v0, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    move-object/from16 v16, v0

    .line 983
    .local v16, oldContentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v12, v4, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 1000
    .local v12, contentView:Landroid/widget/RemoteViews;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    if-eqz v4, :cond_4

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v4

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/statusbar/StatusBarNotification;->isOngoing()Z

    move-result v7

    if-ne v4, v7, :cond_4

    if-eqz v12, :cond_4

    if-eqz v16, :cond_4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {v16 .. v16}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v4

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v7

    if-ne v4, v7, :cond_4

    const/4 v13, 0x1

    .line 1009
    .local v13, contentsUnchanged:Z
    :goto_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v7, v4, Landroid/app/Notification;->when:J

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-wide v9, v4, Landroid/app/Notification;->when:J

    cmp-long v4, v7, v9

    if-nez v4, :cond_5

    move-object/from16 v0, p2

    iget v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    move-object/from16 v0, v18

    iget v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->priority:I

    if-ne v4, v7, :cond_5

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v4, v4, Landroid/app/Notification;->defaults:I

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v7, v7, Landroid/app/Notification;->defaults:I

    if-ne v4, v7, :cond_5

    const/16 v19, 0x1

    .line 1016
    .local v19, orderUnchanged:Z
    :goto_2
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    if-eqz v4, :cond_6

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v7, v7, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v21, 0x1

    .line 1021
    .local v21, updateTicker:Z
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1022
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 1023
    .local v20, rowParent:Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_7

    const/4 v15, 0x1

    .line 1034
    .local v15, isFirstAnyway:Z
    :goto_4
    if-eqz v13, :cond_10

    if-nez v19, :cond_1

    if-eqz v15, :cond_10

    .line 1036
    :cond_1
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1040
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseMiniCon:Z

    if-eqz v4, :cond_c

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/statusbar/StatusBarNotification;->isMiniCon()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 1041
    const-string v4, "STATUSBAR-PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UPDATE:MiniCon-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget-object v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v8, Landroid/app/Notification;->twQuickPanelEvent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->expanded:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    .line 1048
    :goto_5
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v5, v4, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 1049
    .local v5, contentIntent:Landroid/app/PendingIntent;
    if-eqz v5, :cond_d

    .line 1050
    new-instance v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;

    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$NotificationClicker;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/app/PendingIntent;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1054
    .local v3, listener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1061
    .end local v3           #listener:Landroid/view/View$OnClickListener;
    :goto_6
    new-instance v6, Lcom/android/internal/statusbar/StatusBarIcon;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v8, v4, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v9, v4, Landroid/app/Notification;->iconLevel:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v10, v4, Landroid/app/Notification;->number:I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v11, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;IIILjava/lang/CharSequence;)V

    .line 1065
    .local v6, ic:Lcom/android/internal/statusbar/StatusBarIcon;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->icon:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/StatusBarIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1066
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t update icon: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationError(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1077
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :catch_0
    move-exception v14

    .line 1079
    .local v14, e:Ljava/lang/RuntimeException;
    const-string v4, "PhoneStatusBar"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Couldn\'t reapply views for package "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v12}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1080
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1081
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 1091
    .end local v14           #e:Ljava/lang/RuntimeException;
    :goto_7
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationVetoButton(Landroid/view/View;Lcom/android/internal/statusbar/StatusBarNotification;)Landroid/view/View;

    .line 1094
    if-eqz v21, :cond_3

    .line 1096
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-nez v4, :cond_2

    .line 1097
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTicker:Lcom/android/systemui/statusbar/phone/Ticker;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/Ticker;->halt()V

    .line 1100
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->tick(Lcom/android/internal/statusbar/StatusBarNotification;)V

    .line 1104
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 1105
    const/16 v4, -0x2710

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandedViewPos(I)V

    goto/16 :goto_0

    .line 1000
    .end local v13           #contentsUnchanged:Z
    .end local v15           #isFirstAnyway:Z
    .end local v19           #orderUnchanged:Z
    .end local v20           #rowParent:Landroid/view/ViewGroup;
    .end local v21           #updateTicker:Z
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 1009
    .restart local v13       #contentsUnchanged:Z
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 1016
    .restart local v19       #orderUnchanged:Z
    :cond_6
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 1023
    .restart local v20       #rowParent:Landroid/view/ViewGroup;
    .restart local v21       #updateTicker:Z
    :cond_7
    const/4 v15, 0x0

    goto/16 :goto_4

    .line 1025
    .end local v20           #rowParent:Landroid/view/ViewGroup;
    :cond_8
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 1026
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 1027
    .restart local v20       #rowParent:Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_9

    const/4 v15, 0x1

    .restart local v15       #isFirstAnyway:Z
    :goto_8
    goto/16 :goto_4

    .end local v15           #isFirstAnyway:Z
    :cond_9
    const/4 v15, 0x0

    goto :goto_8

    .line 1029
    .end local v20           #rowParent:Landroid/view/ViewGroup;
    :cond_a
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v20

    check-cast v20, Landroid/view/ViewGroup;

    .line 1030
    .restart local v20       #rowParent:Landroid/view/ViewGroup;
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_b

    const/4 v15, 0x1

    .restart local v15       #isFirstAnyway:Z
    :goto_9
    goto/16 :goto_4

    .end local v15           #isFirstAnyway:Z
    :cond_b
    const/4 v15, 0x0

    goto :goto_9

    .line 1045
    .restart local v15       #isFirstAnyway:Z
    :cond_c
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    move-object/from16 v0, v17

    iget-object v7, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->content:Landroid/view/View;

    invoke-virtual {v12, v4, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    goto/16 :goto_5

    .line 1056
    .restart local v5       #contentIntent:Landroid/app/PendingIntent;
    :cond_d
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_6

    .line 1070
    .restart local v6       #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_e
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v4, v4, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_f

    .line 1071
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p2

    iget-object v7, v0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget-object v7, v7, Landroid/app/Notification;->largeIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_7

    .line 1073
    :cond_f
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    const/4 v7, 0x0

    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1074
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->largeIcon:Landroid/widget/ImageView;

    const/4 v7, 0x4

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    .line 1085
    .end local v5           #contentIntent:Landroid/app/PendingIntent;
    .end local v6           #ic:Lcom/android/internal/statusbar/StatusBarIcon;
    :cond_10
    invoke-virtual/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeNotificationViews(Landroid/os/IBinder;)Lcom/android/internal/statusbar/StatusBarNotification;

    .line 1086
    invoke-virtual/range {p0 .. p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotificationViews(Landroid/os/IBinder;Lcom/android/internal/statusbar/StatusBarNotification;)Lcom/android/systemui/statusbar/StatusBarIconView;

    goto/16 :goto_7
.end method

.method protected updateRecentsPanel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 764
    const/4 v3, 0x0

    .line 765
    .local v3, visible:Z
    const/4 v1, 0x0

    .line 766
    .local v1, recentTasksList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    if-eqz v4, :cond_0

    .line 767
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->isShowing()Z

    move-result v3

    .line 768
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Landroid/view/WindowManagerImpl;->removeView(Landroid/view/View;)V

    .line 769
    if-eqz v3, :cond_0

    .line 770
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->getRecentTasksList()Ljava/util/ArrayList;

    move-result-object v1

    .line 775
    :cond_0
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 777
    .local v2, tmpRoot:Landroid/widget/LinearLayout;
    sget-boolean v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v4, :cond_2

    .line 778
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030031

    invoke-virtual {v4, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    .line 785
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setRecentTasksLoader(Lcom/android/systemui/recent/RecentTasksLoader;)V

    .line 786
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentTasksLoader:Lcom/android/systemui/recent/RecentTasksLoader;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentTasksLoader;->setRecentsPanel(Lcom/android/systemui/recent/RecentsPanelView;)V

    .line 787
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    new-instance v5, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;

    const/16 v6, 0x3fd

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-direct {v5, p0, v6, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$TouchOutsideListener;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;ILcom/android/systemui/recent/RecentsPanelView;)V

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 789
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/RecentsPanelView;->setVisibility(I)V

    .line 790
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4}, Lcom/android/systemui/recent/RecentsPanelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getRecentsLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 792
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, v5, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 793
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    invoke-virtual {v4, p0}, Lcom/android/systemui/recent/RecentsPanelView;->setBar(Lcom/android/systemui/statusbar/StatusBar;)V

    .line 794
    if-eqz v3, :cond_1

    .line 795
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v8, v1}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZLjava/util/ArrayList;)V

    .line 798
    :cond_1
    return-void

    .line 781
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03001a

    invoke-virtual {v4, v5, v2, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recent/RecentsPanelView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;

    goto :goto_0
.end method

.method updateResources()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3262
    iget-object v0, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    .line 3263
    .local v0, context:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3265
    .local v1, res:Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3266
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3267
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090007

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3269
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3270
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3271
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3272
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3273
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;

    invoke-virtual {v2, v5, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 3274
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNoNotificationsText:Landroid/widget/TextView;

    const v3, 0x7f09000e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3275
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mOngoingNotificationText:Landroid/widget/TextView;

    const v3, 0x7f09000f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3276
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mLatestNotificationText:Landroid/widget/TextView;

    const v3, 0x7f090010

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3277
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mSettingsButtonText:Landroid/widget/TextView;

    const v3, 0x7f090016

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadDimens()V

    .line 3280
    return-void
.end method

.method protected updateStatusBarHelpView()V
    .locals 4

    .prologue
    .line 724
    const/4 v0, 0x0

    .line 725
    .local v0, visible:Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    if-eqz v1, :cond_0

    .line 726
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->isShowing()Z

    move-result v0

    .line 727
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->show(Z)V

    .line 729
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const v2, 0x7f03002a

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    .line 731
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    iput-object p0, v1, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->mService:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 732
    if-eqz v0, :cond_1

    .line 733
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarHelpView:Lcom/android/systemui/statusbar/phone/StatusBarHelpView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarHelpView;->show(Z)V

    .line 735
    :cond_1
    return-void
.end method

.method vibrate()V
    .locals 3

    .prologue
    .line 3327
    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    const-string v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 3329
    .local v0, vib:Landroid/os/Vibrator;
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 3330
    return-void
.end method

.method visibilityChanged(Z)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 2984
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPanelSlightlyVisible:Z

    if-eq v0, p1, :cond_0

    .line 2985
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPanelSlightlyVisible:Z

    .line 2987
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBar;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->onPanelRevealed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2992
    :cond_0
    :goto_0
    return-void

    .line 2988
    :catch_0
    move-exception v0

    goto :goto_0
.end method
