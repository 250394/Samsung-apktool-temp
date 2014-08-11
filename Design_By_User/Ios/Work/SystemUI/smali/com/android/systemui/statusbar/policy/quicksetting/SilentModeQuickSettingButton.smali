.class public Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "SilentModeQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;


# static fields
.field private static mSoundProfile:I


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 51
    const v3, 0x7f090087

    const v4, 0x7f02015d

    const v5, 0x7f02015e

    const v7, 0x7f02015c

    const v8, 0x7f02015b

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 34
    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 37
    new-instance v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 60
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setSoundEffectsEnabled(Z)V

    .line 61
    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    .line 30
    sget v0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    sput p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    return p0
.end method


# virtual methods
.method public deinit()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 79
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 68
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    .line 69
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    sput v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->updateStatus()V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    const-string v2, "mAudioManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 4
    .parameter "state"

    .prologue
    .line 82
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick() - state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    const/4 v0, 0x0

    .line 86
    .local v0, soundProfile:I
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 87
    const/4 v0, 0x0

    .line 100
    :goto_0
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "activate()-S:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 102
    return-void

    .line 88
    :cond_0
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    if-nez v1, :cond_1

    .line 89
    const/4 v0, 0x2

    goto :goto_0

    .line 90
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 91
    sget-boolean v1, Lcom/android/systemui/statusbar/StatusBar;->hasVibrator:Z

    if-eqz v1, :cond_2

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_3
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public updateStatus()V
    .locals 5

    .prologue
    .line 112
    const-string v2, "systemui/quicksetting/QuickSettingButton"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateStatus()-S:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, -0x1

    .line 115
    .local v0, status:I
    const v1, 0x7f090087

    .line 117
    .local v1, textID:I
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 118
    const/4 v0, 0x4

    .line 119
    const v1, 0x7f090089

    .line 132
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setTextId(I)V

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->setActivateStatus(I)V

    .line 135
    return-void

    .line 120
    :cond_0
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    if-nez v2, :cond_1

    .line 121
    const/4 v0, 0x2

    .line 122
    const v1, 0x7f09008a

    goto :goto_0

    .line 123
    :cond_1
    sget v2, Lcom/android/systemui/statusbar/policy/quicksetting/SilentModeQuickSettingButton;->mSoundProfile:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 124
    const/4 v0, 0x1

    .line 125
    const v1, 0x7f090088

    goto :goto_0

    .line 127
    :cond_2
    const/4 v0, 0x1

    .line 128
    const v1, 0x7f090088

    goto :goto_0
.end method
