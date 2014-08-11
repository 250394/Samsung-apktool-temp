.class public Lcom/android/settings/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/DialogCreatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/AccessibilitySettings$TogglePreferenceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleTouchExplorationFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServiceFragment;,
        Lcom/android/settings/AccessibilitySettings$ToggleSwitch;,
        Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;
    }
.end annotation


# static fields
.field private static final sInstalledServices:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private static final sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;


# instance fields
.field private endPowerKeyEndChecked:Z

.field private mAlertDialog:Landroid/app/AlertDialog$Builder;

.field private mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

.field private mAudioCategory:Landroid/preference/PreferenceCategory;

.field private mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

.field private final mCurConfig:Landroid/content/res/Configuration;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEasyAccessCategory:Landroid/preference/PreferenceCategory;

.field private mFontListPref:Lcom/android/settings/flipfont/FontListPreference;

.field private mFontSizePref:Landroid/preference/ListPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

.field private mLockAfter:Landroid/preference/ListPreference;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

.field private mNoServicesMessagePreference:Landroid/preference/Preference;

.field private mPowerKeyHold:Landroid/preference/CheckBoxPreference;

.field private mRotation2ndObserver:Landroid/database/ContentObserver;

.field private mRotationObserver:Landroid/database/ContentObserver;

.field private mScreenTimeoutPreference:Landroid/preference/ListPreference;

.field private mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

.field private mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

.field private mServicesCategory:Landroid/preference/PreferenceCategory;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field mSupportFolderType:Z

.field private mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

.field private mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

.field private mToggleTouchExplorationPreference:Landroid/preference/Preference;

.field private mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

.field private mVisionCategory:Landroid/preference/PreferenceCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v1, 0x3a

    invoke-direct {v0, v1}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 173
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    .line 176
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    .line 178
    new-instance v0, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$SettingsPackageMonitor;-><init>(Lcom/android/settings/AccessibilitySettings;Lcom/android/settings/AccessibilitySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 180
    new-instance v0, Lcom/android/settings/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$1;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 211
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    .line 270
    new-instance v0, Lcom/android/settings/AccessibilitySettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$2;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    .line 281
    new-instance v0, Lcom/android/settings/AccessibilitySettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$3;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    .line 1566
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    return-void
.end method

.method static synthetic access$1000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/AccessibilitySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/AccessibilitySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/settings/AccessibilitySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/AccessibilitySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/AccessibilitySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/Context;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private static createAndAddActionBarToggleSwitch(Landroid/app/Activity;)Lcom/android/settings/AccessibilitySettings$ToggleSwitch;
    .locals 6
    .parameter

    .prologue
    const/16 v5, 0x10

    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 1452
    new-instance v0, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;

    invoke-direct {v0, p0}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;-><init>(Landroid/content/Context;)V

    .line 1453
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1455
    invoke-virtual {v0, v3, v3, v1, v3}, Lcom/android/settings/AccessibilitySettings$ToggleSwitch;->setPadding(IIII)V

    .line 1456
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1458
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v4, v4, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 1462
    return-object v0
.end method

.method private disableUnusableLockTimeouts(J)V
    .locals 11
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1247
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1248
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1249
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1250
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 1251
    :goto_0
    array-length v7, v4

    if-ge v0, v7, :cond_1

    .line 1252
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1253
    cmp-long v7, v7, p1

    if-gtz v7, :cond_0

    .line 1254
    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1251
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1260
    :cond_1
    const-string v0, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revisedValues.size() : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, p1, v7

    .line 1262
    const-string v0, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_2

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, p1, v3

    if-gez v0, :cond_2

    .line 1264
    const v0, 0x7f090a5d

    new-array v3, v2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1269
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1271
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1273
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1274
    int-to-long v3, v0

    cmp-long v3, v3, p1

    if-gtz v3, :cond_4

    .line 1275
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1284
    :goto_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    move v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 1286
    return-void

    .line 1277
    :cond_4
    const-string v0, "AccessibilitySettings"

    const-string v3, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1281
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_1
.end method

.method private disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V
    .locals 11
    .parameter

    .prologue
    .line 1126
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1129
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1130
    :goto_0
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1133
    const-string v3, "VZW"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1134
    const-wide/32 v2, 0x927c0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 1135
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gez v2, :cond_9

    .line 1136
    const-wide/32 v0, 0x927c0

    move-wide v1, v0

    .line 1141
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 1188
    :goto_2
    return-void

    .line 1129
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 1144
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 1145
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    .line 1146
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1147
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1148
    const/4 v0, 0x0

    :goto_3
    array-length v7, v4

    if-ge v0, v7, :cond_3

    .line 1149
    aget-object v7, v4, v0

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 1150
    cmp-long v7, v7, v1

    if-gtz v7, :cond_2

    .line 1151
    aget-object v7, v3, v0

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1152
    aget-object v7, v4, v0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1157
    :cond_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_6

    .line 1158
    :cond_4
    const v0, 0x7f090a5d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1159
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1171
    :cond_5
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1173
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1175
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1176
    int-to-long v3, v0

    cmp-long v1, v3, v1

    if-gtz v1, :cond_7

    .line 1177
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1187
    :goto_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_2

    .line 1161
    :cond_6
    const-string v0, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "revisedValues.size() : "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    sub-long v7, v1, v7

    .line 1163
    const-string v0, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "last_timeout : "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const-wide/16 v9, 0x0

    cmp-long v0, v7, v9

    if-lez v0, :cond_5

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_5

    .line 1165
    const v0, 0x7f090a5d

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1166
    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1179
    :cond_7
    const-string v0, "AccessibilitySettings"

    const-string v1, "mLockAfter.setValueIndex(revisedValues.size()-1)"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto/16 :goto_5

    .line 1187
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_6

    :cond_9
    move-wide v1, v0

    goto/16 :goto_1
.end method

.method private static getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1377
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1379
    if-nez v0, :cond_0

    .line 1380
    const-string v0, ""

    .line 1382
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1383
    sget-object v2, Lcom/android/settings/AccessibilitySettings;->sStringColonSplitter:Landroid/text/TextUtils$SimpleStringSplitter;

    .line 1384
    invoke-virtual {v2, v0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 1385
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1386
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v0

    .line 1387
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 1389
    if-eqz v0, :cond_1

    .line 1390
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1393
    :cond_2
    return-object v1
.end method

.method private getTimeoutNewEntry(J)Ljava/lang/String;
    .locals 10
    .parameter "time"

    .prologue
    .line 461
    const-wide/16 v5, 0x3e8

    div-long v3, p1, v5

    .line 462
    .local v3, second:J
    const-wide/16 v5, 0x3c

    div-long v0, v3, v5

    .line 463
    .local v0, minute:J
    const-wide/16 v5, 0x3c

    rem-long/2addr v3, v5

    .line 465
    const-string v2, ""

    .line 466
    .local v2, result:Ljava/lang/String;
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100006

    long-to-int v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 469
    :cond_0
    const-wide/16 v5, 0x0

    cmp-long v5, v0, v5

    if-lez v5, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 470
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 472
    :cond_1
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f100007

    long-to-int v8, v3

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    long-to-int v9, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 476
    :cond_2
    const-string v5, "AccessibilitySettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTimeoutNewEntry : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return-object v2
.end method

.method private handleToggleAutoRotateScreen2ndPreferenceClick()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 646
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 647
    .local v0, value:Z
    if-nez v0, :cond_0

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "user_rotation_second"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 650
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accelerometer_rotation_second"

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 651
    return-void
.end method

.method private handleToggleAutoRotateScreenPreferenceClick()V
    .locals 4

    .prologue
    .line 621
    :try_start_0
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v1

    .line 623
    .local v1, wm:Landroid/view/IWindowManager;
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 624
    invoke-interface {v1}, Landroid/view/IWindowManager;->thawRotation()V

    .line 643
    .end local v1           #wm:Landroid/view/IWindowManager;
    :goto_0
    return-void

    .line 628
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 630
    invoke-interface {v1}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 631
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    .end local v1           #wm:Landroid/view/IWindowManager;
    :catch_0
    move-exception v0

    .line 641
    .local v0, exc:Landroid/os/RemoteException;
    const-string v2, "AccessibilitySettings"

    const-string v3, "Unable to save auto-rotate setting"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 633
    .end local v0           #exc:Landroid/os/RemoteException;
    .restart local v1       #wm:Landroid/view/IWindowManager;
    :cond_1
    const/4 v2, -0x1

    :try_start_1
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V

    goto :goto_0

    .line 637
    :cond_2
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->freezeRotation(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleToggleSpeakPasswordPreferenceClick()V
    .locals 3

    .prologue
    .line 654
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "speak_password"

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 657
    return-void

    .line 654
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initializeAllPreferences()V
    .locals 10

    .prologue
    const v9, 0x7f0c0005

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 660
    const-string v0, "services_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    .line 662
    const-string v0, "font_size"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    .line 663
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 666
    const-string v0, "toggle_power_button_ends_call_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    .line 670
    const-string v0, "toggle_auto_rotate_screen_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    .line 674
    const-string v0, "toggle_auto_rotate_screen_2nd_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    .line 678
    const-string v0, "toggle_speak_password_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    .line 681
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->isTalkbackAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 686
    :cond_0
    const-string v0, "screen_timeout"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "screen_off_timeout"

    const-wide/16 v4, 0x7530

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    .line 689
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 690
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 691
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 692
    invoke-direct {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 695
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v3, "lock_after_timeout"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    .line 696
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 697
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 699
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v0

    if-nez v0, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 704
    :cond_1
    const-string v0, "toggle_touch_exploration_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    .line 707
    const-string v0, "select_long_press_timeout_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    .line 709
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 710
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 711
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0a0043

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 713
    aget-object v0, v3, v2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 714
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0a0042

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 716
    array-length v5, v3

    move v0, v2

    .line 717
    :goto_0
    if-ge v0, v5, :cond_2

    .line 718
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    aget-object v7, v3, v0

    aget-object v8, v4, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 723
    :cond_2
    const-string v0, "toggle_script_injection_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    .line 726
    const-string v0, "vision_category"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    .line 727
    const-string v0, "high_contrast"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    .line 728
    const-string v0, "screen_zoom"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    .line 730
    const-string v0, "MONOTYPE"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/flipfont/FontListPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontListPref:Lcom/android/settings/flipfont/FontListPreference;

    .line 734
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 735
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mFontListPref:Lcom/android/settings/flipfont/FontListPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 737
    const-string v0, "torch_light"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    .line 738
    const-string v0, "mono_audio_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    .line 739
    const-string v0, "audio_preference_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    .line 740
    const-string v0, "all_sound_off_key"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    .line 742
    const-string v0, "easy_access"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mEasyAccessCategory:Landroid/preference/PreferenceCategory;

    .line 743
    const-string v0, "call_answering_ending"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    .line 744
    const-string v0, "power_key_hold"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    .line 746
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 747
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 748
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 750
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 752
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAudioCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 754
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mEasyAccessCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 755
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 756
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 758
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v1, :cond_5

    .line 759
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 761
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_zoom"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 763
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "torch_light"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 765
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mono_audio_db"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 767
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "all_sound_off"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_b

    move v0, v1

    :goto_5
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 769
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_key_hold"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_c

    :goto_6
    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 777
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 779
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 781
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 788
    const-string v0, "audio_balance"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SeekBarDialogPreference;

    .line 789
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 794
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    .line 795
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 798
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    .line 799
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_d

    .line 800
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    const v1, 0x7f090c05

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 801
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/AccessibilitySettings;->updateFontsizeList(Landroid/preference/ListPreference;)V

    .line 806
    :goto_7
    return-void

    :cond_7
    move v0, v2

    .line 759
    goto/16 :goto_1

    :cond_8
    move v0, v2

    .line 761
    goto/16 :goto_2

    :cond_9
    move v0, v2

    .line 763
    goto/16 :goto_3

    :cond_a
    move v0, v2

    .line 765
    goto/16 :goto_4

    :cond_b
    move v0, v2

    .line 767
    goto :goto_5

    :cond_c
    move v1, v2

    .line 769
    goto :goto_6

    .line 803
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_7
.end method

.method private isInDefaultLockTimeoutList(J)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0008

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 446
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 449
    :goto_1
    return v2

    .line 445
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 449
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isInDefaultScreenTimeoutList(J)Z
    .locals 4
    .parameter "timeout"

    .prologue
    .line 453
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 454
    .local v1, values:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 455
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    .line 457
    :goto_1
    return v2

    .line 454
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 457
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private isTalkbackAvailable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 810
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.google.android.marvin.talkback"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 811
    :catch_0
    move-exception v1

    .line 812
    const-string v1, "AccessibilitySettings"

    const-string v2, "Screen reader does not installed"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private loadInstalledServices()V
    .locals 8

    .prologue
    .line 1361
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 1364
    .local v3, installedServiceInfos:Ljava/util/List;,"Ljava/util/List<Landroid/accessibilityservice/AccessibilityServiceInfo;>;"
    sget-object v4, Lcom/android/settings/AccessibilitySettings;->sInstalledServices:Ljava/util/Set;

    .line 1365
    .local v4, installedServices:Ljava/util/Set;,"Ljava/util/Set<Landroid/content/ComponentName;>;"
    invoke-interface {v4}, Ljava/util/Set;->clear()V

    .line 1366
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1367
    .local v2, installedServiceInfoCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1368
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-virtual {v6}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1369
    .local v5, resolveInfo:Landroid/content/pm/ResolveInfo;
    new-instance v1, Landroid/content/ComponentName;

    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v7, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1372
    .local v1, installedService:Landroid/content/ComponentName;
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1367
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1374
    .end local v1           #installedService:Landroid/content/ComponentName;
    .end local v5           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_0
    return-void
.end method

.method private offerInstallAccessibilitySerivceOnce()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1290
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-eq v2, v3, :cond_1

    .line 1309
    :cond_0
    :goto_0
    return-void

    .line 1293
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1294
    const-string v3, "key_install_accessibility_service_offered_once"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 1296
    :cond_2
    if-eqz v0, :cond_0

    .line 1297
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "key_install_accessibility_service_offered_once"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1302
    invoke-static {}, Lcom/android/settings/Utils;->isChinaModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    goto :goto_0
.end method

.method private setupLockAfterPreference()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const-wide/16 v6, 0x0

    .line 1192
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_screen_lock_after_timeout"

    const-wide/16 v10, 0x1388

    invoke-static {v8, v9, v10, v11}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    .line 1194
    .local v2, currentLockTimeout:J
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1195
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v8, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 1196
    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 1197
    .local v0, adminTimeout:J
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "screen_off_timeout"

    invoke-static {v8, v9, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    int-to-long v4, v8

    .line 1199
    .local v4, displayTimeout:J
    cmp-long v8, v0, v6

    if-lez v8, :cond_0

    .line 1204
    sub-long v8, v0, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    invoke-direct {p0, v6, v7}, Lcom/android/settings/AccessibilitySettings;->disableUnusableLockTimeouts(J)V

    .line 1206
    :cond_0
    return-void

    .end local v0           #adminTimeout:J
    .end local v4           #displayTimeout:J
    :cond_1
    move-wide v0, v6

    .line 1196
    goto :goto_0
.end method

.method private updateAllPreferences()V
    .locals 0

    .prologue
    .line 889
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateDefaultPreferences()V

    .line 890
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateServicesPreferences()V

    .line 891
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateVisionPreferences()V

    .line 892
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateMobilityPreferences()V

    .line 893
    return-void
.end method

.method private updateDefaultPreferences()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 899
    :goto_0
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 902
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accelerometer_rotation_second"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 904
    :goto_1
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 907
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "speak_password"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_3

    .line 910
    :goto_2
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_0

    .line 911
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 914
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_off_timeout"

    const-wide/16 v2, 0x7530

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 916
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 917
    const-string v2, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentScreenTimeout = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-direct {p0, v2}, Lcom/android/settings/AccessibilitySettings;->disableUnusableScreenTimeouts(Landroid/preference/ListPreference;)V

    .line 919
    invoke-direct {p0, v0, v1}, Lcom/android/settings/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V

    .line 922
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 923
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 924
    return-void

    :cond_1
    move v0, v2

    .line 897
    goto :goto_0

    :cond_2
    move v0, v2

    .line 902
    goto :goto_1

    :cond_3
    move v1, v2

    .line 907
    goto :goto_2
.end method

.method private updateFontsizeList(Landroid/preference/ListPreference;)V
    .locals 6
    .parameter

    .prologue
    .line 1397
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 1398
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a000c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1400
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1401
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1402
    const/4 v0, 0x0

    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 1403
    add-int/lit8 v5, v0, 0x2

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1404
    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1402
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1407
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 1409
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 1411
    return-void
.end method

.method private updateLockAfterPreferenceSummary()V
    .locals 15

    .prologue
    const-wide/16 v5, 0x0

    const v14, 0x7f090142

    const/4 v13, 0x1

    const/4 v1, 0x0

    .line 1210
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "lock_screen_lock_after_timeout"

    const-wide/16 v3, 0x1388

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    .line 1212
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v9

    .line 1213
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    move v0, v1

    move v2, v1

    .line 1215
    :goto_0
    array-length v3, v10

    if-ge v0, v3, :cond_1

    .line 1216
    aget-object v3, v10, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1217
    cmp-long v3, v7, v3

    if-ltz v3, :cond_0

    move v2, v0

    .line 1215
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1222
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 1223
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "screen_off_timeout"

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-long v11, v0

    .line 1224
    sub-long/2addr v3, v11

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 1226
    aget-object v0, v10, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v0, v10, v3

    if-gez v0, :cond_3

    cmp-long v0, v3, v7

    if-gez v0, :cond_3

    .line 1227
    const-string v0, "AccessibilitySettings"

    const-string v2, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    new-array v2, v13, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v14, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1244
    :goto_2
    return-void

    :cond_2
    move-wide v3, v5

    .line 1222
    goto :goto_1

    .line 1231
    :cond_3
    if-nez v2, :cond_4

    .line 1232
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v3, 0x7f090a5c

    new-array v4, v13, [Ljava/lang/Object;

    aget-object v2, v9, v2

    aput-object v2, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1234
    :cond_4
    invoke-direct {p0, v7, v8}, Lcom/android/settings/AccessibilitySettings;->isInDefaultLockTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_6

    cmp-long v0, v7, v3

    if-ltz v0, :cond_5

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    .line 1235
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    new-array v3, v13, [Ljava/lang/Object;

    aget-object v2, v9, v2

    aput-object v2, v3, v1

    invoke-virtual {p0, v14, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1237
    :cond_6
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    new-array v2, v13, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v14, v2}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method private updateMobilityPreferences()V
    .locals 5

    .prologue
    .line 1073
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "long_press_timeout"

    iget v4, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1075
    .local v0, longPressTimeout:I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 1076
    .local v1, value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    invoke-virtual {v2, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 1077
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1079
    return-void
.end method

.method private updateServicesPreferences()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 931
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 933
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v6

    .line 937
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/AccessibilitySettings;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v7

    .line 939
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_enabled"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    .line 942
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    move v5, v3

    :goto_1
    if-ge v5, v8, :cond_5

    .line 943
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 945
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v9

    .line 947
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 949
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 950
    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v12, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/preference/PreferenceScreen;->setKey(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v9, v10}, Landroid/preference/PreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 956
    if-eqz v1, :cond_3

    invoke-interface {v7, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v2

    .line 958
    :goto_2
    if-eqz v4, :cond_4

    .line 959
    const v11, 0x7f090600

    invoke-virtual {p0, v11}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 964
    :goto_3
    invoke-virtual {v9, v5}, Landroid/preference/PreferenceScreen;->setOrder(I)V

    .line 965
    const-class v11, Lcom/android/settings/AccessibilitySettings$ToggleAccessibilityServiceFragment;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v9, v2}, Landroid/preference/PreferenceScreen;->setPersistent(Z)V

    .line 968
    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getExtras()Landroid/os/Bundle;

    move-result-object v11

    .line 969
    const-string v12, "preference_key"

    invoke-virtual {v9}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    const-string v12, "checked"

    invoke-virtual {v11, v12, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 971
    const-string v4, "title"

    invoke-virtual {v11, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v4

    .line 974
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 975
    const v4, 0x7f090610

    invoke-virtual {p0, v4}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 977
    :cond_0
    const-string v10, "summary"

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 979
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 981
    const-string v10, "enable_warning_title"

    const v12, 0x7f090606

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v10, "enable_warning_message"

    const v12, 0x7f090607

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v10, "disable_warning_title"

    const v12, 0x7f090608

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    const-string v10, "disable_warning_message"

    const v12, 0x7f090609

    new-array v13, v2, [Ljava/lang/Object;

    aput-object v4, v13, v3

    invoke-virtual {p0, v12, v13}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v10, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 993
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v4

    .line 994
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 995
    const-string v10, "settings_title"

    const v12, 0x7f0905fe

    invoke-virtual {p0, v12}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    const-string v10, "settings_component_name"

    new-instance v12, Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v12, v0, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 942
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto/16 :goto_1

    :cond_2
    move v1, v3

    .line 939
    goto/16 :goto_0

    :cond_3
    move v4, v3

    .line 956
    goto/16 :goto_2

    .line 961
    :cond_4
    const v11, 0x7f090601

    invoke-virtual {p0, v11}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1005
    :cond_5
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_7

    .line 1006
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-nez v0, :cond_6

    .line 1007
    new-instance v0, Lcom/android/settings/AccessibilitySettings$7;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/AccessibilitySettings$7;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    .line 1021
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 1022
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    const v1, 0x7f0400e6

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 1024
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 1026
    :cond_6
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1028
    :cond_7
    return-void
.end method

.method private updateTimeoutPreferenceDescription(J)V
    .locals 13
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    const v12, 0x7f0903dd

    const/4 v11, 0x1

    const/4 v1, 0x0

    .line 1082
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    .line 1084
    cmp-long v0, p1, v5

    if-gez v0, :cond_0

    .line 1086
    const-string v0, ""

    .line 1122
    :goto_0
    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1123
    return-void

    .line 1088
    :cond_0
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 1089
    invoke-virtual {v7}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v9

    move v0, v1

    move v2, v1

    .line 1091
    :goto_1
    array-length v3, v9

    if-ge v0, v3, :cond_2

    .line 1092
    aget-object v3, v9, v0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 1093
    cmp-long v3, p1, v3

    if-ltz v3, :cond_1

    move v2, v0

    .line 1091
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1099
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 1100
    if-eqz v0, :cond_4

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v3

    .line 1102
    :goto_2
    array-length v0, v8

    if-eqz v0, :cond_3

    array-length v0, v9

    if-nez v0, :cond_5

    .line 1103
    :cond_3
    new-array v0, v11, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v12, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-wide v3, v5

    .line 1100
    goto :goto_2

    .line 1105
    :cond_5
    aget-object v0, v9, v2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v0, v9, v3

    if-gez v0, :cond_6

    cmp-long v0, v3, p1

    if-gez v0, :cond_6

    .line 1106
    const-string v0, "AccessibilitySettings"

    const-string v2, "updateLockAfterPreferenceSummary, Long.valueOf(values[best].toString()) < maxTimeout && maxTimeout < currentTimeout"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    new-array v0, v11, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v12, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1109
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v0

    if-eqz v0, :cond_8

    cmp-long v0, p1, v3

    if-ltz v0, :cond_7

    cmp-long v0, v3, v5

    if-nez v0, :cond_8

    .line 1110
    :cond_7
    new-array v0, v11, [Ljava/lang/Object;

    aget-object v2, v8, v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v12, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1112
    :cond_8
    cmp-long v0, v3, v5

    if-nez v0, :cond_9

    .line 1113
    new-array v0, v11, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v12, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1115
    :cond_9
    new-array v0, v11, [Ljava/lang/Object;

    invoke-direct {p0, v3, v4}, Lcom/android/settings/AccessibilitySettings;->getTimeoutNewEntry(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, v12, v0}, Lcom/android/settings/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private updateVisionPreferences()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1033
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1035
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "incall_power_button_behavior"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1038
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 1040
    :goto_0
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1044
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 1045
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "touch_exploration_enabled"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 1047
    :goto_1
    if-eqz v0, :cond_3

    .line 1048
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    const v3, 0x7f090600

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1062
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "accessibility_script_injection"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 1064
    :goto_3
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleScriptInjectionPreference:Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/AccessibilityEnableScriptInjectionPreference;->setInjectionAllowed(Z)V

    .line 1067
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 1069
    return-void

    :cond_1
    move v0, v2

    .line 1038
    goto :goto_0

    :cond_2
    move v0, v2

    .line 1045
    goto :goto_1

    .line 1052
    :cond_3
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    const v3, 0x7f090601

    invoke-virtual {p0, v3}, Lcom/android/settings/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1054
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0}, Landroid/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "checked"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    .line 1058
    :cond_4
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mVisionCategory:Landroid/preference/PreferenceCategory;

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mToggleTouchExplorationPreference:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_5
    move v1, v2

    .line 1062
    goto :goto_3
.end method


# virtual methods
.method floatToIndex(F)I
    .locals 6
    .parameter

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 827
    :goto_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 828
    const/4 v1, 0x1

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 829
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 830
    sub-float v4, v3, v2

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 831
    add-int/lit8 v0, v1, -0x1

    .line 835
    :goto_2
    return v0

    .line 824
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 828
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 835
    :cond_2
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_2
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 296
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 301
    return-void

    .line 297
    :catch_0
    move-exception v0

    .line 298
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AccessibilitySettings"

    const-string v2, "Unable to retrieve configuration"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 305
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 306
    const/high16 v0, 0x7f07

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 308
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 309
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 311
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->initializeAllPreferences()V

    .line 312
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter

    .prologue
    const v5, 0x104000a

    const/4 v1, 0x0

    .line 1313
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1314
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 1315
    const v3, 0x7f0400a2

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1316
    const v0, 0x7f0b00e4

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 1317
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1320
    packed-switch p1, :pswitch_data_0

    move-object v0, v1

    .line 1356
    :goto_0
    return-object v0

    .line 1322
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09060b

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f09060c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/AccessibilitySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/AccessibilitySettings$8;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v0, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v2, 0x104

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1343
    :pswitch_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f09000f

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v3, Lcom/android/settings/AccessibilitySettings$9;

    invoke-direct {v3, p0, v2, v0}, Lcom/android/settings/AccessibilitySettings$9;-><init>(Lcom/android/settings/AccessibilitySettings;Landroid/content/SharedPreferences$Editor;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v5, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 1320
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 355
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 358
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 359
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 362
    const-string v10, "AccessibilitySettings"

    const-string v11, "onPreferenceChange : "

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 364
    .local v4, key:Ljava/lang/String;
    const-string v10, "select_long_press_timeout_preference"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v7, p2

    .line 365
    check-cast v7, Ljava/lang/String;

    .line 366
    .local v7, stringValue:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "long_press_timeout"

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 368
    iget-object v11, p0, Lcom/android/settings/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/preference/ListPreference;

    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mLongPressTimeoutValuetoTitleMap:Ljava/util/Map;

    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/CharSequence;

    invoke-virtual {v11, v10}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    const/4 v10, 0x1

    .line 439
    .end local v7           #stringValue:Ljava/lang/String;
    .end local p2
    :goto_0
    return v10

    .line 371
    .restart local p2
    :cond_0
    const-string v10, "font_size"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    move-object v10, p2

    .line 373
    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {p0, v10}, Lcom/android/settings/AccessibilitySettings;->floatToIndex(F)I

    move-result v2

    .line 374
    .local v2, fontIndex:I
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 375
    .local v6, previousIndex:I
    iget-boolean v10, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v10, :cond_1

    .line 376
    add-int/lit8 v2, v2, 0x1

    .line 378
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "font_size"

    invoke-static {v10, v11, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 379
    const/4 v10, 0x4

    if-ge v6, v10, :cond_4

    const/4 v10, 0x4

    if-ne v2, v10, :cond_4

    .line 380
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v3, i:Landroid/content/Intent;
    const-string v10, "large_font"

    const/4 v11, 0x1

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 383
    const-string v10, "AccessibilitySettings"

    const-string v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 1"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    .end local v3           #i:Landroid/content/Intent;
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-static {v10}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 393
    .local v5, mSharedPreferences:Landroid/content/SharedPreferences;
    const-string v10, "pref_font_noti"

    const/4 v11, 0x0

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 395
    .local v0, do_not_show_again:Ljava/lang/Boolean;
    const/4 v10, 0x4

    if-ne v2, v10, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_3

    .line 396
    const/4 v10, 0x2

    invoke-virtual {p0, v10}, Lcom/android/settings/AccessibilitySettings;->showDialog(I)V

    .line 398
    :cond_3
    invoke-virtual {p0, p2}, Lcom/android/settings/AccessibilitySettings;->writeFontSizePreference(Ljava/lang/Object;)V

    .line 399
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mFontSizePref:Landroid/preference/ListPreference;

    invoke-virtual {p0, v10}, Lcom/android/settings/AccessibilitySettings;->readFontSizePreference(Landroid/preference/ListPreference;)V

    .line 401
    const/4 v10, 0x1

    goto :goto_0

    .line 384
    .end local v0           #do_not_show_again:Ljava/lang/Boolean;
    .end local v5           #mSharedPreferences:Landroid/content/SharedPreferences;
    :cond_4
    const/4 v10, 0x4

    if-ne v6, v10, :cond_2

    const/4 v10, 0x4

    if-ge v2, v10, :cond_2

    .line 385
    new-instance v3, Landroid/content/Intent;

    const-string v10, "android.settings.FONT_SIZE_CHANGED"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 386
    .restart local v3       #i:Landroid/content/Intent;
    const-string v10, "large_font"

    const/4 v11, 0x0

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 388
    const-string v10, "AccessibilitySettings"

    const-string v11, "android.settings.FONT_SIZE_CHANGED broadcast. extra(large_font) : 0"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 402
    .end local v2           #fontIndex:I
    .end local v3           #i:Landroid/content/Intent;
    .end local v6           #previousIndex:I
    :cond_5
    const-string v10, "screen_timeout"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 403
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 404
    .local v9, value:I
    const-string v10, "AccessibilitySettings"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KEY_SCREEN_TIMEOUT / value = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    int-to-long v10, v9

    invoke-direct {p0, v10, v11}, Lcom/android/settings/AccessibilitySettings;->isInDefaultScreenTimeoutList(J)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 407
    const-string v10, "AccessibilitySettings"

    const-string v11, "isInDefaultScreenTimeoutList = true"

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout_rollback"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_6
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "screen_off_timeout"

    invoke-static {v10, v11, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 417
    int-to-long v10, v9

    invoke-direct {p0, v10, v11}, Lcom/android/settings/AccessibilitySettings;->updateTimeoutPreferenceDescription(J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 421
    :goto_3
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mScreenTimeoutPreference:Landroid/preference/ListPreference;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 423
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f0a0007

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 424
    iget-object v10, p0, Lcom/android/settings/AccessibilitySettings;->mLockAfter:Landroid/preference/ListPreference;

    const v11, 0x7f0a0008

    invoke-virtual {v10, v11}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 426
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 427
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    .line 439
    .end local v9           #value:I
    :cond_7
    :goto_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 410
    .restart local v9       #value:I
    :catch_0
    move-exception v1

    .line 411
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v10, "AccessibilitySettings"

    const-string v11, "could not persist screen timeout setting"

    invoke-static {v10, v11, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 418
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 419
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v10, "AccessibilitySettings"

    const-string v11, "could not persist screen timeout setting"

    invoke-static {v10, v11, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 428
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local v9           #value:I
    .restart local p2
    :cond_8
    const-string v10, "lock_after_timeout"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 429
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 431
    .local v8, timeout:I
    :try_start_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "lock_screen_lock_after_timeout"

    invoke-static {v10, v11, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 436
    :goto_5
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->setupLockAfterPreference()V

    .line 437
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateLockAfterPreferenceSummary()V

    goto :goto_4

    .line 433
    :catch_2
    move-exception v1

    .line 434
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v10, "SecuritySettings"

    const-string v11, "could not persist lockAfter timeout setting"

    invoke-static {v10, v11, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 9
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 483
    const-string v7, "AccessibilitySettings"

    const-string v8, "onPreferenceTreeClick : "

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 485
    check-cast p2, Landroid/preference/CheckBoxPreference;

    .end local p2
    invoke-virtual {p2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    .line 492
    .local v3, isChecked:Z
    if-ne v3, v5, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "proximity_sensor"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 497
    .local v1, currntProximitySensor:I
    if-nez v1, :cond_0

    .line 499
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    .line 500
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mAlertDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090a3b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1040014

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x1010355

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09055d

    new-instance v8, Lcom/android/settings/AccessibilitySettings$6;

    invoke-direct {v8, p0}, Lcom/android/settings/AccessibilitySettings$6;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f09055e

    new-instance v8, Lcom/android/settings/AccessibilitySettings$5;

    invoke-direct {v8, p0}, Lcom/android/settings/AccessibilitySettings$5;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v6, v7, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    new-instance v7, Lcom/android/settings/AccessibilitySettings$4;

    invoke-direct {v7, p0}, Lcom/android/settings/AccessibilitySettings$4;-><init>(Lcom/android/settings/AccessibilitySettings;)V

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 616
    .end local v1           #currntProximitySensor:I
    .end local v3           #isChecked:Z
    :goto_0
    return v5

    .line 531
    .restart local v1       #currntProximitySensor:I
    .restart local v3       #isChecked:Z
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "incall_power_button_behavior"

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 534
    iput-boolean v5, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 535
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v7, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 538
    .end local v1           #currntProximitySensor:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "incall_power_button_behavior"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 541
    iput-boolean v6, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    .line 542
    iget-object v6, p0, Lcom/android/settings/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v7, p0, Lcom/android/settings/AccessibilitySettings;->endPowerKeyEndChecked:Z

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 545
    .end local v3           #isChecked:Z
    .restart local p2
    :cond_2
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreenPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 546
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleAutoRotateScreenPreferenceClick()V

    goto :goto_0

    .line 548
    :cond_3
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleAutoRotateScreen2ndPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 549
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleAutoRotateScreen2ndPreferenceClick()V

    goto :goto_0

    .line 551
    :cond_4
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mToggleSpeakPasswordPreference:Landroid/preference/CheckBoxPreference;

    if-ne v7, p2, :cond_6

    .line 552
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->handleToggleSpeakPasswordPreferenceClick()V

    .line 616
    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v5

    goto :goto_0

    .line 553
    :cond_6
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 554
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 555
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "high_contrast"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 556
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_1

    .line 558
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "high_contrast"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 559
    invoke-static {v6}, Lcom/sec/android/hardware/SecHardwareInterface;->setmDNIeNegative(Z)Z

    goto :goto_1

    .line 561
    :cond_8
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 562
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 563
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "screen_zoom"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 565
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "screen_zoom"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 567
    :cond_a
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 568
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "torch_light"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    const/4 v5, 0x1

    :try_start_0
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 572
    :catch_0
    move-exception v2

    .line 573
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "AccessibilitySettings"

    const-string v6, "could not turn on torch light"

    invoke-static {v5, v6, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 576
    .end local v2           #e:Ljava/lang/Exception;
    :cond_b
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "torch_light"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 578
    const/4 v5, 0x0

    :try_start_1
    invoke-static {v5}, Lcom/sec/android/hardware/SecHardwareInterface;->setTorchLight(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 579
    :catch_1
    move-exception v2

    .line 580
    .restart local v2       #e:Ljava/lang/Exception;
    const-string v5, "AccessibilitySettings"

    const-string v6, "could not turn off torch light"

    invoke-static {v5, v6, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 583
    .end local v2           #e:Ljava/lang/Exception;
    :cond_c
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 584
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.settings.MONO_AUDIO_CHANGED"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 585
    .local v4, mono_intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 586
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "mono_audio_db"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 587
    const-string v6, "mono"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    const-string v5, "AccessibilitySettings"

    const-string v6, "Mono Audio broadcast"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 589
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "mono_audio_db"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 590
    const-string v5, "mono"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2

    .line 594
    .end local v4           #mono_intent:Landroid/content/Intent;
    :cond_e
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 595
    new-instance v0, Landroid/content/Intent;

    const-string v7, "android.settings.ALL_SOUND_MUTE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 596
    .local v0, all_sound_off_intent:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "all_sound_off"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 598
    const-string v6, "mute"

    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    const-string v5, "AccessibilitySettings"

    const-string v6, "All sound off broadcast"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 600
    :cond_f
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "all_sound_off"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 601
    const-string v5, "mute"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_3

    .line 605
    .end local v0           #all_sound_off_intent:Landroid/content/Intent;
    :cond_10
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 606
    iget-object v7, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v7}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 607
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "power_key_hold"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 609
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "power_key_hold"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_1

    .line 611
    :cond_12
    iget-object v5, p0, Lcom/android/settings/AccessibilitySettings;->mCallAnsweringEnding:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v5, v6

    .line 613
    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 316
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 317
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->loadInstalledServices()V

    .line 318
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->updateAllPreferences()V

    .line 319
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mServicesCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mNoServicesMessagePreference:Landroid/preference/Preference;

    if-ne v0, v3, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/android/settings/AccessibilitySettings;->offerInstallAccessibilitySerivceOnce()V

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Z)V

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0c0005

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 325
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mHighContrastCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "high_contrast"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 327
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mScreenZoomCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "screen_zoom"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 329
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mTorchLightCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "torch_light"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 331
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mMonoAudioCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "mono_audio_db"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 333
    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mAllSoundOffCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "all_sound_off"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 335
    iget-object v0, p0, Lcom/android/settings/AccessibilitySettings;->mPowerKeyHold:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "power_key_hold"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v1

    :cond_1
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mRotationObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 343
    iget-boolean v0, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v0, :cond_3

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accelerometer_rotation_second"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/AccessibilitySettings;->mRotation2ndObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 348
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 325
    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 327
    goto :goto_1

    :cond_6
    move v0, v2

    .line 329
    goto :goto_2

    :cond_7
    move v0, v2

    .line 331
    goto :goto_3

    :cond_8
    move v0, v2

    .line 333
    goto :goto_4
.end method

.method public readFontSizePreference(Landroid/preference/ListPreference;)V
    .locals 7
    .parameter

    .prologue
    const/4 v0, 0x4

    const/4 v6, 0x0

    .line 840
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :goto_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    invoke-virtual {p0, v1}, Lcom/android/settings/AccessibilitySettings;->floatToIndex(F)I

    move-result v1

    .line 848
    const-string v2, "AccessibilitySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFontSizePreference : font index : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "font_size"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 850
    const-string v3, "AccessibilitySettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readFontSizePreference : Settings.System.FONT_SIZE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    if-ne v2, v0, :cond_1

    .line 853
    const-string v1, "AccessibilitySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readFontSizePreference : Extra large font. index : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    :goto_1
    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 858
    iget-boolean v1, p0, Lcom/android/settings/AccessibilitySettings;->mSupportFolderType:Z

    if-eqz v1, :cond_0

    .line 859
    add-int/lit8 v0, v0, 0x1

    .line 863
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 864
    const v2, 0x7f0a000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 865
    const v3, 0x7f0903eb

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v0, v2, v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 867
    return-void

    .line 841
    :catch_0
    move-exception v1

    .line 842
    const-string v1, "AccessibilitySettings"

    const-string v2, "Unable to retrieve font size"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public writeFontSizePreference(Ljava/lang/Object;)V
    .locals 4
    .parameter

    .prologue
    .line 872
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 873
    const-string v1, "AccessibilitySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : fontScale : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/high16 v1, 0x3fc0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 875
    const v0, 0x3fa66666

    .line 876
    const-string v1, "AccessibilitySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeFontSizePreference : Extra large font. fontScale changed to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    iput v0, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 881
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/AccessibilitySettings;->mCurConfig:Landroid/content/res/Configuration;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 886
    :goto_0
    return-void

    .line 883
    :catch_0
    move-exception v0

    .line 884
    const-string v0, "AccessibilitySettings"

    const-string v1, "Unable to save font size"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
