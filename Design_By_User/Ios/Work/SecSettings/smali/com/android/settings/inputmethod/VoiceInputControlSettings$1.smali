.class Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;
.super Landroid/database/ContentObserver;
.source "VoiceInputControlSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/VoiceInputControlSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/VoiceInputControlSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/VoiceInputControlSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;->this$0:Lcom/android/settings/inputmethod/VoiceInputControlSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 79
    const-string v0, "VoiceInputControlSettings"

    const-string v1, "onChange() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlSettings$1;->this$0:Lcom/android/settings/inputmethod/VoiceInputControlSettings;

    #calls: Lcom/android/settings/inputmethod/VoiceInputControlSettings;->updateUIVoiceInputControl()V
    invoke-static {v0}, Lcom/android/settings/inputmethod/VoiceInputControlSettings;->access$000(Lcom/android/settings/inputmethod/VoiceInputControlSettings;)V

    .line 81
    return-void
.end method
