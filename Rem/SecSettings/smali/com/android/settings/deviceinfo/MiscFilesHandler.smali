.class public Lcom/android/settings/deviceinfo/MiscFilesHandler;
.super Landroid/app/ListActivity;
.source "MiscFilesHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;,
        Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNumBytesSelectedFormat:Ljava/lang/String;

.field private mNumSelectedFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/MiscFilesHandler;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 70
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setFinishOnTouchOutside(Z)V

    .line 72
    const v1, 0x7f09070d

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setTitle(I)V

    .line 73
    const v1, 0x7f09070e

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumSelectedFormat:Ljava/lang/String;

    .line 74
    const v1, 0x7f09070f

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mNumBytesSelectedFormat:Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    .line 76
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    const v1, 0x7f0400d8

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setContentView(I)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 79
    .local v0, lv:Landroid/widget/ListView;
    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 80
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 81
    new-instance v1, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;

    invoke-direct {v1, p0, p0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$ModeCallback;-><init>(Lcom/android/settings/deviceinfo/MiscFilesHandler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/MiscFilesHandler;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler;->mAdapter:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->notifyDataSetChanged()V

    .line 91
    :cond_0
    return-void
.end method
