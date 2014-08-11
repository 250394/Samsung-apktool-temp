.class Lcom/android/settings/CryptDecryptSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "CryptDecryptSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptDecryptSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptDecryptSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptDecryptSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/16 v10, 0x8

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, action:Ljava/lang/String;
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 79
    const-string v11, "level"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 80
    .local v2, level:I
    const-string v11, "plugged"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 81
    .local v4, plugged:I
    const-string v11, "invalid_charger"

    invoke-virtual {p2, v11, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 83
    .local v1, invalidCharger:I
    const/16 v11, 0x50

    if-lt v2, v11, :cond_3

    move v3, v9

    .line 84
    .local v3, levelOk:Z
    :goto_0
    if-eq v4, v9, :cond_0

    const/4 v11, 0x2

    if-ne v4, v11, :cond_4

    :cond_0
    if-nez v1, :cond_4

    move v5, v9

    .line 89
    .local v5, pluggedOk:Z
    :goto_1
    iget-object v11, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mDem:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v11}, Lcom/android/settings/CryptDecryptSettings;->access$000(Lcom/android/settings/CryptDecryptSettings;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentStatus()I

    move-result v7

    .line 91
    .local v7, status:I
    if-gt v9, v7, :cond_1

    const/4 v11, 0x3

    if-ge v11, v7, :cond_5

    :cond_1
    move v6, v9

    .line 94
    .local v6, sdCardOK:Z
    :goto_2
    iget-object v11, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mInitiateButton:Landroid/widget/Button;
    invoke-static {v11}, Lcom/android/settings/CryptDecryptSettings;->access$100(Lcom/android/settings/CryptDecryptSettings;)Landroid/widget/Button;

    move-result-object v11

    if-eqz v3, :cond_6

    if-eqz v5, :cond_6

    if-eqz v6, :cond_6

    :goto_3
    invoke-virtual {v11, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 95
    iget-object v9, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mPowerWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptDecryptSettings;->access$200(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v5, :cond_7

    move v9, v10

    :goto_4
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 96
    iget-object v9, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mBatteryWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptDecryptSettings;->access$300(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v11

    if-eqz v3, :cond_8

    move v9, v10

    :goto_5
    invoke-virtual {v11, v9}, Landroid/view/View;->setVisibility(I)V

    .line 97
    iget-object v9, p0, Lcom/android/settings/CryptDecryptSettings$1;->this$0:Lcom/android/settings/CryptDecryptSettings;

    #getter for: Lcom/android/settings/CryptDecryptSettings;->mSDcardOngoingWarning:Landroid/view/View;
    invoke-static {v9}, Lcom/android/settings/CryptDecryptSettings;->access$400(Lcom/android/settings/CryptDecryptSettings;)Landroid/view/View;

    move-result-object v9

    if-eqz v6, :cond_9

    :goto_6
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .end local v1           #invalidCharger:I
    .end local v2           #level:I
    .end local v3           #levelOk:Z
    .end local v4           #plugged:I
    .end local v5           #pluggedOk:Z
    .end local v6           #sdCardOK:Z
    .end local v7           #status:I
    :cond_2
    return-void

    .restart local v1       #invalidCharger:I
    .restart local v2       #level:I
    .restart local v4       #plugged:I
    :cond_3
    move v3, v8

    .line 83
    goto :goto_0

    .restart local v3       #levelOk:Z
    :cond_4
    move v5, v8

    .line 84
    goto :goto_1

    .restart local v5       #pluggedOk:Z
    .restart local v7       #status:I
    :cond_5
    move v6, v8

    .line 91
    goto :goto_2

    .restart local v6       #sdCardOK:Z
    :cond_6
    move v9, v8

    .line 94
    goto :goto_3

    :cond_7
    move v9, v8

    .line 95
    goto :goto_4

    :cond_8
    move v9, v8

    .line 96
    goto :goto_5

    :cond_9
    move v10, v8

    .line 97
    goto :goto_6
.end method
