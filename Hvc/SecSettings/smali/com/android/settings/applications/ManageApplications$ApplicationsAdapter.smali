.class Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private mLastFilterMode:I

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mState:Lcom/android/settings/applications/ApplicationsState;

.field private mWaitingForData:Z

.field private mWhichSize:I

.field final synthetic this$0:Lcom/android/settings/applications/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ManageApplications;Lcom/android/settings/applications/ApplicationsState;)V
    .locals 2
    .parameter
    .parameter "state"

    .prologue
    const/4 v1, -0x1

    .line 282
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 257
    iput v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    iput v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 259
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 262
    new-instance v0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 283
    iput-object p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    .line 284
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 8
    .parameter "prefix"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    .local p2, origEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_2

    :cond_0
    move-object v2, p2

    .line 398
    :cond_1
    return-object v2

    .line 387
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 388
    .local v4, prefixStr:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 389
    .local v5, spacePrefixStr:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 391
    .local v2, newEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 392
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 393
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, nlabel:Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 395
    :cond_3
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAppEntry(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1
    .parameter "position"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 488
    if-nez p2, :cond_2

    .line 489
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/android/settings/applications/ManageApplications;->access$600(Lcom/android/settings/applications/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f04007f

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 493
    new-instance v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/applications/ManageApplications$AppViewHolder;-><init>()V

    .line 494
    .local v1, holder:Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    const v2, 0x7f0b0180

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 495
    const v2, 0x7f0b0009

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 496
    const v2, 0x7f0b018e

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 497
    const v2, 0x7f0b018f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 498
    const v2, 0x7f0b0190

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    .line 499
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 507
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 508
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    monitor-enter v0

    .line 509
    :try_start_0
    iput-object v0, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 510
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 511
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ApplicationsState;->ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V

    .line 517
    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    .line 518
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 520
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v1, v2, v5}, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->updateSizeText(Lcom/android/settings/applications/ManageApplications;I)V

    .line 522
    iget-object v5, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->disabled:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 527
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 528
    iget-object v4, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x4

    and-int/2addr v2, v5

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 533
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 535
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 536
    return-object p2

    .line 503
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v1           #holder:Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;

    .restart local v1       #holder:Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    goto :goto_0

    .restart local v0       #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_3
    move v2, v3

    .line 522
    goto :goto_1

    :cond_4
    move v2, v3

    .line 528
    goto :goto_2

    .line 531
    :cond_5
    :try_start_1
    iget-object v2, v1, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_3

    .line 533
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onAllSizesComputed()V
    .locals 2

    .prologue
    .line 459
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 460
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 462
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 547
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .prologue
    .line 433
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 427
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 437
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 438
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;

    .line 439
    .local v0, holder:Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 440
    iget-object v3, v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 441
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    iget v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v0, v2, v4}, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->updateSizeText(Lcom/android/settings/applications/ManageApplications;I)V

    .line 442
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    iget-object v2, v0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/applications/ManageApplications;->access$500(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    .line 449
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 451
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v2}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 455
    .end local v0           #holder:Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    :cond_1
    return-void

    .line 442
    .restart local v0       #holder:Lcom/android/settings/applications/ManageApplications$AppViewHolder;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 437
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v3, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 412
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/settings/applications/ManageApplications;->access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 417
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 418
    iput-object p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 419
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 420
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 421
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 422
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1
    .parameter "running"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 405
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 302
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->pause()V

    .line 304
    :cond_0
    return-void
.end method

.method public rebuild(II)V
    .locals 1
    .parameter "filter"
    .parameter "sort"

    .prologue
    .line 307
    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p2, v0, :cond_0

    .line 313
    :goto_0
    return-void

    .line 310
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    .line 311
    iput p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 312
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    goto :goto_0
.end method

.method public rebuild(Z)V
    .locals 8
    .parameter "eraseold"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 316
    const-string v4, "ManageApplications"

    const-string v5, "Rebuilding app list..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 320
    .local v1, emulated:Z
    if-eqz v1, :cond_1

    .line 321
    iput v6, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 325
    :goto_0
    iget v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    packed-switch v4, :pswitch_data_0

    .line 336
    const/4 v3, 0x0

    .line 339
    .local v3, filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :cond_0
    :goto_1
    iget v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v4, :pswitch_data_1

    .line 354
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 357
    .local v0, comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :goto_2
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v4, v3, v0}, Lcom/android/settings/applications/ApplicationsState;->rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v2

    .line 359
    .local v2, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    if-nez v2, :cond_2

    if-nez p1, :cond_2

    .line 380
    :goto_3
    return-void

    .line 323
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v2           #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :cond_1
    iput v7, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 327
    :pswitch_0
    sget-object v3, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 328
    .restart local v3       #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    goto :goto_1

    .line 330
    .end local v3           #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :pswitch_1
    sget-object v3, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 331
    .restart local v3       #filterObj:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    if-nez v1, :cond_0

    .line 332
    const/4 v4, 0x2

    iput v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_1

    .line 341
    :pswitch_2
    iget v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v4, :pswitch_data_2

    .line 349
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 350
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 343
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_3
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 344
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 346
    .end local v0           #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :pswitch_4
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 347
    .restart local v0       #comparatorObj:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    goto :goto_2

    .line 363
    .restart local v2       #entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    :cond_2
    iput-object v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 364
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 365
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    iget-object v5, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 369
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 370
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    invoke-virtual {v4}, Lcom/android/settings/applications/ManageApplications;->updateStorageUsage()V

    .line 372
    if-nez v2, :cond_4

    .line 373
    iput-boolean v7, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mWaitingForData:Z

    .line 374
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications;->access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 375
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications;->access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 367
    :cond_3
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    goto :goto_4

    .line 377
    :cond_4
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mListContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications;->access$300(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 378
    iget-object v4, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->this$0:Lcom/android/settings/applications/ManageApplications;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mLoadingContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/settings/applications/ManageApplications;->access$400(Lcom/android/settings/applications/ManageApplications;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 325
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 339
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 341
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public resume(II)V
    .locals 4
    .parameter "filter"
    .parameter "sort"

    .prologue
    const/4 v3, 0x1

    .line 287
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-boolean v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 289
    iput-boolean v3, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 290
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsState;->resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 291
    iput p1, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastFilterMode:I

    .line 292
    iput p2, p0, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 293
    invoke-virtual {p0, v3}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(Z)V

    .line 297
    :goto_0
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ManageApplications$ApplicationsAdapter;->rebuild(II)V

    goto :goto_0
.end method
