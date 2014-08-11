.class public Lcom/android/systemui/statusbar/policy/FaceDetectionController;
.super Landroid/content/BroadcastReceiver;
.source "FaceDetectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;
    }
.end annotation


# static fields
.field private static final ACTION_FACE_DETECTION_FAILED:Ljava/lang/String; = "faceservice_failed"

.field private static final ACTION_FACE_DETECTION_SCR_OFF:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final ACTION_FACE_DETECTION_STARTED:Ljava/lang/String; = "faceservice_enabled"

.field private static final ACTION_FACE_DETECTION_STOPPED:Ljava/lang/String; = "faceservice_disabled"

.field private static final TAG:Ljava/lang/String; = "StatusBar.FaceDetectionController"

.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-FaceDetectionController"

.field private static final URI_SMART_STAY:Ljava/lang/String; = "intelligent_sleep_mode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableDetect:Z

.field private mFailIconId:I

.field private mIconViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/app/StatusBarManager;

.field private mSmartStayObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

.field private mStartIconId:I

.field private mStopIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 49
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    .line 52
    const v2, 0x7f020128

    iput v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStartIconId:I

    .line 53
    const v2, 0x7f02012a

    iput v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    .line 54
    const v2, 0x7f020129

    iput v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mFailIconId:I

    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    .line 79
    const-string v2, "statusbar"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/StatusBarManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    .line 80
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v3, "face"

    iget v4, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v3, "face"

    invoke-virtual {v2, v3, v6}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 83
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 85
    .local v1, isSmartStayMode:I
    if-ne v1, v7, :cond_0

    .line 86
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    .line 90
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 92
    new-instance v2, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;-><init>(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "intelligent_sleep_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mSmartStayObserver:Lcom/android/systemui/statusbar/policy/FaceDetectionController$SmartStayObserver;

    invoke-virtual {v2, v3, v6, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "faceservice_enabled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    const-string v2, "faceservice_disabled"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v2, "faceservice_failed"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void

    .line 88
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/FaceDetectionController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/FaceDetectionController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FaceDetectionController;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    return-void
.end method

.method private final updateFaceIconVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mService:Landroid/app/StatusBarManager;

    const-string v1, "face"

    invoke-virtual {v0, v1, p1}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 120
    return-void
.end method

.method private updateIconView(IZ)V
    .locals 4
    .parameter "iconId"
    .parameter "visible"

    .prologue
    .line 110
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 111
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 112
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 113
    .local v2, v:Landroid/widget/ImageView;
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 114
    if-eqz p2, :cond_0

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_0
    const/16 v3, 0x8

    goto :goto_1

    .line 116
    .end local v2           #v:Landroid/widget/ImageView;
    :cond_1
    return-void
.end method


# virtual methods
.method public addIconView(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mIconViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 123
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 124
    .local v0, action:Ljava/lang/String;
    const-string v1, "StatusBar.FaceDetectionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mEnableDetect : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mEnableDetect:Z

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "faceservice_enabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 127
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStartIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 128
    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateFaceIconVisibility(Z)V

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    const-string v1, "faceservice_disabled"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    .line 131
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateFaceIconVisibility(Z)V

    goto :goto_0

    .line 132
    :cond_2
    const-string v1, "faceservice_failed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 133
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mFailIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    goto :goto_0

    .line 134
    :cond_3
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    iget v1, p0, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->mStopIconId:I

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/statusbar/policy/FaceDetectionController;->updateIconView(IZ)V

    goto :goto_0
.end method
