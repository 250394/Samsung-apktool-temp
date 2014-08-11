.class public Lcom/android/settings/tts/TextToSpeechSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TextToSpeechSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static ENGINE_UPDATE_NOT:Z

.field private static ENGINE_UPDATE_ONINIT:Z

.field private static sSettingsObserver:Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;


# instance fields
.field private mCurrentChecked:Landroid/widget/Checkable;

.field private mCurrentEngine:Ljava/lang/String;

.field private mDefaultRate:I

.field private mDefaultRatePref:Landroid/preference/ListPreference;

.field private mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

.field private mDrivingModeKey:Lcom/android/settings/SettingsTextSwitchPreference;

.field private mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mEnginesHelper:Landroid/speech/tts/TtsEngines;

.field private final mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

.field private mPlayExample:Landroid/preference/Preference;

.field private mPreviousEngine:Ljava/lang/String;

.field private mTts:Landroid/speech/tts/TextToSpeech;

.field private final mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_ONINIT:Z

    .line 117
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_NOT:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 93
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 119
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 120
    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 127
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$1;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 139
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TextToSpeechSettings$2;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    .line 592
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TextToSpeechSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateState()V

    return-void
.end method

.method private checkLocaleAvailable(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 13
    .parameter "currentEngine"
    .parameter "newLocale"

    .prologue
    const/4 v12, 0x0

    .line 617
    move-object v8, p2

    .line 619
    .local v8, ret:Ljava/util/Locale;
    iget-object v10, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v10, p2}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result v6

    .line 621
    .local v6, languageResult:I
    iget-object v10, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    const-string v11, "com.google.android.tts"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 625
    if-nez v6, :cond_0

    .line 626
    add-int/lit8 v6, v6, -0x1

    .line 630
    :cond_0
    packed-switch v6, :pswitch_data_0

    .line 648
    iget-object v10, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    .line 649
    .local v3, engineCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v3, :cond_1

    .line 650
    iget-object v10, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v10, v5}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v7

    .line 651
    .local v7, p:Landroid/preference/Preference;
    instance-of v10, v7, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v10, :cond_2

    move-object v4, v7

    .line 652
    check-cast v4, Lcom/android/settings/tts/TtsEnginePreference;

    .line 653
    .local v4, enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    invoke-virtual {v4}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 654
    invoke-virtual {v4}, Lcom/android/settings/tts/TtsEnginePreference;->getVoiceDataDetails()Landroid/content/Intent;

    move-result-object v1

    .line 659
    .local v1, data:Landroid/content/Intent;
    :try_start_0
    const-string v10, "availableVoices"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 665
    .local v0, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 667
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 669
    .local v9, topLocale:[Ljava/lang/String;
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    aget-object v10, v9, v12

    const/4 v11, 0x1

    aget-object v11, v9, v11

    const/4 v12, 0x2

    aget-object v12, v9, v12

    invoke-direct {v8, v10, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    .end local v0           #available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1           #data:Landroid/content/Intent;
    .end local v3           #engineCount:I
    .end local v4           #enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    .end local v5           #i:I
    .end local v7           #p:Landroid/preference/Preference;
    .end local v9           #topLocale:[Ljava/lang/String;
    .restart local v8       #ret:Ljava/util/Locale;
    :cond_1
    :goto_1
    return-object v8

    .line 632
    :pswitch_0
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v10, v11, v12}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    .restart local v8       #ret:Ljava/util/Locale;
    goto :goto_1

    .line 636
    :pswitch_1
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Country()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v11}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    .restart local v8       #ret:Ljava/util/Locale;
    goto :goto_1

    .line 641
    :pswitch_2
    new-instance v8, Ljava/util/Locale;

    .end local v8           #ret:Ljava/util/Locale;
    invoke-virtual {p2}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 642
    .restart local v8       #ret:Ljava/util/Locale;
    goto :goto_1

    .line 660
    .restart local v1       #data:Landroid/content/Intent;
    .restart local v3       #engineCount:I
    .restart local v4       #enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    .restart local v5       #i:I
    .restart local v7       #p:Landroid/preference/Preference;
    :catch_0
    move-exception v2

    .line 661
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v10, "TextToSpeechSettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "shutting down TTS engine"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 649
    .end local v1           #data:Landroid/content/Intent;
    .end local v2           #e:Ljava/lang/NullPointerException;
    .end local v4           #enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkVoiceData(Ljava/lang/String;)V
    .locals 5
    .parameter "engine"

    .prologue
    .line 516
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.tts.engine.CHECK_TTS_DATA"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    const/16 v2, 0x7b9

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return-void

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to check TTS data, no activity found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private displayDataAlert(Ljava/lang/String;)V
    .locals 8
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    .line 438
    const-string v2, "TextToSpeechSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Displaying data alert for :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 440
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x1040014

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 441
    const v2, 0x1010355

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 442
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f090675

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v6, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 444
    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 445
    const v2, 0x104000a

    new-instance v3, Lcom/android/settings/tts/TextToSpeechSettings$3;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/tts/TextToSpeechSettings$3;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 453
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 454
    .local v1, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 455
    return-void
.end method

.method private getDefaultSampleString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 350
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 351
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getISO3Language()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, currentLang:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0012

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 354
    .local v3, strings:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a0013

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, langs:[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 358
    aget-object v4, v2, v1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 359
    aget-object v4, v3, v1

    .line 363
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :goto_1
    return-object v4

    .line 357
    .restart local v0       #currentLang:Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #langs:[Ljava/lang/String;
    .restart local v3       #strings:[Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 363
    .end local v0           #currentLang:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #langs:[Ljava/lang/String;
    .end local v3           #strings:[Ljava/lang/String;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private getSampleText()V
    .locals 7

    .prologue
    .line 296
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 298
    .local v0, currentEngine:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    .line 300
    :cond_0
    sget-boolean v4, Lcom/android/settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_NOT:Z

    invoke-direct {p0, v0, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->maybeUpdateTtsLanguage(Ljava/lang/String;Z)V

    .line 301
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v1

    .line 307
    .local v1, currentLocale:Ljava/util/Locale;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.speech.tts.engine.GET_SAMPLE_TEXT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v3, intent:Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 310
    const-string v4, "language"

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v4, "country"

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v4, "variant"

    invoke-virtual {v1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :cond_1
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const/16 v4, 0x7bf

    :try_start_0
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-void

    .line 319
    :catch_0
    move-exception v2

    .line 320
    .local v2, ex:Landroid/content/ActivityNotFoundException;
    const-string v4, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get sample text, no activity found for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initSettings()V
    .locals 9

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 240
    .local v6, resolver:Landroid/content/ContentResolver;
    :try_start_0
    const-string v7, "tts_default_rate"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    :goto_0
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    iget v8, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 246
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v7, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 248
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 250
    const/4 v5, 0x0

    .line 251
    .local v5, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    instance-of v7, v7, Landroid/preference/PreferenceActivity;

    if-eqz v7, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    check-cast v5, Landroid/preference/PreferenceActivity;

    .line 258
    .restart local v5       #preferenceActivity:Landroid/preference/PreferenceActivity;
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 260
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v7}, Landroid/speech/tts/TtsEngines;->getEngines()Ljava/util/List;

    move-result-object v3

    .line 261
    .local v3, engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 262
    .local v1, engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    new-instance v2, Lcom/android/settings/tts/TtsEnginePreference;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v2, v7, v1, p0, v5}, Lcom/android/settings/tts/TtsEnginePreference;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;Landroid/preference/PreferenceActivity;)V

    .line 264
    .local v2, enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_1

    .line 241
    .end local v1           #engine:Landroid/speech/tts/TextToSpeech$EngineInfo;
    .end local v2           #enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    .end local v3           #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v5           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :catch_0
    move-exception v0

    .line 243
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const/16 v7, 0x64

    iput v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    goto :goto_0

    .line 254
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    .restart local v5       #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "TextToSpeechSettings used outside a PreferenceActivity"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 267
    .restart local v3       #engines:Ljava/util/List;,"Ljava/util/List<Landroid/speech/tts/TextToSpeech$EngineInfo;>;"
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_1
    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v7}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 268
    return-void
.end method

.method private maybeUpdateTtsLanguage(Ljava/lang/String;Z)V
    .locals 8
    .parameter "currentEngine"
    .parameter "shouldUpdateEngine"

    .prologue
    .line 271
    if-eqz p1, :cond_1

    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_1

    .line 272
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v4, p1}, Landroid/speech/tts/TtsEngines;->getLocalePrefForEngine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, localeString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 275
    invoke-static {v2}, Landroid/speech/tts/TtsEngines;->parseLocalePref(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, locale:[Ljava/lang/String;
    new-instance v4, Ljava/util/Locale;

    const/4 v5, 0x0

    aget-object v5, v1, v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    const/4 v7, 0x2

    aget-object v7, v1, v7

    invoke-direct {v4, v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/android/settings/tts/TextToSpeechSettings;->checkLocaleAvailable(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v3

    .line 281
    .local v3, newLocale:Ljava/util/Locale;
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4}, Landroid/speech/tts/TextToSpeech;->getLanguage()Ljava/util/Locale;

    move-result-object v0

    .line 283
    .local v0, engineLocale:Ljava/util/Locale;
    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    .line 284
    :cond_0
    const-string v4, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Loading language ahead of sample check : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v4, v3}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 289
    .end local v0           #engineLocale:Ljava/util/Locale;
    .end local v1           #locale:[Ljava/lang/String;
    .end local v2           #localeString:Ljava/lang/String;
    .end local v3           #newLocale:Ljava/util/Locale;
    :cond_1
    return-void
.end method

.method private onSampleTextReceived(ILandroid/content/Intent;)V
    .locals 4
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 367
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getDefaultSampleString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .local v0, sample:Ljava/lang/String;
    if-nez p1, :cond_1

    if-eqz p2, :cond_1

    .line 370
    if-eqz p2, :cond_0

    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 371
    const-string v1, "sampleText"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 373
    :cond_0
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got sample text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 386
    :goto_1
    return-void

    .line 375
    :cond_1
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using default sample text :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_2
    const-string v1, "TextToSpeechSettings"

    const-string v2, "Did not have a sample string for the requested language"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V
    .locals 8
    .parameter "data"

    .prologue
    .line 530
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v5}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, engine:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 533
    const-string v5, "TextToSpeechSettings"

    const-string v6, "Voice data check complete, but no engine bound"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :goto_0
    return-void

    .line 537
    :cond_0
    if-nez p1, :cond_1

    .line 538
    const-string v5, "TextToSpeechSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Engine failed voice data integrity check (null return)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v7}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "tts_default_synth"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 545
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    .line 546
    .local v1, engineCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_2

    .line 547
    iget-object v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 548
    .local v4, p:Landroid/preference/Preference;
    instance-of v5, v4, Lcom/android/settings/tts/TtsEnginePreference;

    if-eqz v5, :cond_3

    move-object v2, v4

    .line 549
    check-cast v2, Lcom/android/settings/tts/TtsEnginePreference;

    .line 550
    .local v2, enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    invoke-virtual {v2}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 551
    invoke-virtual {v2, p1}, Lcom/android/settings/tts/TtsEnginePreference;->setVoiceDataDetails(Landroid/content/Intent;)V

    .line 556
    .end local v2           #enginePref:Lcom/android/settings/tts/TtsEnginePreference;
    .end local v4           #p:Landroid/preference/Preference;
    :cond_2
    sget-boolean v5, Lcom/android/settings/tts/TextToSpeechSettings;->ENGINE_UPDATE_ONINIT:Z

    invoke-direct {p0, v0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->maybeUpdateTtsLanguage(Ljava/lang/String;Z)V

    .line 558
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0

    .line 546
    .restart local v4       #p:Landroid/preference/Preference;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private shouldDisplayDataAlert(Ljava/lang/String;)Z
    .locals 2
    .parameter "engine"

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    invoke-virtual {v1, p1}, Landroid/speech/tts/TtsEngines;->getEngineInfo(Ljava/lang/String;)Landroid/speech/tts/TextToSpeech$EngineInfo;

    move-result-object v0

    .line 563
    .local v0, info:Landroid/speech/tts/TextToSpeech$EngineInfo;
    iget-boolean v1, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->system:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateDefaultEngine(Ljava/lang/String;)V
    .locals 4
    .parameter "engine"

    .prologue
    .line 458
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating default synth to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 469
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    .line 472
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v1, :cond_0

    .line 474
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 475
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 484
    :cond_0
    :goto_0
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating engine : Attempting to connect to engine: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mUpdateListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v1, v2, v3, p1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 486
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "TextToSpeechSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error shutting down TTS engine"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 207
    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "driving_mode_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreferenceScreen;->setChecked(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingModeKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "driving_mode_on"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsTextSwitchPreference;->setChecked(Z)V

    .line 211
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 207
    goto :goto_0

    :cond_2
    move v1, v2

    .line 209
    goto :goto_1
.end method

.method private updateWidgetState(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 434
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 435
    return-void
.end method


# virtual methods
.method public getCurrentChecked()Landroid/widget/Checkable;
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    return-object v0
.end method

.method public getCurrentKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 192
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 342
    const/16 v0, 0x7bf

    if-ne p1, v0, :cond_1

    .line 343
    invoke-direct {p0, p2, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onSampleTextReceived(ILandroid/content/Intent;)V

    .line 347
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    const/16 v0, 0x7b9

    if-ne p1, v0, :cond_0

    .line 345
    invoke-direct {p0, p3}, Lcom/android/settings/tts/TextToSpeechSettings;->onVoiceDataIntegrityCheckDone(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->addPreferencesFromResource(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 153
    const-string v0, "tts_play_example"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    .line 154
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 156
    const-string v0, "tts_engine_preference_section"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginePreferenceCategory:Landroid/preference/PreferenceCategory;

    .line 158
    const-string v0, "tts_default_rate"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    .line 160
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    invoke-direct {v0, v1, v2}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 161
    new-instance v0, Landroid/speech/tts/TtsEngines;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/speech/tts/TtsEngines;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mEnginesHelper:Landroid/speech/tts/TtsEngines;

    .line 163
    const-string v0, "driving_mode_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    .line 164
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreferenceScreen;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    const v1, 0x7f0907b7

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreferenceScreen;->setSummary(I)V

    .line 169
    :cond_0
    const-string v0, "DCM"

    const-string v1, "ro.csc.sales_code"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_1
    const-string v0, "driving_mode_settings_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsTextSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingModeKey:Lcom/android/settings/SettingsTextSwitchPreference;

    .line 176
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingModeKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsTextSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingModeKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsTextSwitchPreference;->setFragment(Landroid/preference/PreferenceFragment;)V

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingMode:Landroid/preference/SwitchPreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->initSettings()V

    .line 186
    return-void

    .line 182
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDrivingModeKey:Lcom/android/settings/SettingsTextSwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->shutdown()V

    .line 218
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 220
    :cond_0
    return-void
.end method

.method public onInitEngine(I)V
    .locals 2
    .parameter "status"

    .prologue
    .line 328
    if-nez p1, :cond_0

    .line 329
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    .line 330
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen initialized."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :goto_0
    return-void

    .line 332
    :cond_0
    const-string v0, "TextToSpeechSettings"

    const-string v1, "TTS engine for settings screen failed to initialize successfully."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateWidgetState(Z)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 224
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 225
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRatePref:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 229
    :cond_0
    sget-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;->stopObserving()V

    .line 231
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;

    .line 233
    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 389
    const-string v5, "tts_default_rate"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 391
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "tts_default_rate"

    iget v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 394
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v4, :cond_0

    .line 395
    iget-object v4, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    iget v5, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    int-to-float v5, v5

    const/high16 v6, 0x42c8

    div-float/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    .line 397
    :cond_0
    const-string v4, "TextToSpeechSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TTS default rate changed, now "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mDefaultRate:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_1
    :goto_0
    return v3

    .line 398
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "TextToSpeechSettings"

    const-string v5, "could not persist default TTS rate setting"

    invoke-static {v4, v5, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 401
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :cond_2
    const-string v5, "driving_mode_settings"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "driving_mode_settings_key"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 402
    :cond_3
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    move v2, v3

    .line 403
    .local v2, value:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "driving_mode_on"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.settings.DRIVING_MODE_CHANGED"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 405
    .local v1, intent:Landroid/content/Intent;
    if-ne v2, v3, :cond_5

    .line 406
    const-string v4, "DrivingMode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 412
    const-string v4, "TextToSpeechSettings"

    const-string v5, "Driving mode changed broadcast"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #value:I
    :cond_4
    move v2, v4

    .line 402
    goto :goto_1

    .line 408
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #value:I
    :cond_5
    const-string v5, "DrivingMode"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPlayExample:Landroid/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 425
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getSampleText()V

    .line 426
    const/4 v0, 0x1

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 198
    invoke-direct {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateState()V

    .line 200
    sget-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;

    if-nez v0, :cond_0

    .line 201
    new-instance v0, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;-><init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;

    .line 202
    sget-object v0, Lcom/android/settings/tts/TextToSpeechSettings;->sSettingsObserver:Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;->startObserving()V

    .line 204
    :cond_0
    return-void
.end method

.method public onUpdateEngine(I)V
    .locals 4
    .parameter "status"

    .prologue
    .line 494
    if-nez p1, :cond_0

    .line 496
    const-string v0, "TextToSpeechSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating engine: Successfully bound to the engine: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v2}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getCurrentEngine()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->checkVoiceData(Ljava/lang/String;)V

    .line 510
    :goto_0
    return-void

    .line 501
    :cond_0
    const-string v0, "TextToSpeechSettings"

    const-string v1, "Updating engine: Failed to bind to engine, reverting."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 505
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p0}, Lcom/android/settings/tts/TextToSpeechSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mInitListener:Landroid/speech/tts/TextToSpeech$OnInitListener;

    iget-object v3, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 508
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mPreviousEngine:Ljava/lang/String;

    goto :goto_0
.end method

.method public setCurrentChecked(Landroid/widget/Checkable;)V
    .locals 0
    .parameter "current"

    .prologue
    .line 578
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentChecked:Landroid/widget/Checkable;

    .line 579
    return-void
.end method

.method public setCurrentKey(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 583
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    .line 584
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->shouldDisplayDataAlert(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->displayDataAlert(Ljava/lang/String;)V

    .line 589
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings;->mCurrentEngine:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/tts/TextToSpeechSettings;->updateDefaultEngine(Ljava/lang/String;)V

    goto :goto_0
.end method
