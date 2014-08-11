.class Lcom/potato/touchbar/TouchMe$2;
.super Ljava/lang/Thread;
.source "TouchMe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/potato/touchbar/TouchMe;->onSingleTapUp(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/potato/touchbar/TouchMe;


# direct methods
.method constructor <init>(Lcom/potato/touchbar/TouchMe;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/potato/touchbar/TouchMe$2;->this$0:Lcom/potato/touchbar/TouchMe;

    .line 155
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    const-wide/16 v1, 0x5dc

    :try_start_0
    invoke-static {v1, v2}, Lcom/potato/touchbar/TouchMe$2;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$2;->this$0:Lcom/potato/touchbar/TouchMe;

    #setter for: Lcom/potato/touchbar/TouchMe;->clickShit:I
    invoke-static {v1, v3}, Lcom/potato/touchbar/TouchMe;->access$7(Lcom/potato/touchbar/TouchMe;I)V

    .line 166
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 162
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 164
    iget-object v1, p0, Lcom/potato/touchbar/TouchMe$2;->this$0:Lcom/potato/touchbar/TouchMe;

    #setter for: Lcom/potato/touchbar/TouchMe;->clickShit:I
    invoke-static {v1, v3}, Lcom/potato/touchbar/TouchMe;->access$7(Lcom/potato/touchbar/TouchMe;I)V

    goto :goto_0

    .line 163
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    .line 164
    iget-object v2, p0, Lcom/potato/touchbar/TouchMe$2;->this$0:Lcom/potato/touchbar/TouchMe;

    #setter for: Lcom/potato/touchbar/TouchMe;->clickShit:I
    invoke-static {v2, v3}, Lcom/potato/touchbar/TouchMe;->access$7(Lcom/potato/touchbar/TouchMe;I)V

    .line 165
    throw v1
.end method
