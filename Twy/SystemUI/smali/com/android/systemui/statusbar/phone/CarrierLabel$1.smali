.class Lcom/android/systemui/statusbar/phone/CarrierLabel$1;
.super Landroid/content/BroadcastReceiver;
.source "CarrierLabel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/CarrierLabel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 132
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 133
    .local v7, action:Ljava/lang/String;
    const-string v0, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 134
    const-string v0, "plmn"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 137
    .local v9, plmn:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    if-eqz v0, :cond_0

    .line 144
    const-string v0, "CarrierLabel"

    const-string v1, "mDisplayPlmnIcon == true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, "isValidPlmn"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    const/4 v9, 0x0

    .line 150
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    #calls: Lcom/android/systemui/statusbar/phone/CarrierLabel;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    invoke-static {v0, v1, v2, v3, v9}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;ZLjava/lang/String;ZLjava/lang/String;)V

    .line 157
    :cond_1
    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayPlmnIcon =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    const-string v1, "showSpn"

    invoke-virtual {p2, v1, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "spn"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "showPlmn"

    invoke-virtual {p2, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3, v9}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 190
    .end local v9           #plmn:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 138
    .restart local v9       #plmn:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 139
    .local v8, ex:Landroid/content/res/Resources$NotFoundException;
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iput-boolean v10, v0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    .line 140
    const-string v0, "CarrierLabel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDisplayPlmnIcon =="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 163
    .end local v8           #ex:Landroid/content/res/Resources$NotFoundException;
    .end local v9           #plmn:Ljava/lang/String;
    :cond_3
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    invoke-virtual {v0, v6, v10}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 167
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->useTouchWizGUI:Z

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastCB:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastCB:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 178
    :cond_4
    const-string v0, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x10403ce

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "cbMsgBody"

    invoke-virtual {p2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1

    .line 184
    :cond_5
    const-string v0, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;->this$0:Lcom/android/systemui/statusbar/phone/CarrierLabel;

    #getter for: Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;

    move-result-object v4

    move v5, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    goto/16 :goto_1
.end method
