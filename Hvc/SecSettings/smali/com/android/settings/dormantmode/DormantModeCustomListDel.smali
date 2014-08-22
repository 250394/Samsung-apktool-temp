.class public Lcom/android/settings/dormantmode/DormantModeCustomListDel;
.super Landroid/app/Activity;
.source "DormantModeCustomListDel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;
    }
.end annotation


# static fields
.field private static listView:Landroid/widget/ListView;

.field private static mItem_done:Landroid/view/MenuItem;


# instance fields
.field private mMenu:Landroid/view/Menu;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 56
    return-void
.end method

.method static synthetic access$000()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .parameter "x0"

    .prologue
    .line 35
    sput-object p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->listView:Landroid/widget/ListView;

    return-object p0
.end method

.method public static checkDeleteButtonstate()V
    .locals 2

    .prologue
    .line 211
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getCheckedItemCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 213
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 215
    :cond_1
    sget-object v0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public customlistdelete()V
    .locals 9

    .prologue
    .line 222
    sget-object v7, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->listView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getCheckedItemIds()[J

    move-result-object v5

    .line 224
    .local v5, selectedItem:[J
    array-length v7, v5

    if-eqz v7, :cond_1

    .line 226
    const/4 v2, 0x0

    .line 227
    .local v2, i:I
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 229
    .local v6, selection:Ljava/lang/StringBuffer;
    const-string v7, "_id IN ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 230
    :goto_0
    array-length v7, v5

    if-ge v2, v7, :cond_0

    .line 232
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 233
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aget-wide v7, v5, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 234
    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    array-length v7, v5

    if-ge v3, v7, :cond_2

    .line 238
    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 240
    :cond_0
    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
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

    move-result-object v0

    .line 247
    .local v0, builder:Landroid/content/ContentProviderOperation$Builder;
    const-string v7, "sec_custom_dormant_contact"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 248
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 249
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 261
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 265
    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .end local v6           #selection:Ljava/lang/StringBuffer;
    :cond_1
    return-void

    .line 254
    .restart local v0       #builder:Landroid/content/ContentProviderOperation$Builder;
    .restart local v2       #i:I
    .restart local v4       #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v6       #selection:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v1

    .line 256
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 257
    .end local v1           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 259
    .local v1, e:Landroid/content/OperationApplicationException;
    invoke-virtual {v1}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_1

    .end local v0           #builder:Landroid/content/ContentProviderOperation$Builder;
    .end local v1           #e:Landroid/content/OperationApplicationException;
    .end local v2           #i:I
    .end local v4           #mOperationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    .restart local v3       #i:I
    :cond_2
    move v2, v3

    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 208
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x1020002

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 49
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 50
    new-instance v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;

    invoke-direct {v1}, Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;-><init>()V

    .line 51
    .local v1, list:Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 54
    .end local v1           #list:Lcom/android/settings/dormantmode/DormantModeCustomListDel$CustomListDelFragment;
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 169
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 171
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f11

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 172
    invoke-interface {p1, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    sput-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    .line 173
    sget-object v1, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mItem_done:Landroid/view/MenuItem;

    const v2, 0x7f09070c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 174
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f09011a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 176
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->mMenu:Landroid/view/Menu;

    .line 178
    invoke-static {}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->checkDeleteButtonstate()V

    .line 179
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 184
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 200
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 187
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->finish()V

    goto :goto_1

    .line 190
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->customlistdelete()V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->finish()V

    goto :goto_1

    .line 195
    :sswitch_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->setResult(I)V

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomListDel;->finish()V

    goto :goto_0

    .line 184
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0b03e0 -> :sswitch_2
        0x7f0b03e1 -> :sswitch_1
    .end sparse-switch
.end method
