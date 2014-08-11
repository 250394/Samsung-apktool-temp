.class public Lcom/android/settings/accounts/ChooseAccountActivity;
.super Landroid/preference/PreferenceActivity;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    }
.end annotation


# instance fields
.field private mAccountList:[Landroid/accounts/Account;

.field private mAccountManager:Landroid/accounts/AccountManager;

.field private mAccountTypeToAuthorities:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAccountTypesFilter:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddAccountGroup:Landroid/preference/PreferenceGroup;

.field private mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

.field private mAuthorities:[Ljava/lang/String;

.field private mCallback:Landroid/accounts/AccountManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/accounts/AccountManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mCancel:Landroid/widget/Button;

.field private mEtc:Landroid/preference/PreferenceCategory;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private final mProviderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialHub:Landroid/preference/PreferenceCategory;

.field private mSynchronize:Landroid/preference/PreferenceCategory;

.field private mTypeToAuthDescription:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/accounts/AuthenticatorDescription;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    .line 92
    new-instance v0, Lcom/android/settings/accounts/ChooseAccountActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accounts/ChooseAccountActivity$1;-><init>(Lcom/android/settings/accounts/ChooseAccountActivity;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    .line 121
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/ChooseAccountActivity;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ChooseAccountActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addAccount(Ljava/lang/String;)V
    .locals 11
    .parameter "accountType"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 464
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 465
    .local v4, addAccountOptions:Landroid/os/Bundle;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    .line 466
    const-string v0, "pendingIntent"

    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sns_deepinteg"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "com.sec.android.app.sns3.facebook"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 469
    invoke-direct {p0, p1}, Lcom/android/settings/accounts/ChooseAccountActivity;->checkInstalledfbApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    :try_start_0
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 473
    .local v9, intent:Landroid/content/Intent;
    const-string v0, "market://details?id=com.facebook.katana"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 474
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0, v9}, Lcom/android/settings/accounts/ChooseAccountActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v9           #intent:Landroid/content/Intent;
    .end local v10           #uri:Landroid/net/Uri;
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v8

    .line 477
    .local v8, e:Ljava/lang/Exception;
    const-string v0, "ChooseAccountActivity"

    const-string v1, "Can  not start market for facebook. "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 481
    .end local v8           #e:Ljava/lang/Exception;
    :cond_0
    const-string p1, "com.facebook.auth.login"

    .line 485
    :cond_1
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCallback:Landroid/accounts/AccountManagerCallback;

    move-object v1, p1

    move-object v3, v2

    move-object v5, p0

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method private checkInstalledfbApp(Ljava/lang/String;)Z
    .locals 5
    .parameter "accountType"

    .prologue
    .line 500
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 501
    .local v2, pm:Landroid/content/pm/PackageManager;
    const-string v3, "com.facebook.katana"

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 504
    .local v1, pi:Landroid/content/pm/PackageInfo;
    const-string v3, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 505
    const-string p1, "com.facebook.auth.login"
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :cond_0
    const/4 v3, 0x1

    .line 512
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :goto_0
    return v3

    .line 508
    :catch_0
    move-exception v0

    .line 510
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ChooseAccountActivity"

    const-string v4, "Don\'t install FB app"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private onAuthDescriptionsUpdated()V
    .locals 33

    .prologue
    .line 198
    const/4 v14, 0x0

    .line 199
    .local v14, anySocialHubAccountType:I
    const/4 v15, 0x0

    .line 200
    .local v15, anySyncronizeAccountType:I
    const/4 v13, 0x0

    .line 202
    .local v13, anyEtcAccountType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 205
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_d

    .line 206
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v24

    iget-object v11, v3, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    .line 207
    .local v11, accountType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/accounts/ChooseAccountActivity;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v31

    .line 211
    .local v31, providerName:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/settings/accounts/ChooseAccountActivity;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 212
    .local v10, accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x1

    .line 213
    .local v12, addAccountPref:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_0

    .line 214
    if-eqz v10, :cond_a

    .line 215
    const/4 v12, 0x0

    .line 216
    const/16 v28, 0x0

    .local v28, k:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v28

    if-ge v0, v3, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    aget-object v3, v3, v28

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 218
    const/4 v12, 0x1

    .line 226
    .end local v28           #k:I
    :cond_0
    :goto_2
    if-eqz v12, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v3, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 228
    const/4 v12, 0x0

    .line 233
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "com.smlds.accountType"

    invoke-virtual {v11, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2

    .line 235
    const/4 v12, 0x0

    .line 238
    :cond_2
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 240
    const-string v3, "com.smlds.accountType"

    invoke-virtual {v11, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "com.android.tmo_myphonebook"

    invoke-virtual {v11, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 241
    :cond_3
    const/4 v12, 0x0

    .line 244
    :cond_4
    if-eqz v12, :cond_c

    .line 245
    const/16 v21, 0x0

    .line 246
    .local v21, bIsSocialHubAccountType:Z
    const/16 v22, 0x0

    .line 248
    .local v22, bIsSyncronizeAccountType:Z
    const/16 v27, 0x0

    .local v27, j:I
    :goto_3
    sget-object v3, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v27

    if-ge v0, v3, :cond_5

    .line 249
    sget-object v3, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    aget-object v3, v3, v27

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 250
    const/4 v14, 0x1

    .line 251
    const/16 v21, 0x1

    .line 255
    :cond_5
    const-string v3, "com.smlds.accountType"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 256
    const/4 v15, 0x1

    .line 257
    const/16 v22, 0x1

    .line 259
    :cond_6
    if-nez v21, :cond_7

    if-nez v22, :cond_7

    .line 260
    const/4 v13, 0x1

    .line 262
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    move-object/from16 v0, v31

    invoke-direct {v4, v0, v11}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    .end local v21           #bIsSocialHubAccountType:Z
    .end local v22           #bIsSyncronizeAccountType:Z
    .end local v27           #j:I
    :cond_8
    :goto_4
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_0

    .line 216
    .restart local v28       #k:I
    :cond_9
    add-int/lit8 v28, v28, 0x1

    goto/16 :goto_1

    .line 223
    .end local v28           #k:I
    :cond_a
    const/4 v12, 0x0

    goto/16 :goto_2

    .line 248
    .restart local v21       #bIsSocialHubAccountType:Z
    .restart local v22       #bIsSyncronizeAccountType:Z
    .restart local v27       #j:I
    :cond_b
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 264
    .end local v21           #bIsSocialHubAccountType:Z
    .end local v22           #bIsSyncronizeAccountType:Z
    .end local v27           #j:I
    :cond_c
    const-string v3, "ChooseAccountActivity"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 265
    const-string v3, "ChooseAccountActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped pref "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": has no authority we need"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 270
    .end local v10           #accountAuths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11           #accountType:Ljava/lang/String;
    .end local v12           #addAccountPref:Z
    .end local v31           #providerName:Ljava/lang/CharSequence;
    :cond_d
    add-int v3, v14, v15

    add-int/2addr v3, v13

    const/4 v4, 0x1

    if-le v3, v4, :cond_f

    const/16 v18, 0x1

    .line 273
    .local v18, bIsCategoryPreference:Z
    :goto_5
    const/16 v18, 0x0

    .line 275
    invoke-static/range {p0 .. p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;

    .line 276
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_10

    .line 278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 279
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 372
    :cond_e
    :goto_6
    return-void

    .line 270
    .end local v18           #bIsCategoryPreference:Z
    :cond_f
    const/16 v18, 0x0

    goto :goto_5

    .line 280
    .restart local v18       #bIsCategoryPreference:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_22

    .line 281
    if-eqz v18, :cond_11

    .line 282
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 283
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 284
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 286
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 287
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 289
    const/16 v32, 0x0

    .line 290
    .local v32, samsung_account:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .local v25, i$:Ljava/util/Iterator;
    :cond_12
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 291
    .local v30, pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.osp.app.signin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 292
    move-object/from16 v32, v30

    .line 297
    .end local v30           #pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    :cond_13
    if-eqz v32, :cond_14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_14

    .line 298
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 299
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v3, v4, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 302
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mProviderList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .end local v25           #i$:Ljava/util/Iterator;
    :cond_15
    :goto_7
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;

    .line 303
    .restart local v30       #pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/settings/accounts/ChooseAccountActivity;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    .line 304
    .local v23, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 305
    .local v7, mNotification:Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;

    if-eqz v3, :cond_16

    .line 306
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountManager:Landroid/accounts/AccountManager;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountList:[Landroid/accounts/Account;

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountList:[Landroid/accounts/Account;

    move-object/from16 v16, v0

    .local v16, arr$:[Landroid/accounts/Account;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v29, v0

    .local v29, len$:I
    const/16 v26, 0x0

    .local v26, i$:I
    :goto_8
    move/from16 v0, v26

    move/from16 v1, v29

    if-ge v0, v1, :cond_16

    aget-object v9, v16, v26

    .line 308
    .local v9, account:Landroid/accounts/Account;
    const/4 v7, 0x1

    .line 307
    add-int/lit8 v26, v26, 0x1

    goto :goto_8

    .line 311
    .end local v9           #account:Landroid/accounts/Account;
    .end local v16           #arr$:[Landroid/accounts/Account;
    .end local v26           #i$:I
    .end local v29           #len$:I
    :cond_16
    new-instance v2, Lcom/android/settings/accounts/ProviderPreference;

    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v4

    if-nez v23, :cond_1a

    const/4 v5, 0x0

    :goto_9
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->name:Ljava/lang/CharSequence;
    invoke-static/range {v30 .. v30}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$300(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/accounts/ProviderPreference;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Z)V

    .line 312
    .local v2, p:Lcom/android/settings/accounts/ProviderPreference;
    if-eqz v18, :cond_1f

    .line 313
    const/16 v20, 0x1

    .line 314
    .local v20, bIsFirstSocialHubAccountType:Z
    const/16 v19, 0x1

    .line 315
    .local v19, bIsFirstEtcAccountType:Z
    const/16 v21, 0x0

    .line 316
    .restart local v21       #bIsSocialHubAccountType:Z
    const/16 v22, 0x0

    .line 318
    .restart local v22       #bIsSyncronizeAccountType:Z
    const/16 v24, 0x0

    :goto_a
    sget-object v3, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_17

    .line 319
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/android/settings/AccountTypes;->SAMSUNG_SOCIAL_HUB_ACCOUNTS:[Ljava/lang/String;

    aget-object v4, v4, v24

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 320
    const/16 v21, 0x1

    .line 324
    :cond_17
    #getter for: Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->type:Ljava/lang/String;
    invoke-static/range {v30 .. v30}, Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;->access$200(Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.smlds.accountType"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 325
    const/16 v22, 0x1

    .line 328
    :cond_18
    if-eqz v21, :cond_1c

    .line 330
    if-eqz v20, :cond_19

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 332
    const/16 v20, 0x0

    .line 334
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 311
    .end local v2           #p:Lcom/android/settings/accounts/ProviderPreference;
    .end local v19           #bIsFirstEtcAccountType:Z
    .end local v20           #bIsFirstSocialHubAccountType:Z
    .end local v21           #bIsSocialHubAccountType:Z
    .end local v22           #bIsSyncronizeAccountType:Z
    :cond_1a
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_9

    .line 318
    .restart local v2       #p:Lcom/android/settings/accounts/ProviderPreference;
    .restart local v19       #bIsFirstEtcAccountType:Z
    .restart local v20       #bIsFirstSocialHubAccountType:Z
    .restart local v21       #bIsSocialHubAccountType:Z
    .restart local v22       #bIsSyncronizeAccountType:Z
    :cond_1b
    add-int/lit8 v24, v24, 0x1

    goto :goto_a

    .line 335
    :cond_1c
    if-eqz v22, :cond_1d

    .line 337
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 338
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 341
    :cond_1d
    if-eqz v19, :cond_1e

    .line 342
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 343
    const/16 v19, 0x0

    .line 345
    :cond_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 348
    .end local v19           #bIsFirstEtcAccountType:Z
    .end local v20           #bIsFirstSocialHubAccountType:Z
    .end local v21           #bIsSocialHubAccountType:Z
    .end local v22           #bIsSyncronizeAccountType:Z
    :cond_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.sec.feature.sns_deepinteg"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_21

    .line 349
    invoke-virtual {v2}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.facebook.auth.login"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 350
    invoke-virtual {v2}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.sec.android.app.sns3.facebook"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 351
    const-string v3, "Facebook"

    invoke-virtual {v2, v3}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 353
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 356
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    goto/16 :goto_7

    .line 362
    .end local v2           #p:Lcom/android/settings/accounts/ProviderPreference;
    .end local v7           #mNotification:Z
    .end local v23           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v30           #pref:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    .end local v32           #samsung_account:Lcom/android/settings/accounts/ChooseAccountActivity$ProviderEntry;
    :cond_22
    const-string v3, "ChooseAccountActivity"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 363
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 364
    .local v17, auths:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    move-object/from16 v16, v0

    .local v16, arr$:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29       #len$:I
    const/16 v25, 0x0

    .local v25, i$:I
    :goto_b
    move/from16 v0, v25

    move/from16 v1, v29

    if-ge v0, v1, :cond_23

    aget-object v8, v16, v25

    .line 365
    .local v8, a:Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    const/16 v3, 0x20

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    add-int/lit8 v25, v25, 0x1

    goto :goto_b

    .line 368
    .end local v8           #a:Ljava/lang/String;
    :cond_23
    const-string v3, "ChooseAccountActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No providers found for authorities: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    .end local v16           #arr$:[Ljava/lang/String;
    .end local v17           #auths:Ljava/lang/StringBuilder;
    .end local v25           #i$:I
    .end local v29           #len$:I
    :cond_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    goto/16 :goto_6
.end method

.method private updateAuthDescriptions()V
    .locals 4

    .prologue
    .line 186
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 187
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    if-nez v1, :cond_0

    .line 188
    invoke-static {p0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    .line 190
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 191
    iget-object v1, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthDescs:[Landroid/accounts/AuthenticatorDescription;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 193
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->onAuthDescriptionsUpdated()V

    .line 194
    return-void
.end method


# virtual methods
.method public getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "type"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    if-nez v5, :cond_2

    .line 376
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    .line 377
    invoke-static {}, Landroid/content/ContentResolver;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;

    move-result-object v4

    .line 378
    .local v4, syncAdapters:[Landroid/content/SyncAdapterType;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v2, v4

    .local v2, n:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 379
    aget-object v3, v4, v1

    .line 380
    .local v3, sa:Landroid/content/SyncAdapterType;
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 381
    .local v0, authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 382
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 383
    .restart local v0       #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    iget-object v6, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_0
    const-string v5, "ChooseAccountActivity"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 386
    const-string v5, "ChooseAccountActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added authority "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to accountType "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1
    iget-object v5, v3, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v0           #authorities:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #i:I
    .end local v2           #n:I
    .end local v3           #sa:Landroid/content/SyncAdapterType;
    .end local v4           #syncAdapters:[Landroid/content/SyncAdapterType;
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypeToAuthorities:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    return-object v5
.end method

.method protected getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 401
    const/4 v3, 0x0

    .line 402
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 404
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 405
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 406
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getCSCPackageItemIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 407
    if-nez v3, :cond_0

    .line 408
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 418
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 410
    :catch_0
    move-exception v2

    .line 412
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 413
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 415
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No icon resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "accountType"

    .prologue
    .line 427
    const/4 v3, 0x0

    .line 428
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 430
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mTypeToAuthDescription:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AuthenticatorDescription;

    .line 431
    .local v1, desc:Landroid/accounts/AuthenticatorDescription;
    iget-object v4, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/accounts/ChooseAccountActivity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    .line 432
    .local v0, authContext:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getCSCPackageItemText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 433
    if-nez v3, :cond_0

    .line 434
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, v1, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 442
    .end local v0           #authContext:Landroid/content/Context;
    .end local v1           #desc:Landroid/accounts/AuthenticatorDescription;
    :cond_0
    :goto_0
    return-object v3

    .line 436
    :catch_0
    move-exception v2

    .line 437
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label name for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 438
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v2

    .line 439
    .local v2, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "ChooseAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No label resource for account type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->finish()V

    .line 495
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const/16 v8, 0x8

    .line 142
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 144
    const v6, 0x7f04000a

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->setContentView(I)V

    .line 145
    const v6, 0x7f070005

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->addPreferencesFromResource(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "authorities"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAuthorities:[Ljava/lang/String;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "account_types"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, accountTypesFilter:[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 151
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    .line 152
    move-object v2, v1

    .local v2, arr$:[Ljava/lang/String;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 153
    .local v0, accountType:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAccountTypesFilter:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    .end local v0           #accountType:Ljava/lang/String;
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mAddAccountGroup:Landroid/preference/PreferenceGroup;

    .line 157
    const-string v6, "socialHub"

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSocialHub:Landroid/preference/PreferenceCategory;

    .line 158
    const-string v6, "synchronize"

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mSynchronize:Landroid/preference/PreferenceCategory;

    .line 159
    const-string v6, "etc"

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mEtc:Landroid/preference/PreferenceCategory;

    .line 160
    const v6, 0x7f0b001e

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    .line 162
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 163
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    if-eqz v6, :cond_1

    .line 164
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    :cond_1
    :goto_1
    return-void

    .line 166
    :cond_2
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    if-eqz v6, :cond_3

    .line 167
    iget-object v6, p0, Lcom/android/settings/accounts/ChooseAccountActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 169
    :cond_3
    const v6, 0x7f0b001d

    invoke-virtual {p0, v6}, Lcom/android/settings/accounts/ChooseAccountActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 170
    .local v5, ll:Landroid/widget/LinearLayout;
    if-eqz v5, :cond_1

    .line 171
    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferences"
    .parameter "preference"

    .prologue
    .line 447
    instance-of v1, p2, Lcom/android/settings/accounts/ProviderPreference;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 448
    check-cast v0, Lcom/android/settings/accounts/ProviderPreference;

    .line 449
    .local v0, pref:Lcom/android/settings/accounts/ProviderPreference;
    const-string v1, "ChooseAccountActivity"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    const-string v1, "ChooseAccountActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to add account of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/accounts/ChooseAccountActivity;->addAccount(Ljava/lang/String;)V

    .line 454
    .end local v0           #pref:Lcom/android/settings/accounts/ProviderPreference;
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/accounts/ChooseAccountActivity;->updateAuthDescriptions()V

    .line 179
    return-void
.end method
