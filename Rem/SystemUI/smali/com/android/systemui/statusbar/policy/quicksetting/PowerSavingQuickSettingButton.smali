.class public Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "PowerSavingQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;
    }
.end annotation


# static fields
.field private static final TW_TAG:Ljava/lang/String; = "STATUSBAR-PowerSavingController"

.field private static toastAlert:Landroid/widget/Toast;


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

.field private mState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 44
    const v3, 0x7f090091

    const v4, 0x7f020158

    const v5, 0x7f020157

    const v6, 0x7f020156

    move-object v0, p0

    move-object v1, p1

    move v8, v7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContext:Landroid/content/Context;

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    .line 55
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v0, v9

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setActivateStatus(I)V

    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v0, v1, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    :goto_1
    iput-boolean v9, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v0, v2, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    .line 60
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    move v9, v7

    .line 58
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->getMode()I

    move-result v0

    return v0
.end method

.method private canEnablePowerSaving()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 85
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_cpu_clock"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 86
    .local v1, cpu:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_display"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 87
    .local v2, display:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_background_colour"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 88
    .local v0, back:I
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "psm_haptic_feedback"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 92
    .local v3, haptic:I
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    const/4 v4, 0x1

    .line 94
    .local v4, retVal:Z
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    :cond_1
    return v4
.end method

.method private getMode()I
    .locals 3

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private setMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 105
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "psm_switch"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.POWERSAVING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 109
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 110
    return-void
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 69
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "psm_switch"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mPowerSavingObserver:Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton$PowerSavingObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public onClick(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    if-eq v0, p1, :cond_0

    .line 73
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->mState:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->canEnablePowerSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    const v1, 0x7f0900c1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    .line 75
    sget-object v0, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->toastAlert:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setActivateStatus(I)V

    .line 78
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/PowerSavingQuickSettingButton;->setMode(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
