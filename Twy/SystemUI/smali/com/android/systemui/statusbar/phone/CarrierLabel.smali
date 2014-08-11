.class public Lcom/android/systemui/statusbar/phone/CarrierLabel;
.super Landroid/widget/TextView;
.source "CarrierLabel.java"


# static fields
.field public static final ACTION_CB_CLEAR:Ljava/lang/String; = "com.sec.android.app.mms.CB_CLEAR"

.field public static final ACTION_SMS_CB_DIRECT_DISPLAY_RECEIVED:Ljava/lang/String; = "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"


# instance fields
.field private final EXTRA_IS_VALID_PLMN:Ljava/lang/String;

.field private mAttached:Z

.field mDisplayPlmnIcon:Z

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLastCB:Ljava/lang/String;

.field private mLastPlmn:Ljava/lang/String;

.field private mLastShowPlmn:Z

.field private mLastShowSpn:Z

.field private mLastSpn:Ljava/lang/String;

.field private mSetDefaultPLMNtoNULL:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastCB:Ljava/lang/String;

    .line 66
    const-string v1, "isValidPlmn"

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->EXTRA_IS_VALID_PLMN:Ljava/lang/String;

    .line 67
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    .line 129
    new-instance v1, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel$1;-><init>(Lcom/android/systemui/statusbar/phone/CarrierLabel;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    invoke-direct {p0, v3, v2, v3, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 82
    invoke-virtual {p0, v3, v2, v3, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    .line 84
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Message_CbChannelNb4DisplayInStatusBar"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setSingleLine(Z)V

    .line 94
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSetDefaultPLMNtoNULL:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, ex:Landroid/content/res/Resources$NotFoundException;
    const-string v1, "CarrierLabel"

    const-string v2, "Failing checking whether always show menu key"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSetDefaultPLMNtoNULL:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/CarrierLabel;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/CarrierLabel;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastCB:Ljava/lang/String;

    return-object v0
.end method

.method private setLastNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    .line 291
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowSpn:Z

    .line 292
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastSpn:Ljava/lang/String;

    .line 293
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastShowPlmn:Z

    .line 294
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastPlmn:Ljava/lang/String;

    .line 295
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 105
    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    .line 107
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-nez v1, :cond_0

    .line 108
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "com.sec.android.app.mms.SMS_CB_DIRECT_DISPLAY_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "com.sec.android.app.mms.CB_CLEAR"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getHandler()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 118
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    .line 123
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mAttached:Z

    .line 127
    :cond_0
    return-void
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 5
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"

    .prologue
    const/4 v4, 0x1

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 202
    .local v0, something:Z
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 204
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 205
    const/4 p1, 0x0

    .line 210
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 211
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const/4 v0, 0x1

    .line 214
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 215
    if-eqz v0, :cond_2

    .line 216
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 218
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v0, 0x1

    .line 221
    :cond_3
    if-eqz v0, :cond_5

    .line 223
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mDisplayPlmnIcon:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 224
    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setVisibility(I)V

    .line 225
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    .line 226
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setVisibility(I)V

    .line 227
    const-string v2, "CarrierLabel"

    const-string v3, "update carrier label"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    :goto_0
    return-void

    .line 229
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 233
    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSetDefaultPLMNtoNULL:Z

    if-eqz v2, :cond_6

    .line 234
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 236
    :cond_6
    const v2, 0x10403ac

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(I)V

    goto :goto_0
.end method

.method updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V
    .locals 6
    .parameter "showSpn"
    .parameter "spn"
    .parameter "showPlmn"
    .parameter "plmn"
    .parameter "showCB"
    .parameter "CBmsg"

    .prologue
    const/16 v5, 0xa

    const/4 v4, 0x1

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 248
    .local v1, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 249
    .local v0, something:Z
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mLastCB:Ljava/lang/String;

    .line 251
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_RIL_DisplaySpnOnlyInCaseSamePlmn"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    if-eqz p4, :cond_0

    if-eqz p2, :cond_0

    if-ne p1, v4, :cond_0

    if-ne p3, v4, :cond_0

    .line 253
    invoke-virtual {p2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 254
    const/4 p1, 0x0

    .line 258
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 259
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const/4 v0, 0x1

    .line 262
    :cond_1
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 263
    if-eqz v0, :cond_2

    .line 264
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 266
    :cond_2
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const/4 v0, 0x1

    .line 269
    :cond_3
    if-eqz p5, :cond_5

    if-eqz p6, :cond_5

    .line 270
    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 273
    :cond_4
    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    const/4 v0, 0x1

    .line 277
    :cond_5
    if-eqz v0, :cond_6

    .line 278
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    .line 286
    :goto_0
    return-void

    .line 280
    :cond_6
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/CarrierLabel;->mSetDefaultPLMNtoNULL:Z

    if-eqz v2, :cond_7

    .line 281
    const-string v2, ""

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 283
    :cond_7
    const v2, 0x10403ac

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/CarrierLabel;->setText(I)V

    goto :goto_0
.end method
