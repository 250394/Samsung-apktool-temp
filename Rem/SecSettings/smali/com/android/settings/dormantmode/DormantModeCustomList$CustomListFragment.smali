.class public Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;
.super Landroid/app/ListFragment;
.source "DormantModeCustomList.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dormantmode/DormantModeCustomList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomListFragment"
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

.field private static CUSTOM_LIST_STATE:Ljava/lang/String;

.field private static mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;


# instance fields
.field builder:Landroid/net/Uri$Builder;

.field private mCustomListAdd:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 56
    const-string v0, ""

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->CUSTOM_LIST_STATE:Ljava/lang/String;

    .line 180
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "display_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 70
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "dormant"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "custom_list"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->builder:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    .line 80
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v7

    .line 83
    .local v7, listView:Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0, v8}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->setHasOptionsMenu(Z)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b00ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->mCustomListAdd:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->mCustomListAdd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0400de

    new-array v4, v8, [Ljava/lang/String;

    const-string v5, "display_name"

    aput-object v5, v4, v6

    new-array v5, v8, [I

    const v8, 0x1020014

    aput v8, v5, v6

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    sput-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    .line 96
    const-string v0, "custom_list_view"

    invoke-virtual {p0, v0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->setCustomListState(Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v6, v3, p0}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 100
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 104
    const-string v7, "custom_list_view"

    invoke-virtual {p0, v7}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->setCustomListState(Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 108
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 109
    const-string v7, "result"

    invoke-virtual {p3, v7}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 111
    .local v5, mParticipantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 112
    .local v3, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v6, selection:Ljava/lang/StringBuffer;
    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_0
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 116
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, args:[Ljava/lang/String;
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    aget-object v7, v0, v9

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    add-int/lit8 v3, v3, 0x1

    .line 123
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 124
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 126
    .end local v0           #args:[Ljava/lang/String;
    :cond_1
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v4, mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "dormant"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    const-string v8, "custom_list"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 133
    .local v1, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "sec_custom_dormant_contact"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 134
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7, v10}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 135
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 151
    .end local v1           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v3           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v5           #mParticipantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    invoke-virtual {v7, v9, v10, p0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 152
    return-void

    .line 140
    .restart local v1       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v3       #i:I
    .restart local v4       #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v5       #mParticipantsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6       #selection:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 142
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 145
    .local v2, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0b00ff

    if-ne v1, v2, :cond_0

    .line 206
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intent.action.INTERACTION_TOPMENU"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    .local v0, phonebookIntent:Landroid/content/Intent;
    const-string v1, "additional"

    const-string v2, "settings-phone-multi"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "maxRecipientCount"

    const/16 v2, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 211
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 213
    .end local v0           #phonebookIntent:Landroid/content/Intent;
    :cond_0
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

    .line 186
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->builder:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 188
    .local v2, baseUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/CursorLoader;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-object v3, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->CONTACTS_SUMMARY_PROJECTION:[Ljava/lang/String;

    const-string v6, "display_name COLLATE LOCALIZED ASC"

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Landroid/content/CursorLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x0

    .line 156
    const v0, 0x7f09070c

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 158
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 75
    const v0, 0x7f04005b

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
    .line 178
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
    .line 193
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 196
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    check-cast p2, Landroid/database/Cursor;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->onLoadFinished(Landroid/content/Loader;Landroid/database/Cursor;)V

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
    .line 198
    .local p1, loader:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->mAdapter_custom_list:Landroid/widget/SimpleCursorAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SimpleCursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 200
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 162
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 172
    :goto_0
    return v0

    .line 164
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/dormantmode/DormantModeCustomListDel;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const/high16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 168
    const/4 v0, 0x1

    goto :goto_0

    .line 162
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected setCustomListState(Ljava/lang/String;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 216
    sput-object p1, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;->CUSTOM_LIST_STATE:Ljava/lang/String;

    .line 217
    return-void
.end method
