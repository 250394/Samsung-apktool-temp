.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAccounts:[Landroid/accounts/Account;

.field private mCheckBoxes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/SyncStateCheckBoxPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mDateFormat:Ljava/text/DateFormat;

.field private mErrorInfoIcon:Landroid/widget/ImageView;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    .line 93
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountSyncSettings;)Landroid/accounts/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountSyncSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    return-void
.end method

.method private addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 9
    .parameter "account"
    .parameter "authority"

    .prologue
    const/4 v8, 0x0

    .line 239
    new-instance v1, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v1, v5, p1, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;)V

    .line 241
    .local v1, item:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v1, v8}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPersistent(Z)V

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, p2, v8}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 243
    .local v2, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 245
    .local v3, providerLabel:Ljava/lang/CharSequence;
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 246
    const-string v5, "AccountSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Provider needs a label for authority \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    move-object v3, p2

    .line 251
    :cond_0
    iget-object v0, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 269
    .local v0, accountType:Ljava/lang/String;
    const v5, 0x7f090701

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 270
    .local v4, title:Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 271
    invoke-virtual {v1, p2}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 272
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    return-void

    .line 243
    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #providerLabel:Ljava/lang/CharSequence;
    .end local v4           #title:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private cancelAllAccountsSync()V
    .locals 7

    .prologue
    .line 789
    const/4 v3, 0x0

    .local v3, i:I
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    array-length v5, v6

    .local v5, n:I
    :goto_0
    if-ge v3, v5, :cond_2

    .line 790
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    aget-object v0, v6, v3

    .line 791
    .local v0, account:Landroid/accounts/Account;
    iget-object v6, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 792
    .local v2, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    .line 793
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 795
    .local v1, authority:Ljava/lang/String;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 796
    const/4 v6, 0x0

    invoke-direct {p0, v0, v1, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 789
    .end local v1           #authority:Ljava/lang/String;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 801
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    return-void
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 443
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 444
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 445
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 483
    .local p1, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncInfo;

    .line 484
    .local v1, syncInfo:Landroid/content/SyncInfo;
    iget-object v2, v1, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v2, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    const/4 v2, 0x1

    .line 488
    .end local v1           #syncInfo:Landroid/content/SyncInfo;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 473
    if-eqz p3, :cond_0

    .line 474
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 475
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 476
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 480
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 478
    :cond_0
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 9
    .parameter "startSync"

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    .line 450
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .line 452
    .local v5, pref:Landroid/preference/Preference;
    instance-of v7, v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-nez v7, :cond_1

    .line 450
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 455
    check-cast v6, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 456
    .local v6, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v6}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 459
    invoke-virtual {v6}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v7, v8, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_1

    .line 462
    .end local v5           #pref:Landroid/preference/Preference;
    .end local v6           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_2
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v7, :cond_4

    .line 463
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/accounts/AccountSyncSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 464
    .local v1, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 465
    .local v0, authority:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 466
    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, v7, v0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_2

    .line 470
    .end local v0           #authority:Ljava/lang/String;
    .end local v1           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private setFeedsState()V
    .locals 30

    .prologue
    .line 499
    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    .line 500
    .local v11, date:Ljava/util/Date;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v10

    .line 501
    .local v10, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/16 v22, 0x0

    .line 502
    .local v22, syncIsFailing:Z
    const/4 v4, 0x0

    .line 505
    .local v4, anySyncEnabledAuth:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 507
    const/4 v12, 0x0

    .local v12, i:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    .local v9, count:I
    :goto_0
    if-ge v12, v9, :cond_f

    .line 508
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v17

    .line 509
    .local v17, pref:Landroid/preference/Preference;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 507
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v23, v17

    .line 512
    check-cast v23, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 514
    .local v23, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, authority:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 517
    .local v2, account:Landroid/accounts/Account;
    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v18

    .line 518
    .local v18, status:Landroid/content/SyncStatusInfo;
    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v21

    .line 519
    .local v21, syncEnabled:Z
    if-nez v18, :cond_5

    const/4 v6, 0x0

    .line 520
    .local v6, authorityIsPending:Z
    :goto_2
    if-nez v18, :cond_6

    const/4 v13, 0x0

    .line 522
    .local v13, initialSync:Z
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v2, v5}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 523
    .local v3, activelySyncing:Z
    if-eqz v18, :cond_7

    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-eqz v26, :cond_7

    const/16 v26, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_7

    const/4 v14, 0x1

    .line 527
    .local v14, lastSyncFailed:Z
    :goto_4
    if-nez v21, :cond_8

    .line 528
    const/4 v14, 0x0

    .line 532
    :goto_5
    if-eqz v14, :cond_1

    if-nez v3, :cond_1

    if-nez v6, :cond_1

    .line 533
    const/16 v22, 0x1

    .line 535
    :cond_1
    const-string v26, "AccountSettings"

    const/16 v27, 0x2

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 536
    const-string v26, "AccountSettings"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Update sync status: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " active = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " pend ="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_2
    if-nez v18, :cond_9

    const-wide/16 v19, 0x0

    .line 541
    .local v19, successEndTime:J
    :goto_6
    const-wide/16 v26, 0x0

    cmp-long v26, v19, v26

    if-eqz v26, :cond_a

    .line 542
    move-wide/from16 v0, v19

    invoke-virtual {v11, v0, v1}, Ljava/util/Date;->setTime(J)V

    .line 543
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 545
    .local v25, timeString:Ljava/lang/String;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 549
    .end local v25           #timeString:Ljava/lang/String;
    :goto_7
    invoke-static {v2, v5}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v24

    .line 551
    .local v24, syncState:I
    if-eqz v3, :cond_b

    if-ltz v24, :cond_b

    if-nez v13, :cond_b

    const/16 v26, 0x1

    :goto_8
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setActive(Z)V

    .line 553
    if-eqz v6, :cond_c

    if-ltz v24, :cond_c

    if-nez v13, :cond_c

    const/16 v26, 0x1

    :goto_9
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setPending(Z)V

    .line 556
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setFailed(Z)V

    .line 557
    const-string v26, "connectivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/ConnectivityManager;

    .line 559
    .local v8, connManager:Landroid/net/ConnectivityManager;
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v15

    .line 560
    .local v15, masterSyncAutomatically:Z
    invoke-virtual {v8}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v7

    .line 561
    .local v7, backgroundDataEnabled:Z
    if-eqz v15, :cond_3

    if-nez v7, :cond_d

    :cond_3
    const/16 v16, 0x1

    .line 562
    .local v16, oneTimeSyncMode:Z
    :goto_a
    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setOneTimeSyncMode(Z)V

    .line 563
    if-nez v16, :cond_4

    if-eqz v21, :cond_e

    :cond_4
    const/16 v26, 0x1

    :goto_b
    move-object/from16 v0, v23

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setChecked(Z)V

    goto/16 :goto_1

    .line 519
    .end local v3           #activelySyncing:Z
    .end local v6           #authorityIsPending:Z
    .end local v7           #backgroundDataEnabled:Z
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v13           #initialSync:Z
    .end local v14           #lastSyncFailed:Z
    .end local v15           #masterSyncAutomatically:Z
    .end local v16           #oneTimeSyncMode:Z
    .end local v19           #successEndTime:J
    .end local v24           #syncState:I
    :cond_5
    move-object/from16 v0, v18

    iget-boolean v6, v0, Landroid/content/SyncStatusInfo;->pending:Z

    goto/16 :goto_2

    .line 520
    .restart local v6       #authorityIsPending:Z
    :cond_6
    move-object/from16 v0, v18

    iget-boolean v13, v0, Landroid/content/SyncStatusInfo;->initialize:Z

    goto/16 :goto_3

    .line 523
    .restart local v3       #activelySyncing:Z
    .restart local v13       #initialSync:Z
    :cond_7
    const/4 v14, 0x0

    goto/16 :goto_4

    .line 530
    .restart local v14       #lastSyncFailed:Z
    :cond_8
    const/4 v4, 0x1

    goto/16 :goto_5

    .line 540
    :cond_9
    move-object/from16 v0, v18

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    move-wide/from16 v19, v0

    goto/16 :goto_6

    .line 547
    .restart local v19       #successEndTime:J
    :cond_a
    const-string v26, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 551
    .restart local v24       #syncState:I
    :cond_b
    const/16 v26, 0x0

    goto :goto_8

    .line 553
    :cond_c
    const/16 v26, 0x0

    goto :goto_9

    .line 561
    .restart local v7       #backgroundDataEnabled:Z
    .restart local v8       #connManager:Landroid/net/ConnectivityManager;
    .restart local v15       #masterSyncAutomatically:Z
    :cond_d
    const/16 v16, 0x0

    goto :goto_a

    .line 563
    .restart local v16       #oneTimeSyncMode:Z
    :cond_e
    const/16 v26, 0x0

    goto :goto_b

    .line 566
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #activelySyncing:Z
    .end local v5           #authority:Ljava/lang/String;
    .end local v6           #authorityIsPending:Z
    .end local v7           #backgroundDataEnabled:Z
    .end local v8           #connManager:Landroid/net/ConnectivityManager;
    .end local v13           #initialSync:Z
    .end local v14           #lastSyncFailed:Z
    .end local v15           #masterSyncAutomatically:Z
    .end local v16           #oneTimeSyncMode:Z
    .end local v17           #pref:Landroid/preference/Preference;
    .end local v18           #status:Landroid/content/SyncStatusInfo;
    .end local v19           #successEndTime:J
    .end local v21           #syncEnabled:Z
    .end local v23           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    .end local v24           #syncState:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    if-eqz v22, :cond_10

    const/16 v26, 0x0

    :goto_c
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    if-eqz v22, :cond_11

    const/16 v26, 0x0

    :goto_d
    move-object/from16 v0, v27

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 568
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 569
    return-void

    .line 566
    :cond_10
    const/16 v26, 0x8

    goto :goto_c

    .line 567
    :cond_11
    const/16 v26, 0x8

    goto :goto_d
.end method

.method private startSyncForEnabledProviders()V
    .locals 1

    .prologue
    .line 438
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 440
    return-void
.end method

.method private updateAccountCheckboxes([Landroid/accounts/Account;)V
    .locals 14
    .parameter "accounts"

    .prologue
    .line 580
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 582
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v9

    .line 583
    .local v9, syncAdapters:[Landroid/content/SyncAdapterType;
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    .line 585
    .local v1, accountTypeToAuthorities:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    array-length v7, v9

    .local v7, n:I
    :goto_0
    if-ge v4, v7, :cond_3

    .line 586
    aget-object v8, v9, v4

    .line 587
    .local v8, sa:Landroid/content/SyncAdapterType;
    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 588
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 589
    .local v2, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_0

    .line 590
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 591
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v11, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    :cond_0
    const-string v11, "AccountSettings"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 594
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onAccountUpdated: added authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to accountType "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_1
    iget-object v11, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 601
    :cond_2
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    iget-object v12, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    .end local v8           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_2
    if-ge v4, v7, :cond_4

    .line 606
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 605
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 608
    :cond_4
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 610
    const/4 v4, 0x0

    array-length v7, p1

    :goto_3
    if-ge v4, v7, :cond_e

    .line 611
    aget-object v0, p1, v4

    .line 612
    .local v0, account:Landroid/accounts/Account;
    const-string v11, "AccountSettings"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 613
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "looking for sync adapters that match account "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    :cond_5
    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 616
    .restart local v2       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_d

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "com.sec.feature.sns_deepinteg"

    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_9

    .line 619
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v11, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v11, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-object v11, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v12, "com.facebook.auth.login"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 620
    :cond_6
    const/4 v5, 0x0

    .local v5, j:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .local v6, m:I
    :goto_4
    if-ge v5, v6, :cond_d

    .line 621
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 623
    .local v3, authority:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 624
    .local v10, syncState:I
    const-string v11, "AccountSettings"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 625
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  found authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_7
    if-lez v10, :cond_8

    .line 628
    invoke-direct {p0, v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 620
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 632
    .end local v3           #authority:Ljava/lang/String;
    .end local v5           #j:I
    .end local v6           #m:I
    .end local v10           #syncState:I
    :cond_9
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v11, v0}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 633
    :cond_a
    const/4 v5, 0x0

    .restart local v5       #j:I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    .restart local v6       #m:I
    :goto_5
    if-ge v5, v6, :cond_d

    .line 634
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 636
    .restart local v3       #authority:Ljava/lang/String;
    invoke-static {v0, v3}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v10

    .line 637
    .restart local v10       #syncState:I
    const-string v11, "AccountSettings"

    const/4 v12, 0x2

    invoke-static {v11, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 638
    const-string v11, "AccountSettings"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "  found authority "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    :cond_b
    if-lez v10, :cond_c

    .line 641
    invoke-direct {p0, v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateCheckBox(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 633
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 610
    .end local v3           #authority:Ljava/lang/String;
    .end local v5           #j:I
    .end local v6           #m:I
    .end local v10           #syncState:I
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    .line 648
    .end local v0           #account:Landroid/accounts/Account;
    .end local v2           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_e
    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 649
    const/4 v4, 0x0

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    :goto_6
    if-ge v4, v7, :cond_f

    .line 650
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v12

    iget-object v11, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mCheckBoxes:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/preference/Preference;

    invoke-virtual {v12, v11}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 649
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 652
    :cond_f
    return-void
.end method

.method private updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter

    .prologue
    .line 770
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 771
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 772
    if-eqz v1, :cond_0

    .line 773
    const-string v2, "account"

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 778
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x1000

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 770
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    const/16 v4, 0x8

    .line 180
    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 182
    const v1, 0x7f0b0017

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    .line 183
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020101

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 186
    const v1, 0x7f0b0018

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 187
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const v1, 0x7f0b02a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 191
    .local v0, titleLayout:Landroid/widget/LinearLayout;
    const v1, 0x7f0202f6

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 194
    .end local v0           #titleLayout:Landroid/widget/LinearLayout;
    :cond_0
    const v1, 0x7f0b02a6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 195
    const v1, 0x7f0b02a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 196
    const v1, 0x7f0b02a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 197
    return-void
.end method

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 0
    .parameter "accounts"

    .prologue
    .line 573
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 574
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccounts:[Landroid/accounts/Account;

    .line 575
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountCheckboxes([Landroid/accounts/Account;)V

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 577
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 201
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 205
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mDateFormat:Ljava/text/DateFormat;

    .line 206
    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mTimeFormat:Ljava/text/DateFormat;

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 209
    .local v1, arguments:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .line 210
    const-string v2, "AccountSettings"

    const-string v3, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    const-string v2, "account"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/accounts/Account;

    iput-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 215
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_0

    .line 216
    const-string v2, "AccountSettings"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AccountSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got account: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_2
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 218
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v11, 0x0

    const/4 v3, 0x1

    .line 659
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 661
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 664
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v2, :cond_9

    .line 665
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v4, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 666
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 668
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 669
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v5, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 673
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "com.sec.feature.sns_deepinteg"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v3, :cond_4

    .line 674
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v2, "com.facebook.auth.login"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v0, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 676
    array-length v0, v0

    if-nez v0, :cond_2

    .line 677
    const-string v0, "com.sec.android.app.sns3.facebook"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v4, v0

    .line 691
    :goto_0
    if-eqz v4, :cond_9

    .line 692
    invoke-direct {p0, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->updatePreferenceIntents(Landroid/preference/PreferenceScreen;)V

    .line 695
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 697
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v6

    move v2, v1

    move v0, v3

    :goto_1
    if-ge v2, v6, :cond_8

    .line 698
    invoke-virtual {v4, v2}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 700
    instance-of v8, v7, Landroid/preference/PreferenceCategory;

    if-eqz v8, :cond_5

    .line 701
    new-instance v8, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 702
    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 704
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    :cond_1
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 680
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 767
    :goto_3
    return-void

    .line 684
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 688
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesForType(Ljava/lang/String;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 706
    :cond_5
    instance-of v8, v7, Landroid/preference/PreferenceScreen;

    if-eqz v8, :cond_6

    .line 708
    new-instance v8, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 709
    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 710
    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 711
    invoke-virtual {v7}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 712
    invoke-virtual {v7}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 713
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 716
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.sec.feature.sns_deepinteg"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-ne v8, v3, :cond_1

    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "sns_settings"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 719
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v7

    const-string v8, "com.facebook.auth.login"

    invoke-virtual {v7, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v7

    .line 721
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v8

    const-string v9, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v8, v9}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v8

    .line 724
    array-length v7, v7

    if-lez v7, :cond_1

    array-length v7, v8

    if-nez v7, :cond_1

    .line 727
    new-instance v7, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v7, v8, v11}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 728
    const v8, 0x7f090c32

    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 729
    const-string v8, "sns_single_sign_on"

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 730
    const v8, 0x7f090c33

    invoke-virtual {p0, v8}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 731
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 732
    const-string v9, "com.sec.android.app.sns3"

    const-string v10, "com.sec.android.app.sns3.auth.sp.facebook.SnsAccountFbAuthSSONotification"

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const-string v9, "com.sec.android.app.sns3.ACCOUNT_MANAGER_ENTRY"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    invoke-virtual {v7, v8}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 736
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 740
    :cond_6
    instance-of v8, v7, Landroid/preference/Preference;

    if-eqz v8, :cond_7

    .line 742
    new-instance v8, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v8, v9, v11}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 743
    invoke-virtual {v7}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 744
    invoke-virtual {v7}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 745
    invoke-virtual {v7}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 746
    invoke-virtual {v7}, Landroid/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 748
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_7
    move v0, v1

    .line 751
    goto/16 :goto_2

    .line 756
    :cond_8
    if-ne v0, v3, :cond_9

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 759
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    :goto_4
    if-ge v1, v2, :cond_9

    .line 760
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 759
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 766
    :cond_9
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    goto/16 :goto_3
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 167
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f0906fd

    const v4, 0x104000a

    const/4 v3, 0x0

    .line 97
    const/4 v0, 0x0

    .line 98
    .local v0, dialog:Landroid/app/Dialog;
    const/16 v1, 0x64

    if-ne p1, v1, :cond_1

    .line 99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0906fe

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0906fa

    new-instance v3, Lcom/android/settings/accounts/AccountSyncSettings$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accounts/AccountSyncSettings$1;-><init>(Lcom/android/settings/accounts/AccountSyncSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 159
    :cond_0
    :goto_0
    return-object v0

    .line 146
    :cond_1
    const/16 v1, 0x65

    if-ne p1, v1, :cond_2

    .line 147
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0906ff

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 152
    :cond_2
    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 153
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090702

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090703

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 9
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x6

    const/4 v5, 0x0

    .line 277
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    const v3, 0x7f0906fa

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020117

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 281
    .local v0, removeAccount:Landroid/view/MenuItem;
    const v3, 0x7f0906ef

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020114

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 284
    .local v2, syncNow:Landroid/view/MenuItem;
    const v3, 0x7f0908c4

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    const v4, 0x7f020108

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 287
    .local v1, syncCancel:Landroid/view/MenuItem;
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 291
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 310
    :goto_0
    return-void

    .line 294
    .end local v0           #removeAccount:Landroid/view/MenuItem;
    .end local v1           #syncCancel:Landroid/view/MenuItem;
    .end local v2           #syncNow:Landroid/view/MenuItem;
    :cond_0
    const v3, 0x7f0906ef

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v7, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    .line 297
    .restart local v2       #syncNow:Landroid/view/MenuItem;
    const v3, 0x7f0908c4

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v8, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 300
    .restart local v1       #syncCancel:Landroid/view/MenuItem;
    const v3, 0x7f0906fa

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5, v4, v5, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 303
    .restart local v0       #removeAccount:Landroid/view/MenuItem;
    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 305
    invoke-interface {v1, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 307
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 172
    const v1, 0x7f040008

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, view:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 176
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 390
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 405
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 392
    :pswitch_0
    const-string v1, "AccountSettings"

    const-string v2, "AccountSyncSettings : Sync now button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelAllAccountsSync()V

    .line 394
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    goto :goto_0

    .line 397
    :pswitch_1
    const-string v1, "AccountSettings"

    const-string v2, "AccountSyncSettings : Cancel sync button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    goto :goto_0

    .line 401
    :pswitch_2
    const-string v1, "AccountSettings"

    const-string v2, "AccountSyncSettings : Remove account button is clicked!!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->showDialog(I)V

    goto :goto_0

    .line 390
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 234
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 236
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 8
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v6, 0x1

    .line 410
    instance-of v7, p2, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-eqz v7, :cond_3

    move-object v5, p2

    .line 411
    check-cast v5, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 412
    .local v5, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, authority:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 414
    .local v0, account:Landroid/accounts/Account;
    invoke-static {v0, v1}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v3

    .line 415
    .local v3, syncAutomatically:Z
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isOneTimeSyncMode()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 416
    invoke-direct {p0, v0, v1, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 433
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v3           #syncAutomatically:Z
    .end local v5           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_0
    :goto_0
    return v6

    .line 418
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authority:Ljava/lang/String;
    .restart local v3       #syncAutomatically:Z
    .restart local v5       #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_1
    invoke-virtual {v5}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->isChecked()Z

    move-result v4

    .line 419
    .local v4, syncOn:Z
    move v2, v3

    .line 420
    .local v2, oldSyncState:Z
    if-eq v4, v2, :cond_0

    .line 422
    invoke-static {v0, v1, v4}, Landroid/content/ContentResolver;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 426
    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v7

    if-eqz v7, :cond_2

    if-nez v4, :cond_0

    .line 427
    :cond_2
    invoke-direct {p0, v0, v1, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 433
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authority:Ljava/lang/String;
    .end local v2           #oldSyncState:Z
    .end local v3           #syncAutomatically:Z
    .end local v4           #syncOn:Z
    .end local v5           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 18
    .parameter "menu"

    .prologue
    .line 314
    invoke-super/range {p0 .. p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 315
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v6

    .line 316
    .local v6, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_1

    const/4 v12, 0x1

    .line 318
    .local v12, syncActive:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    if-nez v15, :cond_3

    .line 319
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v16

    if-nez v12, :cond_2

    const/4 v15, 0x1

    :goto_1
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 320
    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 386
    :cond_0
    :goto_2
    return-void

    .line 316
    .end local v12           #syncActive:Z
    :cond_1
    const/4 v12, 0x0

    goto :goto_0

    .line 319
    .restart local v12       #syncActive:Z
    :cond_2
    const/4 v15, 0x0

    goto :goto_1

    .line 322
    :cond_3
    const/4 v4, 0x0

    .line 323
    .local v4, anySyncEnabledAuth:Z
    const/4 v9, 0x0

    .line 324
    .local v9, isSyncOn:Z
    const/4 v8, 0x0

    .line 325
    .local v8, isAnyAuthority:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    .line 327
    .local v11, preferenceCount:I
    const-string v15, "AccountSettings"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "AccountSyncSettings : SELECTED ACCOUNT = <<< "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " >>>"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/4 v7, 0x0

    .local v7, i:I
    :goto_3
    if-ge v7, v11, :cond_8

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v15

    invoke-virtual {v15, v7}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v10

    .line 332
    .local v10, pref:Landroid/preference/Preference;
    instance-of v15, v10, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    if-nez v15, :cond_5

    .line 330
    :cond_4
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 335
    :cond_5
    const/4 v8, 0x1

    move-object v14, v10

    .line 336
    check-cast v14, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;

    .line 338
    .local v14, syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    invoke-virtual {v14}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 339
    .local v5, authority:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/settings/accounts/SyncStateCheckBoxPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 341
    .local v3, account:Landroid/accounts/Account;
    invoke-static {v3, v5}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v13

    .line 343
    .local v13, syncEnabled:Z
    if-eqz v13, :cond_6

    .line 344
    const/4 v4, 0x1

    .line 347
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-static {v15, v5}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-static {v15, v5}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 348
    :cond_7
    const/4 v9, 0x1

    goto :goto_4

    .line 353
    .end local v3           #account:Landroid/accounts/Account;
    .end local v5           #authority:Ljava/lang/String;
    .end local v10           #pref:Landroid/preference/Preference;
    .end local v13           #syncEnabled:Z
    .end local v14           #syncPref:Lcom/android/settings/accounts/SyncStateCheckBoxPreference;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    const-string v16, "com.sec.feature.sns_deepinteg"

    invoke-virtual/range {v15 .. v16}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v15, v15, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v16, "com.sec.android.app.sns3.facebook"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v15

    const-string v16, "com.facebook.auth.login"

    invoke-virtual/range {v15 .. v16}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 356
    .local v2, ac:[Landroid/accounts/Account;
    const-string v5, "com.android.contacts"

    .line 357
    .restart local v5       #authority:Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v2, v15

    invoke-static {v15, v5}, Landroid/content/ContentResolver;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_9

    const/4 v15, 0x0

    aget-object v15, v2, v15

    invoke-static {v15, v5}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a

    .line 358
    :cond_9
    const/4 v9, 0x1

    .line 362
    .end local v2           #ac:[Landroid/accounts/Account;
    .end local v5           #authority:Ljava/lang/String;
    :cond_a
    if-eqz v9, :cond_b

    if-eqz v8, :cond_b

    .line 363
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 364
    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 365
    const-string v15, "AccountSettings"

    const-string v16, "onPrepareOptionsMenu : [ Cancel Sync ] button is visible!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v4           #anySyncEnabledAuth:Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    invoke-static {v15}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 379
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    invoke-interface {v15}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 380
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const v16, 0x7f020114

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 367
    .restart local v4       #anySyncEnabledAuth:Z
    :cond_b
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 368
    const/4 v15, 0x3

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 369
    if-eqz v8, :cond_d

    .line 370
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v16

    if-eqz v16, :cond_c

    .end local v4           #anySyncEnabledAuth:Z
    :goto_6
    invoke-interface {v15, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 376
    :goto_7
    const-string v15, "AccountSettings"

    const-string v16, "onPrepareOptionsMenu : [ Sync now ] button is visible!!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 370
    .restart local v4       #anySyncEnabledAuth:Z
    :cond_c
    const/4 v4, 0x1

    goto :goto_6

    .line 374
    :cond_d
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_7

    .line 382
    .end local v4           #anySyncEnabledAuth:Z
    :cond_e
    const/4 v15, 0x2

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v15

    const v16, 0x7f020115

    invoke-interface/range {v15 .. v16}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 225
    .local v0, activity:Landroid/app/Activity;
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 227
    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdated([Landroid/accounts/Account;)V

    .line 229
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 230
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .prologue
    .line 493
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :goto_0
    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    goto :goto_0
.end method
