.class public Lcom/android/settings/accounts/ManageAccountsSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "ManageAccountsSettings.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;
.implements Lcom/android/settings/DialogCreatable;


# instance fields
.field private mAddAccount:Landroid/view/MenuItem;

.field private mAuthorities:[Ljava/lang/String;

.field private mAutoSyncSwitch:Landroid/widget/Switch;

.field private mCancelSync:Landroid/view/MenuItem;

.field private mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mErrorInfoIcon:Landroid/widget/ImageView;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mManageAccountsCategory:Landroid/preference/PreferenceCategory;

.field private mSwitchPreference:Landroid/preference/SwitchPreference;

.field private mSyncAll:Landroid/view/MenuItem;

.field private mTelMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ManageAccountsSettings;)Landroid/preference/SwitchPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    return-object v0
.end method

.method private cancelSyncAllForEnabledProviders()V
    .locals 1

    .prologue
    .line 640
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 641
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 642
    return-void
.end method

.method private requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 4
    .parameter "account"
    .parameter "authority"
    .parameter "flag"

    .prologue
    .line 679
    if-eqz p3, :cond_0

    .line 680
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 681
    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "force"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 682
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : request : account = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    invoke-static {p1, p2, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 690
    .end local v0           #extras:Landroid/os/Bundle;
    :goto_0
    return-void

    .line 686
    :cond_0
    const-string v1, "AccountSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ManageAccountsSettings : cancel : account = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ], authority = [ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {p1, p2}, Landroid/content/ContentResolver;->cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private requestOrCancelSyncAllForEnabledProviders(Z)V
    .locals 11
    .parameter "startSync"

    .prologue
    .line 645
    const/4 v3, 0x0

    .line 647
    .local v3, count:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 653
    :goto_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_6

    .line 654
    const/4 v6, 0x0

    .line 656
    .local v6, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 657
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    check-cast v6, Lcom/android/settings/AccountPreference;

    .line 661
    .restart local v6       #pref:Lcom/android/settings/AccountPreference;
    :goto_2
    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 662
    .local v0, account:Landroid/accounts/Account;
    invoke-virtual {v6}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v1

    .line 663
    .local v1, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_4

    .line 664
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 665
    .local v2, authority:Ljava/lang/String;
    invoke-static {v0, v2}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v7

    .line 666
    .local v7, syncEnabled:Z
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_0

    .line 667
    :cond_1
    invoke-direct {p0, v0, v2, p1}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAll(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_3

    .line 650
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #authority:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    .end local v7           #syncEnabled:Z
    :cond_2
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    goto :goto_0

    .line 659
    .restart local v4       #i:I
    .restart local v6       #pref:Lcom/android/settings/AccountPreference;
    :cond_3
    iget-object v8, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v8, v4}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v6

    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    check-cast v6, Lcom/android/settings/AccountPreference;

    .restart local v6       #pref:Lcom/android/settings/AccountPreference;
    goto :goto_2

    .line 671
    .restart local v0       #account:Landroid/accounts/Account;
    .restart local v1       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v8, "AccountSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ManageAccountsSettings : requestOrCancelSyncAllForEnabledProviders : no syncadapters found for [ "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 676
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6           #pref:Lcom/android/settings/AccountPreference;
    :cond_6
    return-void
.end method

.method private setTextSyncAll(Z)V
    .locals 21
    .parameter "bAnySyncEnabledAuth"

    .prologue
    .line 447
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v7

    .line 448
    .local v7, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_4

    const/4 v14, 0x1

    .line 449
    .local v14, isSyncActive:Z
    :goto_0
    const/4 v13, 0x0

    .line 450
    .local v13, isAnyAuthority:Z
    const/16 v17, 0x0

    .line 451
    .local v17, syncPendingCount:I
    const/16 v16, 0x0

    .line 452
    .local v16, preferenceCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 453
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v16

    .line 458
    :goto_1
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move/from16 v0, v16

    if-ge v9, v0, :cond_9

    .line 459
    const/4 v15, 0x0

    .line 460
    .local v15, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v15

    .end local v15           #pref:Lcom/android/settings/AccountPreference;
    check-cast v15, Lcom/android/settings/AccountPreference;

    .line 465
    .restart local v15       #pref:Lcom/android/settings/AccountPreference;
    :goto_3
    invoke-virtual {v15}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v2

    .line 466
    .local v2, account:Landroid/accounts/Account;
    invoke-virtual {v15}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v3

    .line 467
    .local v3, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_7

    .line 468
    const/4 v13, 0x1

    .line 469
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 470
    .local v4, authority:Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 471
    add-int/lit8 v17, v17, 0x1

    .line 473
    :cond_1
    const/4 v6, 0x0

    .line 474
    .local v6, currentAuth:Z
    const/4 v5, 0x0

    .line 475
    .local v5, currentAccount:Z
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, i$:Ljava/util/Iterator;
    :cond_2
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/SyncInfo;

    .line 476
    .local v12, info:Landroid/content/SyncInfo;
    iget-object v0, v12, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 477
    const/4 v6, 0x1

    .line 479
    :cond_3
    new-instance v18, Landroid/accounts/Account;

    iget-object v0, v12, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-object v0, v12, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v18 .. v20}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 480
    const/4 v5, 0x1

    goto :goto_4

    .line 448
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #authority:Ljava/lang/String;
    .end local v5           #currentAccount:Z
    .end local v6           #currentAuth:Z
    .end local v9           #i:I
    .end local v11           #i$:Ljava/util/Iterator;
    .end local v12           #info:Landroid/content/SyncInfo;
    .end local v13           #isAnyAuthority:Z
    .end local v14           #isSyncActive:Z
    .end local v15           #pref:Lcom/android/settings/AccountPreference;
    .end local v16           #preferenceCount:I
    .end local v17           #syncPendingCount:I
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 455
    .restart local v13       #isAnyAuthority:Z
    .restart local v14       #isSyncActive:Z
    .restart local v16       #preferenceCount:I
    .restart local v17       #syncPendingCount:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v16

    goto/16 :goto_1

    .line 463
    .restart local v9       #i:I
    .restart local v15       #pref:Lcom/android/settings/AccountPreference;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v15

    .end local v15           #pref:Lcom/android/settings/AccountPreference;
    check-cast v15, Lcom/android/settings/AccountPreference;

    .restart local v15       #pref:Lcom/android/settings/AccountPreference;
    goto/16 :goto_3

    .line 485
    .restart local v2       #account:Landroid/accounts/Account;
    .restart local v3       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_7
    const-string v18, "AccountSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ManageAccountsSettings : setSyncButtonText : no syncadapters found for [ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 492
    .end local v2           #account:Landroid/accounts/Account;
    .end local v3           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15           #pref:Lcom/android/settings/AccountPreference;
    :cond_9
    if-nez v16, :cond_b

    .line 494
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 496
    const-string v18, "AccountSettings"

    const-string v19, "ManageAccountsSettings : Sync button is removed !!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    .end local p1
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const v19, 0x7f020114

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 529
    :cond_a
    :goto_6
    return-void

    .line 498
    .restart local p1
    :cond_b
    if-nez v14, :cond_f

    if-nez v17, :cond_f

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 501
    if-eqz v13, :cond_e

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Switch;->isChecked()Z

    move-result v19

    if-eqz v19, :cond_d

    .end local p1
    :goto_7
    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 510
    :cond_c
    :goto_8
    const-string v18, "AccountSettings"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "ManageAccountsSettings : Sync button is [ Sync all ] and enable is [ "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " ]"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 525
    :catch_0
    move-exception v8

    .line 526
    .local v8, e:Ljava/lang/NullPointerException;
    const-string v18, "AccountSettings"

    const-string v19, "ManageAccountsSettings : setTextSyncAll() : Null Pointer Exception!!!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 502
    .end local v8           #e:Ljava/lang/NullPointerException;
    .restart local p1
    :cond_d
    const/16 p1, 0x1

    goto :goto_7

    .line 504
    :cond_e
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 506
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const v19, 0x7f020115

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_8

    .line 513
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 516
    const-string v18, "AccountSettings"

    const-string v19, "ManageAccountsSettings : Sync button is [ Cancel sync ] !!"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 522
    .end local p1
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    move-object/from16 v18, v0

    const v19, 0x7f020115

    invoke-interface/range {v18 .. v19}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_6
.end method

.method private startAccountSettings(Lcom/android/settings/AccountPreference;)V
    .locals 7
    .parameter

    .prologue
    .line 250
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 251
    const-string v0, "account"

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0906e2

    invoke-virtual {p1}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v4

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    const/4 v6, 0x1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 256
    return-void
.end method

.method private startSyncAllForEnabledProvider()V
    .locals 1

    .prologue
    .line 635
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->requestOrCancelSyncAllForEnabledProviders(Z)V

    .line 636
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 637
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

.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 24
    .parameter "accounts"

    .prologue
    .line 533
    const-string v20, ""

    .line 534
    .local v20, myphonebook_isd:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-nez v3, :cond_0

    .line 604
    :goto_0
    return-void

    .line 535
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 536
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 540
    :goto_1
    const/16 v17, 0x0

    .local v17, i:I
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v21, v0

    .local v21, n:I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 541
    aget-object v10, p1, v17

    .line 542
    .local v10, account:Landroid/accounts/Account;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 544
    .local v6, auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v23, 0x1

    .line 545
    .local v23, showAccount:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    if-eqz v3, :cond_1

    if-eqz v6, :cond_1

    .line 546
    const/16 v23, 0x0

    .line 547
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .local v15, arr$:[Ljava/lang/String;
    array-length v0, v15

    move/from16 v19, v0

    .local v19, len$:I
    const/16 v18, 0x0

    .local v18, i$:I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_1

    aget-object v22, v15, v18

    .line 548
    .local v22, requestedAuthority:Ljava/lang/String;
    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 549
    const/16 v23, 0x1

    .line 555
    .end local v15           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v22           #requestedAuthority:Ljava/lang/String;
    :cond_1
    if-eqz v23, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 556
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/settings/accounts/ManageAccountsSettings;->getProviderNameForType(Landroid/accounts/Account;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 557
    .local v7, providerName:Ljava/lang/CharSequence;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 559
    .local v5, icon:Landroid/graphics/drawable/Drawable;
    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v8, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6

    .line 561
    const-string v7, ""

    .line 562
    const-string v16, "com.android.tmo_myphonebook"

    .line 565
    .local v16, getType:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v8, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v8}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 567
    new-instance v4, Landroid/accounts/Account;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v4, v0, v1}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    .local v4, setAccount:Landroid/accounts/Account;
    new-instance v2, Lcom/android/settings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 570
    .local v2, preference:Lcom/android/settings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 571
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 540
    .end local v2           #preference:Lcom/android/settings/AccountPreference;
    .end local v4           #setAccount:Landroid/accounts/Account;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v7           #providerName:Ljava/lang/CharSequence;
    .end local v16           #getType:Ljava/lang/String;
    :cond_2
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 538
    .end local v6           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10           #account:Landroid/accounts/Account;
    .end local v17           #i:I
    .end local v21           #n:I
    .end local v23           #showAccount:Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    goto/16 :goto_1

    .line 547
    .restart local v6       #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v10       #account:Landroid/accounts/Account;
    .restart local v15       #arr$:[Ljava/lang/String;
    .restart local v17       #i:I
    .restart local v18       #i$:I
    .restart local v19       #len$:I
    .restart local v21       #n:I
    .restart local v22       #requestedAuthority:Ljava/lang/String;
    .restart local v23       #showAccount:Z
    :cond_4
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 573
    .end local v15           #arr$:[Ljava/lang/String;
    .end local v18           #i$:I
    .end local v19           #len$:I
    .end local v22           #requestedAuthority:Ljava/lang/String;
    .restart local v2       #preference:Lcom/android/settings/AccountPreference;
    .restart local v4       #setAccount:Landroid/accounts/Account;
    .restart local v5       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v7       #providerName:Ljava/lang/CharSequence;
    .restart local v16       #getType:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 576
    .end local v2           #preference:Lcom/android/settings/AccountPreference;
    .end local v4           #setAccount:Landroid/accounts/Account;
    .end local v16           #getType:Ljava/lang/String;
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v8, "com.sec.feature.sns_deepinteg"

    invoke-virtual {v3, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_8

    iget-object v3, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v8, "com.facebook.auth.login"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 579
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    const-string v8, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v3, v8}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v14

    .line 580
    .local v14, ac:[Landroid/accounts/Account;
    new-instance v2, Lcom/android/settings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    move-object v8, v2

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 582
    .restart local v2       #preference:Lcom/android/settings/AccountPreference;
    array-length v3, v14

    if-nez v3, :cond_2

    .line 583
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 584
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 586
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_4

    .line 593
    .end local v2           #preference:Lcom/android/settings/AccountPreference;
    .end local v14           #ac:[Landroid/accounts/Account;
    :cond_8
    new-instance v2, Lcom/android/settings/AccountPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    move-object v8, v2

    move-object v11, v5

    move-object v12, v6

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/settings/AccountPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Landroid/graphics/drawable/Drawable;Ljava/util/ArrayList;Ljava/lang/CharSequence;)V

    .line 595
    .restart local v2       #preference:Lcom/android/settings/AccountPreference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 596
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 598
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_4

    .line 603
    .end local v2           #preference:Lcom/android/settings/AccountPreference;
    .end local v5           #icon:Landroid/graphics/drawable/Drawable;
    .end local v6           #auths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7           #providerName:Ljava/lang/CharSequence;
    .end local v10           #account:Landroid/accounts/Account;
    .end local v23           #showAccount:Z
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    goto/16 :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, -0x2

    const/4 v6, 0x0

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 129
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getView()Landroid/view/View;

    move-result-object v2

    .line 131
    .local v2, view:Landroid/view/View;
    const v3, 0x7f0b0017

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    .line 132
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020101

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 133
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 135
    const v3, 0x7f0b0018

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 136
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 138
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    .line 141
    const-string v3, "manageAccountsSwitch"

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/SwitchPreference;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    .line 142
    const-string v3, "manageAccountsCategory"

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 151
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 153
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 155
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 160
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setChecked(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v3}, Landroid/widget/Switch;->requestFocus()Z

    .line 162
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    new-instance v4, Lcom/android/settings/accounts/ManageAccountsSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$1;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 193
    .end local v1           #padding:I
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authorities"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->updateAuthDescriptions()V

    .line 196
    return-void

    .line 172
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    .line 174
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSwitchPreference:Landroid/preference/SwitchPreference;

    new-instance v4, Lcom/android/settings/accounts/ManageAccountsSettings$2;

    invoke-direct {v4, p0}, Lcom/android/settings/accounts/ManageAccountsSettings$2;-><init>(Lcom/android/settings/accounts/ManageAccountsSettings;)V

    invoke-virtual {v3, v4}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public onAddAccountClicked()V
    .locals 3

    .prologue
    .line 629
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 630
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startActivity(Landroid/content/Intent;)V

    .line 632
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 4

    .prologue
    .line 609
    const/4 v0, 0x0

    .line 610
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 616
    :goto_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    .line 617
    const/4 v2, 0x0

    .line 618
    .local v2, pref:Lcom/android/settings/AccountPreference;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    check-cast v2, Lcom/android/settings/AccountPreference;

    .line 623
    .restart local v2       #pref:Lcom/android/settings/AccountPreference;
    :goto_2
    invoke-virtual {v2}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/AccountPreference;->setProviderIcon(Landroid/graphics/drawable/Drawable;)V

    .line 624
    invoke-virtual {v2}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/settings/accounts/ManageAccountsSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/AccountPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 616
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 613
    .end local v1           #i:I
    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    goto :goto_0

    .line 621
    .restart local v1       #i:I
    .restart local v2       #pref:Lcom/android/settings/AccountPreference;
    :cond_1
    iget-object v3, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    check-cast v2, Lcom/android/settings/AccountPreference;

    .restart local v2       #pref:Lcom/android/settings/AccountPreference;
    goto :goto_2

    .line 626
    .end local v2           #pref:Lcom/android/settings/AccountPreference;
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const v0, 0x7f07003a

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->addPreferencesFromResource(I)V

    .line 108
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManageAccountsSettings;->setHasOptionsMenu(Z)V

    .line 109
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    const v0, 0x7f0906e4

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020104

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    .line 271
    const v0, 0x7f0908c2

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020114

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    .line 272
    const v0, 0x7f0908c4

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020108

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    .line 274
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 276
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 292
    :goto_0
    return-void

    .line 281
    :cond_0
    const v0, 0x7f0908c2

    invoke-interface {p1, v2, v4, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    .line 282
    const v0, 0x7f0908c4

    invoke-interface {p1, v2, v5, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    .line 283
    const v0, 0x7f0906e4

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    .line 285
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 287
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAddAccount:Landroid/view/MenuItem;

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 120
    const v1, 0x7f04007d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 121
    .local v0, view:Landroid/view/View;
    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 311
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 312
    .local v0, itemId:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 313
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onAddAccountClicked()V

    .line 323
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->onSyncStateUpdated()V

    .line 324
    :goto_1
    return v1

    .line 314
    :cond_0
    if-ne v0, v1, :cond_1

    .line 315
    const-string v2, "AccountSettings"

    const-string v3, "ManageAccountsSettings : Sync all button is clicked!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->startSyncAllForEnabledProvider()V

    goto :goto_0

    .line 317
    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 318
    const-string v2, "AccountSettings"

    const-string v3, "ManageAccountsSettings : Cancel sync button is clicked!!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->cancelSyncAllForEnabledProviders()V

    goto :goto_0

    .line 321
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_1
.end method

.method public bridge synthetic onPause()V
    .locals 0

    .prologue
    .line 71
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferences"
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    .line 223
    instance-of v3, p2, Lcom/android/settings/AccountPreference;

    if-eqz v3, :cond_2

    move-object v0, p2

    .line 225
    check-cast v0, Lcom/android/settings/AccountPreference;

    .line 227
    .local v0, pref:Lcom/android/settings/AccountPreference;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 229
    invoke-virtual {v0}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v4, "com.android.tmo_myphonebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 231
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 232
    .local v1, syncmlDsIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    const-string v3, "ManageAccountsSettings"

    const-string v4, "android.intent.action.MYPHONEBOOK_SELECTED"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    .end local v0           #pref:Lcom/android/settings/AccountPreference;
    .end local v1           #syncmlDsIntent:Landroid/content/Intent;
    .end local p2
    :goto_0
    return v2

    .line 239
    .restart local v0       #pref:Lcom/android/settings/AccountPreference;
    .restart local p2
    :cond_0
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    goto :goto_0

    .line 242
    .restart local p2
    :cond_1
    check-cast p2, Lcom/android/settings/AccountPreference;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/settings/accounts/ManageAccountsSettings;->startAccountSettings(Lcom/android/settings/AccountPreference;)V

    goto :goto_0

    .line 244
    .end local v0           #pref:Lcom/android/settings/AccountPreference;
    .restart local p2
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 295
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v0

    .line 299
    .local v0, accounts:[Landroid/accounts/Account;
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    .line 300
    .local v1, syncActive:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 301
    iget-object v4, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    if-nez v1, :cond_2

    :goto_1
    invoke-interface {v4, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 302
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 308
    .end local v0           #accounts:[Landroid/accounts/Account;
    .end local v1           #syncActive:Z
    :cond_0
    :goto_2
    return-void

    .restart local v0       #accounts:[Landroid/accounts/Account;
    :cond_1
    move v1, v3

    .line 299
    goto :goto_0

    .restart local v1       #syncActive:Z
    :cond_2
    move v2, v3

    .line 301
    goto :goto_1

    .line 304
    :cond_3
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mSyncAll:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 305
    iget-object v2, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mCancelSync:Landroid/view/MenuItem;

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 207
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    .line 212
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRoamingPolicy()Landroid/app/enterprise/RoamingPolicy;

    move-result-object v0

    .line 214
    .local v0, rp:Landroid/app/enterprise/RoamingPolicy;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mTelMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/app/enterprise/RoamingPolicy;->isRoamingSyncEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 219
    .end local v0           #rp:Landroid/app/enterprise/RoamingPolicy;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 113
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStart()V

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    .line 115
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onStop()V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 203
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 36

    .prologue
    .line 330
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    if-nez v32, :cond_0

    .line 444
    :goto_0
    return-void

    .line 332
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v32, v0

    if-eqz v32, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mAutoSyncSwitch:Landroid/widget/Switch;

    move-object/from16 v32, v0

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v33

    invoke-virtual/range {v32 .. v33}, Landroid/widget/Switch;->setChecked(Z)V

    .line 337
    :cond_1
    invoke-static {}, Landroid/content/ContentResolver;->getCurrentSyncs()Ljava/util/List;

    move-result-object v14

    .line 339
    .local v14, currentSyncs:Ljava/util/List;,"Ljava/util/List<Landroid/content/SyncInfo;>;"
    const/4 v7, 0x0

    .line 340
    .local v7, anySyncFailed:Z
    const/4 v6, 0x0

    .line 343
    .local v6, anySyncEnabledAuth:Z
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v26

    .line 344
    .local v26, syncAdapters:[Landroid/content/SyncAdapterType;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 345
    .local v31, userFacing:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v20, 0x0

    .local v20, k:I
    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v22, v0

    .local v22, n:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 346
    aget-object v24, v26, v20

    .line 347
    .local v24, sa:Landroid/content/SyncAdapterType;
    invoke-virtual/range {v24 .. v24}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v32

    if-eqz v32, :cond_2

    .line 348
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 352
    .end local v24           #sa:Landroid/content/SyncAdapterType;
    :cond_3
    const/4 v11, 0x0

    .line 354
    .local v11, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_4

    .line 355
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v11

    .line 360
    :goto_2
    const/16 v16, 0x0

    .local v16, i:I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v11, :cond_16

    .line 361
    const/16 v23, 0x0

    .line 362
    .local v23, pref:Landroid/preference/Preference;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v32

    if-nez v32, :cond_5

    .line 363
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v32

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v23

    .line 368
    :goto_4
    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/android/settings/AccountPreference;

    move/from16 v32, v0

    if-nez v32, :cond_6

    .line 360
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 357
    .end local v16           #i:I
    .end local v23           #pref:Landroid/preference/Preference;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v11

    goto :goto_2

    .line 365
    .restart local v16       #i:I
    .restart local v23       #pref:Landroid/preference/Preference;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mManageAccountsCategory:Landroid/preference/PreferenceCategory;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v23

    goto :goto_4

    :cond_6
    move-object/from16 v4, v23

    .line 372
    check-cast v4, Lcom/android/settings/AccountPreference;

    .line 373
    .local v4, accountPref:Lcom/android/settings/AccountPreference;
    invoke-virtual {v4}, Lcom/android/settings/AccountPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    .line 375
    .local v3, account:Landroid/accounts/Account;
    const/16 v27, 0x0

    .line 376
    .local v27, syncCount:I
    const/16 v29, 0x0

    .line 377
    .local v29, syncIsFailing:Z
    invoke-virtual {v4}, Lcom/android/settings/AccountPreference;->getAuthorities()Ljava/util/ArrayList;

    move-result-object v8

    .line 378
    .local v8, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_f

    .line 379
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_6
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_10

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 380
    .local v9, authority:Ljava/lang/String;
    invoke-static {v3, v9}, Landroid/content/ContentResolver;->getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;

    move-result-object v25

    .line 381
    .local v25, status:Landroid/content/SyncStatusInfo;
    invoke-static {v3, v9}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v32

    if-eqz v32, :cond_9

    invoke-static {v3, v9}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_9

    const/16 v28, 0x1

    .line 384
    .local v28, syncEnabled:Z
    :goto_7
    invoke-static {v3, v9}, Landroid/content/ContentResolver;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v10

    .line 386
    .local v10, authorityIsPending:Z
    const/4 v13, 0x0

    .line 387
    .local v13, currentAuth:Z
    const/4 v12, 0x0

    .line 388
    .local v12, currentAccount:Z
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, i$:Ljava/util/Iterator;
    :cond_7
    :goto_8
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v32

    if-eqz v32, :cond_a

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/SyncInfo;

    .line 389
    .local v19, info:Landroid/content/SyncInfo;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_8

    .line 390
    const/4 v13, 0x1

    .line 392
    :cond_8
    new-instance v32, Landroid/accounts/Account;

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v33, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    move-object/from16 v34, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-direct/range {v32 .. v34}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v32

    invoke-virtual {v0, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_7

    .line 393
    const/4 v12, 0x1

    goto :goto_8

    .line 381
    .end local v10           #authorityIsPending:Z
    .end local v12           #currentAccount:Z
    .end local v13           #currentAuth:Z
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v19           #info:Landroid/content/SyncInfo;
    .end local v28           #syncEnabled:Z
    :cond_9
    const/16 v28, 0x0

    goto :goto_7

    .line 397
    .restart local v10       #authorityIsPending:Z
    .restart local v12       #currentAccount:Z
    .restart local v13       #currentAuth:Z
    .restart local v18       #i$:Ljava/util/Iterator;
    .restart local v28       #syncEnabled:Z
    :cond_a
    if-eqz v14, :cond_c

    if-eqz v13, :cond_c

    if-eqz v12, :cond_c

    const/4 v5, 0x1

    .line 400
    .local v5, activelySyncing:Z
    :goto_9
    if-eqz v25, :cond_d

    if-eqz v28, :cond_d

    move-object/from16 v0, v25

    iget-wide v0, v0, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    move-wide/from16 v32, v0

    const-wide/16 v34, 0x0

    cmp-long v32, v32, v34

    if-eqz v32, :cond_d

    const/16 v32, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_d

    const/16 v21, 0x1

    .line 405
    .local v21, lastSyncFailed:Z
    :goto_a
    if-eqz v21, :cond_b

    if-nez v5, :cond_b

    if-nez v10, :cond_b

    .line 406
    const/16 v29, 0x1

    .line 407
    const/4 v7, 0x1

    .line 409
    :cond_b
    if-eqz v28, :cond_e

    move-object/from16 v0, v31

    invoke-virtual {v0, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_e

    const/16 v32, 0x1

    :goto_b
    add-int v27, v27, v32

    .line 410
    goto/16 :goto_6

    .line 397
    .end local v5           #activelySyncing:Z
    .end local v21           #lastSyncFailed:Z
    :cond_c
    const/4 v5, 0x0

    goto :goto_9

    .line 400
    .restart local v5       #activelySyncing:Z
    :cond_d
    const/16 v21, 0x0

    goto :goto_a

    .line 409
    .restart local v21       #lastSyncFailed:Z
    :cond_e
    const/16 v32, 0x0

    goto :goto_b

    .line 412
    .end local v5           #activelySyncing:Z
    .end local v9           #authority:Ljava/lang/String;
    .end local v10           #authorityIsPending:Z
    .end local v12           #currentAccount:Z
    .end local v13           #currentAuth:Z
    .end local v18           #i$:Ljava/util/Iterator;
    .end local v21           #lastSyncFailed:Z
    .end local v25           #status:Landroid/content/SyncStatusInfo;
    .end local v28           #syncEnabled:Z
    :cond_f
    const-string v32, "AccountSettings"

    const/16 v33, 0x2

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v32

    if-eqz v32, :cond_10

    .line 413
    const-string v32, "AccountSettings"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, "no syncadapters found for "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v32

    const-string v33, "com.sec.feature.sns_deepinteg"

    invoke-virtual/range {v32 .. v33}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    const/16 v33, 0x1

    move/from16 v0, v32

    move/from16 v1, v33

    if-ne v0, v1, :cond_11

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string v33, "com.sec.android.app.sns3.facebook"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 419
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v32

    invoke-static/range {v32 .. v32}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v32

    const-string v33, "com.facebook.auth.login"

    invoke-virtual/range {v32 .. v33}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 420
    .local v2, ac:[Landroid/accounts/Account;
    const/16 v32, 0x0

    aget-object v32, v2, v32

    const-string v33, "com.android.contacts"

    invoke-static/range {v32 .. v33}, Landroid/content/ContentResolver;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_13

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v32

    if-eqz v32, :cond_13

    const/16 v32, 0x0

    aget-object v32, v2, v32

    const-string v33, "com.android.contacts"

    invoke-static/range {v32 .. v33}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v32

    if-lez v32, :cond_13

    const/4 v15, 0x1

    .line 423
    .local v15, fbsync:Z
    :goto_c
    if-eqz v15, :cond_11

    .line 424
    add-int/lit8 v27, v27, 0x1

    .line 428
    .end local v2           #ac:[Landroid/accounts/Account;
    .end local v15           #fbsync:Z
    :cond_11
    const/16 v30, 0x1

    .line 429
    .local v30, syncStatus:I
    if-eqz v29, :cond_14

    .line 430
    const/16 v30, 0x2

    .line 431
    const/4 v6, 0x1

    .line 438
    :cond_12
    :goto_d
    move/from16 v0, v30

    invoke-virtual {v4, v0}, Lcom/android/settings/AccountPreference;->setSyncStatus(I)V

    goto/16 :goto_5

    .line 420
    .end local v30           #syncStatus:I
    .restart local v2       #ac:[Landroid/accounts/Account;
    :cond_13
    const/4 v15, 0x0

    goto :goto_c

    .line 432
    .end local v2           #ac:[Landroid/accounts/Account;
    .restart local v30       #syncStatus:I
    :cond_14
    if-nez v27, :cond_15

    .line 433
    const/16 v30, 0x1

    goto :goto_d

    .line 434
    :cond_15
    if-lez v27, :cond_12

    .line 435
    const/16 v30, 0x0

    .line 436
    const/4 v6, 0x1

    goto :goto_d

    .line 441
    .end local v3           #account:Landroid/accounts/Account;
    .end local v4           #accountPref:Lcom/android/settings/AccountPreference;
    .end local v8           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v23           #pref:Landroid/preference/Preference;
    .end local v27           #syncCount:I
    .end local v29           #syncIsFailing:Z
    .end local v30           #syncStatus:I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoView:Landroid/widget/TextView;

    move-object/from16 v33, v0

    if-eqz v7, :cond_17

    const/16 v32, 0x0

    :goto_e
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ManageAccountsSettings;->mErrorInfoIcon:Landroid/widget/ImageView;

    move-object/from16 v33, v0

    if-eqz v7, :cond_18

    const/16 v32, 0x0

    :goto_f
    move-object/from16 v0, v33

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 443
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/settings/accounts/ManageAccountsSettings;->setTextSyncAll(Z)V

    goto/16 :goto_0

    .line 441
    :cond_17
    const/16 v32, 0x8

    goto :goto_e

    .line 442
    :cond_18
    const/16 v32, 0x8

    goto :goto_f
.end method

.method public showDialog(I)V
    .locals 3
    .parameter "dialogId"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    if-eqz v0, :cond_0

    .line 261
    const-string v0, "AccountSettings"

    const-string v1, "Old dialog fragment not null!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 264
    iget-object v0, p0, Lcom/android/settings/accounts/ManageAccountsSettings;->mDialogFragment:Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManageAccountsSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 265
    return-void
.end method
