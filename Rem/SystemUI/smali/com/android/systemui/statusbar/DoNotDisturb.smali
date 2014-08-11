.class public Lcom/android/systemui/statusbar/DoNotDisturb;
.super Ljava/lang/Object;
.source "DoNotDisturb.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mDoNotDisturb:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field private mStatusBar:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    .line 43
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    .line 44
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    .line 49
    return-void
.end method

.method private updateDisableRecord()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    .line 61
    const/high16 v0, 0xe

    .line 64
    .local v0, disabled:I
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mStatusBar:Landroid/app/StatusBarManager;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    if-eqz v4, :cond_1

    .end local v0           #disabled:I
    :goto_0
    invoke-virtual {v3, v0}, Landroid/app/StatusBarManager;->disable(I)V

    .line 66
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    if-eqz v3, :cond_2

    .line 67
    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v5, v3}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 74
    :cond_0
    :goto_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.systemui.statusbar.STREAM_NOTIFICATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 78
    return-void

    .end local v1           #intent:Landroid/content/Intent;
    .restart local v0       #disabled:I
    :cond_1
    move v0, v2

    .line 64
    goto :goto_0

    .line 70
    .end local v0           #disabled:I
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3, v5, v2}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_1
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 52
    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 54
    .local v0, val:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    if-eq v0, v1, :cond_0

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/DoNotDisturb;->mDoNotDisturb:Z

    .line 56
    invoke-direct {p0}, Lcom/android/systemui/statusbar/DoNotDisturb;->updateDisableRecord()V

    .line 58
    :cond_0
    return-void
.end method
