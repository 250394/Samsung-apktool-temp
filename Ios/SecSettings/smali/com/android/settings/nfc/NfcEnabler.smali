.class public Lcom/android/settings/nfc/NfcEnabler;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mAndroidBeam:Landroid/preference/PreferenceScreen;

.field private final mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private final mReaderCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mReaderIntentFilter:Landroid/content/IntentFilter;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

.field private final mSBeam:Landroid/preference/PreferenceScreen;

.field private mSBeamEnabled:Z

.field private mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

.field private mSBeamSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "context"
    .parameter "nfcCheckBox"
    .parameter "readerCheckBox"
    .parameter "androidBeam"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 61
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 107
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    .line 108
    iput-object p4, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 109
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 110
    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 111
    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    .line 113
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 116
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 118
    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 119
    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 129
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 123
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGE_READER"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 125
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 127
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;Landroid/preference/PreferenceScreen;)V
    .locals 4
    .parameter "context"
    .parameter "checkBoxPreference"
    .parameter "androidBeam"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 76
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 61
    new-instance v1, Lcom/android/settings/nfc/NfcEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/nfc/NfcEnabler$1;-><init>(Lcom/android/settings/nfc/NfcEnabler;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    .line 78
    iput-object p2, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 79
    iput-object p3, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    .line 80
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 81
    iput-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    .line 82
    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    .line 85
    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    .line 86
    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    .line 88
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 91
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 92
    iput-object v3, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 101
    :goto_0
    return-void

    .line 95
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 97
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 99
    .local v0, edm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/nfc/NfcEnabler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcReaderStateChanged(I)V

    return-void
.end method

.method private handleNfcReaderStateChanged(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 397
    packed-switch p1, :pswitch_data_0

    .line 411
    :goto_0
    :pswitch_0
    return-void

    .line 399
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 400
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 403
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 407
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 408
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 397
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private handleNfcStateChanged(I)V
    .locals 7
    .parameter "newState"

    .prologue
    const v6, 0x7f0901f0

    const v5, 0x7f0901f6

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    const-string v1, "pref_sbeam"

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    .line 302
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 304
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    .line 307
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 310
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 313
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 318
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 319
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 324
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 325
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_3

    .line 327
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 330
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0901ee

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 333
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 334
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0901f5

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 338
    :cond_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    goto/16 :goto_0

    .line 342
    :cond_5
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    const v1, 0x7f0901ef

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 343
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 347
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 348
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 349
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 350
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 356
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 359
    :cond_6
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 365
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 366
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 368
    :cond_7
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_0

    .line 375
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 376
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_8

    .line 378
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 381
    :cond_8
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 382
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v6}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 383
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_1

    .line 384
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 385
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceScreen;->setSummary(I)V

    .line 386
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_1

    .line 387
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPreference:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    .line 388
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "SBeam_on_off"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 389
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamSharedPrefEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 302
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .line 278
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 279
    .local v0, desiredState:Z
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 280
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 281
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 282
    :cond_0
    if-eqz v0, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 295
    :cond_1
    :goto_0
    return v2

    .line 285
    :cond_2
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0

    .line 287
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 289
    if-eqz v0, :cond_4

    .line 290
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    goto :goto_0

    .line 292
    :cond_4
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 262
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 273
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 271
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 272
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mRestrictionPolicy:Landroid/app/enterprise/RestrictionPolicy;

    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isNFCEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 238
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 239
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mAndroidBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeamEnabled:Z

    if-eqz v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mSBeam:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    .line 252
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(I)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 254
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 255
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 257
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcEnabler;->mReaderIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method
