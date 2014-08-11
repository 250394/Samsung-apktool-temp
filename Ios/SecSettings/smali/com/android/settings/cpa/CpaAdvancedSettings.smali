.class public Lcom/android/settings/cpa/CpaAdvancedSettings;
.super Landroid/preference/PreferenceActivity;
.source "CpaAdvancedSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static sNotSet:Ljava/lang/String;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private APN_TYPE_LIST:Ljava/lang/String;

.field private dunRequired:Z

.field private mApn:Landroid/preference/EditTextPreference;

.field private mApnType:Landroid/preference/EditTextPreference;

.field private mApnTypeStyle:Z

.field private mApnType_list:Landroid/preference/ListPreference;

.field private mAuthType:Landroid/preference/ListPreference;

.field private mBearer:Landroid/preference/ListPreference;

.field private mCarrierEnabled:Landroid/preference/CheckBoxPreference;

.field private mCurMcc:Ljava/lang/String;

.field private mCurMnc:Ljava/lang/String;

.field private mCursor:Landroid/database/Cursor;

.field private mDns1:Landroid/preference/EditTextPreference;

.field private mDns2:Landroid/preference/EditTextPreference;

.field private mEditable:Z

.field private mFirstTime:Z

.field private mIsVzwEditable:Z

.field private mMcc:Landroid/preference/EditTextPreference;

.field private mMmsPort:Landroid/preference/EditTextPreference;

.field private mMmsProxy:Landroid/preference/EditTextPreference;

.field private mMmsc:Landroid/preference/EditTextPreference;

.field private mMnc:Landroid/preference/EditTextPreference;

.field private mName:Landroid/preference/EditTextPreference;

.field private mNewApn:Z

.field private mPassword:Landroid/preference/EditTextPreference;

.field private mPort:Landroid/preference/EditTextPreference;

.field private mProtocol:Landroid/preference/ListPreference;

.field private mProxy:Landroid/preference/EditTextPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mRoamingProtocol:Landroid/preference/ListPreference;

.field private mServer:Landroid/preference/EditTextPreference;

.field private mUri:Landroid/net/Uri;

.field private mUser:Landroid/preference/EditTextPreference;

.field private regExpn:Ljava/lang/String;

.field private regExpn1:Ljava/lang/String;

.field private regExpn_Domain_num:Ljava/lang/String;

.field private regExpn_Domain_num1:Ljava/lang/String;

.field private regExpn_IP:Ljava/lang/String;

.field private regExpn_Pwd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-class v0, Lcom/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    .line 154
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "server"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "password"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mmsc"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mcc"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "mnc"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "numeric"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mmsproxy"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mmsport"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "authtype"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "protocol"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "carrier_enabled"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "bearer"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "roaming_protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 85
    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn:Ljava/lang/String;

    .line 88
    const-string v0, "^[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn1:Ljava/lang/String;

    .line 90
    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num:Ljava/lang/String;

    .line 91
    const-string v0, "^[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num1:Ljava/lang/String;

    .line 94
    const-string v0, "^[a-z0-9A-Z!#$%&()*+-./:;<>=?@\\[\\]_\\{\\}]{1,16}$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Pwd:Ljava/lang/String;

    .line 97
    const-string v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_IP:Ljava/lang/String;

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->dunRequired:Z

    return-void
.end method

.method private bearerDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "raw"

    .prologue
    const/4 v3, 0x0

    .line 582
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 583
    .local v1, mBearerIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 590
    :goto_0
    return-object v3

    .line 586
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a003c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 588
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method protected static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1129
    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1130
    :cond_0
    const-string p0, ""

    .line 1132
    :cond_1
    return-object p0
.end method

.method private checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1138
    if-eqz p1, :cond_0

    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1139
    :cond_0
    const-string p1, "*"

    .line 1147
    :cond_1
    :goto_0
    return-object p1

    .line 1140
    :cond_2
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1141
    const-string p1, "default"

    goto :goto_0

    .line 1142
    :cond_3
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1143
    const-string p1, "mms"

    goto :goto_0

    .line 1144
    :cond_4
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    const-string p1, "supl"

    goto :goto_0
.end method

.method private checkNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "value"

    .prologue
    .line 1067
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 1068
    :cond_0
    sget-object p1, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 1070
    .end local p1
    :cond_1
    return-object p1
.end method

.method private checkNullApn(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 1076
    iget-boolean v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->dunRequired:Z

    if-eqz v0, :cond_c

    .line 1077
    if-nez p1, :cond_1

    .line 1078
    sget-object p1, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 1123
    :cond_0
    :goto_0
    return-object p1

    .line 1079
    :cond_1
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1080
    :cond_2
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 1081
    :cond_3
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1082
    const-string p1, "internet + mms"

    goto :goto_0

    .line 1083
    :cond_4
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1084
    const-string p1, "internet + dun"

    goto :goto_0

    .line 1085
    :cond_5
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1086
    const-string p1, "internet"

    goto :goto_0

    .line 1087
    :cond_6
    const-string v0, "5"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1088
    const-string p1, "mms"

    goto :goto_0

    .line 1089
    :cond_7
    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1090
    const-string p1, "dun"

    goto :goto_0

    .line 1091
    :cond_8
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1092
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1093
    const-string p1, "internet + mms + dun"

    goto :goto_0

    .line 1094
    :cond_9
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1095
    const-string p1, "internet + mms"

    goto :goto_0

    .line 1096
    :cond_a
    const-string v0, "dun"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1097
    const-string p1, "internet + dun"

    goto/16 :goto_0

    .line 1099
    :cond_b
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1106
    :cond_c
    if-nez p1, :cond_d

    .line 1107
    sget-object p1, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1108
    :cond_d
    const-string v0, "1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1109
    :cond_e
    const-string p1, "internet + mms + supl"

    goto/16 :goto_0

    .line 1110
    :cond_f
    const-string v0, "2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 1111
    const-string p1, "internet"

    goto/16 :goto_0

    .line 1112
    :cond_10
    const-string v0, "3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1113
    const-string p1, "mms"

    goto/16 :goto_0

    .line 1114
    :cond_11
    const-string v0, "4"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1115
    const-string p1, "supl"

    goto/16 :goto_0

    .line 1116
    :cond_12
    const-string v0, "default"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1117
    const-string v0, "mms"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1118
    const-string p1, "internet + mms"

    goto/16 :goto_0

    .line 1120
    :cond_13
    const-string p1, "internet"

    goto/16 :goto_0
.end method

.method private fillUi()V
    .locals 14

    .prologue
    .line 381
    sget-object v10, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fillUi(), isFirstTime? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newAPN? "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, 0x0

    .line 384
    .local v0, apnType:Ljava/lang/String;
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    if-eqz v10, :cond_4

    .line 385
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    .line 387
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x1

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 388
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x2

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 389
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x3

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 390
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x4

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 391
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x5

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 392
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mServer:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x6

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 393
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v12, 0x7

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 394
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xc

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 395
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xd

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 396
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x8

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 397
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x9

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 398
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xa

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 399
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnTypeStyle:Z

    if-nez v10, :cond_0

    .line 400
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 403
    :cond_0
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v10, :cond_1

    .line 404
    const-string v10, "gsm.sim.operator.numeric"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, numeric:Ljava/lang/String;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x4

    if-le v10, v11, :cond_1

    .line 409
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 411
    .local v5, mcc:Ljava/lang/String;
    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 413
    .local v6, mnc:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 414
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 415
    iput-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    .line 416
    iput-object v5, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    .line 420
    .end local v5           #mcc:Ljava/lang/String;
    .end local v6           #mnc:Ljava/lang/String;
    .end local v7           #numeric:Ljava/lang/String;
    :cond_1
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnTypeStyle:Z

    if-eqz v10, :cond_3

    .line 422
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isDunExist()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->dunRequired:Z

    .line 423
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->dunRequired:Z

    if-eqz v10, :cond_2

    .line 424
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const v11, 0x7f0a0062

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 425
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const v11, 0x7f0a0063

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 429
    :cond_2
    sget-object v10, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "fillUi(), APN type DB data : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v13, 0xf

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xf

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 431
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 433
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->dunRequired:Z

    if-eqz v10, :cond_d

    .line 434
    if-eqz v0, :cond_c

    .line 435
    const-string v10, "*"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 436
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl,mms,dun"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 472
    :cond_3
    :goto_0
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v11, 0xe

    invoke-interface {v10, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 473
    .local v1, authVal:I
    const/4 v10, -0x1

    if-eq v1, v10, :cond_12

    .line 474
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 479
    :goto_1
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x10

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 480
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x13

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 481
    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x11

    invoke-interface {v10, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const/4 v12, 0x1

    if-ne v10, v12, :cond_13

    const/4 v10, 0x1

    :goto_2
    invoke-virtual {v11, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 482
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0x12

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kddi_cpa_static_dns1"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 485
    .local v3, dns1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "kddi_cpa_static_dns2"

    invoke-static {v10, v11}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 486
    .local v4, dns2:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v3}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 487
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v10, v4}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 490
    .end local v1           #authVal:I
    .end local v3           #dns1:Ljava/lang/String;
    .end local v4           #dns2:Ljava/lang/String;
    :cond_4
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 491
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 492
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 493
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mServer:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 496
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 497
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsProxy:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsPort:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 499
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 500
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 501
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    .line 504
    .restart local v3       #dns1:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v10}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    .line 505
    .restart local v4       #dns2:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 506
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 518
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnTypeStyle:Z

    if-nez v10, :cond_14

    .line 519
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v11}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 525
    :goto_3
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 526
    .local v1, authVal:Ljava/lang/String;
    if-eqz v1, :cond_15

    .line 527
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 528
    .local v2, authValIndex:I
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v10, v2}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 530
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f0a0038

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, values:[Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v11, v9, v2

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 536
    .end local v2           #authValIndex:I
    .end local v9           #values:[Ljava/lang/String;
    :goto_4
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v11, v12}, Lcom/android/settings/cpa/CpaAdvancedSettings;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v11, v12}, Lcom/android/settings/cpa/CpaAdvancedSettings;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v11}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 543
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v10

    const-string v11, "CscFeature_Setting_EnableEditingIpVersionType"

    invoke-virtual {v10, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 544
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 545
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 551
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isEditable()Z

    move-result v10

    iput-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mEditable:Z

    .line 552
    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 553
    .local v8, sales_code:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 554
    const-string v10, "ril.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 556
    :cond_5
    iget-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mEditable:Z

    if-nez v10, :cond_6

    .line 558
    const-string v10, "apn_edit"

    invoke-virtual {p0, v10}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 560
    :cond_6
    return-void

    .line 437
    .end local v1           #authVal:Ljava/lang/String;
    .end local v3           #dns1:Ljava/lang/String;
    .end local v4           #dns2:Ljava/lang/String;
    .end local v8           #sales_code:Ljava/lang/String;
    :cond_7
    const-string v10, "default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 438
    const-string v10, "mms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "dun"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 439
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl,mms,dun"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 440
    :cond_8
    const-string v10, "mms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 441
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl,mms"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    :cond_9
    const-string v10, "dun"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 443
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl,dun"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 445
    :cond_a
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 448
    :cond_b
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 451
    :cond_c
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 454
    :cond_d
    if-eqz v0, :cond_11

    .line 455
    const-string v10, "*"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 456
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl,mms"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_e
    const-string v10, "default"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 458
    const-string v10, "mms"

    invoke-virtual {v0, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 459
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl,mms"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 461
    :cond_f
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    const-string v11, "default,supl"

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 464
    :cond_10
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 467
    :cond_11
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/16 v12, 0xf

    invoke-interface {v11, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 476
    .local v1, authVal:I
    :cond_12
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 481
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_2

    .line 521
    .end local v1           #authVal:I
    .restart local v3       #dns1:Ljava/lang/String;
    .restart local v4       #dns2:Ljava/lang/String;
    :cond_14
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v10}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->APN_TYPE_LIST:Ljava/lang/String;

    .line 522
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 533
    .local v1, authVal:Ljava/lang/String;
    :cond_15
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    sget-object v11, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 547
    :cond_16
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 548
    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_5
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 975
    const/4 v0, 0x0

    .line 977
    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 978
    iget-object v2, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 979
    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 980
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 981
    iget-object v5, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 982
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v6}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 983
    iget-object v7, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v7}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 984
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 986
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v9, :cond_1

    .line 987
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09049c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1003
    :cond_0
    :goto_0
    return-object v0

    .line 988
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v9, :cond_2

    .line 989
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09049d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 990
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 991
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0904a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 992
    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    const v2, 0xfffe

    and-int/2addr v1, v2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    .line 993
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f0904a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 994
    :cond_4
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v9, :cond_5

    .line 995
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09049e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 996
    :cond_5
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v9, :cond_6

    .line 997
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f09049f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 998
    :cond_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v9, :cond_0

    .line 999
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v9, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090c68

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private isDunExist()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1180
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v1, "isDunExist"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1183
    const/4 v6, 0x0

    .line 1185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1186
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v1, "No numeric data"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 1217
    :cond_0
    :goto_0
    return v0

    .line 1191
    :cond_1
    new-instance v3, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1196
    if-eqz v1, :cond_4

    .line 1197
    :try_start_1
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v2, "Query databases to find dun type"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1201
    :cond_2
    const-string v0, "type"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1202
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "dun"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "default"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1203
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v2, "Dun type is exist"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    const/4 v6, 0x1

    .line 1206
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-nez v0, :cond_2

    :cond_4
    move v0, v6

    .line 1215
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1210
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    move v0, v6

    .line 1211
    :goto_1
    :try_start_2
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught to query databases : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1215
    if-eqz v2, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v7

    :goto_2
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_2

    .line 1210
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move v0, v6

    goto :goto_1
.end method

.method private isEditable()Z
    .locals 9

    .prologue
    .line 331
    const/4 v8, 0x1

    .line 332
    .local v8, editable:Z
    const/4 v6, 0x0

    .line 335
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(name = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND apn = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND user = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' AND password = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 343
    .local v3, selection:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://nwkinfo/nwkinfo/carriers"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 345
    if-eqz v6, :cond_1

    .line 346
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v1, "No carriers in nwkinfo provider"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 349
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 351
    :cond_0
    const-string v0, "1"

    const-string v1, "editable"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 352
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_0

    .line 359
    :cond_1
    if-eqz v6, :cond_2

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 362
    :cond_2
    :goto_0
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isEditable  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    return v8

    .line 356
    :catch_0
    move-exception v7

    .line 357
    .local v7, e:Landroid/database/sqlite/SQLiteException;
    :try_start_1
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    if-eqz v6, :cond_2

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 359
    .end local v7           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 360
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private isValidIP(Ljava/lang/String;)Z
    .locals 6
    .parameter "mIP"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 785
    if-nez p1, :cond_0

    .line 799
    :goto_0
    return v2

    .line 788
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_IP:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 789
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 791
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 792
    goto :goto_0

    .line 794
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 795
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidIP : Valid IP == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 796
    goto :goto_0

    .line 798
    :cond_2
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidIP : unValid IP == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isValidPort(Ljava/lang/String;)Z
    .locals 6
    .parameter "sPort"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 803
    if-nez p1, :cond_0

    .line 824
    :goto_0
    return v2

    .line 806
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 807
    goto :goto_0

    .line 809
    :cond_1
    const/4 v1, 0x0

    .line 812
    .local v1, mPort_int:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 819
    const v4, 0xffff

    if-gt v1, v4, :cond_2

    if-gez v1, :cond_3

    .line 820
    :cond_2
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidPort : unValid Port == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 813
    :catch_0
    move-exception v0

    .line 815
    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "It\'s not number type!!!"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 823
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_3
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidPort : Valid Port == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 824
    goto :goto_0
.end method

.method private protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;
    .locals 6
    .parameter "raw"
    .parameter "protocol"

    .prologue
    const/4 v3, 0x0

    .line 568
    invoke-virtual {p2, p1}, Landroid/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    .line 569
    .local v1, protocolIndex:I
    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    .line 576
    :goto_0
    return-object v3

    .line 572
    :cond_0
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v5, 0x7f0a003a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 574
    .local v2, values:[Ljava/lang/String;
    :try_start_0
    aget-object v3, v2, v1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 575
    :catch_0
    move-exception v0

    .line 576
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    goto :goto_0
.end method

.method private starify(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 1055
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1056
    :cond_0
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 1062
    :goto_0
    return-object v2

    .line 1058
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    new-array v1, v2, [C

    .line 1059
    .local v1, password:[C
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 1060
    const/16 v2, 0x2a

    aput-char v2, v1, v0

    .line 1059
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1062
    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private validateAndSave(Z)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 892
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 893
    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 894
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 895
    iget-object v5, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 897
    sget-object v6, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validateAndSave()force = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    if-nez p1, :cond_0

    .line 900
    invoke-virtual {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showDialog(I)V

    move v0, v1

    .line 971
    :goto_0
    return v0

    .line 904
    :cond_0
    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-nez v6, :cond_1

    .line 905
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v2, "Could not go to the first row in the Cursor when saving data."

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 907
    goto :goto_0

    .line 911
    :cond_1
    if-eqz p1, :cond_2

    iget-boolean v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mNewApn:Z

    if-eqz v6, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v2, :cond_2

    move v0, v1

    .line 913
    goto :goto_0

    .line 916
    :cond_2
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 920
    const-string v6, "name"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0906b9

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v1, v6, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const-string v0, "apn"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 923
    const-string v0, "proxy"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 924
    const-string v0, "port"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    const-string v0, "mmsproxy"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    const-string v0, "mmsport"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    const-string v0, "user"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v0, "server"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    const-string v0, "password"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    const-string v0, "mmsc"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    const-string v0, "carrier_enabled"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 933
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 934
    if-eqz v0, :cond_4

    .line 935
    const-string v3, "authtype"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 938
    :cond_4
    const-string v0, "protocol"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string v0, "roaming_protocol"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    iget-boolean v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnTypeStyle:Z

    if-nez v0, :cond_8

    .line 944
    const-string v0, "d2tmo"

    const-string v3, "ro.product.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 945
    const-string v0, "type"

    const-string v3, "default,mms,supl"

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    :goto_1
    const-string v0, "mcc"

    invoke-virtual {v1, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const-string v0, "mnc"

    invoke-virtual {v1, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const-string v0, "numeric"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 958
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 959
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMnc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCurMcc:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 960
    const-string v0, "current"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    :cond_5
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 965
    if-eqz v0, :cond_6

    .line 966
    const-string v3, "bearer"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 969
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v0, v3, v1, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move v0, v2

    .line 971
    goto/16 :goto_0

    .line 947
    :cond_7
    const-string v0, "type"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v3}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 950
    :cond_8
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "validateAndSave() checkNotSetApn("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const-string v0, "type"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSetApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public isValidID(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 13
    .parameter "inputEmail"

    .prologue
    const/16 v9, 0x40

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 715
    if-nez p1, :cond_0

    .line 716
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v9, "isValidID : inputEmail == null"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 757
    :goto_0
    return-object v8

    .line 720
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_1

    .line 721
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 723
    :cond_1
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 725
    .local v4, p:Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 727
    .local v5, p1:Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    .line 728
    .local v6, p2:Ljava/util/regex/Pattern;
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Domain_num1:Ljava/lang/String;

    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 730
    .local v7, p3:Ljava/util/regex/Pattern;
    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 731
    .local v1, limitId:I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    sub-int v0, v8, v9

    .line 733
    .local v0, limitDomain:I
    const/16 v8, 0x18

    if-le v1, v8, :cond_2

    .line 734
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : limitId == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 736
    :cond_2
    const/16 v8, 0x14

    if-le v0, v8, :cond_3

    .line 737
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : limitDomain == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto :goto_0

    .line 739
    :cond_3
    invoke-virtual {v6, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-ne v8, v12, :cond_4

    .line 740
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : domain made only numberic!!  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 742
    :cond_4
    invoke-virtual {v7, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-ne v8, v12, :cond_5

    .line 743
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : domain made only numberic!!  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 747
    :cond_5
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 748
    .local v2, m:Ljava/util/regex/Matcher;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 749
    .local v3, m1:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-nez v8, :cond_6

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 751
    :cond_6
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : Valid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0

    .line 756
    :cond_7
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isValidID : Invalid id == "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    goto/16 :goto_0
.end method

.method public isValidPwd(Ljava/lang/String;)Z
    .locals 5
    .parameter "inputPwd"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 762
    if-nez p1, :cond_0

    .line 763
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "inputPwd : inputPwd == null"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :goto_0
    return v2

    .line 768
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move v2, v3

    .line 769
    goto :goto_0

    .line 771
    :cond_1
    iget-object v4, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->regExpn_Pwd:Ljava/lang/String;

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 772
    .local v1, p:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 774
    .local v0, m:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-ne v4, v3, :cond_2

    .line 775
    sget-object v2, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "isValidPwd : Vaild pwd"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 777
    goto :goto_0

    .line 779
    :cond_2
    sget-object v3, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    const-string v4, "isValidPwd : Invalid pwd"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "icicle"

    .prologue
    const/4 v12, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 200
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 202
    const v8, 0x7f07001a

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->addPreferencesFromResource(I)V

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 205
    .local v2, ps:Landroid/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f09047e

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->sNotSet:Ljava/lang/String;

    .line 206
    const-string v8, "apn_name"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    .line 207
    const-string v8, "apn_apn"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    .line 209
    const-string v8, "ATT"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-static {v12}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 210
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApn:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 213
    :cond_0
    const-string v8, "apn_http_proxy"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProxy:Landroid/preference/EditTextPreference;

    .line 214
    const-string v8, "apn_http_port"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    .line 215
    const-string v8, "apn_user"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    .line 216
    const-string v8, "apn_server"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mServer:Landroid/preference/EditTextPreference;

    .line 217
    const-string v8, "apn_password"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    .line 218
    const-string v8, "apn_mms_proxy"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsProxy:Landroid/preference/EditTextPreference;

    .line 219
    const-string v8, "apn_mms_port"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsPort:Landroid/preference/EditTextPreference;

    .line 220
    const-string v8, "apn_mmsc"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsc:Landroid/preference/EditTextPreference;

    .line 221
    const-string v8, "apn_mcc"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    .line 222
    const-string v8, "apn_mnc"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    .line 224
    const-string v8, "apn_type_list"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    .line 225
    const-string v8, "apn_type"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    .line 227
    const-string v8, "dns1"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    .line 228
    const-string v8, "dns2"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    .line 230
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 231
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 232
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns1:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 234
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 236
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_EditOption4ApnType"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v11, "List"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 237
    iput-boolean v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnTypeStyle:Z

    .line 242
    :goto_0
    const-string v8, "BRI"

    const-string v11, "ro.csc.sales_code"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 243
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 253
    :goto_1
    const-string v8, "auth_type"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    .line 254
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 256
    const-string v8, "apn_protocol"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    .line 257
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 259
    const-string v8, "apn_roaming_protocol"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    .line 263
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/TelephonyManager;

    .line 264
    .local v7, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v8

    const/4 v11, 0x2

    if-ne v8, v11, :cond_5

    .line 265
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 270
    :goto_2
    const-string v8, "carrier_enabled"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/CheckBoxPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    .line 271
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 272
    .local v3, sales_code:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 273
    const-string v8, "ril.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 277
    :cond_1
    const-string v8, "bearer"

    invoke-virtual {p0, v8}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/ListPreference;

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    .line 278
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v11, "CscFeature_Setting_DisableMenuBearerInApnEdit"

    invoke-virtual {v8, v11}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 279
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 285
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mName:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mServer:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsProxy:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsPort:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMmsc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMcc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mMnc:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 293
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 294
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 296
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 300
    .local v6, tempIntent:Landroid/content/Intent;
    const-string v8, "keyString"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 301
    .local v4, strName:Ljava/lang/String;
    const-string v8, "vzw"

    invoke-virtual {v6, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, strNameVzw:Ljava/lang/String;
    if-nez v5, :cond_7

    .line 304
    iput-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mIsVzwEditable:Z

    .line 308
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    .line 310
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 311
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, action:Ljava/lang/String;
    if-nez p1, :cond_8

    move v8, v9

    :goto_5
    iput-boolean v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mFirstTime:Z

    .line 315
    const-string v8, "com.android.settings.cpa.CpaAdvancedSettings"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 316
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    .line 321
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mUri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUri:Landroid/net/Uri;

    sget-object v9, Lcom/android/settings/cpa/CpaAdvancedSettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9, v12, v12}, Lcom/android/settings/cpa/CpaAdvancedSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    .line 323
    sget-object v8, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mCursor = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 326
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->fillUi()V

    .line 327
    :goto_6
    return-void

    .line 239
    .end local v0           #action:Ljava/lang/String;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #sales_code:Ljava/lang/String;
    .end local v4           #strName:Ljava/lang/String;
    .end local v5           #strNameVzw:Ljava/lang/String;
    .end local v6           #tempIntent:Landroid/content/Intent;
    .end local v7           #tm:Landroid/telephony/TelephonyManager;
    :cond_2
    iput-boolean v10, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnTypeStyle:Z

    goto/16 :goto_0

    .line 246
    :cond_3
    iget-boolean v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnTypeStyle:Z

    if-nez v8, :cond_4

    .line 247
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType_list:Landroid/preference/ListPreference;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 249
    :cond_4
    iget-object v8, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mApnType:Landroid/preference/EditTextPreference;

    invoke-virtual {v2, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_1

    .line 267
    .restart local v7       #tm:Landroid/telephony/TelephonyManager;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_2

    .line 281
    .restart local v3       #sales_code:Ljava/lang/String;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    iget-object v11, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v8, v11}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto/16 :goto_3

    .line 306
    .restart local v4       #strName:Ljava/lang/String;
    .restart local v5       #strNameVzw:Ljava/lang/String;
    .restart local v6       #tempIntent:Landroid/content/Intent;
    :cond_7
    iput-boolean v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mIsVzwEditable:Z

    goto/16 :goto_4

    .restart local v0       #action:Ljava/lang/String;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_8
    move v8, v10

    .line 313
    goto/16 :goto_5

    .line 318
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->finish()V

    goto :goto_6
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const v3, 0x104000a

    .line 1009
    if-nez p1, :cond_0

    .line 1010
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1012
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09049b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090a5f

    new-instance v3, Lcom/android/settings/cpa/CpaAdvancedSettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/cpa/CpaAdvancedSettings$2;-><init>(Lcom/android/settings/cpa/CpaAdvancedSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1033
    :goto_0
    return-object v0

    .line 1023
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 1024
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f09020b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090c00

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1033
    :cond_1
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 866
    packed-switch p1, :pswitch_data_0

    .line 874
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 868
    :pswitch_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->finish()V

    .line 871
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 866
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 375
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 377
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 378
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 14
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const v13, 0x7f090c67

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 596
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, key:Ljava/lang/String;
    const-string v9, "auth_type"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 599
    :try_start_0
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 600
    .local v3, index:I
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    invoke-virtual {v9, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 602
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v12, 0x7f0a0038

    invoke-virtual {v9, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 603
    .local v8, values:[Ljava/lang/String;
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mAuthType:Landroid/preference/ListPreference;

    aget-object v12, v8, v3

    invoke-virtual {v9, v12}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    .end local v3           #index:I
    .end local v8           #values:[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v9, "dns1"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_10

    move-object/from16 v6, p2

    .line 658
    check-cast v6, Ljava/lang/String;

    .line 659
    .local v6, value:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_f

    .line 660
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kddi_cpa_static_dns2"

    invoke-static {v9, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 674
    .local v7, value2:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 675
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v12, "kddi_cpa_static_dns1"

    invoke-static {v9, v12, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 677
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_e

    .line 678
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v10}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .end local v6           #value:Ljava/lang/String;
    .end local v7           #value2:Ljava/lang/String;
    :cond_1
    :goto_1
    move v9, v11

    .line 697
    :goto_2
    return v9

    .line 604
    :catch_0
    move-exception v2

    .local v2, e:Ljava/lang/NumberFormatException;
    move v9, v10

    .line 605
    goto :goto_2

    .line 607
    .end local v2           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v9, "apn_protocol"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    move-object/from16 v9, p2

    .line 608
    check-cast v9, Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v12}, Lcom/android/settings/cpa/CpaAdvancedSettings;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 609
    .local v5, protocol:Ljava/lang/String;
    if-nez v5, :cond_3

    move v9, v10

    .line 610
    goto :goto_2

    .line 612
    :cond_3
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mProtocol:Landroid/preference/ListPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 614
    .end local v5           #protocol:Ljava/lang/String;
    :cond_4
    const-string v9, "apn_roaming_protocol"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    move-object/from16 v9, p2

    .line 615
    check-cast v9, Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-direct {p0, v9, v12}, Lcom/android/settings/cpa/CpaAdvancedSettings;->protocolDescription(Ljava/lang/String;Landroid/preference/ListPreference;)Ljava/lang/String;

    move-result-object v5

    .line 616
    .restart local v5       #protocol:Ljava/lang/String;
    if-nez v5, :cond_5

    move v9, v10

    .line 617
    goto :goto_2

    .line 619
    :cond_5
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    invoke-virtual {v9, v5}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 620
    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRoamingProtocol:Landroid/preference/ListPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 621
    .end local v5           #protocol:Ljava/lang/String;
    :cond_6
    const-string v9, "bearer"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    move-object/from16 v9, p2

    .line 622
    check-cast v9, Ljava/lang/String;

    invoke-direct {p0, v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->bearerDescription(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 623
    .local v1, bearer:Ljava/lang/String;
    if-nez v1, :cond_7

    move v9, v10

    .line 624
    goto :goto_2

    .line 626
    :cond_7
    iget-object v12, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    move-object/from16 v9, p2

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v12, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 627
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mBearer:Landroid/preference/ListPreference;

    invoke-virtual {v9, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 628
    .end local v1           #bearer:Ljava/lang/String;
    :cond_8
    const-string v9, "apn_http_port"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    move-object/from16 v6, p2

    .line 629
    check-cast v6, Ljava/lang/String;

    .line 630
    .restart local v6       #value:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidPort(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_9

    .line 632
    :try_start_1
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPort:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 633
    :catch_1
    move-exception v9

    goto/16 :goto_0

    .line 637
    :cond_9
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f090c68

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    move v9, v10

    .line 638
    goto/16 :goto_2

    .line 640
    .end local v6           #value:Ljava/lang/String;
    :cond_a
    const-string v9, "apn_user"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move-object/from16 v6, p2

    .line 641
    check-cast v6, Ljava/lang/String;

    .line 642
    .restart local v6       #value:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidID(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-ne v9, v11, :cond_b

    .line 643
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mUser:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 645
    :cond_b
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f090c65

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    move v9, v10

    .line 646
    goto/16 :goto_2

    .line 648
    .end local v6           #value:Ljava/lang/String;
    :cond_c
    const-string v9, "apn_password"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object/from16 v6, p2

    .line 649
    check-cast v6, Ljava/lang/String;

    .line 650
    .restart local v6       #value:Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidPwd(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_d

    .line 651
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 653
    :cond_d
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    const v11, 0x7f090c66

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    move v9, v10

    .line 654
    goto/16 :goto_2

    .line 680
    .restart local v7       #value2:Ljava/lang/String;
    :cond_e
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mDns2:Landroid/preference/EditTextPreference;

    invoke-virtual {v9, v11}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    goto/16 :goto_1

    .line 683
    .end local v7           #value2:Ljava/lang/String;
    :cond_f
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    move v9, v10

    .line 684
    goto/16 :goto_2

    .line 686
    .end local v6           #value:Ljava/lang/String;
    :cond_10
    const-string v9, "dns2"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v6, p2

    .line 687
    check-cast v6, Ljava/lang/String;

    .line 688
    .restart local v6       #value:Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->isValidIP(Ljava/lang/String;)Z

    move-result v9

    if-ne v9, v11, :cond_11

    .line 689
    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "kddi_cpa_static_dns2"

    invoke-static {v9, v10, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_1

    .line 692
    :cond_11
    iget-object v9, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/settings/cpa/CpaAdvancedSettings;->showAlertDialogAboutInvalid(Ljava/lang/String;)V

    move v9, v10

    .line 693
    goto/16 :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 1
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 1038
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 1040
    if-nez p1, :cond_0

    .line 1041
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    .line 1043
    .local v0, msg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1044
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1047
    .end local v0           #msg:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 368
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 371
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 879
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 880
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->validateAndSave(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    const-string v0, "pos"

    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 883
    :cond_0
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1151
    invoke-virtual {p0, p2}, Lcom/android/settings/cpa/CpaAdvancedSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 1153
    const-string v1, "apn_type_list"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1155
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1156
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-interface {p1, p2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    const-string v2, "APN"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Item1 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNullApn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->APN_TYPE_LIST:Ljava/lang/String;

    .line 1161
    const-string v1, "APN"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Item4 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->APN_TYPE_LIST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1165
    :cond_1
    if-eqz v0, :cond_0

    .line 1166
    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mPassword:Landroid/preference/EditTextPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1167
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->starify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1168
    :cond_2
    iget-object v1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings;->mCarrierEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1169
    sget-object v0, Lcom/android/settings/cpa/CpaAdvancedSettings;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSharedPreferenceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1171
    :cond_3
    const-string v1, ""

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showAlertDialogAboutInvalid(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 701
    if-eqz p1, :cond_0

    .line 702
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 703
    .local v0, errorDialog:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f09049b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 704
    const v1, 0x104000a

    new-instance v2, Lcom/android/settings/cpa/CpaAdvancedSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/cpa/CpaAdvancedSettings$1;-><init>(Lcom/android/settings/cpa/CpaAdvancedSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 708
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 709
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 712
    .end local v0           #errorDialog:Landroid/app/AlertDialog$Builder;
    :cond_0
    return-void
.end method
