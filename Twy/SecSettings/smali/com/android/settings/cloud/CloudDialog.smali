.class public Lcom/android/settings/cloud/CloudDialog;
.super Landroid/app/DialogFragment;
.source "CloudDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cloud/CloudDialog$DialogListener;
    }
.end annotation


# instance fields
.field private dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 55
    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cloud/CloudDialog;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/cloud/CloudDialog;->removeAccount(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/cloud/CloudDialog;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudDialog;->dismissProgressDialog()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/cloud/CloudDialog;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/cloud/CloudDialog;)Lcom/android/settings/cloud/CloudDialog$DialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

    return-object v0
.end method

.method private dismissProgressDialog()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 189
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 190
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;
    .locals 3
    .parameter "dialogType"
    .parameter "message"
    .parameter "dialogListener"

    .prologue
    .line 72
    new-instance v1, Lcom/android/settings/cloud/CloudDialog;

    invoke-direct {v1}, Lcom/android/settings/cloud/CloudDialog;-><init>()V

    .line 73
    .local v1, cloudDialog:Lcom/android/settings/cloud/CloudDialog;
    iput-object p2, v1, Lcom/android/settings/cloud/CloudDialog;->dialogListener:Lcom/android/settings/cloud/CloudDialog$DialogListener;

    .line 74
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 75
    .local v0, args:Landroid/os/Bundle;
    const-string v2, "dialogType"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v2, "message"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-virtual {v1, v0}, Lcom/android/settings/cloud/CloudDialog;->setArguments(Landroid/os/Bundle;)V

    .line 79
    return-object v1
.end method

.method private removeAccount(Ljava/lang/String;)V
    .locals 4
    .parameter "accountName"

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.ACTION_REQUEST_CLOUD_OFF"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "storageVender"

    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/cloud/CloudSettings;->getVenderId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    const-string v1, "CloudSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeAccount -->  sending intent with Cloud Status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x7f090c31

    const/high16 v2, 0x104

    .line 87
    const/4 v7, 0x0

    .line 89
    .local v7, alertDialog:Landroid/app/AlertDialog;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "dialogType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    move-object v0, v7

    .line 179
    :goto_1
    return-object v0

    .line 91
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, accountName:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090c26

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .line 94
    .local v9, removeText:Ljava/lang/CharSequence;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, text:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c25

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$2;

    invoke-direct {v1, p0, v6}, Lcom/android/settings/cloud/CloudDialog$2;-><init>(Lcom/android/settings/cloud/CloudDialog;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudDialog$1;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 117
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 118
    goto :goto_0

    .line 120
    .end local v6           #accountName:Ljava/lang/String;
    .end local v8           #builder:Landroid/app/AlertDialog$Builder;
    .end local v9           #removeText:Ljava/lang/CharSequence;
    .end local v10           #text:Ljava/lang/String;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090c12

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/CloudDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090c2b

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 124
    new-instance v0, Lcom/android/settings/cloud/CloudDialog$3;

    const-wide/16 v2, 0x1388

    const-wide/16 v4, 0xbb8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/cloud/CloudDialog$3;-><init>(Lcom/android/settings/cloud/CloudDialog;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudDialog$3;->start()Landroid/os/CountDownTimer;

    .line 146
    iget-object v0, p0, Lcom/android/settings/cloud/CloudDialog;->progressDialog:Landroid/app/ProgressDialog;

    goto :goto_1

    .line 148
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 149
    .local v11, warningMessage:Ljava/lang/String;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090c30

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$5;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudDialog$5;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/cloud/CloudDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudDialog$4;-><init>(Lcom/android/settings/cloud/CloudDialog;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 172
    .restart local v8       #builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    .line 173
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
