.class Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;
.super Ljava/lang/Object;
.source "MiscFilesHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

.field final synthetic val$listPosition:I

.field final synthetic val$listView:Landroid/widget/ListView;

.field final synthetic val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;Landroid/widget/ListView;ILcom/android/settings/deviceinfo/FileItemInfoLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listView:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listPosition:I

    iput-object p4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 323
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->this$1:Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;

    #getter for: Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;->access$400(Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.folder_type"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 324
    .local v0, supportFolderType:Z
    if-eqz v0, :cond_2

    .line 325
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listPosition:I

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 332
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v2

    .line 325
    goto :goto_0

    .line 328
    :cond_2
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 329
    iget-object v3, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$listPosition:I

    iget-object v5, p0, Lcom/android/settings/deviceinfo/MiscFilesHandler$MemoryMearurementAdapter$3;->val$view:Lcom/android/settings/deviceinfo/FileItemInfoLayout;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/FileItemInfoLayout;->isChecked()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_2
    invoke-virtual {v3, v4, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2
.end method
