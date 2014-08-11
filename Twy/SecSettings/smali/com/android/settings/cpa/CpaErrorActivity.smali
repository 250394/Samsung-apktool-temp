.class public Lcom/android/settings/cpa/CpaErrorActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "CpaErrorActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mErrorContent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private createView()Landroid/view/View;
    .locals 5

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaErrorActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040027

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 78
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0b000a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 79
    .local v0, contentView:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/settings/cpa/CpaErrorActivity;->mErrorContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    return-object v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 84
    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaErrorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 63
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "title"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, mErrorTitle:Ljava/lang/String;
    const-string v3, "content"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cpa/CpaErrorActivity;->mErrorContent:Ljava/lang/String;

    .line 67
    iget-object v2, p0, Lcom/android/settings/cpa/CpaErrorActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 68
    .local v2, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v3, 0x1080027

    iput v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 69
    iput-object v1, v2, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaErrorActivity;->createView()Landroid/view/View;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 71
    const v3, 0x7f0909b0

    invoke-virtual {p0, v3}, Lcom/android/settings/cpa/CpaErrorActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 72
    iput-object p0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaErrorActivity;->setupAlert()V

    .line 74
    return-void
.end method
