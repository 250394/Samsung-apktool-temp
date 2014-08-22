.class public Lcom/android/settings/cloud/CloudSettingsMainFragment;
.super Landroid/preference/PreferenceFragment;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cloud/CloudSettingsMainFragment$AccountConfigTask;
    }
.end annotation


# instance fields
.field private final REQUEST_CODE_ADD_DROPBOX_ACCOUNT:I

.field private final REQUEST_CODE_ADD_NETWORK:I

.field private final REQUEST_CODE_ADD_SAMSUNG_ACCOUNT:I

.field private accountManager:Landroid/accounts/AccountManager;

.field private categoryDropbox:Landroid/preference/PreferenceGroup;

.field private dialogFragment:Landroid/app/DialogFragment;

.field private mBackUp:Landroid/preference/Preference;

.field private mCloudReceiver:Landroid/content/BroadcastReceiver;

.field private mDataSync:Landroid/preference/Preference;

.field private mPrefDropboxAccount:Landroid/preference/Preference;

.field private mPrefPhotos:Landroid/preference/Preference;

.field private mPrefRemoveAccount:Landroid/preference/Preference;

.field private mPrefSamsungAccount:Landroid/preference/Preference;

.field private mPrefSetAccount:Landroid/preference/Preference;

.field private mPrefUsage:Landroid/preference/Preference;

.field private mPrefVideos:Landroid/preference/Preference;

.field private mSettings:Lcom/android/settings/cloud/CloudSettings;

.field private removeAccountCategory:Landroid/preference/PreferenceGroup;

.field private setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 38
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 57
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->removeAccountCategory:Landroid/preference/PreferenceGroup;

    .line 116
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->REQUEST_CODE_ADD_SAMSUNG_ACCOUNT:I

    .line 119
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->REQUEST_CODE_ADD_NETWORK:I

    .line 122
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->REQUEST_CODE_ADD_DROPBOX_ACCOUNT:I

    .line 138
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 143
    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 495
    new-instance v0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->setSyncAccountListener:Landroid/preference/Preference$OnPreferenceClickListener;

    .line 508
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Landroid/app/DialogFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/cloud/CloudSettingsMainFragment;)Lcom/android/settings/cloud/CloudSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/cloud/CloudSettingsMainFragment;Lcom/android/settings/cloud/CloudSettings;)Lcom/android/settings/cloud/CloudSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mSettings:Lcom/android/settings/cloud/CloudSettings;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->initPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V

    return-void
.end method

.method private checkForSamsungAccount()V
    .locals 3

    .prologue
    .line 170
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v2, "com.osp.app.signin"

    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 182
    .local v0, samsungAccount:[Landroid/accounts/Account;
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->initPreferences()V

    .line 185
    return-void
.end method

.method private getPreferencesReference()V
    .locals 3

    .prologue
    .line 230
    const-string v2, "category_dropbox"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->categoryDropbox:Landroid/preference/PreferenceGroup;

    .line 231
    const-string v2, "category_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->removeAccountCategory:Landroid/preference/PreferenceGroup;

    .line 232
    const-string v2, "pref_dataSync"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    .line 233
    const-string v2, "pref_backUp"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    .line 234
    const-string v2, "samsung_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSamsungAccount:Landroid/preference/Preference;

    .line 235
    const-string v2, "dropbox_sync_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefDropboxAccount:Landroid/preference/Preference;

    .line 236
    const-string v2, "pref_set_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefSetAccount:Landroid/preference/Preference;

    .line 237
    const-string v2, "pref_usage"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefUsage:Landroid/preference/Preference;

    .line 238
    const-string v2, "pref_photos"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    .line 239
    const-string v2, "pref_videos"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    .line 240
    const-string v2, "pref_remove_account"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefRemoveAccount:Landroid/preference/Preference;

    .line 242
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 243
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {v2, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    const-string v2, "category_dropbox"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 247
    .local v0, categoryDropbox:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 248
    const-string v2, "category_samsungservices"

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 251
    .local v1, categorySamsungServices:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 259
    return-void
.end method

.method private initPreferences()V
    .locals 0

    .prologue
    .line 314
    return-void
.end method

.method private isConnected(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 556
    const-string v5, "connectivity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 559
    .local v1, cm:Landroid/net/ConnectivityManager;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 560
    .local v3, wifiNetwork:Landroid/net/NetworkInfo;
    if-eqz v3, :cond_1

    .line 561
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    .line 574
    :cond_0
    :goto_0
    return v4

    .line 564
    :cond_1
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 565
    .local v2, mobileNetwork:Landroid/net/NetworkInfo;
    if-eqz v2, :cond_2

    .line 566
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    goto :goto_0

    .line 569
    :cond_2
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 570
    .local v0, activeNetwork:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v4

    goto :goto_0
.end method

.method private onBackUpClicked()V
    .locals 0

    .prologue
    .line 431
    return-void
.end method

.method private onDataSyncClicked()V
    .locals 0

    .prologue
    .line 438
    return-void
.end method

.method private registerCloudReceiver()V
    .locals 3

    .prologue
    .line 350
    new-instance v1, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment$1;-><init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    .line 388
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_RESPONSE_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 390
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 392
    const-string v1, "CloudSettings"

    const-string v2, "Registered BroadCast Receiver - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    return-void
.end method

.method private requestCloudStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 336
    const-string v1, "CloudSettings"

    const-string v2, "requesting for Cloud Status - CloudSettingsMainFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.cloudagent.settings.ACTION_REQUEST_CLOUD_STATUS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 338
    .local v0, i:Landroid/content/Intent;
    const-string v1, "storageVender"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 342
    const/4 v1, 0x1

    invoke-static {v1, v3, v3}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 343
    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "dialog"

    invoke-virtual {v1, v2, v3}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method private requestDropboxAuth()V
    .locals 4

    .prologue
    .line 210
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.dropbox.android.account"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 212
    .local v0, dropboxAccount:[Landroid/accounts/Account;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, i:Landroid/content/Intent;
    const-string v2, "com.sec.android.cloudagent.DROPBOX_AUTH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v2, "storageVender"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 216
    const-string v2, "requestSignIn"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 217
    const/4 v2, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 218
    return-void
.end method

.method private showDialog(I)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 583
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettings;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 585
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 586
    return-void
.end method

.method private startFragment(I)V
    .locals 7
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 594
    .line 595
    const/4 v3, 0x0

    .line 597
    packed-switch p1, :pswitch_data_0

    move-object v1, v2

    .line 611
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v4, v2

    move-object v5, p0

    move v6, p1

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 615
    :cond_0
    return-void

    .line 599
    :pswitch_0
    const-class v0, Lcom/android/settings/cloud/CloudPhotosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 601
    const v3, 0x7f090c1e

    .line 602
    goto :goto_0

    .line 604
    :pswitch_1
    const-class v0, Lcom/android/settings/cloud/CloudVideosSyncFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    .line 605
    const v3, 0x7f090c1f

    .line 606
    goto :goto_0

    .line 597
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private unregisterCloudReceiver()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mCloudReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 402
    :cond_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v3, -0x1

    const/4 v4, 0x1

    .line 442
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    if-eqz v2, :cond_0

    .line 443
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismiss()V

    .line 444
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 488
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 490
    return-void

    .line 447
    :pswitch_0
    if-ne p2, v3, :cond_2

    .line 448
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 449
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->initPreferences()V

    goto :goto_0

    .line 451
    :cond_2
    iget-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    const-string v3, "com.osp.app.signin"

    invoke-virtual {v2, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v1

    .line 453
    .local v1, samsungAccount:[Landroid/accounts/Account;
    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_1

    .line 454
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 462
    .end local v1           #samsungAccount:[Landroid/accounts/Account;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    .line 463
    .local v0, isConnected:Z
    if-nez v0, :cond_3

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090c2e

    invoke-virtual {p0, v3}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 469
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestCloudStatus()V

    .line 470
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->initPreferences()V

    goto :goto_0

    .line 476
    .end local v0           #isConnected:Z
    :pswitch_2
    if-ne p2, v3, :cond_4

    .line 477
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090c29

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 480
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090c2d

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 444
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 150
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 151
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->registerCloudReceiver()V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->isConnected(Landroid/content/Context;)Z

    move-result v0

    .line 153
    .local v0, isConnected:Z
    if-nez v0, :cond_0

    .line 154
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, wifiPicker:Landroid/content/Intent;
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 163
    .end local v1           #wifiPicker:Landroid/content/Intent;
    :goto_0
    return-void

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->accountManager:Landroid/accounts/AccountManager;

    .line 158
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->addPreferencesFromResource(I)V

    .line 159
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->getPreferencesReference()V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->checkForSamsungAccount()V

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 221
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->unregisterCloudReceiver()V

    .line 222
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 223
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 409
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mDataSync:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 410
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onDataSyncClicked()V

    .line 421
    :cond_0
    :goto_0
    return v2

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mBackUp:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 412
    invoke-direct {p0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->onBackUpClicked()V

    goto :goto_0

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefRemoveAccount:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 414
    invoke-direct {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->showDialog(I)V

    goto :goto_0

    .line 415
    :cond_3
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefPhotos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 416
    invoke-direct {p0, v1}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0

    .line 417
    :cond_4
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment;->mPrefVideos:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    invoke-direct {p0, v2}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->startFragment(I)V

    goto :goto_0
.end method
