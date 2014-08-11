.class public Lcom/potato/touchbar/MusicUtils;
.super Ljava/lang/Object;
.source "MusicUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaKeyEventButton"

.field private static mAM:Landroid/media/AudioManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-object v0, Lcom/potato/touchbar/MusicUtils;->mAM:Landroid/media/AudioManager;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    sget-object v0, Lcom/potato/touchbar/MusicUtils;->mAM:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/potato/touchbar/MusicUtils;->mAM:Landroid/media/AudioManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/potato/touchbar/MusicUtils;->mAM:Landroid/media/AudioManager;

    return-object v0
.end method


# virtual methods
.method protected sendMediaKeyEvent(Landroid/content/Context;I)V
    .locals 13
    .parameter "context"
    .parameter "code"

    .prologue
    .line 19
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 21
    .local v1, eventtime:J
    new-instance v11, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v11, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 22
    .local v11, downIntent:Landroid/content/Intent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-wide v3, v1

    move v6, p2

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 23
    .local v0, downEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v11, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 24
    const/4 v4, 0x0

    invoke-virtual {p1, v11, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 26
    new-instance v12, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_BUTTON"

    const/4 v5, 0x0

    invoke-direct {v12, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 27
    .local v12, upIntent:Landroid/content/Intent;
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-wide v4, v1

    move-wide v6, v1

    move v9, p2

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 28
    .local v3, upEvent:Landroid/view/KeyEvent;
    const-string v4, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v12, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 29
    const/4 v4, 0x0

    invoke-virtual {p1, v12, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 30
    return-void
.end method
