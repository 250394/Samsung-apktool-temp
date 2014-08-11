.class Lcom/android/systemui/sapps/SAppsPanelUI$2;
.super Landroid/telephony/PhoneStateListener;
.source "SAppsPanelUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/sapps/SAppsPanelUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/sapps/SAppsPanelUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    const/4 v1, 0x0

    #setter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mInCallScreen:Z
    invoke-static {v0, v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$102(Lcom/android/systemui/sapps/SAppsPanelUI;Z)Z

    .line 168
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanelUI$2;->this$0:Lcom/android/systemui/sapps/SAppsPanelUI;

    const/4 v1, 0x1

    #setter for: Lcom/android/systemui/sapps/SAppsPanelUI;->mInCallScreen:Z
    invoke-static {v0, v1}, Lcom/android/systemui/sapps/SAppsPanelUI;->access$102(Lcom/android/systemui/sapps/SAppsPanelUI;Z)Z

    .line 174
    :cond_0
    return-void
.end method
