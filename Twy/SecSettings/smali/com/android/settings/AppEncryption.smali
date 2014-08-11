.class public Lcom/android/settings/AppEncryption;
.super Landroid/app/Activity;
.source "AppEncryption.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field mDecryptReceiver:Landroid/content/BroadcastReceiver;

.field private mStartEncryption:Z

.field private mStartState:Landroid/security/KeyStore$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/AppEncryption$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AppEncryption$1;-><init>(Lcom/android/settings/AppEncryption;)V

    iput-object v0, p0, Lcom/android/settings/AppEncryption;->mDecryptReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private isk2kdi()Z
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/android/settings/AppEncryption;->isk2kdi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_2

    .line 97
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/AppEncryption;->mStartEncryption:Z

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.credentials.UNLOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.CredentialStorage"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    invoke-virtual {p0, v0}, Lcom/android/settings/AppEncryption;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 101
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/AppEncryption;->mStartEncryption:Z

    if-eqz v1, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_3

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Lcom/android/settings/AppEncryption;->startActivity(Landroid/content/Intent;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/AppEncryption;->finish()V

    goto :goto_0

    .line 106
    .end local v0           #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Lcom/android/settings/AppEncryption;->mStartState:Landroid/security/KeyStore$State;

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_0

    .line 109
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/AppEncryption;->mStartEncryption:Z

    .line 110
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.Encryption3LMService.CONVERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/EncryptionManager3LM;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 112
    invoke-virtual {p0, v0}, Lcom/android/settings/AppEncryption;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v2, 0x7f040010

    invoke-virtual {p0, v2}, Lcom/android/settings/AppEncryption;->setContentView(I)V

    .line 53
    invoke-direct {p0}, Lcom/android/settings/AppEncryption;->isk2kdi()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    :goto_0
    return-void

    .line 57
    :cond_0
    const v2, 0x7f0b0035

    invoke-virtual {p0, v2}, Lcom/android/settings/AppEncryption;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 58
    .local v0, b:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/AppEncryption;->mStartState:Landroid/security/KeyStore$State;

    .line 62
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.threelm.DECRYPTION_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 63
    .local v1, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/settings/AppEncryption;->mDecryptReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/AppEncryption;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 69
    invoke-direct {p0}, Lcom/android/settings/AppEncryption;->isk2kdi()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/AppEncryption;->mStartEncryption:Z

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_2

    .line 76
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.START_ENCRYPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v0}, Lcom/android/settings/AppEncryption;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/AppEncryption;->finish()V

    goto :goto_0

    .line 80
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v1, p0, Lcom/android/settings/AppEncryption;->mStartState:Landroid/security/KeyStore$State;

    sget-object v2, Landroid/security/KeyStore$State;->LOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    invoke-virtual {v1}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v1

    sget-object v2, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-ne v1, v2, :cond_0

    .line 84
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/AppEncryption;->mStartEncryption:Z

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.os.Encryption3LMService.CONVERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .restart local v0       #intent:Landroid/content/Intent;
    sget-object v1, Lcom/android/internal/os/EncryptionManager3LM;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 87
    invoke-virtual {p0, v0}, Lcom/android/settings/AppEncryption;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method
