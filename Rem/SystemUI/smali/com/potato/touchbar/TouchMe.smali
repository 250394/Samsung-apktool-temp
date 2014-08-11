.class public Lcom/potato/touchbar/TouchMe;
.super Landroid/widget/LinearLayout;
.source "TouchMe.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# static fields
.field private static final MEDIA_STATE_ACTIVE:I = 0x1

.field private static final MEDIA_STATE_INACTIVE:I = 0x0

.field private static final MEDIA_STATE_UNKNOWN:I = -0x1

.field private static final SWIPE_THRESHOLD:I = 0x64

.field private static final SWIPE_VELOCITY_THRESHOLD:I = 0x64

.field private static final VIBRATE_DURATION:I = 0xc8

.field private static mCurrentState:I

.field static music:Lcom/potato/touchbar/MusicUtils;


# instance fields
.field private action_color:I

.field private clickShit:I

.field color:Ljava/lang/String;

.field detector:Landroid/view/GestureDetector;

.field private double_action:I

.field private left_action:I

.field private long_action:I

.field private mAttached:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrator:Landroid/os/Vibrator;

.field potato:Lcom/potato/touchbar/PotatoAndFriends;

.field private right_action:I

.field private vibrasis:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, -0x1

    sput v0, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    .line 32
    new-instance v0, Lcom/potato/touchbar/MusicUtils;

    invoke-direct {v0}, Lcom/potato/touchbar/MusicUtils;-><init>()V

    sput-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/potato/touchbar/TouchMe;->clickShit:I

    .line 31
    new-instance v0, Lcom/potato/touchbar/PotatoAndFriends;

    invoke-direct {v0}, Lcom/potato/touchbar/PotatoAndFriends;-><init>()V

    iput-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    .line 67
    new-instance v0, Lcom/potato/touchbar/TouchMe$1;

    invoke-direct {v0, p0}, Lcom/potato/touchbar/TouchMe$1;-><init>(Lcom/potato/touchbar/TouchMe;)V

    iput-object v0, p0, Lcom/potato/touchbar/TouchMe;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 50
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/potato/touchbar/TouchMe;->detector:Landroid/view/GestureDetector;

    .line 51
    return-void
.end method

.method static synthetic access$0(Lcom/potato/touchbar/TouchMe;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    return-void
.end method

.method static synthetic access$1(Lcom/potato/touchbar/TouchMe;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput p1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    return-void
.end method

.method static synthetic access$2(Lcom/potato/touchbar/TouchMe;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 40
    iput p1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    return-void
.end method

.method static synthetic access$3(Lcom/potato/touchbar/TouchMe;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 41
    iput p1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    return-void
.end method

.method static synthetic access$4(Lcom/potato/touchbar/TouchMe;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 42
    iput p1, p0, Lcom/potato/touchbar/TouchMe;->vibrasis:I

    return-void
.end method

.method static synthetic access$5(Lcom/potato/touchbar/TouchMe;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput p1, p0, Lcom/potato/touchbar/TouchMe;->action_color:I

    return-void
.end method

.method static synthetic access$6(Lcom/potato/touchbar/TouchMe;)V
    .locals 0
    .parameter

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/potato/touchbar/TouchMe;->updateStat()V

    return-void
.end method

.method static synthetic access$7(Lcom/potato/touchbar/TouchMe;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 29
    iput p1, p0, Lcom/potato/touchbar/TouchMe;->clickShit:I

    return-void
.end method

.method private doubleAction(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 260
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 261
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "double"

    .line 260
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    .line 263
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    if-eq v1, v0, :cond_0

    .line 265
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 267
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goSleep(Landroid/content/Context;)V

    .line 268
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    .line 299
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->youWantChangeColor()V

    .line 300
    return-void

    .line 269
    :cond_1
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 271
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goHome(Landroid/content/Context;)V

    .line 272
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 273
    :cond_2
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 275
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->showMemory(Landroid/content/Context;)V

    .line 276
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 277
    :cond_3
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 279
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x57

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 280
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 281
    :cond_4
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 283
    sget-object v1, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v2, 0x55

    invoke-virtual {v1, p1, v2}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 284
    invoke-static {p1}, Lcom/potato/touchbar/TouchMe;->isMusicActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    sput v0, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    .line 285
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 286
    :cond_6
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 288
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x58

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 289
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 290
    :cond_7
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 292
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->setSound(Landroid/content/Context;)V

    .line 293
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 294
    :cond_8
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->double_action:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 296
    invoke-virtual {p0, p1}, Lcom/potato/touchbar/TouchMe;->colorPower(Landroid/content/Context;)V

    .line 297
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0
.end method

.method private static isMusicActive(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 347
    sget v2, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    if-ne v2, v5, :cond_3

    .line 348
    sput v4, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    .line 349
    invoke-static {p0}, Lcom/potato/touchbar/MusicUtils;->getAudioManager(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object v1

    .line 350
    .local v1, am:Landroid/media/AudioManager;
    if-eqz v1, :cond_0

    .line 351
    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_0
    sput v2, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    .line 354
    :cond_0
    sget v2, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    if-ne v2, v3, :cond_2

    .line 358
    .end local v1           #am:Landroid/media/AudioManager;
    :goto_1
    return v3

    .restart local v1       #am:Landroid/media/AudioManager;
    :cond_1
    move v2, v4

    .line 351
    goto :goto_0

    :cond_2
    move v3, v4

    .line 354
    goto :goto_1

    .line 356
    .end local v1           #am:Landroid/media/AudioManager;
    :cond_3
    sget v2, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    if-ne v2, v3, :cond_4

    move v0, v3

    .line 357
    .local v0, active:Z
    :goto_2
    sput v5, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    move v3, v0

    .line 358
    goto :goto_1

    .end local v0           #active:Z
    :cond_4
    move v0, v4

    .line 356
    goto :goto_2
.end method

.method private leftSwipeAction(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 174
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swipe_left"

    .line 174
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    .line 177
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    if-eq v1, v0, :cond_0

    .line 179
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 181
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goSleep(Landroid/content/Context;)V

    .line 182
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    .line 213
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->youWantChangeColor()V

    .line 214
    return-void

    .line 183
    :cond_1
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 185
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goHome(Landroid/content/Context;)V

    .line 186
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 187
    :cond_2
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 189
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->showMemory(Landroid/content/Context;)V

    .line 190
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 191
    :cond_3
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 193
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x57

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 194
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 195
    :cond_4
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 197
    sget-object v1, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v2, 0x55

    invoke-virtual {v1, p1, v2}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 198
    invoke-static {p1}, Lcom/potato/touchbar/TouchMe;->isMusicActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    sput v0, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    .line 199
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 200
    :cond_6
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 202
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x58

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 203
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 204
    :cond_7
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 206
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->setSound(Landroid/content/Context;)V

    .line 207
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 208
    :cond_8
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->left_action:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 210
    invoke-virtual {p0, p1}, Lcom/potato/touchbar/TouchMe;->colorPower(Landroid/content/Context;)V

    .line 211
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0
.end method

.method private longAction(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 303
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 304
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "long"

    .line 303
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    .line 306
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    if-eq v1, v0, :cond_0

    .line 308
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 310
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goSleep(Landroid/content/Context;)V

    .line 311
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    .line 343
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->youWantChangeColor()V

    .line 344
    return-void

    .line 312
    :cond_1
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 314
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goHome(Landroid/content/Context;)V

    .line 315
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 316
    :cond_2
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 318
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->showMemory(Landroid/content/Context;)V

    .line 319
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 320
    :cond_3
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 322
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x57

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 323
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 324
    :cond_4
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 326
    sget-object v1, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v2, 0x55

    invoke-virtual {v1, p1, v2}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 327
    invoke-static {p1}, Lcom/potato/touchbar/TouchMe;->isMusicActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    sput v0, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    .line 328
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 329
    :cond_6
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 331
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x58

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 332
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 333
    :cond_7
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 335
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->setSound(Landroid/content/Context;)V

    .line 336
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 338
    :cond_8
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->long_action:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lcom/potato/touchbar/TouchMe;->colorPower(Landroid/content/Context;)V

    .line 341
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0
.end method

.method private rightSwipeAction(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v0, 0x1

    .line 217
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "swipe_right"

    .line 217
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    .line 220
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    if-eq v1, v0, :cond_0

    .line 222
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 224
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goSleep(Landroid/content/Context;)V

    .line 225
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    .line 256
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->youWantChangeColor()V

    .line 257
    return-void

    .line 226
    :cond_1
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 228
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->goHome(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 230
    :cond_2
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_3

    .line 232
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->showMemory(Landroid/content/Context;)V

    .line 233
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 234
    :cond_3
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_4

    .line 236
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x57

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 237
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 238
    :cond_4
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 240
    sget-object v1, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v2, 0x55

    invoke-virtual {v1, p1, v2}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 241
    invoke-static {p1}, Lcom/potato/touchbar/TouchMe;->isMusicActive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x0

    :cond_5
    sput v0, Lcom/potato/touchbar/TouchMe;->mCurrentState:I

    .line 242
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 243
    :cond_6
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 245
    sget-object v0, Lcom/potato/touchbar/TouchMe;->music:Lcom/potato/touchbar/MusicUtils;

    const/16 v1, 0x58

    invoke-virtual {v0, p1, v1}, Lcom/potato/touchbar/MusicUtils;->sendMediaKeyEvent(Landroid/content/Context;I)V

    .line 246
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 247
    :cond_7
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 249
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->potato:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-virtual {v0, p1}, Lcom/potato/touchbar/PotatoAndFriends;->setSound(Landroid/content/Context;)V

    .line 250
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0

    .line 251
    :cond_8
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->right_action:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 253
    invoke-virtual {p0, p1}, Lcom/potato/touchbar/TouchMe;->colorPower(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->needVibrate()V

    goto :goto_0
.end method

.method private updateStat()V
    .locals 3

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 95
    const-string v2, "stat_bg"

    .line 94
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/potato/touchbar/TouchMe;->color:Ljava/lang/String;

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe;->color:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/potato/touchbar/TouchMe;->setBackgroundColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/potato/touchbar/TouchMe;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public colorPower(Landroid/content/Context;)V
    .locals 6
    .parameter "c"

    .prologue
    const/16 v5, 0x100

    .line 377
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 378
    .local v1, rnd:Ljava/util/Random;
    const/16 v2, 0xff

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 379
    .local v0, RandColor:I
    invoke-virtual {p0, v0}, Lcom/potato/touchbar/TouchMe;->setBackgroundColor(I)V

    .line 380
    return-void
.end method

.method public needVibrate()V
    .locals 3

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "vibra"

    const/4 v2, 0x0

    .line 363
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/touchbar/TouchMe;->vibrasis:I

    .line 366
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->vibrasis:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 367
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/potato/touchbar/TouchMe;->mVibrator:Landroid/os/Vibrator;

    .line 368
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 374
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 56
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 57
    iget-boolean v1, p0, Lcom/potato/touchbar/TouchMe;->mAttached:Z

    if-nez v1, :cond_0

    .line 58
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/potato/touchbar/TouchMe;->mAttached:Z

    .line 59
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.potato.folkYouBroThanksForKanging"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 61
    const-string v1, "com.potato.folkYouBroThanksForKangingColorShits"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/potato/touchbar/TouchMe;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 64
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-direct {p0}, Lcom/potato/touchbar/TouchMe;->updateStat()V

    .line 65
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v4, 0x42c8

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 117
    .local v1, diffY:F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 118
    .local v0, diffX:F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v4

    if-lez v2, :cond_0

    .line 120
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_1

    .line 121
    iget-object v2, p0, Lcom/potato/touchbar/TouchMe;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/potato/touchbar/TouchMe;->rightSwipeAction(Landroid/content/Context;)V

    .line 127
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 123
    :cond_1
    iget-object v2, p0, Lcom/potato/touchbar/TouchMe;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/potato/touchbar/TouchMe;->leftSwipeAction(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/potato/touchbar/TouchMe;->longAction(Landroid/content/Context;)V

    .line 133
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"

    .prologue
    .line 139
    const/4 v0, 0x0

    return v0
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 145
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "arg0"

    .prologue
    const/4 v3, 0x0

    .line 150
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->clickShit:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/potato/touchbar/TouchMe;->clickShit:I

    .line 151
    iget v1, p0, Lcom/potato/touchbar/TouchMe;->clickShit:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 152
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/potato/touchbar/TouchMe;->doubleAction(Landroid/content/Context;)V

    .line 153
    iput v3, p0, Lcom/potato/touchbar/TouchMe;->clickShit:I

    .line 155
    :cond_0
    new-instance v0, Lcom/potato/touchbar/TouchMe$2;

    invoke-direct {v0, p0}, Lcom/potato/touchbar/TouchMe$2;-><init>(Lcom/potato/touchbar/TouchMe;)V

    .line 168
    .local v0, timer:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 170
    return v3
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public youWantChangeColor()V
    .locals 3

    .prologue
    .line 383
    invoke-virtual {p0}, Lcom/potato/touchbar/TouchMe;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 384
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "action_color"

    const/4 v2, 0x0

    .line 383
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/potato/touchbar/TouchMe;->action_color:I

    .line 385
    iget v0, p0, Lcom/potato/touchbar/TouchMe;->action_color:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 386
    iget-object v0, p0, Lcom/potato/touchbar/TouchMe;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/potato/touchbar/TouchMe;->colorPower(Landroid/content/Context;)V

    .line 388
    :cond_0
    return-void
.end method
