.class public Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final sHardKeyboardKeys:[Ljava/lang/String;

.field private static final sSystemSettingNames:[Ljava/lang/String;


# instance fields
.field private bargeInSoFilePath:Ljava/lang/String;

.field private mAutoHapticDialog:Landroid/app/AlertDialog;

.field private mAutoHapticNoPopup:Z

.field private mDefaultInputMethodSelectorVisibility:I

.field private mHandler:Landroid/os/Handler;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private mHaveHardKeyboard:Z

.field private mHidAvailable:Z

.field private mImis:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOnlyImeSettings:Z

.field private mLanguagePref:Landroid/preference/Preference;

.field private mPenHovering:Landroid/preference/CheckBoxPreference;

.field private mPenSettings:Landroid/preference/ListPreference;

.field private mPointerSpeed:Lcom/android/settings/PointerSpeedPreference;

.field private mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

.field private mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    .line 91
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "auto_replace"

    aput-object v1, v0, v2

    const-string v1, "auto_caps"

    aput-object v1, v0, v3

    const-string v1, "auto_punctuate"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 122
    const-string v0, "/system/lib/libsasr-jni.so"

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->bargeInSoFilePath:Ljava/lang/String;

    .line 519
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/preference/SwitchPreferenceScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private createImePreferenceHierarchy(Landroid/preference/PreferenceGroup;)V
    .locals 8
    .parameter "root"

    .prologue
    .line 464
    const-string v6, "hard_keyboard"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 465
    .local v2, hardKeyPref:Landroid/preference/Preference;
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-eqz v6, :cond_1

    .line 466
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 467
    if-eqz v2, :cond_0

    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v6, :cond_0

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 473
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 475
    :cond_1
    if-eqz v2, :cond_2

    .line 476
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v6, :cond_4

    .line 477
    check-cast v2, Landroid/preference/PreferenceCategory;

    .end local v2           #hardKeyPref:Landroid/preference/Preference;
    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    .line 482
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 483
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 485
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v6, :cond_3

    .line 487
    new-instance v1, Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v1, v6, v7}, Landroid/preference/PreferenceScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 488
    .local v1, currentIme:Landroid/preference/PreferenceScreen;
    const-string v6, "current_input_method"

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0905cb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 491
    const v6, 0x7f0400c7

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->setWidgetLayoutResource(I)V

    .line 493
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 496
    .end local v1           #currentIme:Landroid/preference/PreferenceScreen;
    :cond_3
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    if-nez v6, :cond_5

    const/4 v0, 0x0

    .line 497
    .local v0, N:I
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v0, :cond_6

    .line 498
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 499
    .local v4, imi:Landroid/view/inputmethod/InputMethodInfo;
    invoke-direct {p0, v4, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/InputMethodPreference;

    move-result-object v5

    .line 500
    .local v5, pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 479
    .end local v0           #N:I
    .end local v3           #i:I
    .end local v4           #imi:Landroid/view/inputmethod/InputMethodInfo;
    .end local v5           #pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    .restart local v2       #hardKeyPref:Landroid/preference/Preference;
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 496
    .end local v2           #hardKeyPref:Landroid/preference/Preference;
    :cond_5
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_1

    .line 503
    .restart local v0       #N:I
    .restart local v3       #i:I
    :cond_6
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 504
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v0, :cond_7

    .line 505
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/Preference;

    invoke-virtual {p1, v6}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 504
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 517
    :cond_7
    return-void
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;I)Lcom/android/settings/inputmethod/InputMethodPreference;
    .locals 9
    .parameter "imi"
    .parameter "imiSize"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 445
    .local v7, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p1, v7}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 448
    .local v6, label:Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v8

    .line 449
    .local v8, settingsActivity:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    new-instance v2, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 451
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    :goto_0
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodPreference;

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/inputmethod/InputMethodPreference;-><init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;I)V

    .line 458
    .local v0, pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->setKey(Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0, v6}, Lcom/android/settings/inputmethod/InputMethodPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 460
    return-object v0

    .line 453
    .end local v0           #pref:Lcom/android/settings/inputmethod/InputMethodPreference;
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private isBargeInAvailable()Z
    .locals 2

    .prologue
    .line 600
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->bargeInSoFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 601
    .local v0, mFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 602
    const/4 v1, 0x0

    .line 604
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isVlingoAvailable()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 590
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.vlingo.midas"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 591
    const-string v2, "InputMethodAndLanguageSettings"

    const-string v3, "Vlingo is found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    const/4 v1, 0x1

    .line 595
    :goto_0
    return v1

    .line 593
    :catch_0
    move-exception v0

    .line 594
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "InputMethodAndLanguageSettings"

    const-string v3, "Vlingo is not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateActiveInputMethodsSummary()V
    .locals 3

    .prologue
    .line 420
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/inputmethod/InputMethodPreference;

    .line 421
    .local v1, pref:Landroid/preference/Preference;
    instance-of v2, v1, Lcom/android/settings/inputmethod/InputMethodPreference;

    if-eqz v2, :cond_0

    .line 422
    check-cast v1, Lcom/android/settings/inputmethod/InputMethodPreference;

    .end local v1           #pref:Landroid/preference/Preference;
    invoke-virtual {v1}, Lcom/android/settings/inputmethod/InputMethodPreference;->updateSummary()V

    goto :goto_0

    .line 425
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateCurrentImeName()V

    .line 426
    return-void
.end method

.method private updateCurrentImeName()V
    .locals 7

    .prologue
    .line 429
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 430
    .local v0, context:Landroid/content/Context;
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    if-nez v3, :cond_1

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    const-string v4, "current_input_method"

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 432
    .local v2, curPref:Landroid/preference/Preference;
    if-eqz v2, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-static {v0, v3, v4, v5, v6}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->getCurrentInputMethodName(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/view/inputmethod/InputMethodManager;Ljava/util/List;Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 435
    .local v1, curIme:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 436
    monitor-enter p0

    .line 437
    :try_start_0
    invoke-virtual {v2, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 438
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private updateState()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticNoPopup:Z

    .line 583
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;

    iget-boolean v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticNoPopup:Z

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 584
    return-void
.end method

.method private updateUserDictionaryPreference(Landroid/preference/Preference;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 236
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesList(Landroid/app/Activity;)Ljava/util/Set;

    move-result-object v0

    .line 237
    if-nez v0, :cond_1

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-gt v1, v3, :cond_3

    .line 242
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    const v2, 0x7f0905b0

    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setTitle(I)V

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 246
    const-class v1, Lcom/android/settings/UserDictionarySettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 256
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 257
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    .line 258
    invoke-virtual {p1}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 248
    :cond_2
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 261
    :cond_3
    const v0, 0x7f0905b1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 262
    const-class v0, Lcom/android/settings/inputmethod/UserDictionaryList;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setFragment(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateVoiceInputControl(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 577
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 132
    const v0, 0x7f070034

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->addPreferencesFromResource(I)V

    .line 135
    const v0, 0x7f09000c

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mDefaultInputMethodSelectorVisibility:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ne v0, v1, :cond_9

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "phone_language"

    invoke-virtual {p0, v3}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 154
    :goto_1
    new-instance v0, Lcom/android/settings/VoiceInputOutputSettings;

    invoke-direct {v0, p0}, Lcom/android/settings/VoiceInputOutputSettings;-><init>(Lcom/android/settings/SettingsPreferenceFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/VoiceInputOutputSettings;->onCreate()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 158
    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_a

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    .line 161
    const-string v0, "android.settings.INPUT_METHOD_SETTINGS"

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 165
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    .line 166
    const-string v0, "keyboard_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->createImePreferenceHierarchy(Landroid/preference/PreferenceGroup;)V

    .line 168
    const-string v0, "pen_hovering"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    .line 169
    const-string v0, "pen_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    .line 170
    const-string v0, "pointer_speed"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/PointerSpeedPreference;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSpeed:Lcom/android/settings/PointerSpeedPreference;

    .line 171
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    if-eqz v0, :cond_3

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_b

    :goto_3
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    if-eqz v0, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_settings"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "pen_hovering_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 191
    :cond_3
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/settings/Settings$SpellCheckersSettingsActivity;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 193
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/inputmethod/SpellCheckersPreference;

    .line 195
    if-eqz v0, :cond_4

    .line 196
    invoke-virtual {v0, p0, v1}, Lcom/android/settings/inputmethod/SpellCheckersPreference;->setFragmentIntent(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/Intent;)V

    .line 199
    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    .line 200
    new-instance v0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    .line 203
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_5

    .line 204
    const-string v0, "voice_input_control"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;

    .line 205
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->isVlingoAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->isBargeInAvailable()Z

    move-result v0

    if-nez v0, :cond_7

    .line 210
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "voice_input_control_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 214
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 215
    if-eqz v0, :cond_8

    .line 216
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110050

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHidAvailable:Z

    .line 217
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHidAvailable:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSpeed:Lcom/android/settings/PointerSpeedPreference;

    if-eqz v0, :cond_8

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPointerSpeed:Lcom/android/settings/PointerSpeedPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v0, "pointer_settings_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 223
    :cond_8
    return-void

    .line 144
    :cond_9
    const-string v0, "phone_language"

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    goto/16 :goto_1

    :cond_a
    move v0, v2

    .line 158
    goto/16 :goto_2

    :cond_b
    move v1, v2

    .line 173
    goto/16 :goto_3

    .line 137
    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 317
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 318
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->pause()V

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    iget-boolean v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    invoke-static {p0, v0, v1, v2}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 326
    iget-boolean v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0}, Landroid/preference/SwitchPreferenceScreen;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateVoiceInputControl(I)V

    .line 329
    :cond_0
    return-void

    .line 327
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 8
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v4, 0x0

    .line 391
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mVoiceInputControl:Landroid/preference/SwitchPreferenceScreen;

    if-ne p1, v5, :cond_2

    .line 392
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 393
    .local v0, checked:Z
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voiceinputcontrol_showNeverAgain"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 396
    .local v2, showNeverAgain:I
    if-nez v2, :cond_0

    iget-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticNoPopup:Z

    if-nez v5, :cond_0

    .line 397
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showGuideDialog()V

    .line 399
    .end local v2           #showNeverAgain:I
    :cond_0
    iput-boolean v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticNoPopup:Z

    .line 400
    const/4 v4, 0x1

    .line 416
    .end local v0           #checked:Z
    :cond_1
    :goto_0
    return v4

    .line 402
    .restart local p2
    :cond_2
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    if-ne p1, v5, :cond_1

    .line 403
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 405
    .local v3, temp:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "pen_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 406
    invoke-static {v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setEPenType(I)Z

    .line 407
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 408
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenSettings:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 409
    const-string v5, "InputMethodAndLanguageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen_settings is changed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 411
    :catch_0
    move-exception v1

    .line 412
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v5, "InputMethodAndLanguageSettings"

    const-string v6, "could not persist pen setting"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 334
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 364
    :goto_0
    return v4

    .line 337
    :cond_0
    instance-of v6, p2, Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_4

    .line 338
    invoke-virtual {p2}, Landroid/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 358
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 359
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mPenHovering:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 360
    .local v3, value:Z
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "pen_hovering"

    if-eqz v3, :cond_7

    :goto_2
    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 361
    const-string v5, "InputMethodAndLanguageSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "pen_hovering : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "pen_hovering"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    .end local v3           #value:Z
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v4

    goto :goto_0

    .line 340
    :cond_3
    const-string v6, "current_input_method"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 341
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 343
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto :goto_1

    .line 345
    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    instance-of v6, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v6, :cond_1

    move-object v0, p2

    .line 346
    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 347
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    iget-boolean v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v6, :cond_1

    .line 348
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    sget-object v6, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_1

    .line 349
    iget-object v6, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v7, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v6, v7}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    if-ne v0, v6, :cond_6

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v7, v7, v1

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    move v4, v5

    :cond_5
    invoke-static {v6, v7, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v4, v5

    .line 352
    goto/16 :goto_0

    .line 348
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v1           #i:I
    .restart local v3       #value:Z
    :cond_7
    move v5, v4

    .line 360
    goto :goto_2
.end method

.method public onResume()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 268
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 269
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mSettingsObserver:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;

    invoke-virtual {v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$SettingsObserver;->resume()V

    .line 270
    iget-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v5, :cond_1

    .line 271
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    if-eqz v5, :cond_0

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 273
    .local v1, conf:Landroid/content/res/Configuration;
    iget-object v5, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v8, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v5, v8}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, locale:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 276
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mLanguagePref:Landroid/preference/Preference;

    invoke-virtual {v5, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    .end local v1           #conf:Landroid/content/res/Configuration;
    .end local v3           #locale:Ljava/lang/String;
    :cond_0
    const-string v5, "VZW"

    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    const-string v5, "key_user_dictionary_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateUserDictionaryPreference(Landroid/preference/Preference;)V

    .line 293
    :cond_1
    :goto_0
    iget-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHaveHardKeyboard:Z

    if-eqz v5, :cond_4

    .line 294
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v5, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 295
    iget-object v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    sget-object v8, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sHardKeyboardKeys:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-virtual {v5, v8}, Landroid/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 297
    .local v0, chkPref:Landroid/preference/CheckBoxPreference;
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->sSystemSettingNames:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-static {v5, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_3

    move v5, v6

    :goto_2
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 294
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 286
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    :cond_2
    const-string v5, "key_user_dictionary_settings"

    invoke-virtual {p0, v5}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 287
    .local v4, remove:Landroid/preference/PreferenceScreen;
    if-eqz v4, :cond_1

    .line 288
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .end local v4           #remove:Landroid/preference/PreferenceScreen;
    .restart local v0       #chkPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #i:I
    :cond_3
    move v5, v7

    .line 297
    goto :goto_2

    .line 303
    .end local v0           #chkPref:Landroid/preference/CheckBoxPreference;
    .end local v2           #i:I
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iget-object v7, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mImis:Ljava/util/List;

    const/4 v8, 0x0

    invoke-static {p0, v5, v7, v8}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeUtil;->loadInputMethodSubtypeList(Lcom/android/settings/SettingsPreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Ljava/util/Map;)V

    .line 305
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateActiveInputMethodsSummary()V

    .line 308
    iget-boolean v5, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mIsOnlyImeSettings:Z

    if-nez v5, :cond_5

    .line 309
    invoke-direct {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->updateState()V

    .line 312
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 313
    return-void
.end method

.method public showGuideDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 546
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 548
    iput-object v4, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 551
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 552
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v2, 0x7f040040

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 554
    .local v1, layout:Landroid/view/View;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090b08

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090b0a

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090b0b

    new-instance v4, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$1;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    .line 565
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 566
    iget-object v2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->mAutoHapticDialog:Landroid/app/AlertDialog;

    new-instance v3, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;-><init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 574
    return-void
.end method
