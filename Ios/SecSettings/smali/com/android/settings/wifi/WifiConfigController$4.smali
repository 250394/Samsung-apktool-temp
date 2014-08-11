.class Lcom/android/settings/wifi/WifiConfigController$4;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiConfigController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0
    .parameter

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 1485
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1486
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1480
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 1481
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    .line 1482
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/4 v9, 0x1

    .line 1451
    const/16 v0, 0x40

    .line 1452
    .local v0, iMaxStrLen:I
    const/16 v1, 0x8

    .line 1453
    .local v1, iMinStrLen:I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$300(Lcom/android/settings/wifi/WifiConfigController;)I

    move-result v2

    if-ne v9, v2, :cond_0

    .line 1454
    const/16 v0, 0x20

    .line 1455
    const/4 v1, 0x1

    .line 1458
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-le v2, v0, :cond_2

    .line 1459
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-gt v2, v0, :cond_3

    .line 1460
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiConfigController;->mTempPassworld:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1465
    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/app/AlertDialog;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1466
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0902a9

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;
    invoke-static {v4}, Lcom/android/settings/wifi/WifiConfigController;->access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f09025c

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0902aa

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    #setter for: Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->access$002(Lcom/android/settings/wifi/WifiConfigController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1472
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$000(Lcom/android/settings/wifi/WifiConfigController;)Landroid/app/AlertDialog;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    iget-object v3, v3, Lcom/android/settings/wifi/WifiConfigController;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1475
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 1477
    :cond_2
    return-void

    .line 1462
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController$4;->this$0:Lcom/android/settings/wifi/WifiConfigController;

    #getter for: Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/settings/wifi/WifiConfigController;->access$400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
