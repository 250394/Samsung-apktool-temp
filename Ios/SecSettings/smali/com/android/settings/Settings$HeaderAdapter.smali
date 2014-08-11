.class Lcom/android/settings/Settings$HeaderAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HeaderAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/preference/PreferenceActivity$Header;",
        ">;"
    }
.end annotation


# instance fields
.field private final isDeviceDefault:Z

.field private final isTablet:Z

.field private final mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

.field private mContext:Landroid/content/Context;

.field private final mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

.field private final mHeaderItemLayoutResID:I

.field private mInflater:Landroid/view/LayoutInflater;

.field private final mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

.field private mSelectedId:I

.field private mTetheredData:I

.field private final mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

.field private final mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 5
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, objects:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    const/4 v4, -0x1

    const/4 v2, 0x0

    .line 894
    invoke-direct {p0, p1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 830
    iput v4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSelectedId:I

    .line 832
    iput v2, p0, Lcom/android/settings/Settings$HeaderAdapter;->mTetheredData:I

    .line 896
    iput-object p1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    .line 898
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 902
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v3}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 919
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    .line 921
    new-instance v1, Lcom/android/settings/bluetooth/BluetoothEnabler;

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v3}, Lcom/android/settings/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    .line 922
    new-instance v1, Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v3}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    .line 923
    new-instance v1, Lcom/android/settings/dormantmode/DormantModeEnabler;

    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, p1}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, p1, v3}, Lcom/android/settings/dormantmode/DormantModeEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    .line 925
    sget-object v1, Lcom/android/internal/R$styleable;->Theme:[I

    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 926
    .local v0, a:Landroid/content/res/TypedArray;
    const/16 v1, 0xfa

    const v3, 0x10900af

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    .line 927
    const/16 v1, 0x11c

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    .line 928
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 930
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/Settings$HeaderAdapter;->isTablet:Z

    .line 931
    iput v4, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSelectedId:I

    .line 932
    return-void

    :cond_0
    move v1, v2

    .line 930
    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/settings/Settings$HeaderAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 815
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static getHeaderType(Landroid/preference/PreferenceActivity$Header;)I
    .locals 4
    .parameter "header"

    .prologue
    .line 847
    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 848
    const/4 v0, 0x0

    .line 855
    :goto_0
    return v0

    .line 850
    :cond_0
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b03b4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b03b6

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b03b5

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b03b7

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b03c5

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-wide v0, p0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v2, 0x7f0b03c4

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 853
    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    .line 855
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 867
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    .line 861
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 862
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 937
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity$Header;

    .line 938
    .local v0, header:Landroid/preference/PreferenceActivity$Header;
    invoke-static {v0}, Lcom/android/settings/Settings$HeaderAdapter;->getHeaderType(Landroid/preference/PreferenceActivity$Header;)I

    move-result v1

    .line 939
    .local v1, headerType:I
    const/4 v5, 0x0

    .line 941
    .local v5, view:Landroid/view/View;
    if-nez p2, :cond_9

    .line 942
    new-instance v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    const/4 v6, 0x0

    invoke-direct {v2, v6}, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;-><init>(Lcom/android/settings/Settings$1;)V

    .line 943
    .local v2, holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    packed-switch v1, :pswitch_data_0

    .line 992
    :goto_0
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 999
    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 1106
    :cond_0
    :goto_2
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b03b6

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 1118
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Common_EnableUiDisplayMirroring"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1120
    invoke-static {}, Lcom/android/settings/Settings;->checkEnableMirroring()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1121
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 1125
    :cond_2
    return-object v5

    .line 945
    :pswitch_0
    iget-boolean v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->isTablet:Z

    if-eqz v6, :cond_4

    .line 946
    iget v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v7, 0x1090108

    if-ne v6, v7, :cond_3

    .line 947
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x1090105

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    :goto_3
    move-object v6, v5

    .line 953
    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    goto :goto_0

    .line 949
    :cond_3
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x1090106

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_3

    .line 951
    :cond_4
    new-instance v5, Landroid/widget/TextView;

    .end local v5           #view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    const v8, 0x1010208

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .restart local v5       #view:Landroid/view/View;
    goto :goto_3

    .line 957
    :pswitch_1
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 958
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400ec

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 959
    const v6, 0x7f0b004d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 960
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 961
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 962
    const v6, 0x7f0b0202

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 963
    :cond_5
    iget-boolean v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v6, :cond_7

    .line 964
    iget v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v7, 0x1090108

    if-ne v6, v7, :cond_6

    .line 965
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109010a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 969
    :goto_4
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 970
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 971
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 972
    const v6, 0x10203f7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 967
    :cond_6
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109010b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_4

    .line 974
    :cond_7
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400ac

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 975
    const v6, 0x7f0b004d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 976
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 977
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 978
    const v6, 0x7f0b0202

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    goto/16 :goto_0

    .line 983
    :pswitch_2
    iget-boolean v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v6, :cond_8

    .line 984
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v7, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 987
    :goto_5
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 988
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 989
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    goto/16 :goto_0

    .line 986
    :cond_8
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x10900af

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_5

    .line 994
    .end local v2           #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    :cond_9
    move-object v5, p2

    .line 995
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;

    .restart local v2       #holder:Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;
    goto/16 :goto_1

    .line 1001
    :pswitch_3
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1007
    :pswitch_4
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 1008
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400ec

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1009
    const v6, 0x7f0b004d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1010
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1011
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1012
    const v6, 0x7f0b0202

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1013
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1015
    const v6, 0x7f0b0033

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1016
    .local v4, textLayout:Landroid/view/View;
    if-eqz v4, :cond_a

    instance-of v6, v4, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_a

    .line 1017
    const v6, 0x7f0b004d

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 1018
    new-instance v6, Lcom/android/settings/Settings$HeaderAdapter$1;

    invoke-direct {v6, p0}, Lcom/android/settings/Settings$HeaderAdapter$1;-><init>(Lcom/android/settings/Settings$HeaderAdapter;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    .end local v4           #textLayout:Landroid/view/View;
    :cond_a
    :goto_6
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b03b4

    cmp-long v6, v6, v8

    if-nez v6, :cond_f

    .line 1063
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    iget-object v7, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/wifi/WifiEnabler;->setSwitch(Landroid/widget/Switch;)V

    .line 1084
    :cond_b
    :goto_7
    :pswitch_5
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    iget v7, v0, Landroid/preference/PreferenceActivity$Header;->iconRes:I

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1085
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1086
    invoke-virtual {p0}, Lcom/android/settings/Settings$HeaderAdapter;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceActivity$Header;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1087
    .local v3, summary:Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 1088
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1089
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1095
    :goto_8
    iget v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v7, 0x10900af

    if-eq v6, v7, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->isTablet:Z

    if-eqz v6, :cond_0

    .line 1096
    iget v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSelectedId:I

    if-ne v6, p1, :cond_15

    .line 1097
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_2

    .line 1041
    .end local v3           #summary:Ljava/lang/CharSequence;
    :cond_c
    iget-boolean v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->isDeviceDefault:Z

    if-eqz v6, :cond_e

    .line 1042
    iget v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mHeaderItemLayoutResID:I

    const v7, 0x1090108

    if-ne v6, v7, :cond_d

    .line 1043
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109010a

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1047
    :goto_9
    const v6, 0x1020006

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1048
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1049
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1050
    const v6, 0x10203f7

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1051
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1045
    :cond_d
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x109010b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    goto :goto_9

    .line 1053
    :cond_e
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f0400ac

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 1054
    const v6, 0x7f0b004d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->icon:Landroid/widget/ImageView;

    .line 1055
    const v6, 0x1020016

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    .line 1056
    const v6, 0x1020010

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    .line 1057
    const v6, 0x7f0b0202

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Switch;

    iput-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    .line 1058
    invoke-virtual {v5, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 1064
    :cond_f
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b03b5

    cmp-long v6, v6, v8

    if-nez v6, :cond_10

    .line 1067
    :cond_10
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b03b6

    cmp-long v6, v6, v8

    if-nez v6, :cond_11

    .line 1073
    :cond_11
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b03b7

    cmp-long v6, v6, v8

    if-nez v6, :cond_12

    .line 1074
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    iget-object v7, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/BluetoothEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1075
    :cond_12
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b03c5

    cmp-long v6, v6, v8

    if-nez v6, :cond_13

    .line 1076
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    iget-object v7, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1077
    :cond_13
    iget-wide v6, v0, Landroid/preference/PreferenceActivity$Header;->id:J

    const-wide/32 v8, 0x7f0b03c4

    cmp-long v6, v6, v8

    if-nez v6, :cond_b

    .line 1078
    iget-object v6, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    iget-object v7, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->switch_:Landroid/widget/Switch;

    invoke-virtual {v6, v7}, Lcom/android/settings/dormantmode/DormantModeEnabler;->setSwitch(Landroid/widget/Switch;)V

    goto/16 :goto_7

    .line 1091
    .restart local v3       #summary:Ljava/lang/CharSequence;
    :cond_14
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->summary:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_8

    .line 1099
    :cond_15
    iget-object v6, v2, Lcom/android/settings/Settings$HeaderAdapter$HeaderViewHolder;->title:Landroid/widget/TextView;

    sget-object v7, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/16 :goto_2

    .line 943
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 999
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x3

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 882
    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 872
    invoke-virtual {p0, p1}, Lcom/android/settings/Settings$HeaderAdapter;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 1165
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1171
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->pause()V

    .line 1172
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->pause()V

    .line 1183
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->pause()V

    .line 1184
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->resume()V

    .line 1136
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    if-eqz v0, :cond_0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mBluetoothEnabler:Lcom/android/settings/bluetooth/BluetoothEnabler;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothEnabler;->resume()V

    .line 1143
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mPowerSavingEnabler:Lcom/android/settings/powersavingmode/PowerSavingEnabler;

    invoke-virtual {v0}, Lcom/android/settings/powersavingmode/PowerSavingEnabler;->resume()V

    .line 1144
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mDormantModeEnabler:Lcom/android/settings/dormantmode/DormantModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/dormantmode/DormantModeEnabler;->resume()V

    .line 1161
    return-void
.end method

.method public setSelectedId(I)V
    .locals 0
    .parameter "nSelId"

    .prologue
    .line 886
    iput p1, p0, Lcom/android/settings/Settings$HeaderAdapter;->mSelectedId:I

    .line 887
    return-void
.end method

.method public setSoftapEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/4 v2, 0x1

    .line 1187
    if-eqz p1, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->secSetSoftapEnabled(Z)V

    .line 1193
    :goto_0
    return-void

    .line 1190
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setChecked(Z)V

    .line 1191
    iget-object v0, p0, Lcom/android/settings/Settings$HeaderAdapter;->mWifiApEnabler:Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;

    invoke-virtual {v0, v2}, Lcom/android/settings/wifi/mobileap/WifiApSwitchEnabler;->setEnabled(Z)V

    goto :goto_0
.end method
