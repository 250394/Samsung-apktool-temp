.class Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;
.super Landroid/os/Handler;
.source "NetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NetworkControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/NetworkController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 0
    .parameter

    .prologue
    .line 807
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x4

    const/16 v5, 0x46

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 810
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 913
    :cond_0
    :goto_0
    return-void

    .line 812
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getCurrentRSSIState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$900(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 815
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH -mPreSvcSate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mCurSvcSate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-nez v0, :cond_1

    .line 819
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 820
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 821
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, -0x1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 822
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 824
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 825
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 826
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 828
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const/4 v1, -0x1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 831
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_4

    .line 833
    sget-boolean v0, Lcom/android/systemui/statusbar/StatusBar;->supportVoice:Z

    if-eqz v0, :cond_3

    .line 834
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0201c8

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 835
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0201c8

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 850
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->refreshViews()V

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 852
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 837
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalIconList(I)[I
    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1400(Lcom/android/systemui/statusbar/policy/NetworkController;I)[I

    move-result-object v1

    aget v1, v1, v3

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 838
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getDataSignalIconId(II)I
    invoke-static {v1, v3, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1500(Lcom/android/systemui/statusbar/policy/NetworkController;II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 839
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 840
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->getPhoneSignalDescriptionIconId(I)I
    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1600(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 844
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0200bc

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mPhoneSignalIconId:I

    .line 845
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    const v1, 0x7f0200bc

    iput v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mDataSignalIconId:I

    .line 846
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    if-nez v0, :cond_2

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/policy/NetworkController;->mContentDescriptionPhoneSignal:Ljava/lang/String;

    goto :goto_1

    .line 853
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mPreSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v7, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mShowAirPlane:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1002(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    .line 855
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-ne v0, v4, :cond_a

    .line 856
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 857
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 858
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(NO_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 860
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 863
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 895
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 896
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1208(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    .line 900
    :cond_8
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-le v0, v6, :cond_11

    .line 901
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 905
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    #calls: Lcom/android/systemui/statusbar/policy/NetworkController;->displaySignalStrength(I)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1800(Lcom/android/systemui/statusbar/policy/NetworkController;I)V

    .line 906
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 866
    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$800(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-nez v0, :cond_c

    .line 867
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 868
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_b

    .line 869
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(AIRPLANE) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 871
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1300(Lcom/android/systemui/statusbar/policy/NetworkController;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 874
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurSvcSate:I
    invoke-static {v0, v7}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$802(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto/16 :goto_2

    .line 877
    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/NetworkController;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v1

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 878
    const-string v0, "StatusBar.NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-le v0, v6, :cond_e

    .line 880
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level over - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v6}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    .line 886
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 887
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH(IN_SVC) -no diff "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_0

    .line 882
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-gez v0, :cond_d

    .line 883
    const-string v0, "STATUSBAR-NetworkController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UPDATE_STRENGTH level under - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1702(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto :goto_5

    .line 891
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1100(Lcom/android/systemui/statusbar/policy/NetworkController;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 892
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTransitionState:Z
    invoke-static {v0, v4}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1102(Lcom/android/systemui/statusbar/policy/NetworkController;Z)Z

    goto/16 :goto_2

    .line 897
    :cond_10
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mTargetSignalStrength:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1700(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v1

    if-le v0, v1, :cond_8

    .line 898
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1210(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    goto/16 :goto_3

    .line 902
    :cond_11
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #getter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1200(Lcom/android/systemui/statusbar/policy/NetworkController;)I

    move-result v0

    if-gez v0, :cond_9

    .line 903
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NetworkController$NetworkControllerHandler;->this$0:Lcom/android/systemui/statusbar/policy/NetworkController;

    #setter for: Lcom/android/systemui/statusbar/policy/NetworkController;->mCurrentSignalStrength:I
    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/policy/NetworkController;->access$1202(Lcom/android/systemui/statusbar/policy/NetworkController;I)I

    goto/16 :goto_4

    .line 810
    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method
