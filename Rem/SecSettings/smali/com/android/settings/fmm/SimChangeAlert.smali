.class public Lcom/android/settings/fmm/SimChangeAlert;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SimChangeAlert.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fmm/SimChangeAlert$PreferenceArea;
    }
.end annotation


# static fields
.field public static chkboxFlag:Z

.field private static mMessage:Landroid/preference/EditTextPreference;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContact:Landroid/widget/Button;

.field private mContent:Landroid/widget/LinearLayout;

.field private mCreate:Landroid/widget/Button;

.field private mDialogLayout:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mText:Landroid/widget/EditText;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 283
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/fmm/SimChangeAlert;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mDialogLayout:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/fmm/SimChangeAlert;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$700()Landroid/preference/EditTextPreference;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object v0
.end method

.method static synthetic access$702(Landroid/preference/EditTextPreference;)Landroid/preference/EditTextPreference;
    .locals 0
    .parameter "x0"

    .prologue
    .line 71
    sput-object p0, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    return-object p0
.end method


# virtual methods
.method public DoSave()Z
    .locals 15

    .prologue
    const/4 v12, 0x0

    .line 406
    new-instance v8, Lcom/android/internal/util/NVStore;

    invoke-direct {v8}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 407
    .local v8, filenv:Lcom/android/internal/util/NVStore;
    const-string v10, ""

    .line 408
    .local v10, nvData:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetPhPWD()Ljava/lang/String;

    move-result-object v6

    .line 409
    .local v6, MTpwd:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetMTStatus()Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v5, "1"

    .line 410
    .local v5, MTStatus:Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f09080c

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 411
    .local v4, MTSender:Ljava/lang/String;
    sget-object v13, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v13}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    .line 412
    .local v3, MTMsg:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->GetStoredIMSI()Ljava/lang/String;

    move-result-object v1

    .line 413
    .local v1, Imsi:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/util/NVStore;->IsPhLockeEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    const-string v2, "1"

    .line 415
    .local v2, MTEnabled:Ljava/lang/String;
    :goto_1
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 418
    const/4 v7, 0x0

    .line 419
    .local v7, count:I
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    iget-object v13, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v13

    if-ge v9, v13, :cond_5

    .line 420
    iget-object v13, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 421
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 422
    const-string v13, "LGT"

    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "CHN"

    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "CHM"

    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    const-string v13, "CHU"

    const-string v14, "ro.csc.sales_code"

    invoke-static {v14}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 426
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "+"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    const-string v14, "00"

    invoke-virtual {v13, v14}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f090824

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    .line 428
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->setFocus()V

    .line 474
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :goto_3
    return v12

    .line 409
    .end local v1           #Imsi:Ljava/lang/String;
    .end local v2           #MTEnabled:Ljava/lang/String;
    .end local v3           #MTMsg:Ljava/lang/String;
    .end local v4           #MTSender:Ljava/lang/String;
    .end local v5           #MTStatus:Ljava/lang/String;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_0
    const-string v5, "0"

    goto/16 :goto_0

    .line 413
    .restart local v1       #Imsi:Ljava/lang/String;
    .restart local v3       #MTMsg:Ljava/lang/String;
    .restart local v4       #MTSender:Ljava/lang/String;
    .restart local v5       #MTStatus:Ljava/lang/String;
    :cond_1
    const-string v2, "0"

    goto/16 :goto_1

    .line 433
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .restart local v2       #MTEnabled:Ljava/lang/String;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    .line 435
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_4

    .line 436
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 419
    :cond_3
    :goto_4
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 438
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_4

    .line 442
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_5
    :goto_5
    const/4 v13, 0x5

    if-eq v7, v13, :cond_6

    .line 443
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "none;"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 444
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 448
    :cond_6
    if-eqz v3, :cond_7

    if-eqz v3, :cond_8

    const-string v13, ""

    invoke-virtual {v3, v13}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v13

    if-nez v13, :cond_8

    .line 449
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v13

    const v14, 0x7f090825

    invoke-static {v13, v14, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 454
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 455
    .local v11, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 456
    if-eqz v1, :cond_9

    if-eqz v1, :cond_a

    const-string v12, ""

    invoke-virtual {v1, v12}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v12

    if-nez v12, :cond_a

    :cond_9
    const-string v1, "0000"

    .line 466
    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ";"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 470
    const-string v12, "SimChangeAlert"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "data formed for writing = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    sget-object v12, Lcom/android/internal/util/NVStore$datatype;->All:Lcom/android/internal/util/NVStore$datatype;

    invoke-virtual {v8, v10, v12}, Lcom/android/internal/util/NVStore;->writedata(Ljava/lang/String;Lcom/android/internal/util/NVStore$datatype;)V

    .line 474
    const/4 v12, 0x1

    goto/16 :goto_3
.end method

.method public SetContactNumber(Ljava/util/ArrayList;)V
    .locals 14
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, selectedContacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v13, 0x3b

    .line 492
    const/4 v2, 0x0

    .line 494
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v4, v9, :cond_1

    .line 495
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 496
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 497
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_0

    .line 498
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_1

    .line 499
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .local v3, count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 500
    .local v8, result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 501
    .local v7, phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v2, v3

    .line 494
    .end local v3           #count:I
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    .restart local v2       #count:I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 508
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_1
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    .line 510
    .local v5, mViewIndex:I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v2, :cond_2

    .line 511
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    const v10, 0x7f040074

    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 512
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 513
    iget-object v9, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v6, v5, 0x1

    .end local v5           #mViewIndex:I
    .local v6, mViewIndex:I
    invoke-virtual {v9, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 515
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    add-int/lit8 v3, v2, 0x1

    .end local v2           #count:I
    .restart local v3       #count:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 516
    .restart local v8       #result:Ljava/lang/String;
    invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 517
    .restart local v7       #phNum:Ljava/lang/String;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v5, v6

    .end local v6           #mViewIndex:I
    .restart local v5       #mViewIndex:I
    move v2, v3

    .line 518
    .end local v3           #count:I
    .restart local v2       #count:I
    goto :goto_1

    .line 519
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .end local v7           #phNum:Ljava/lang/String;
    .end local v8           #result:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCountFilledRecipient()I
    .locals 4

    .prologue
    .line 478
    const/4 v1, 0x0

    .line 479
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 480
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 481
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->isExist()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/android/settings/fmm/RecipientsMinusView;->getPhoneNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 483
    add-int/lit8 v1, v1, 0x1

    .line 479
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 487
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    :cond_1
    return v1
.end method

.method public init()V
    .locals 15

    .prologue
    const v14, 0x7f040074

    const/4 v13, 0x0

    .line 337
    const/4 v3, 0x0

    .line 338
    .local v3, index:I
    new-instance v2, Lcom/android/internal/util/NVStore;

    invoke-direct {v2}, Lcom/android/internal/util/NVStore;-><init>()V

    .line 341
    .local v2, filenv:Lcom/android/internal/util/NVStore;
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec1()Ljava/lang/String;

    move-result-object v6

    .line 342
    .local v6, rec1:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "none"

    invoke-virtual {v6, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 343
    :cond_0
    const-string v6, ""

    .line 352
    :goto_0
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec2()Ljava/lang/String;

    move-result-object v7

    .line 353
    .local v7, rec2:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    const-string v11, "none"

    invoke-virtual {v7, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_8

    .line 354
    :cond_1
    const-string v7, ""

    .line 363
    :goto_1
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec3()Ljava/lang/String;

    move-result-object v8

    .line 364
    .local v8, rec3:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "none"

    invoke-virtual {v8, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_9

    .line 365
    :cond_2
    const-string v8, ""

    .line 374
    :goto_2
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec4()Ljava/lang/String;

    move-result-object v9

    .line 375
    .local v9, rec4:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    const-string v11, "none"

    invoke-virtual {v9, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 376
    :cond_3
    const-string v9, ""

    .line 385
    :goto_3
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetRec5()Ljava/lang/String;

    move-result-object v10

    .line 386
    .local v10, rec5:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "none"

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_b

    .line 387
    :cond_4
    const-string v10, ""

    .line 395
    :goto_4
    invoke-virtual {v2}, Lcom/android/internal/util/NVStore;->GetSmsMsg()Ljava/lang/String;

    move-result-object v5

    .line 396
    .local v5, msg:Ljava/lang/String;
    if-eqz v5, :cond_5

    if-eqz v5, :cond_6

    const-string v11, "Keep this message."

    invoke-virtual {v5, v11}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v11

    if-nez v11, :cond_6

    .line 397
    :cond_5
    const-string v5, ""

    .line 399
    :cond_6
    sget-object v11, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 400
    sget-object v11, Lcom/android/settings/fmm/SimChangeAlert;->mMessage:Landroid/preference/EditTextPreference;

    invoke-virtual {v11, v5}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 401
    return-void

    .line 345
    .end local v5           #msg:Ljava/lang/String;
    .end local v7           #rec2:Ljava/lang/String;
    .end local v8           #rec3:Ljava/lang/String;
    .end local v9           #rec4:Ljava/lang/String;
    .end local v10           #rec5:Ljava/lang/String;
    :cond_7
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 346
    .local v1, MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 347
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 348
    .local v0, ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v6}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    .line 356
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v7       #rec2:Ljava/lang/String;
    :cond_8
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 357
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 358
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 359
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v7}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_1

    .line 367
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v8       #rec3:Ljava/lang/String;
    :cond_9
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 368
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 369
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 370
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v8}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_2

    .line 378
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v9       #rec4:Ljava/lang/String;
    :cond_a
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 379
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 381
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v9}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_3

    .line 389
    .end local v0           #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    .end local v1           #MinusLayout:Landroid/widget/LinearLayout;
    .restart local v10       #rec5:Ljava/lang/String;
    :cond_b
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v14, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 390
    .restart local v1       #MinusLayout:Landroid/widget/LinearLayout;
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    iget-object v11, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .restart local v4       #index:I
    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fmm/RecipientsMinusView;

    .line 392
    .restart local v0       #ChildView:Lcom/android/settings/fmm/RecipientsMinusView;
    invoke-virtual {v0, v10}, Lcom/android/settings/fmm/RecipientsMinusView;->setPhoneNumber(Ljava/lang/String;)V

    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_4
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 236
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 238
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 244
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 242
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fmm/SimChangeAlert;->SetContactNumber(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 220
    if-eqz p2, :cond_2

    .line 221
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
    sget-boolean v0, Lcom/android/settings/fmm/SimChangeAlert;->chkboxFlag:Z

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->showNotificationChargeDialog()V

    .line 232
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->DoSave()Z

    goto :goto_0

    .line 230
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "change_alert"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/16 v6, 0x10

    const/4 v7, -0x2

    const/4 v5, 0x0

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 105
    .local v0, activity:Landroid/app/Activity;
    new-instance v3, Landroid/widget/Switch;

    invoke-direct {v3, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    .line 107
    instance-of v3, v0, Landroid/preference/PreferenceActivity;

    if-eqz v3, :cond_0

    move-object v2, v0

    .line 108
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 110
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0002

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 112
    .local v1, padding:I
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v5, v5, v1, v5}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 113
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 115
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/16 v6, 0x15

    invoke-direct {v5, v7, v7, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v3, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 119
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    .line 123
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/fmm/SimChangeAlert;->setHasOptionsMenu(Z)V

    .line 124
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v1, 0x0

    .line 523
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mOptionsMenu:Landroid/view/Menu;

    .line 525
    const v0, 0x7f09077a

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 528
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 529
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mInflater:Landroid/view/LayoutInflater;

    .line 153
    const v1, 0x7f0400dd

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 154
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0b027b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    .line 156
    const v1, 0x7f0b0277

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mTextView:Landroid/widget/TextView;

    .line 158
    const-string v1, "LGT"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHN"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHM"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CHU"

    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 162
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f09081f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 164
    :cond_1
    const v1, 0x7f0b0279

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    .line 165
    iget-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mCreate:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/fmm/SimChangeAlert$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fmm/SimChangeAlert$1;-><init>(Lcom/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    const v1, 0x7f0b027a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    .line 202
    iget-object v1, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContact:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/fmm/SimChangeAlert$2;

    invoke-direct {v2, p0}, Lcom/android/settings/fmm/SimChangeAlert$2;-><init>(Lcom/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->init()V

    .line 215
    return-object v0
.end method

.method public onDestroyView()V
    .locals 5

    .prologue
    .line 552
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 554
    .local v2, transaction:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const v4, 0x7f0b0276

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 556
    :try_start_0
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    .end local v2           #transaction:Landroid/app/FragmentTransaction;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 564
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/android/settings/fmm/SimChangeAlert;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 567
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 568
    return-void

    .line 557
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local v2       #transaction:Landroid/app/FragmentTransaction;
    :catch_0
    move-exception v0

    .line 558
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SimChangeAlert"

    const-string v4, "can\'t perform transaction.commit()"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 540
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 547
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 542
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->DoSave()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->finishFragment()V

    .line 544
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 540
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 138
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 139
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 533
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mOptionsMenu:Landroid/view/Menu;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 536
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 129
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "change_alert"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 133
    return-void

    :cond_1
    move v0, v1

    .line 131
    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/settings/fmm/SimChangeAlert;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    :cond_0
    return-void
.end method

.method public showNotificationChargeDialog()V
    .locals 6

    .prologue
    .line 247
    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040089

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 249
    .local v2, mDialogLayout:Landroid/view/View;
    const v3, 0x7f0b01a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 250
    .local v0, chkbox:Landroid/widget/CheckBox;
    new-instance v3, Lcom/android/settings/fmm/SimChangeAlert$3;

    invoke-direct {v3, p0}, Lcom/android/settings/fmm/SimChangeAlert$3;-><init>(Lcom/android/settings/fmm/SimChangeAlert;)V

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 255
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fmm/SimChangeAlert;->getActivity()Landroid/app/Activity;

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

    new-instance v5, Lcom/android/settings/fmm/SimChangeAlert$5;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/SimChangeAlert$5;-><init>(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    new-instance v5, Lcom/android/settings/fmm/SimChangeAlert$4;

    invoke-direct {v5, p0, v0}, Lcom/android/settings/fmm/SimChangeAlert$4;-><init>(Lcom/android/settings/fmm/SimChangeAlert;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 281
    .local v1, dialog:Landroid/app/Dialog;
    return-void
.end method
