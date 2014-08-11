.class public Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;
.super Landroid/widget/FrameLayout;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/tablet/StatusBarPanel;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparator;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;,
        Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ACTION_MINI_MODE:Ljava/lang/String; = "com.samsung.action.MINI_MODE_SERVICE"

.field private static final CATEGORY_MINI_MODE:Ljava/lang/String; = "com.samsung.category.MINI_MODE_LAUNCHER"

.field private static final DEBUG:Z = false

.field private static final DEBUG_ANIM:Z = false

.field private static final DEBUG_DRAG:Z = false

.field private static final DRAG_LABEL:Ljava/lang/String; = "MiniAppDragItem"

.field private static final DRAG_TEXT:Ljava/lang/String; = null

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final LONG_PRESS_TIMEOUT:I = 0xfa

.field private static final MESSAGE_APP_ICON_LONG_PRESS:I = 0x2

.field private static final MESSAGE_APP_PREVIEW_LONG_PRESS:I = 0x3

.field private static final MESSAGE_FOCUS_CHANGED:I = 0x1

.field private static final MILLISECOND_SCROLL_AFTER_CLICK_DELAY:I = 0xc8

.field private static final MILLISECOND_SCROLL_DELAY:I = 0x1f4

.field private static final MINIMODETRAY_FOCUSED_TEXT:I = -0xd74401

.field private static final MINIMODETRAY_TEXT:I = -0x1

.field private static final NUM_HW_TOUCH_SOUND_CHANNELS:I = 0x1

.field public static final PREIVEW_ANIMATION_DURATION:I = 0x190

.field public static final PREIVEW_ANIMATION_START_OFFSET:I = 0x96

.field private static final SUPPORT_DEFAULT_ICON_LIST_ORDER:Z = false

.field private static final SUPPORT_MULTIWINDOW:Z = false

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "MiniModeAppsPanel"


# instance fields
.field private mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundProtector:Landroid/view/View;

.field private mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCancelButton:Landroid/widget/Button;

.field private mChosenApps:[Ljava/lang/String;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mComponentDescriptionsOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

.field mCurrentDragAppIcon:Landroid/widget/ImageView;

.field private mCurrentDraggingView:Landroid/view/View;

.field private mDoneButton:Landroid/widget/Button;

.field private mEditButton:Landroid/widget/Button;

.field private mEditPanelUIEnabled:Z

.field private mEmptyAppsButton:Landroid/widget/TextView;

.field private mEmptyView:Landroid/view/View;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mIconDpi:I

.field private mIsScrollDelayed:Z

.field private mIsScrollLeft:Z

.field private mLastLocale:Ljava/util/Locale;

.field private mMiniAppBgHeight:I

.field private mMiniAppsBG:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

.field private mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

.field private mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

.field private mMiniAppsScroller:Landroid/view/ViewGroup;

.field private mMiniAppsTray:Landroid/widget/FrameLayout;

.field private mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

.field private mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

.field mOnDragging:Z

.field private mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

.field private mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

.field mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

.field private mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

.field private mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

.field private mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolId:[I

.field private mStatusBarHandler:Landroid/os/Handler;

.field private mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

.field private mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

.field private mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

.field private mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

.field private mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 667
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 668
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 671
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 133
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 143
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 147
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-direct {v3, p0, v5, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;II)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    .line 148
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    .line 151
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 152
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 153
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 154
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 155
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 156
    iput v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 158
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 159
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 160
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 161
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 162
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 163
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    .line 165
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 168
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    .line 171
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    .line 174
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    .line 177
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    .line 180
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    .line 183
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    .line 186
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    .line 189
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    .line 192
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    .line 193
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    .line 196
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    .line 199
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    .line 202
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 205
    iput-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDragAppIcon:Landroid/widget/ImageView;

    .line 220
    const/4 v3, 0x2

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    .line 521
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$1;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    .line 541
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$2;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    .line 596
    new-instance v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$3;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 673
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 674
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 678
    .local v2, xlarge:Z
    :cond_0
    if-eqz v2, :cond_1

    const/16 v3, 0xa0

    :goto_0
    iput v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIconDpi:I

    .line 679
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    .line 682
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 683
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 684
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 686
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 688
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initComponentDescriptionOrder()V

    .line 690
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initComponentDescriptions()V

    .line 692
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initMiniModeAppsPanelSound()V

    .line 693
    return-void

    .line 678
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getComponentDescriptionIndex(Landroid/content/ComponentName;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconLongClickListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemLongClickListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemLongClickListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Ljava/util/Locale;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mLastLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateImageOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->updateTextOfMiniModeAppsPanel()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->openEditPanel()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->save()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    return v0
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->playTrayCloseSound()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return v0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollDelayed:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    return v0
.end method

.method static synthetic access$3402(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mIsScrollLeft:Z

    return p1
.end method

.method static synthetic access$3500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContainerScroller:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ContainerScrollRunnable;

    return-object v0
.end method

.method static synthetic access$3600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->DRAG_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Lcom/sec/minimode/manager/MiniModeAppManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/view/DragEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method private adjustTrayPadding()V
    .locals 7

    .prologue
    const v6, 0x7f0b0062

    const/4 v5, 0x0

    .line 2037
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int v0, v2, v3

    .line 2038
    .local v0, containerWidth:I
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 2040
    .local v1, scrollerWidth:I
    if-ge v0, v1, :cond_0

    .line 2041
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    sub-int v3, v1, v0

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 2045
    :goto_0
    return-void

    .line 2043
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method private clearItemsAnimation()V
    .locals 4

    .prologue
    .line 1422
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 1423
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1424
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1425
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 1423
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1427
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const v3, 0x7f0f005c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 1428
    return-void
.end method

.method private closeEditPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2055
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2056
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2057
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2058
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2059
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2060
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2061
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2063
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 2064
    return-void
.end method

.method private createPreviewAnimation()Landroid/view/animation/AnimationSet;
    .locals 11

    .prologue
    const/4 v5, 0x1

    const/high16 v2, 0x3f80

    .line 1000
    new-instance v9, Landroid/view/animation/AnimationSet;

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1004
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v1, 0x3f9c28f6

    const v3, 0x3f99999a

    const v6, 0x3ee147ae

    const v8, 0x3f0a3d71

    move v4, v2

    move v7, v5

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 1005
    .local v0, scaleZoom:Landroid/view/animation/ScaleAnimation;
    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1006
    new-instance v10, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3e4ccccd

    invoke-direct {v10, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1007
    .local v10, fadeIn:Landroid/view/animation/AlphaAnimation;
    invoke-virtual {v9, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1008
    const-wide/16 v1, 0x190

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1009
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 1010
    const-wide/16 v1, 0x96

    invoke-virtual {v9, v1, v2}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1011
    return-object v9
.end method

.method private findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .parameter "name"

    .prologue
    .line 1969
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1970
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1975
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private findComponentDescriptionByName(Landroid/content/ComponentName;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .locals 3
    .parameter "name"

    .prologue
    .line 629
    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 632
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getComponentDescriptionIndex(Landroid/content/ComponentName;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method private initChosenApps()V
    .locals 1

    .prologue
    .line 1979
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;->load(Ljava/io/File;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 1986
    return-void
.end method

.method private initComponentDescriptionOrder()V
    .locals 7

    .prologue
    .line 618
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    .line 620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 623
    .local v3, mComponentNames:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 624
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptionsOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 623
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 626
    .end local v4           #str:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private initComponentDescriptions()V
    .locals 9

    .prologue
    .line 896
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    if-eqz v6, :cond_1

    .line 952
    :cond_0
    return-void

    .line 903
    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 904
    .local v3, launcherIntent:Landroid/content/Intent;
    const-string v6, "com.samsung.category.MINI_MODE_LAUNCHER"

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 905
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->pm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v6, v3, v7}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    .line 907
    .local v4, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 909
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 910
    .local v5, r:Landroid/content/pm/ResolveInfo;
    const/4 v0, 0x0

    .line 911
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v5, :cond_2

    .line 913
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {v0, p0, v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :goto_1
    if-eqz v0, :cond_2

    .line 923
    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 914
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :catch_0
    move-exception v1

    .line 915
    .local v1, e:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 916
    .restart local v0       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    const-string v6, "MiniModeAppsPanel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initComponentDescriptions() : exception occurs! while loading mini app (serviceInfo="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private initGestureDetector()V
    .locals 5

    .prologue
    .line 884
    new-instance v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$10;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    .line 891
    .local v1, listener:Landroid/view/GestureDetector$SimpleOnGestureListener;
    const/4 v0, 0x1

    .line 892
    .local v0, ignoreMultitouch:Z
    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mGestureDetector:Landroid/view/GestureDetector;

    .line 893
    return-void
.end method

.method private initMiniModeAppsPanelSound()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 956
    new-instance v0, Landroid/media/SoundPool;

    invoke-direct {v0, v5, v5, v4}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    .line 957
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f050001

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v4

    .line 958
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const v3, 0x7f050002

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v1

    aput v1, v0, v5

    .line 960
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    .line 961
    return-void
.end method

.method private isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2088
    :try_start_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 2100
    :cond_0
    :goto_0
    return v2

    .line 2090
    :cond_1
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2092
    .local v1, label:Ljava/lang/String;
    const-string v4, "MiniAppDragItem"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    .line 2100
    goto :goto_0

    .line 2095
    .end local v1           #label:Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 2097
    goto :goto_0
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 1989
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 1997
    :cond_0
    :goto_0
    return v4

    .line 1992
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1993
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1992
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1997
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isMiinAppsEditPanelShowing()Z
    .locals 1

    .prologue
    .line 2080
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 2081
    const/4 v0, 0x0

    .line 2083
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    goto :goto_0
.end method

.method private openEditPanel()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 2068
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 2069
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2070
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2071
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2072
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 2074
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 2075
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2077
    :cond_1
    return-void
.end method

.method private playHwTouchSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 965
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 968
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 979
    :goto_0
    return-void

    .line 970
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 971
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 972
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 973
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    aget v1, v1, v4

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 968
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private playTrayCloseSound()V
    .locals 10

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 983
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v7

    .line 986
    .local v7, mRingerMode:I
    packed-switch v7, :pswitch_data_0

    .line 997
    :goto_0
    return-void

    .line 988
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v9, v0

    .line 989
    .local v9, streamVolume:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    int-to-float v8, v0

    .line 990
    .local v8, streamMaxVolume:F
    div-float v2, v9, v8

    .line 991
    .local v2, adjustmentValue:F
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPool:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mSoundPoolId:[I

    const/4 v3, 0x1

    aget v1, v1, v3

    const/high16 v6, 0x3f80

    move v3, v2

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_0

    .line 986
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private refreshApplicationList()V
    .locals 13

    .prologue
    const v12, 0x7f03000e

    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 1017
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->clearItemsAnimation()V

    .line 1019
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1021
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1023
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->initChosenApps()V

    .line 1025
    const/4 v2, 0x0

    .line 1026
    .local v2, componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    check-cast v2, Ljava/util/ArrayList;

    .line 1027
    .restart local v2       #componentDescriptionsSortedByLabel:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;>;"
    new-instance v8, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescriptionComparatorByLabel;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-static {v2, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1030
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1031
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1032
    .local v7, view:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayIconOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayIconOnTouchListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1033
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1040
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayItemDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayItemDragListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 1041
    invoke-virtual {v7, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f030011

    invoke-static {v8, v10, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1045
    .local v5, preview:Landroid/view/View;
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewItemOnTouchListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PreviewItemOnTouchListener;

    invoke-virtual {v5, v8}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1046
    invoke-virtual {v5, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1048
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v8, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1051
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1052
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 1053
    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setPreview(Landroid/view/View;)V

    .line 1054
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    if-nez v8, :cond_0

    .line 1055
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setPreviewAnimation(Landroid/view/animation/AnimationSet;)V

    .line 1057
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateLabel()V

    .line 1058
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v9, :cond_1

    move v8, v9

    :goto_1
    invoke-virtual {v1, v8}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateResources(Z)V

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 1061
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v5           #preview:Landroid/view/View;
    .end local v7           #view:Landroid/view/View;
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-eqz v8, :cond_4

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v4, :cond_6

    aget-object v6, v0, v3

    .line 1063
    .local v6, str:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findComponentDescriptionByClassName(Ljava/lang/String;)Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    move-result-object v1

    .line 1064
    .restart local v1       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_3

    .line 1065
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1062
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1070
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v4           #len$:I
    .end local v6           #str:Ljava/lang/String;
    .local v3, i$:Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1071
    .restart local v1       #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    if-eqz v1, :cond_5

    .line 1072
    iget-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_3

    .line 1078
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8, v12, v11}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyView:Landroid/view/View;

    .line 1079
    return-void
.end method

.method private save()Z
    .locals 5

    .prologue
    .line 2001
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    .line 2003
    .local v2, str:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2004
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 2005
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 2003
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2008
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const-string v4, "EOF"

    aput-object v4, v2, v3

    .line 2010
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanelDataStorage;->store(Ljava/io/File;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2014
    const/4 v3, 0x1

    .line 2017
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private setCloseIconEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1416
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1417
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 1419
    :cond_0
    return-void
.end method

.method private setEmptyBtnVisibility()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2021
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 2022
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 2024
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2026
    :cond_0
    const/4 v0, 0x1

    .line 2032
    :cond_1
    :goto_0
    return v0

    .line 2028
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 2030
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateImageOfMiniModeAppsPanel()V
    .locals 6

    .prologue
    .line 875
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 876
    .local v0, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updateIconInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 878
    .end local v0           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 879
    .local v1, e:Ljava/lang/Exception;
    const-string v3, "MiniModeAppsPanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateTextOfMiniModeAppsPanel()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 846
    const v5, 0x7f0f0063

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 847
    .local v2, editBtn:Landroid/widget/Button;
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v5, :cond_0

    .line 848
    const v5, 0x7f0900df

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(I)V

    .line 849
    invoke-virtual {v2, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 853
    :cond_0
    const v5, 0x7f0f0060

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 854
    .local v4, emptyBtn:Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 855
    const v5, 0x7f0900dd

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 856
    invoke-virtual {v4, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 859
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0065

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 860
    .local v3, editPanelTitle:Landroid/widget/TextView;
    const v5, 0x7f0900dc

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(I)V

    .line 861
    invoke-virtual {v3, v8, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 863
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0067

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 864
    .local v1, doneBtn:Landroid/widget/Button;
    const v5, 0x7f0900de

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(I)V

    .line 865
    invoke-virtual {v1, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 867
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0066

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 868
    .local v0, cancelBtn:Landroid/widget/Button;
    const/high16 v5, 0x104

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(I)V

    .line 869
    invoke-virtual {v0, v8, v7}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 870
    return-void
.end method


# virtual methods
.method public closeMiniAppsPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1406
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1407
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 1408
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1410
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    .line 1411
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1412
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->closeEditPanel()V

    .line 1413
    return-void
.end method

.method public isInContentArea(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 645
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 646
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 647
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 648
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 649
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

.method public onClick(Landroid/view/View;)V
    .locals 14
    .parameter "view"

    .prologue
    .line 1082
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1085
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1086
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1087
    .local v1, cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v11

    const v12, 0x7f0f006b

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1088
    .local v7, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v0

    .line 1089
    .local v0, anim:Landroid/view/animation/AnimationSet;
    if-nez v0, :cond_0

    .line 1090
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 1093
    :cond_0
    if-eqz v0, :cond_1

    .line 1094
    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1097
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 1098
    .local v4, i:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v8

    .line 1099
    .local v8, previewWidth:I
    mul-int v10, v4, v8

    .line 1100
    .local v10, xOffsetAtLeft:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v11}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v11

    sub-int/2addr v11, v8

    div-int/lit8 v2, v11, 0x2

    .line 1102
    .local v2, centerX:I
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    sub-int v12, v10, v2

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 1103
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 1104
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 1139
    .end local v0           #anim:Landroid/view/animation/AnimationSet;
    .end local v1           #cd:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v2           #centerX:I
    .end local v4           #i:I
    .end local v7           #previewIcon:Landroid/widget/ImageView;
    .end local v8           #previewWidth:I
    .end local v10           #xOffsetAtLeft:I
    :cond_2
    :goto_0
    return-void

    .line 1109
    :cond_3
    if-eqz p1, :cond_2

    .line 1111
    move-object v9, p1

    .line 1112
    .local v9, v:Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1113
    .local v3, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v6

    .line 1118
    .local v6, name:Landroid/content/ComponentName;
    const/4 v5, 0x0

    .line 1119
    .local v5, intent:Landroid/content/Intent;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$3000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ServiceInfo;

    if-eqz v11, :cond_6

    .line 1121
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 1130
    :cond_4
    :goto_1
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v11, :cond_5

    .line 1131
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setClickable(Z)V

    .line 1133
    :cond_5
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1136
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1137
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    const/16 v12, 0x425

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 1123
    :cond_6
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v3}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$3000(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v11

    instance-of v11, v11, Landroid/content/pm/ActivityInfo;

    if-eqz v11, :cond_4

    .line 1125
    new-instance v11, Landroid/content/Intent;

    const-string v12, "com.samsung.action.MINI_MODE_SERVICE"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 1126
    const/high16 v11, 0x1000

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 697
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 701
    const v1, 0x7f0f005d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    .line 702
    const v1, 0x7f0f005e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 703
    const v1, 0x7f0f005b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 705
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f03000e

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 708
    .local v8, miniAppItemView:Landroid/view/View;
    const v1, 0x7f0f0061

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsTray:Landroid/widget/FrameLayout;

    .line 711
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f030010

    invoke-static {v1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    .line 717
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    iget v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    const/16 v5, 0x7e1

    const v6, 0x800028

    const/4 v7, -0x3

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 727
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x53

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 728
    const-string v1, "MiniModeAppsEditPanel"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 729
    const v1, 0x7f0d0011

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 730
    const-string v1, "com.android.systemui"

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 732
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/view/WindowManagerImpl;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 734
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0068

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    .line 735
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0069

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;

    .line 737
    const v1, 0x7f0f005c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    .line 739
    const v1, 0x7f0f0063

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    .line 741
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 742
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    .line 743
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$4;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 751
    :cond_0
    const v1, 0x7f0f0060

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    .line 752
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 753
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEmptyAppsButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$5;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 760
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0067

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    .line 761
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$6;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEdit:Landroid/widget/LinearLayout;

    const v2, 0x7f0f0066

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    .line 770
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCancelButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$7;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$7;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 779
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->createPreviewAnimation()Landroid/view/animation/AnimationSet;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    .line 789
    const v1, 0x7f0f0062

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    .line 790
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$8;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 804
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 805
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mCloseButton:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$9;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 823
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsScroller:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 824
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/HorizontalScrollView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mPanelEditContainerDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$PanelEditContainerDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/HorizontalScrollView;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 825
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppsBG:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mTrayBGDragListener:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$TrayBGDragListener;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 827
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->refreshApplicationList()V

    .line 829
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setEmptyBtnVisibility()Z

    .line 840
    new-instance v1, Lcom/sec/minimode/manager/MiniModeAppManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/minimode/manager/MiniModeAppManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    .line 841
    new-instance v1, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    .line 842
    iget-object v1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnMiniAppCloseCallback:Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/minimode/manager/MiniModeAppCallback;->setOnFocusChangedCallback(Lcom/sec/android/app/minimode/manager/MiniModeAppCallback$OnFocusChangedCallback;)V

    .line 843
    return-void

    :cond_2
    move v1, v3

    .line 742
    goto/16 :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "view"

    .prologue
    const/16 v7, 0x425

    const/4 v3, 0x1

    .line 1142
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Landroid/view/View;

    if-eqz v4, :cond_0

    .line 1143
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1144
    .local v2, v:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1145
    .local v0, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v1

    .line 1149
    .local v1, name:Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v5, v5, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v6, v6

    invoke-virtual {v4, v1, v5, v6}, Lcom/sec/minimode/manager/MiniModeAppManager;->startWithPosition(Landroid/content/ComponentName;II)V

    .line 1150
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    .line 1152
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse()V

    .line 1155
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 1156
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1160
    .end local v0           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    .end local v1           #name:Landroid/content/ComponentName;
    .end local v2           #v:Landroid/view/View;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 2049
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2050
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->adjustTrayPadding()V

    .line 2051
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "view"
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    .line 1187
    invoke-direct {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->isMiinAppsEditPanelShowing()Z

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1191
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1256
    :cond_0
    :goto_0
    return v8

    .line 1195
    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1196
    .local v2, msg:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1197
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0xfa

    invoke-virtual {v4, v2, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 1203
    .end local v2           #msg:Landroid/os/Message;
    :pswitch_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 1213
    :cond_1
    if-eqz p1, :cond_0

    .line 1215
    move-object v3, p1

    .line 1216
    .local v3, v:Landroid/view/View;
    const v4, 0x7f0f0059

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1218
    .local v0, appIcon:Landroid/widget/ImageView;
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 1222
    :pswitch_2
    const/16 v4, 0x7e

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1224
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1226
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_0

    .line 1232
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    if-eqz v4, :cond_0

    .line 1234
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;

    .line 1236
    .local v1, componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    invoke-virtual {v4, p2}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->calculatePosition(Landroid/view/MotionEvent;)V

    .line 1239
    iget-object v4, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniModeAppManager:Lcom/sec/minimode/manager/MiniModeAppManager;

    #getter for: Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;->access$2900(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v6, v6, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->x:F

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mAppPosition:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;

    iget v7, v7, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$MiniAppPosition;->y:F

    float-to-int v7, v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/sec/minimode/manager/MiniModeAppManager;->move(Landroid/content/ComponentName;II)V

    goto :goto_0

    .line 1247
    .end local v1           #componentDescription:Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$ComponentDescription;
    :pswitch_4
    const/16 v4, 0xff

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 1249
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mOnDragging:Z

    goto :goto_0

    .line 1191
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 1218
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public openMiniAppsPanel()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1396
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setCloseIconEnabled(Z)V

    .line 1397
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditPanelUIEnabled:Z

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mEditButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1400
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->setItemsAnimation(Z)V

    .line 1402
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter "bar"

    .prologue
    .line 663
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mBar:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    .line 664
    return-void
.end method

.method public setItemsAnimation(Z)V
    .locals 15
    .parameter "isShowAnim"

    .prologue
    .line 1264
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 1265
    .local v5, count:I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0061

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 1266
    .local v8, miniAppItemHeight:I
    add-int/lit8 v11, v5, -0x1

    mul-int/lit8 v9, v11, 0x28

    .line 1267
    .local v9, miniAppItemHideAnimDelay:I
    if-eqz p1, :cond_3

    .line 1268
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 1269
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1270
    .local v4, child:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    int-to-float v13, v8

    const/4 v14, 0x0

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1272
    .local v10, rotateItem:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v11, 0x10e

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1273
    mul-int/lit8 v11, v7, 0x28

    add-int/lit8 v11, v11, 0x3c

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1274
    invoke-virtual {v4, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1275
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1268
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1277
    .end local v4           #child:Landroid/view/View;
    .end local v10           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_0
    const v11, 0x7f0f005c

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1278
    .local v3, bg:Landroid/view/View;
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1279
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mMiniAppBgHeight:I

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1280
    .local v2, animation:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v11, 0x10e

    invoke-virtual {v2, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1281
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1282
    .local v0, alphaAni:Landroid/view/animation/AlphaAnimation;
    add-int/lit16 v11, v9, 0x14a

    int-to-long v11, v11

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1283
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1284
    .local v1, aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1285
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1286
    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1287
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1290
    const v11, 0x7f0f005f

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1291
    .local v6, emptyBtnContainer:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 1292
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1293
    invoke-virtual {v6, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1294
    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1297
    :cond_1
    new-instance v11, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$11;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1392
    :cond_2
    :goto_1
    return-void

    .line 1326
    .end local v0           #alphaAni:Landroid/view/animation/AlphaAnimation;
    .end local v1           #aniSet:Landroid/view/animation/AnimationSet;
    .end local v2           #animation:Landroid/view/animation/TranslateAnimation;
    .end local v3           #bg:Landroid/view/View;
    .end local v6           #emptyBtnContainer:Landroid/view/View;
    .end local v7           #i:I
    :cond_3
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_2
    if-ge v7, v5, :cond_4

    .line 1327
    iget-object v11, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1328
    .restart local v4       #child:Landroid/view/View;
    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1329
    new-instance v10, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    int-to-float v14, v8

    invoke-direct {v10, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1330
    .restart local v10       #rotateItem:Landroid/view/animation/TranslateAnimation;
    sub-int v11, v5, v7

    add-int/lit8 v11, v11, -0x1

    mul-int/lit8 v11, v11, 0x28

    int-to-long v11, v11

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 1331
    const-wide/16 v11, 0x10e

    invoke-virtual {v10, v11, v12}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1332
    invoke-virtual {v4, v10}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1333
    const/4 v11, 0x0

    invoke-virtual {v4, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1326
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1354
    .end local v4           #child:Landroid/view/View;
    .end local v10           #rotateItem:Landroid/view/animation/TranslateAnimation;
    :cond_4
    const v11, 0x7f0f005c

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1355
    .restart local v3       #bg:Landroid/view/View;
    const/4 v11, 0x4

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1356
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    invoke-direct {v2, v11, v12, v13, v14}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1357
    .restart local v2       #animation:Landroid/view/animation/TranslateAnimation;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1358
    .restart local v0       #alphaAni:Landroid/view/animation/AlphaAnimation;
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v11, 0x0

    invoke-direct {v1, v11}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1359
    .restart local v1       #aniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1360
    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1362
    const-wide/16 v11, 0x10e

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 1363
    int-to-long v11, v9

    invoke-virtual {v1, v11, v12}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    .line 1365
    new-instance v11, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$13;

    invoke-direct {v11, p0}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel$13;-><init>(Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;)V

    invoke-virtual {v1, v11}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1381
    invoke-virtual {v3, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1382
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Landroid/view/View;->setEnabled(Z)V

    .line 1385
    const v11, 0x7f0f005f

    invoke-virtual {p0, v11}, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1386
    .restart local v6       #emptyBtnContainer:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 1387
    const/4 v11, 0x4

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1388
    invoke-virtual {v6, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1389
    const/4 v11, 0x0

    invoke-virtual {v6, v11}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_1
.end method

.method public setStatusBarHandler(Landroid/os/Handler;)V
    .locals 0
    .parameter "h"

    .prologue
    .line 1260
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/MiniModeAppsPanel;->mStatusBarHandler:Landroid/os/Handler;

    .line 1261
    return-void
.end method
