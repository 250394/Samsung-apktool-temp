.class Lcom/android/settings/flipfont/FontListPreference$2;
.super Landroid/os/Handler;
.source "FontListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/flipfont/FontListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/flipfont/FontListPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/flipfont/FontListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mThreadIsAlive:Z
    invoke-static {v0}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 244
    :goto_0
    return-void

    .line 223
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->dismiss()V

    .line 224
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/flipfont/FontListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->dismiss()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()V

    goto :goto_0

    .line 233
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->dismiss()V

    goto :goto_0

    .line 240
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0}, Lcom/android/settings/flipfont/FontListPreference;->onOkButtonPressed()V

    .line 242
    :cond_1
    const-string v0, "FontListPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage mThreadIsAlive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/flipfont/FontListPreference$2;->this$0:Lcom/android/settings/flipfont/FontListPreference;

    #getter for: Lcom/android/settings/flipfont/FontListPreference;->mThreadIsAlive:Z
    invoke-static {v2}, Lcom/android/settings/flipfont/FontListPreference;->access$200(Lcom/android/settings/flipfont/FontListPreference;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
