.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$Blank;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field private static emergencyCallStatus:Z

.field private static failedAttemptsCount:I

.field private static mCooldown:I

.field private static mPasswordMaxLength:I

.field private static mSavedPassword:Ljava/lang/String;

.field private static mTelephonyManager:Landroid/telephony/TelephonyManager;


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncrypt:Z

.field private mEncryptionGoneBad:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPasswordEntry:Landroid/widget/EditText;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    sput v1, Lcom/android/settings/CryptKeeper;->mCooldown:I

    .line 110
    const-string v0, ""

    sput-object v0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 111
    sput-boolean v1, Lcom/android/settings/CryptKeeper;->emergencyCallStatus:Z

    .line 112
    sput v1, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    .line 121
    sput v1, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    .line 231
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IMountService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    return v0
.end method

.method static synthetic access$102(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput p0, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    return p0
.end method

.method static synthetic access$1102(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-object p0, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/settings/CryptKeeper;->emergencyCallStatus:Z

    return v0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/settings/CryptKeeper;->emergencyCallStatus:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 77
    sget v0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return v0
.end method

.method static synthetic access$202(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput p0, Lcom/android/settings/CryptKeeper;->mCooldown:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeper;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/settings/CryptKeeper;->handleAttemptLockout(J)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeper;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    return-void
.end method

.method private encryptionProgressInit()V
    .locals 4

    .prologue
    .line 407
    const-string v2, "CryptKeeper"

    const-string v3, "Encryption progress screen initializing."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 409
    const-string v2, "CryptKeeper"

    const-string v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 411
    .local v0, pm:Landroid/os/PowerManager;
    const/16 v2, 0x1a

    const-string v3, "CryptKeeper"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 412
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 415
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const v2, 0x7f0b0080

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 416
    .local v1, progressBar:Landroid/widget/ProgressBar;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 418
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 419
    return-void
.end method

.method private getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 624
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 625
    .local v0, service:Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 626
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    .line 628
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private handleAttemptLockout(J)V
    .locals 8
    .parameter "elapsedRealtimeDeadline"

    .prologue
    .line 752
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 753
    .local v6, elapsedRealtime:J
    new-instance v0, Lcom/android/settings/CryptKeeper$8;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/CryptKeeper$8;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 792
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 12
    .parameter "imm"
    .parameter "shouldIncludeAuxiliarySubtypes"

    .prologue
    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 584
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 587
    .local v1, enabledImis:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v2, 0x0

    .line 589
    .local v2, filteredImisCount:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 591
    .local v5, imi:Landroid/view/inputmethod/InputMethodInfo;
    if-le v2, v10, :cond_1

    .line 617
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    :goto_1
    return v10

    .line 592
    .restart local v5       #imi:Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-virtual {p1, v5, v10}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 595
    .local v8, subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 596
    add-int/lit8 v2, v2, 0x1

    .line 597
    goto :goto_0

    .line 600
    :cond_2
    const/4 v0, 0x0

    .line 601
    .local v0, auxCount:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodSubtype;

    .line 602
    .local v7, subtype:Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v7}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 603
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 606
    .end local v7           #subtype:Landroid/view/inputmethod/InputMethodSubtype;
    :cond_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    sub-int v6, v11, v0

    .line 611
    .local v6, nonAuxCount:I
    if-gtz v6, :cond_5

    if-eqz p2, :cond_0

    if-le v0, v10, :cond_0

    .line 612
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 613
    goto :goto_0

    .line 617
    .end local v0           #auxCount:I
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v6           #nonAuxCount:I
    .end local v8           #subtypes:Ljava/util/List;,"Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    :cond_6
    if-gt v2, v10, :cond_7

    const/4 v11, 0x0

    invoke-virtual {p1, v11, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-le v11, v10, :cond_8

    :cond_7
    move v9, v10

    :cond_8
    move v10, v9

    goto :goto_1
.end method

.method private isDebugView()Z
    .locals 2

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .parameter "viewType"

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .prologue
    .line 716
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .prologue
    .line 739
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 740
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 742
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 743
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/settings/CryptKeeper;->emergencyCallStatus:Z

    .line 744
    return-void
.end method

.method private passwordEntryInit()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 489
    const v7, 0x7f0b007e

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    .line 490
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 491
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 494
    sget v7, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    if-nez v7, :cond_0

    .line 495
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/high16 v8, 0x6

    invoke-virtual {v7, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v7

    sput v7, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    .line 496
    :cond_0
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    new-array v8, v12, [Landroid/text/InputFilter;

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    sget v10, Lcom/android/settings/CryptKeeper;->mPasswordMaxLength:I

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v8, v11

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 498
    new-instance v6, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v6, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    .line 516
    .local v6, watcher:Landroid/text/TextWatcher;
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 518
    const v7, 0x7f0b008b

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 519
    .local v2, imeSwitcher:Landroid/view/View;
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 521
    .local v3, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_1

    invoke-direct {p0, v3, v11}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 522
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 523
    new-instance v7, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v7, p0, v3}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 532
    :cond_1
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v8, p0, v3}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    const-wide/16 v9, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 546
    const v7, 0x7f0b003b

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 547
    .local v5, tv:Landroid/widget/TextView;
    const v7, 0x7f09084c

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 549
    .local v4, tempStatus:Ljava/lang/CharSequence;
    sget v7, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    if-eqz v7, :cond_2

    .line 550
    sget v7, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    const/16 v8, 0x14

    if-ge v7, v8, :cond_6

    .line 551
    const v7, 0x7f09070a

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V

    .line 558
    :cond_2
    :goto_0
    sget-object v7, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 559
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    sget-object v8, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 560
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    iget-object v8, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/EditText;->setSelection(I)V

    .line 561
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v7, v12}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 564
    :cond_3
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v7, :cond_4

    .line 565
    iget-object v7, p0, Lcom/android/settings/CryptKeeper;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v7}, Landroid/os/CountDownTimer;->cancel()V

    .line 569
    :cond_4
    sget v7, Lcom/android/settings/CryptKeeper;->mCooldown:I

    if-eqz v7, :cond_5

    .line 570
    sget v7, Lcom/android/settings/CryptKeeper;->mCooldown:I

    invoke-virtual {p0, v7}, Lcom/android/settings/CryptKeeper;->setLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 571
    .local v0, deadline:J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/CryptKeeper;->handleAttemptLockout(J)V

    .line 573
    .end local v0           #deadline:J
    :cond_5
    return-void

    .line 553
    :cond_6
    new-array v7, v12, [Ljava/lang/CharSequence;

    sget v8, Lcom/android/settings/CryptKeeper;->failedAttemptsCount:I

    rsub-int/lit8 v8, v8, 0x1e

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v4, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private replaceInvalidChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "in"

    .prologue
    .line 638
    if-nez p1, :cond_0

    .line 639
    const-string v0, ""

    .line 644
    :goto_0
    return-object v0

    .line 642
    :cond_0
    move-object v0, p1

    .line 643
    .local v0, out:Ljava/lang/String;
    const/16 v1, 0x20

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 644
    goto :goto_0
.end method

.method private resumeCall()V
    .locals 5

    .prologue
    .line 728
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 729
    .local v1, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 731
    :try_start_0
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->showCallScreen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 732
    :catch_0
    move-exception v0

    .line 733
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling ITelephony service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setupUi()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const v5, 0x7f040036

    .line 342
    iget-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    if-nez v4, :cond_0

    const-string v4, "error"

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 343
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 344
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 348
    :cond_2
    const-string v4, "vold.encrypt_progress"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 349
    .local v0, progress:Ljava/lang/String;
    const-string v4, ""

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "progress"

    invoke-direct {p0, v4}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 350
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 352
    const-string v3, "vold.encrypt_type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, type:Ljava/lang/String;
    const-string v3, "decrypt"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 354
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    .line 355
    const v3, 0x7f0b0010

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 356
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f090848

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 359
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    goto :goto_0

    .line 360
    .end local v2           #type:Ljava/lang/String;
    :cond_5
    iget-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-eqz v4, :cond_6

    .line 361
    const v3, 0x7f040034

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    goto :goto_0

    .line 363
    :cond_6
    iget-boolean v4, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v4, :cond_1

    .line 365
    new-instance v4, Lcom/android/settings/CryptKeeper$ValidationTask;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v3, [Ljava/lang/Void;

    invoke-virtual {v4, v3}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 366
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_0
.end method

.method private showFactoryReset()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 423
    const v3, 0x7f0b008c

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 426
    const v3, 0x7f0b008d

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 427
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 428
    new-instance v3, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v3, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    const v3, 0x7f0b0010

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 436
    .local v1, tv:Landroid/widget/TextView;
    const v3, 0x7f09015b

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 438
    const v3, 0x7f0b003b

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #tv:Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 439
    .restart local v1       #tv:Landroid/widget/TextView;
    const v3, 0x7f09015c

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 441
    const v3, 0x7f0b008e

    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 442
    .local v2, view:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 443
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 445
    :cond_0
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .prologue
    .line 720
    sget-object v0, Lcom/android/settings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->resumeCall()V

    .line 725
    :goto_0
    return-void

    .line 723
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    goto :goto_0
.end method

.method private updateEmergencyCallButtonState()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 684
    const v5, 0x7f0b008a

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 686
    .local v0, button:Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 688
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 689
    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 690
    new-instance v5, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v5, p0}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 700
    sget-object v5, Lcom/android/settings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    .line 702
    .local v2, newState:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_2

    .line 704
    const v4, 0x7f090764

    .line 705
    .local v4, textId:I
    const v3, 0x7f02029b

    .line 706
    .local v3, phoneCallIcon:I
    invoke-virtual {v0, v3, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 712
    .end local v3           #phoneCallIcon:I
    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 696
    .end local v2           #newState:I
    .end local v4           #textId:I
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 708
    .restart local v2       #newState:I
    :cond_2
    const v4, 0x7f090763

    .line 709
    .restart local v4       #textId:I
    const v1, 0x7f0200ed

    .line 710
    .local v1, emergencyIcon:I
    invoke-virtual {v0, v1, v6, v6, v6}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto :goto_1
.end method

.method private updateProgress()V
    .locals 12

    .prologue
    const v11, 0x7f0b003b

    const v10, 0x7f090158

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 448
    const-string v5, "vold.encrypt_progress"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, state:Ljava/lang/String;
    const-string v5, "error_partially_encrypted"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 451
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->showFactoryReset()V

    .line 486
    :goto_0
    return-void

    .line 455
    :cond_0
    const/4 v1, 0x0

    .line 458
    .local v1, progress:I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_1

    const/16 v1, 0x32

    .line 463
    :goto_1
    invoke-virtual {p0, v10}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 464
    .local v3, status:Ljava/lang/CharSequence;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secV(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    if-nez v1, :cond_2

    .line 469
    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 470
    .local v4, tv:Landroid/widget/TextView;
    const v5, 0x7f090840

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v8, [Ljava/lang/Object;

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 484
    :goto_2
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 485
    iget-object v5, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 458
    .end local v3           #status:Ljava/lang/CharSequence;
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_1
    :try_start_1
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    goto :goto_1

    .line 459
    :catch_0
    move-exception v0

    .line 460
    .local v0, e:Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 473
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #status:Ljava/lang/CharSequence;
    :cond_2
    iget-boolean v5, p0, Lcom/android/settings/CryptKeeper;->mEncrypt:Z

    if-ne v5, v8, :cond_3

    .line 474
    invoke-virtual {p0, v10}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 479
    :goto_3
    invoke-virtual {p0, v11}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 480
    .restart local v4       #tv:Landroid/widget/TextView;
    new-array v5, v8, [Ljava/lang/CharSequence;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 476
    .end local v4           #tv:Landroid/widget/TextView;
    :cond_3
    const v5, 0x7f090849

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_3
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 635
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 257
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 260
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 264
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 294
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 280
    instance-of v1, v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v1, :cond_2

    .line 281
    check-cast v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 282
    iget-object v0, v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 283
    const-string v0, "CryptKeeper"

    const-string v1, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    sput-object v0, Lcom/android/settings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 287
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 293
    sget-object v0, Lcom/android/settings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    .line 392
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 394
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 395
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    sget-object v0, Lcom/android/settings/CryptKeeper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 397
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 400
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 649
    if-eqz p2, :cond_0

    const/4 v3, 0x6

    if-ne p2, v3, :cond_1

    .line 651
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 653
    .local v0, password:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 673
    .end local v0           #password:Ljava/lang/String;
    :cond_1
    :goto_0
    return v1

    .line 658
    .restart local v0       #password:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    const-string v3, ""

    sput-object v3, Lcom/android/settings/CryptKeeper;->mSavedPassword:Ljava/lang/String;

    .line 665
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Landroid/widget/EditText;

    invoke-virtual {v3, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 666
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->replaceInvalidChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 668
    const-string v3, "CryptKeeper"

    const-string v4, "Attempting to send command to decrypt"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 669
    new-instance v3, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v3, p0, v5}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v4, v2, [Ljava/lang/String;

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move v1, v2

    .line 671
    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 310
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 313
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 314
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x137

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 320
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 324
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 327
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 328
    .local v0, sbm:Landroid/app/StatusBarManager;
    const/high16 v1, 0x177

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 335
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 384
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 385
    .local v0, state:Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 387
    return-object v0
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 305
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 306
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 372
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 374
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 375
    return-void
.end method

.method public setLockoutAttemptDeadline(I)J
    .locals 8
    .parameter "mLeftTime"

    .prologue
    .line 747
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    int-to-long v4, p1

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    add-long v0, v2, v4

    .line 748
    .local v0, deadline:J
    return-wide v0
.end method
