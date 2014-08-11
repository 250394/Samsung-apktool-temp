.class public Lcom/android/settings/fmm/RemoteControls;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "RemoteControls.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fmm/RemoteControls$PreferenceListener;
    }
.end annotation


# static fields
.field public static chkboxFlag:Z


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mGoogleAccountContext:Landroid/content/Context;

.field private mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mGoogleAccountPref:Landroid/preference/Preference;

.field private mHasGoogleAccount:Z

.field private mHasGoogleDescription:Z

.field private mHasSamsungAccount:Z

.field private mNetworkPref:Landroid/preference/CheckBoxPreference;

.field private mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

.field private mRemoteControlsObserver:Landroid/database/ContentObserver;

.field private mSamsungAccountContext:Landroid/content/Context;

.field private mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

.field private mSamsungAccountPref:Landroid/preference/Preference;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/fmm/RemoteControls;->mHasSamsungAccount:Z

    .line 87
    iput-boolean v0, p0, Lcom/android/settings/fmm/RemoteControls;->mHasGoogleAccount:Z

    .line 88
    iput-boolean v0, p0, Lcom/android/settings/fmm/RemoteControls;->mHasGoogleDescription:Z

    .line 95
    new-instance v0, Lcom/android/settings/fmm/RemoteControls$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fmm/RemoteControls$1;-><init>(Lcom/android/settings/fmm/RemoteControls;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/RemoteControls;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fmm/RemoteControls;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private updateAccountInformation()V
    .locals 11

    .prologue
    const v10, 0x7f0906e4

    const v9, 0x7f0400c6

    const v8, 0x7f04008a

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    .line 288
    .local v1, manager:Landroid/accounts/AccountManager;
    const-string v3, "com.osp.app.signin"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v2

    .line 289
    .local v2, samsungAccnts:[Landroid/accounts/Account;
    array-length v3, v2

    if-lez v3, :cond_1

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/fmm/RemoteControls;->mHasSamsungAccount:Z

    .line 290
    iget-boolean v3, p0, Lcom/android/settings/fmm/RemoteControls;->mHasSamsungAccount:Z

    if-eqz v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    aget-object v6, v2, v5

    iget-object v6, v6, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 292
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v7, v7, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 301
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v3

    if-nez v3, :cond_0

    .line 302
    const-string v3, "com.google"

    invoke-virtual {v1, v3}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    .line 303
    .local v0, googleAccnts:[Landroid/accounts/Account;
    array-length v3, v0

    if-lez v3, :cond_3

    :goto_2
    iput-boolean v4, p0, Lcom/android/settings/fmm/RemoteControls;->mHasGoogleAccount:Z

    .line 304
    iget-boolean v3, p0, Lcom/android/settings/fmm/RemoteControls;->mHasGoogleAccount:Z

    if-eqz v3, :cond_4

    .line 305
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    aget-object v4, v0, v5

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v5, v5, Landroid/accounts/AuthenticatorDescription;->labelId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v8}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    .line 314
    .end local v0           #googleAccnts:[Landroid/accounts/Account;
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v3, v5

    .line 289
    goto :goto_0

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 296
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    const v6, 0x7f09081a

    invoke-virtual {v3, v6}, Landroid/preference/Preference;->setSummary(I)V

    .line 297
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_1

    .restart local v0       #googleAccnts:[Landroid/accounts/Account;
    :cond_3
    move v4, v5

    .line 303
    goto :goto_2

    .line 309
    :cond_4
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v10}, Landroid/preference/Preference;->setTitle(I)V

    .line 310
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    const v4, 0x7f09081b

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(I)V

    .line 311
    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v3, v9}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_3
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 237
    if-eqz p2, :cond_2

    .line 238
    const-string v0, "CHM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CHU"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "CTC"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/settings/fmm/RemoteControls;->chkboxFlag:Z

    if-nez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->showNotificationChargeDialog()V

    .line 248
    :goto_0
    return-void

    .line 243
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 246
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "remote_control"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v9, 0x10

    const/4 v10, -0x2

    const/4 v8, 0x0

    .line 120
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 123
    .local v0, activity:Landroid/app/Activity;
    new-instance v6, Landroid/widget/Switch;

    invoke-direct {v6, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    .line 125
    instance-of v6, v0, Landroid/preference/PreferenceActivity;

    if-eqz v6, :cond_0

    move-object v5, v0

    .line 126
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 127
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0002

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 128
    .local v4, padding:I
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, v8, v8, v4, v8}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 129
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6, v9, v9}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 132
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    .line 134
    .end local v4           #padding:I
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v6, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    const v6, 0x7f07004a

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/RemoteControls;->addPreferencesFromResource(I)V

    .line 138
    const-string v6, "samsung_account"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/RemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    .line 139
    const-string v6, "google_account"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/RemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    .line 140
    const-string v6, "location_network"

    invoke-virtual {p0, v6}, Lcom/android/settings/fmm/RemoteControls;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    .line 143
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 149
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/accounts/AccountManager;->getAuthenticatorTypes()[Landroid/accounts/AuthenticatorDescription;

    move-result-object v1

    .line 150
    .local v1, desc:[Landroid/accounts/AuthenticatorDescription;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v1

    if-ge v3, v6, :cond_2

    .line 151
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.osp.app.signin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 152
    aget-object v6, v1, v3

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 157
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    :goto_1
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 164
    const/4 v3, 0x0

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_3

    .line 165
    aget-object v6, v1, v3

    iget-object v6, v6, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    const-string v7, "com.google"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 166
    aget-object v6, v1, v3

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    .line 167
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/settings/fmm/RemoteControls;->mHasGoogleDescription:Z

    .line 172
    :cond_3
    iget-boolean v6, p0, Lcom/android/settings/fmm/RemoteControls;->mHasGoogleDescription:Z

    if-eqz v6, :cond_4

    .line 174
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v7, v7, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountContext:Landroid/content/Context;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 178
    :goto_3
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-eqz v6, :cond_4

    .line 179
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    iget-object v7, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget v8, v8, Landroid/accounts/AuthenticatorDescription;->iconId:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 183
    :cond_4
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_6

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 186
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    const v7, 0x7f0904d7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setSummaryOn(I)V

    .line 188
    :cond_5
    iget-object v6, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "network"

    invoke-static {v7, v8}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 190
    :cond_6
    return-void

    .line 150
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 158
    :catch_0
    move-exception v2

    .line 159
    .local v2, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "RemoteControls"

    const-string v7, "No Package name for account type com.osp.app.signin"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 164
    .end local v2           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 175
    :catch_1
    move-exception v2

    .line 176
    .restart local v2       #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v6, "RemoteControls"

    const-string v7, "No Package name for account type com.google"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 220
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 222
    iput-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mPrefListener:Lcom/android/settings/fmm/RemoteControls$PreferenceListener;

    .line 224
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 226
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v2, 0x0

    .line 319
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network"

    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 334
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mSamsungAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/fmm/RemoteControls;->mHasSamsungAccount:Z

    if-nez v0, :cond_0

    .line 323
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9}, Landroid/content/Intent;-><init>()V

    .line 324
    .local v9, mIntent:Landroid/content/Intent;
    const-string v0, "com.osp.app.signin"

    const-string v1, "com.osp.app.signin.AccountView"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 325
    const-string v0, "MODE"

    const-string v1, "REMOTE_CONTROLS"

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 326
    invoke-virtual {p0, v9}, Lcom/android/settings/fmm/RemoteControls;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 328
    .end local v9           #mIntent:Landroid/content/Intent;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountPref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    .line 329
    iget-boolean v0, p0, Lcom/android/settings/fmm/RemoteControls;->mHasGoogleAccount:Z

    if-nez v0, :cond_0

    .line 330
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 331
    .local v8, addAccountOptions:Landroid/os/Bundle;
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fmm/RemoteControls;->mGoogleAccountDescription:Landroid/accounts/AuthenticatorDescription;

    iget-object v1, v1, Landroid/accounts/AuthenticatorDescription;->type:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v5

    move-object v3, v2

    move-object v4, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/accounts/AccountManager;->addAccount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 195
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 196
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "GoogleAccountPreferences"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 199
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v3, "pref_fmm"

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "remote_control"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_3

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 206
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "remote_control"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fmm/RemoteControls;->mRemoteControlsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/fmm/RemoteControls;->updateAccountInformation()V

    .line 212
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 213
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mNetworkPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 215
    :cond_1
    return-void

    .line 202
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v0, v1

    .line 205
    goto :goto_1
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 230
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 231
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/fmm/RemoteControls;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 251
    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040089

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 253
    .local v2, mDialogLayout:Landroid/view/View;
    const v3, 0x7f0b01a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 254
    .local v0, chkbox:Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/settings/fmm/RemoteControls$2;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/RemoteControls$2;-><init>(Lcom/android/settings/fmm/RemoteControls;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 259
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/RemoteControls;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090b7b

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1080027

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/settings/fmm/RemoteControls$4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/RemoteControls$4;-><init>(Lcom/android/settings/fmm/RemoteControls;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/fmm/RemoteControls$3;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/RemoteControls$3;-><init>(Lcom/android/settings/fmm/RemoteControls;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 284
    .local v1, dialog:Landroid/app/Dialog;
    return-void
.end method
