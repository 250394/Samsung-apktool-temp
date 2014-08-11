.class public Lcom/android/settings/wifi/mobileap/WifiApAllowedList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiApAllowedList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mActionView:Landroid/view/View;

.field private mActivity:Landroid/app/Activity;

.field private mAddlistMenuItem:Landroid/view/MenuItem;

.field private mCurrentSelected:Landroid/preference/Preference;

.field private mDeleteButton:Landroid/view/View;

.field private mDeleteIcon:Landroid/widget/ImageView;

.field private mDeleteMenuItem:Landroid/view/MenuItem;

.field private mDeviceList:Landroid/preference/PreferenceScreen;

.field private mEmptyLandscape:Landroid/view/View;

.field private mEmptyPortrait:Landroid/view/View;

.field private mIsTablet:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/PreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)Landroid/preference/Preference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    return-void
.end method

.method private reloadWhiteList()V
    .locals 3

    .prologue
    .line 301
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 302
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 303
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 305
    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 307
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startDeletePreference()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 185
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    check-cast v0, Landroid/preference/PreferenceActivity;

    const-class v1, Lcom/android/settings/wifi/mobileap/WifiApAllowedListDelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0902a4

    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 188
    return-void
.end method

.method private updateEmptyView(Z)V
    .locals 3
    .parameter "isLand"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 214
    if-eqz p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :goto_0
    return-void

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 219
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOptionsMenuIcon(Z)V
    .locals 5
    .parameter "showIcon"

    .prologue
    const/4 v4, -0x2

    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 226
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 234
    :goto_0
    return-void

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x10

    const/4 v5, 0x1

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getActivity()Landroid/app/Activity;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    .line 99
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v10}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    .line 104
    const-string v10, "wifi"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/net/wifi/WifiManager;

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getListView()Landroid/widget/ListView;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 107
    .local v6, listAdapter:Landroid/widget/ListAdapter;
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 108
    .local v3, inflate:Landroid/view/LayoutInflater;
    const v10, 0x7f040102

    invoke-virtual {v3, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 109
    .local v9, view:Landroid/widget/LinearLayout;
    const v10, 0x1020004

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 110
    .local v2, emptyView:Landroid/widget/FrameLayout;
    const v10, 0x7f0b02fd

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyPortrait:Landroid/view/View;

    .line 111
    const v10, 0x7f0b0301

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mEmptyLandscape:Landroid/view/View;

    .line 113
    const v10, 0x102000a

    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    .line 114
    .local v7, lv:Landroid/widget/ListView;
    invoke-virtual {v7, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    invoke-virtual {v7, v2}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getView()Landroid/view/View;

    move-result-object v1

    .local v1, currentView:Landroid/view/View;
    move-object v10, v1

    .line 118
    check-cast v10, Landroid/widget/LinearLayout;

    invoke-virtual {v10}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 119
    check-cast v1, Landroid/widget/LinearLayout;

    .end local v1           #currentView:Landroid/view/View;
    invoke-virtual {v1, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    const-string v10, "device_list_category"

    invoke-virtual {p0, v10}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    check-cast v10, Landroid/preference/PreferenceScreen;

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    .line 123
    iget-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-eqz v10, :cond_1

    .line 124
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->setHasOptionsMenu(Z)V

    .line 176
    :goto_0
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_2

    .line 178
    .local v5, isLand:Z
    :goto_1
    iget-boolean v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v10, :cond_0

    .line 179
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 180
    :cond_0
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 182
    return-void

    .line 126
    .end local v5           #isLand:Z
    :cond_1
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v8, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 127
    .local v8, screenWidth:I
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const-string v11, "layout_inflater"

    invoke-virtual {v10, v11}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 128
    .local v4, inflater:Landroid/view/LayoutInflater;
    const v10, 0x7f040103

    invoke-virtual {v4, v10, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    .line 129
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v11, 0x7f0b0307

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 130
    .local v0, addButton:Landroid/view/View;
    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$1;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    new-instance v10, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;

    invoke-direct {v10, p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$2;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    invoke-virtual {v0, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v11, 0x7f0b0305

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    .line 154
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActionView:Landroid/view/View;

    const v11, 0x7f0b0306

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    iput-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    .line 155
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;

    invoke-direct {v11, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$3;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    new-instance v11, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;

    invoke-direct {v11, p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$4;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;I)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 173
    iget-object v10, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v10}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v10

    invoke-virtual {v10, v12, v12}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    goto/16 :goto_0

    .line 176
    .end local v0           #addButton:Landroid/view/View;
    .end local v4           #inflater:Landroid/view/LayoutInflater;
    .end local v8           #screenWidth:I
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .parameter "dialog"
    .parameter "button"

    .prologue
    const/4 v8, 0x3

    const/4 v12, 0x1

    .line 356
    packed-switch p2, :pswitch_data_0

    .line 386
    .end local p1
    :goto_0
    return-void

    .restart local p1
    :pswitch_0
    move-object v6, p1

    .line 358
    check-cast v6, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    invoke-virtual {v6}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getMac()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, mac:Ljava/lang/String;
    check-cast p1, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    .end local p1
    invoke-virtual {p1}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;->getName()Ljava/lang/String;

    move-result-object v3

    .line 360
    .local v3, name:Ljava/lang/String;
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v5

    .line 362
    .local v5, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v5, v1, v3}, Landroid/net/wifi/WifiApWhiteList;->addWhiteList(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    packed-switch v6, :pswitch_data_1

    :pswitch_1
    goto :goto_0

    .line 364
    :pswitch_2
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6, v1, v3, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    .line 365
    .local v0, device:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 366
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->reloadWhiteList()V

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    goto :goto_0

    .line 370
    .end local v0           #device:Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;
    :pswitch_3
    invoke-virtual {p0, v8}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 373
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090292

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<font color=#59D0F3>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "</font>"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v1, v8, v12

    const/4 v9, 0x2

    invoke-virtual {v5, v1}, Landroid/net/wifi/WifiApWhiteList;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 377
    .local v2, msgAdd:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v7

    invoke-static {v6, v7, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    .line 378
    .local v4, toastAdd:Landroid/widget/Toast;
    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 356
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch

    .line 362
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .parameter "newConfig"

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    iget-boolean v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v0, :cond_0

    .line 208
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateOptionsMenuIcon(Z)V

    .line 209
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateEmptyView(Z)V

    .line 210
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 211
    return-void

    :cond_1
    move v0, v2

    .line 208
    goto :goto_0

    :cond_2
    move v1, v2

    .line 209
    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    const v0, 0x7f070079

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->addPreferencesFromResource(I)V

    .line 92
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 8
    .parameter "dialogId"

    .prologue
    const/4 v3, 0x0

    .line 256
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 257
    new-instance v0, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;

    iget-object v1, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/mobileap/WifiApWhitelistDialog;-><init>(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 297
    :goto_0
    return-object v0

    .line 259
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 260
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 261
    .local v6, deleteDeviceDialog:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    check-cast v0, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    invoke-virtual {v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;->getMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090289

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09002c

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$6;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011a

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$5;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 278
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 280
    .end local v6           #deleteDeviceDialog:Landroid/app/AlertDialog$Builder;
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 281
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 282
    .local v7, macWarnDialog:Landroid/app/AlertDialog$Builder;
    const v0, 0x1040014

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902ac

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0902ab

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$8;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    new-instance v2, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList$7;-><init>(Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 295
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .end local v7           #macWarnDialog:Landroid/app/AlertDialog$Builder;
    :cond_2
    move-object v0, v3

    .line 297
    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 192
    const/4 v0, 0x1

    const v1, 0x7f0902a4

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    .line 193
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200a1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 194
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0200a0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 197
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 200
    :cond_0
    const/4 v0, 0x2

    const v1, 0x7f090283

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    .line 201
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f020084

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mAddlistMenuItem:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 203
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 238
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 240
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->startDeletePreference()V

    goto :goto_0

    .line 243
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 244
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    goto :goto_0

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0902be

    invoke-static {v2, v3, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 247
    .local v0, toast:Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 349
    iput-object p2, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mCurrentSelected:Landroid/preference/Preference;

    .line 350
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->showDialog(I)V

    .line 351
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 311
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->updateList()V

    .line 313
    return-void
.end method

.method public updateList()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 316
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 317
    invoke-static {}, Landroid/net/wifi/WifiApWhiteList;->getInstance()Landroid/net/wifi/WifiApWhiteList;

    move-result-object v1

    .line 318
    .local v1, whiteList:Landroid/net/wifi/WifiApWhiteList;
    invoke-virtual {v1}, Landroid/net/wifi/WifiApWhiteList;->getIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 319
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/wifi/WifiApWhiteList$WhiteList;>;"
    if-eqz v0, :cond_0

    .line 320
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiApWhiteList$WhiteList;

    .line 323
    .local v2, wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    new-instance v4, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;

    iget-object v5, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getMac()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/wifi/WifiApWhiteList$WhiteList;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7, p0}, Lcom/android/settings/wifi/mobileap/WifiApAllowedDevice;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/wifi/mobileap/WifiApAllowedList;)V

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 326
    .end local v2           #wl:Landroid/net/wifi/WifiApWhiteList$WhiteList;
    :cond_0
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeviceList:Landroid/preference/PreferenceScreen;

    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 327
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_1

    .line 328
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f0200a1

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 329
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 331
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v3, :cond_2

    .line 332
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 333
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 345
    :cond_2
    :goto_1
    return-void

    .line 336
    :cond_3
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    if-eqz v3, :cond_4

    .line 337
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    const v4, 0x7f0200a0

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 338
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteMenuItem:Landroid/view/MenuItem;

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 340
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mIsTablet:Z

    if-nez v3, :cond_2

    .line 341
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteButton:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 342
    iget-object v3, p0, Lcom/android/settings/wifi/mobileap/WifiApAllowedList;->mDeleteIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_1
.end method
