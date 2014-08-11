.class public Lcom/potato/touchbar/PotatoAndFriends;
.super Ljava/lang/Object;
.source "PotatoAndFriends.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;
    }
.end annotation


# instance fields
.field private sound:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/potato/touchbar/PotatoAndFriends;->sound:I

    .line 22
    return-void
.end method


# virtual methods
.method public colorPower(Landroid/content/Context;)V
    .locals 7
    .parameter "c"

    .prologue
    const/16 v6, 0x100

    .line 105
    new-instance v2, Lcom/potato/touchbar/TouchMe;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/potato/touchbar/TouchMe;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    .local v2, touch:Lcom/potato/touchbar/TouchMe;
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 107
    .local v1, rnd:Ljava/util/Random;
    const/16 v3, 0xff

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v1, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 108
    .local v0, color:I
    const v3, -0xff0100

    invoke-virtual {v2, v3}, Lcom/potato/touchbar/TouchMe;->setBackgroundColor(I)V

    .line 109
    return-void
.end method

.method public goHome(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 59
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, setIntent:Landroid/content/Intent;
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method

.method public goSleep(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 67
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 66
    check-cast v0, Landroid/os/PowerManager;

    .line 68
    .local v0, pm:Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 69
    return-void
.end method

.method public setSound(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 95
    const-string v1, "audio"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 96
    .local v0, audio:Landroid/media/AudioManager;
    iget v1, p0, Lcom/potato/touchbar/PotatoAndFriends;->sound:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 97
    iget v1, p0, Lcom/potato/touchbar/PotatoAndFriends;->sound:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/potato/touchbar/PotatoAndFriends;->sound:I

    .line 98
    iget v1, p0, Lcom/potato/touchbar/PotatoAndFriends;->sound:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 99
    const/4 v1, 0x0

    iput v1, p0, Lcom/potato/touchbar/PotatoAndFriends;->sound:I

    .line 102
    :cond_0
    return-void
.end method

.method public showMemory(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    .line 72
    const-wide/16 v8, 0x0

    .line 75
    .local v8, totalMemory:D
    const-wide/16 v10, 0x0

    cmpl-double v10, v8, v10

    if-nez v10, :cond_0

    .line 77
    :try_start_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string v10, "/proc/meminfo"

    const-string v11, "r"

    invoke-direct {v7, v10, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .local v7, reader:Ljava/io/RandomAccessFile;
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, load:Ljava/lang/String;
    const-string v10, " "

    invoke-virtual {v4, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, memInfo:[Ljava/lang/String;
    const/16 v10, 0x9

    aget-object v10, v5, v10

    invoke-static {v10}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    const-wide/high16 v12, 0x4090

    div-double v8, v10, v12

    .line 86
    .end local v4           #load:Ljava/lang/String;
    .end local v5           #memInfo:[Ljava/lang/String;
    .end local v7           #reader:Ljava/io/RandomAccessFile;
    :cond_0
    :goto_0
    const-string v10, "activity"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 87
    .local v0, activityManager:Landroid/app/ActivityManager;
    new-instance v6, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v6}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 88
    .local v6, mi:Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 89
    iget-wide v10, v6, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    const-wide/32 v12, 0x100000

    div-long v1, v10, v12

    .line 91
    .local v1, availableMemory:J
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Ram Info: Available: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    long-to-int v11, v1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MB Total: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    double-to-int v11, v8

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "MB."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-static {p1, v10, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    .line 92
    return-void

    .line 81
    .end local v0           #activityManager:Landroid/app/ActivityManager;
    .end local v1           #availableMemory:J
    .end local v6           #mi:Landroid/app/ActivityManager$MemoryInfo;
    :catch_0
    move-exception v3

    .line 82
    .local v3, ex:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public simulateKeypress(I)V
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;

    invoke-direct {v1, p0, p1}, Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;-><init>(Lcom/potato/touchbar/PotatoAndFriends;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 31
    return-void
.end method
