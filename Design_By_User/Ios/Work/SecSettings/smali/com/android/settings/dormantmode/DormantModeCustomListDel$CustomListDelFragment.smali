.class public Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;
.super Landroid/app/ListFragment;
.source "DormantModeCustomListDel.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dormantmode/DormantModeCustomListDel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomListDelFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/ListFragment;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/app/LoaderManager$LoaderCallbacks",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# static fields
.field static final CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

.field private static mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;


# instance fields
.field builder:Landroid/net/Uri$Builder;

.field private mActionBar:Landroid/app/ActionBar;

.field private mCustomListDel:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 68
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->builder:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->mActionBar:Landroid/app/ActionBar;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->access$002(Landroid/widget/ListView;)Landroid/widget/ListView;

    .line 104
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->access$000()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0, v7}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->setHasOptionsMenu(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->mCustomListDel:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->mCustomListDel:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400df

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v4, v6

    new-array v5, v7, [I

    const v7, 0x1020014

    aput v7, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    .line 119
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->access$000()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 120
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->access$000()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 121
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->access$000()Landroid/widget/ListView;

    move-result-object v0

    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 126
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 162
    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 7
    .parameter "id"
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 142
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 144
    .local v2, baseUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const v0, 0x7f04005c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 132
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 134
    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 152
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 56
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;->mAdapter_delete_list:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 157
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 82
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 83
    return-void
.end method
