.class public Lcom/android/settings/cpa/CpaSettings;
.super Landroid/preference/PreferenceActivity;
.source "CpaSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/cpa/CpaSettings$CarrierInfo;
    }
.end annotation


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;

.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private mButtonCpaEnabled:Landroid/preference/CheckBoxPreference;

.field private mCursor:Landroid/database/Cursor;

.field private mDelayHandler:Landroid/os/Handler;

.field private mRes:Landroid/content/res/Resources;

.field private mSelectedKey:Ljava/lang/String;

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
    .line 104
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cpa/CpaSettings;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 105
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cpa/CpaSettings;->PREFERAPN_URI:Landroid/net/Uri;

    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/cpa/CpaSettings;->mNotiManager:Landroid/app/NotificationManager;

    .line 161
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "user"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "proxy"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "apn"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "password"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/cpa/CpaSettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/cpa/CpaSettings;->DEBUG:Z

    .line 119
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->mDelayHandler:Landroid/os/Handler;

    .line 140
    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->regExpn:Ljava/lang/String;

    .line 143
    const-string v0, "^[a-z0-9A-Z]@[0-9a-z]+[-.0-9a-z]+[0-9a-z]$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->regExpn1:Ljava/lang/String;

    .line 145
    const-string v0, "^[a-z0-9A-Z]+([-._/a-z0-9A-Z]?)+[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->regExpn_Domain_num:Ljava/lang/String;

    .line 146
    const-string v0, "^[a-z0-9A-Z]@[0-9]*$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->regExpn_Domain_num1:Ljava/lang/String;

    .line 148
    const-string v0, "(([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])\\.){3}([2][5][0-5]|[2][0-4][0-9]|[0-1][0-9][0-9]|[0-9][0-9]|[0-9])"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->regExpn_IP:Ljava/lang/String;

    .line 153
    const-string v0, "^[a-z0-9A-Z!#$%&()*+-./:;<>=?@\\[\\]_\\{\\}]{1,16}$"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->regExpn_Pwd:Ljava/lang/String;

    .line 155
    return-void
.end method

.method private checkDnsIP()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns1"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 365
    .local v0, dnsValue1:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns2"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 368
    .local v1, dnsValue2:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/cpa/CpaSettings;->regExpn_IP:Ljava/lang/String;

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 370
    .local v4, p:Ljava/util/regex/Pattern;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 371
    :cond_0
    const-string v0, ""

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns1"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 385
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 386
    :cond_1
    const-string v1, ""

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns2"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    :goto_1
    return-void

    .line 375
    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 376
    .local v2, m1:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-ne v5, v7, :cond_3

    .line 377
    const-string v5, "CpaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDnsIP : dnsValue1 == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 380
    :cond_3
    const-string v0, ""

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns1"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 389
    .end local v2           #m1:Ljava/util/regex/Matcher;
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 390
    .local v3, m2:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-ne v5, v7, :cond_5

    .line 391
    const-string v5, "CpaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDnsIP : dnsValue2 == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 394
    :cond_5
    const-string v1, ""

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "kddi_cpa_static_dns2"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private getErrorMsg()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 338
    const/4 v2, 0x0

    .line 340
    .local v2, errorMsg:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->loadApnData()[Ljava/lang/String;

    move-result-object v1

    .line 342
    .local v1, apnValues:[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    .local v0, apn:Ljava/lang/String;
    aget-object v7, v1, v8

    invoke-static {v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 344
    .local v6, user:Ljava/lang/String;
    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 345
    .local v3, passwd:Ljava/lang/String;
    const/4 v7, 0x3

    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 346
    .local v5, proxy:Ljava/lang/String;
    const/4 v7, 0x4

    aget-object v7, v1, v7

    invoke-static {v7}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 348
    .local v4, port:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_1

    .line 349
    iget-object v7, p0, Lcom/android/settings/cpa/CpaSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09049d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    :cond_0
    :goto_0
    return-object v2

    .line 350
    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_2

    .line 351
    iget-object v7, p0, Lcom/android/settings/cpa/CpaSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09049e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 352
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_3

    .line 353
    iget-object v7, p0, Lcom/android/settings/cpa/CpaSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f09049f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_3
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v7, v8, :cond_0

    .line 355
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v8, :cond_0

    .line 356
    iget-object v7, p0, Lcom/android/settings/cpa/CpaSettings;->mRes:Landroid/content/res/Resources;

    const v8, 0x7f090c68

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private getSelectedApnKey()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    .line 742
    const/4 v7, 0x0

    .line 744
    .local v7, key:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/settings/cpa/CpaSettings;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v8

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 746
    .local v6, cursor:Landroid/database/Cursor;
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedApnKey() cursor.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 749
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 750
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 751
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSelectedApnKey() key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 757
    return-object v7

    .line 753
    :cond_0
    const-string v0, "CpaSettings"

    const-string v1, "getSelectedApnKey() error!! selected key is nothing. return first apn\'s key"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v7, "1"

    goto :goto_0
.end method

.method private isPrevNaviEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 781
    const-string v1, "CpaSettings.Main"

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/cpa/CpaSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 782
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "CpaSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPrevNaviEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "PrevNaviEnabled"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    const-string v1, "PrevNaviEnabled"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private loadApnData()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 316
    const/4 v3, 0x5

    new-array v1, v3, [Ljava/lang/String;

    .line 318
    .local v1, sApnValues:[Ljava/lang/String;
    :try_start_0
    sget-object v3, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "5"

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    int-to-long v4, v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 319
    .local v2, url:Landroid/net/Uri;
    const-string v3, "CpaSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    sget-object v3, Lcom/android/settings/cpa/CpaSettings;->sProjection:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/cpa/CpaSettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    .line 321
    const-string v3, "CpaSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCursor = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    iget-object v3, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 324
    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 325
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 326
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 327
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 328
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/android/settings/cpa/CpaSettings;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x3

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/cpa/CpaAdvancedSettings;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    .end local v2           #url:Landroid/net/Uri;
    :goto_0
    return-object v1

    .line 331
    :catch_0
    move-exception v0

    .line 332
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "CpaSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadPrevApnInfo()V
    .locals 14

    .prologue
    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 645
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "carrier_enabled"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 649
    .local v8, cursor:Landroid/database/Cursor;
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 650
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cpa/CpaSettings$CarrierInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->loadCarrierEnabledArray()Ljava/util/ArrayList;

    move-result-object v11

    .line 651
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPrevApnInfo : list.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 654
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_5

    .line 655
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 656
    .local v10, key:Ljava/lang/String;
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 657
    .local v6, apn:Ljava/lang/String;
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 658
    .local v7, carrier_enabled:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 659
    .local v12, resolver:Landroid/content/ContentResolver;
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 662
    .local v13, values:Landroid/content/ContentValues;
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 663
    const-string v0, "uno.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unitrg.au-net.ne.jp"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 664
    :cond_0
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err!! : reset to default key ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 668
    :cond_1
    const-string v0, "carrier_enabled"

    const-string v1, "0"

    invoke-virtual {v13, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "err!! : reset to default key ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", enabled = 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 675
    :cond_2
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4

    .line 677
    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;

    iget-object v0, v0, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->key:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 678
    const-string v1, "carrier_enabled"

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;

    iget-object v0, v0, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->enabled:Ljava/lang/String;

    invoke-virtual {v13, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 682
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-virtual {v0, v1, v13, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 683
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 685
    .end local v6           #apn:Ljava/lang/String;
    .end local v7           #carrier_enabled:Ljava/lang/String;
    .end local v9           #i:I
    .end local v10           #key:Ljava/lang/String;
    .end local v12           #resolver:Landroid/content/ContentResolver;
    .end local v13           #values:Landroid/content/ContentValues;
    :cond_5
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 688
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadPrevApnInfo() Selected key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->loadPrevSelectedKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 690
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->loadPrevSelectedKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 695
    :goto_3
    return-void

    .line 693
    :cond_6
    const-string v0, "1"

    invoke-direct {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->setSelectedApnKey(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private loadPrevSelectedKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 768
    const-string v1, "CpaSettings.Main"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/cpa/CpaSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 769
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "PrevSelectedKey"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private savePrevApnInfo()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x0

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    const/4 v4, 0x1

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const-string v4, "carrier_enabled"

    aput-object v4, v2, v12

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 617
    .local v7, cursor:Landroid/database/Cursor;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 619
    .local v10, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cpa/CpaSettings$CarrierInfo;>;"
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "savePrevApnInfo() cursor.getCount() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 622
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 624
    .local v9, key:Ljava/lang/String;
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 626
    .local v6, carrier_enabled:Ljava/lang/String;
    new-instance v8, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;

    invoke-direct {v8}, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;-><init>()V

    .line 627
    .local v8, item:Lcom/android/settings/cpa/CpaSettings$CarrierInfo;
    iput-object v9, v8, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->key:Ljava/lang/String;

    .line 628
    iput-object v6, v8, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->enabled:Ljava/lang/String;

    .line 629
    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 632
    .end local v6           #carrier_enabled:Ljava/lang/String;
    .end local v8           #item:Lcom/android/settings/cpa/CpaSettings$CarrierInfo;
    .end local v9           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/settings/cpa/CpaSettings;->saveCarrierEnabledArray(Ljava/util/ArrayList;)Z

    .line 633
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 636
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->savePrevSelectedKey(Ljava/lang/String;)V

    .line 637
    return-void
.end method

.method private savePrevSelectedKey(Ljava/lang/String;)V
    .locals 4
    .parameter "key"

    .prologue
    .line 761
    const-string v2, "CpaSettings.Main"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/cpa/CpaSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 762
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 763
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PrevSelectedKey"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 764
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 765
    return-void
.end method

.method private setApnCarrierEnabledStatus(Ljava/lang/String;)V
    .locals 14
    .parameter "selectedKey"

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 585
    .local v3, where:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v11

    const-string v4, "name"

    aput-object v4, v2, v12

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "type"

    aput-object v5, v2, v4

    const-string v4, "carrier_enabled"

    aput-object v4, v2, v13

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 589
    .local v7, cursor:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 590
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 591
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 592
    .local v8, key:Ljava/lang/String;
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 594
    .local v6, carrier_enabled:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 595
    .local v9, resolver:Landroid/content/ContentResolver;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 596
    .local v10, values:Landroid/content/ContentValues;
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    const-string v0, "carrier_enabled"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "_id=?"

    new-array v4, v12, [Ljava/lang/String;

    aput-object v8, v4, v11

    invoke-virtual {v0, v1, v10, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 602
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 599
    :cond_0
    const-string v0, "carrier_enabled"

    const-string v1, "0"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 604
    .end local v6           #carrier_enabled:Ljava/lang/String;
    .end local v8           #key:Ljava/lang/String;
    .end local v9           #resolver:Landroid/content/ContentResolver;
    .end local v10           #values:Landroid/content/ContentValues;
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 605
    return-void
.end method

.method private setCpaChecked(Z)V
    .locals 3
    .parameter "enabling"

    .prologue
    .line 525
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCpaEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->showNotification()V

    .line 529
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->prefMenuEnabled(Z)Z

    .line 535
    :goto_0
    iget-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->mButtonCpaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 536
    return-void

    .line 531
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->closeNotification()V

    .line 532
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->prefMenuEnabled(Z)Z

    goto :goto_0
.end method

.method private setPrevNaviEnabled(Z)V
    .locals 5
    .parameter "status"

    .prologue
    .line 773
    const-string v2, "CpaSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPrevNaviEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    const-string v2, "CpaSettings.Main"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/cpa/CpaSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 775
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 776
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "PrevNaviEnabled"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 777
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 778
    return-void
.end method

.method private setSelectedApnKey(Ljava/lang/String;)V
    .locals 6
    .parameter "key"

    .prologue
    const/4 v5, 0x0

    .line 732
    iput-object p1, p0, Lcom/android/settings/cpa/CpaSettings;->mSelectedKey:Ljava/lang/String;

    .line 733
    iget-boolean v2, p0, Lcom/android/settings/cpa/CpaSettings;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "CpaSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedApnKey() Key = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/cpa/CpaSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 736
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 737
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    iget-object v3, p0, Lcom/android/settings/cpa/CpaSettings;->mSelectedKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    sget-object v2, Lcom/android/settings/cpa/CpaSettings;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 739
    return-void
.end method

.method private showApnListForDebug()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v4, v2, v9

    const-string v4, "name"

    aput-object v4, v2, v10

    const-string v4, "apn"

    aput-object v4, v2, v11

    const-string v4, "type"

    aput-object v4, v2, v12

    const-string v4, "carrier_enabled"

    aput-object v4, v2, v13

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 795
    const-string v1, "CpaSettings"

    const-string v2, "showApnListForDebug()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    const-string v1, "CpaSettings"

    const-string v2, "--------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/cpa/CpaSettings;->mSelectedKey:Ljava/lang/String;

    .line 798
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 799
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    .line 800
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 803
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 804
    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 806
    const-string v6, "CpaSettings"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "APNinfo :key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " carrier="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", name="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", apn="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 810
    :cond_0
    const-string v1, "CpaSettings"

    const-string v2, "--------------------------------------------------"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 812
    return-void
.end method


# virtual methods
.method public closeNotification()V
    .locals 2

    .prologue
    .line 504
    const-string v0, "CpaSettings"

    const-string v1, "closeNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    sget-object v0, Lcom/android/settings/cpa/CpaSettings;->mNotiManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    .line 507
    sget-object v0, Lcom/android/settings/cpa/CpaSettings;->mNotiManager:Landroid/app/NotificationManager;

    const v1, 0x7f02028f

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 508
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/cpa/CpaSettings;->mNotiManager:Landroid/app/NotificationManager;

    .line 510
    :cond_0
    return-void
.end method

.method public isCpaOn()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 545
    const-string v1, "CpaSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCpaOn : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kddi_cpa_on"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kddi_cpa_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public loadCarrierEnabledArray()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cpa/CpaSettings$CarrierInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 714
    sget-object v7, Lcom/android/settings/cpa/CpaSettings;->mContext:Landroid/content/Context;

    const-string v8, "CpaSettings.Main"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 715
    .local v5, prefs:Landroid/content/SharedPreferences;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 717
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cpa/CpaSettings$CarrierInfo;>;"
    const-string v0, "arrayKey"

    .line 718
    .local v0, arrayName:Ljava/lang/String;
    const-string v1, "arrayEnabled"

    .line 720
    .local v1, arrayName2:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_size"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    .line 721
    .local v6, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v6, :cond_0

    .line 722
    new-instance v3, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;

    invoke-direct {v3}, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;-><init>()V

    .line 723
    .local v3, item:Lcom/android/settings/cpa/CpaSettings$CarrierInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->key:Ljava/lang/String;

    .line 724
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->enabled:Ljava/lang/String;

    .line 725
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    const-string v7, "CpaSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadCarrierEnabledArray : item.key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v3, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->enabled:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 728
    .end local v3           #item:Lcom/android/settings/cpa/CpaSettings$CarrierInfo;
    :cond_0
    return-object v4
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 172
    const-string v0, "CpaSettings"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cpa/CpaSettings;->mContext:Landroid/content/Context;

    .line 176
    const v0, 0x7f07001b

    invoke-virtual {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->addPreferencesFromResource(I)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "cpa_on_off_settings"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->mButtonCpaEnabled:Landroid/preference/CheckBoxPreference;

    .line 179
    iget-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->mButtonCpaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->mRes:Landroid/content/res/Resources;

    .line 184
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->checkDnsIP()V

    .line 185
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 206
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 207
    const-string v0, "CpaSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 199
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 200
    const-string v0, "CpaSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->mButtonCpaEnabled:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 202
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 10
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 211
    const-string v7, "CpaSettings"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPreferenceChange(): Preference - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newValue - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", newValue type - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 216
    .local v1, key:Ljava/lang/String;
    const-string v7, "cpa_on_off_settings"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 217
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    .line 218
    .local v4, value:Z
    const/4 v3, 0x0

    .line 221
    .local v3, selectedKey:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->showApnListForDebug()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    .line 225
    .local v2, msg:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    .local v0, errorDialog:Landroid/app/AlertDialog$Builder;
    const v6, 0x7f09049b

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 228
    const v6, 0x104000a

    new-instance v7, Lcom/android/settings/cpa/CpaSettings$1;

    invoke-direct {v7, p0}, Lcom/android/settings/cpa/CpaSettings$1;-><init>(Lcom/android/settings/cpa/CpaSettings;)V

    invoke-virtual {v0, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 297
    .end local v0           #errorDialog:Landroid/app/AlertDialog$Builder;
    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #selectedKey:Ljava/lang/String;
    .end local v4           #value:Z
    :goto_0
    return v5

    .line 237
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #selectedKey:Ljava/lang/String;
    .restart local v4       #value:Z
    :cond_0
    if-eqz v4, :cond_3

    .line 242
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->getSelectedApnKey()Ljava/lang/String;

    move-result-object v5

    const-string v7, "6"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 243
    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaSettings;->setPrevNaviEnabled(Z)V

    .line 247
    :goto_1
    const-string v5, "5"

    invoke-direct {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    .line 248
    const-string v5, "5"

    invoke-direct {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 249
    invoke-direct {p0, v6}, Lcom/android/settings/cpa/CpaSettings;->setCpaChecked(Z)V

    .line 250
    invoke-virtual {p0, v6}, Lcom/android/settings/cpa/CpaSettings;->setCpaOn(Z)V

    .line 251
    const-string v5, "CpaSettings"

    const-string v7, "onPreferenceChange : sendBroadcast CPA_ENABLE_REQUEST_ACTION"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings.cpa.CPA_ENABLE_REQ"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 274
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->showApnListForDebug()V

    .end local v2           #msg:Ljava/lang/String;
    .end local v3           #selectedKey:Ljava/lang/String;
    .end local v4           #value:Z
    :cond_1
    move v5, v6

    .line 297
    goto :goto_0

    .line 245
    .restart local v2       #msg:Ljava/lang/String;
    .restart local v3       #selectedKey:Ljava/lang/String;
    .restart local v4       #value:Z
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->savePrevApnInfo()V

    goto :goto_1

    .line 255
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->setCpaChecked(Z)V

    .line 256
    invoke-virtual {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->setCpaOn(Z)V

    .line 259
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->isPrevNaviEnabled()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 261
    invoke-direct {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->setPrevNaviEnabled(Z)V

    .line 263
    const-string v5, "6"

    invoke-direct {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->setApnCarrierEnabledStatus(Ljava/lang/String;)V

    .line 264
    const-string v5, "6"

    invoke-direct {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->setSelectedApnKey(Ljava/lang/String;)V

    .line 269
    :goto_3
    const-string v5, "CpaSettings"

    const-string v7, "onPreferenceChange : sendBroadcast CPA_DISABLE_REQUEST_ACTION"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    new-instance v5, Landroid/content/Intent;

    const-string v7, "com.android.settings.cpa.CPA_DISABLE_REQ"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/settings/cpa/CpaSettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 266
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/cpa/CpaSettings;->loadPrevApnInfo()V

    goto :goto_3
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "screen"
    .parameter "preference"

    .prologue
    .line 301
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, key:Ljava/lang/String;
    const-string v2, "cpa_advanced_settings"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 304
    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "5"

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 305
    .local v1, url:Landroid/net/Uri;
    const-string v2, "CpaSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceTreeClick(): Preference="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", url="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.cpa.CpaAdvancedSettings"

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Lcom/android/settings/cpa/CpaSettings;->startActivity(Landroid/content/Intent;)V

    .line 312
    .end local v1           #url:Landroid/net/Uri;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 310
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 189
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 190
    const-string v0, "CpaSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->isCpaOn()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->setCpaChecked(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/cpa/CpaSettings;->mButtonCpaEnabled:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 195
    return-void
.end method

.method public prefMenuEnabled(Z)Z
    .locals 3
    .parameter "status"

    .prologue
    .line 402
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "cpa_advanced_settings"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 403
    .local v0, CpaAdvancedSettingsPref:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 404
    const/4 v1, 0x1

    return v1
.end method

.method public saveCarrierEnabledArray(Ljava/util/ArrayList;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/cpa/CpaSettings$CarrierInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 698
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/cpa/CpaSettings$CarrierInfo;>;"
    sget-object v5, Lcom/android/settings/cpa/CpaSettings;->mContext:Landroid/content/Context;

    const-string v6, "CpaSettings.Main"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 699
    .local v4, prefs:Landroid/content/SharedPreferences;
    const-string v0, "arrayKey"

    .line 700
    .local v0, arrayName:Ljava/lang/String;
    const-string v1, "arrayEnabled"

    .line 701
    .local v1, arrayName2:Ljava/lang/String;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 702
    .local v2, editor:Landroid/content/SharedPreferences$Editor;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_size"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 703
    const-string v5, "CpaSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCarrierEnabledArray : list.size() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_0

    .line 707
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;

    iget-object v5, v5, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->key:Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 708
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;

    iget-object v5, v5, Lcom/android/settings/cpa/CpaSettings$CarrierInfo;->enabled:Ljava/lang/String;

    invoke-interface {v2, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 710
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v5

    return v5
.end method

.method public setCpaOn(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 539
    const-string v0, "CpaSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCpaOn : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "kddi_cpa_on"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 542
    return-void

    .line 540
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showNotification()V
    .locals 7

    .prologue
    const v2, 0x7f090c60

    const v6, 0x7f02028f

    const/4 v5, 0x0

    .line 478
    const-string v0, "CpaSettings"

    const-string v1, "showNotification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/settings/cpa/CpaSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    sput-object v0, Lcom/android/settings/cpa/CpaSettings;->mNotiManager:Landroid/app/NotificationManager;

    .line 483
    const-string v0, ""

    .line 484
    const-string v0, ""

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 490
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4, v6, v0, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 491
    iget v0, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, v4, Landroid/app/Notification;->flags:I

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/cpa/CpaSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f090c4d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 495
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/cpa/CpaSettings;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 496
    const-string v3, "android.intent.action.MAIN"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 497
    invoke-static {p0, v5, v2, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 498
    invoke-virtual {v4, p0, v0, v1, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 500
    sget-object v0, Lcom/android/settings/cpa/CpaSettings;->mNotiManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 501
    return-void
.end method
