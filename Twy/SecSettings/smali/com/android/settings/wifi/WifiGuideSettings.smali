.class public Lcom/android/settings/wifi/WifiGuideSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiGuideSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiGuideSettings$OnCloseHelpDialogListener;
    }
.end annotation


# static fields
.field private static mWifiSettings:Lcom/android/settings/wifi/WifiGuideSettings;


# instance fields
.field private mClosed:Z

.field private mConnecting:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field protected mEmptyScanResultCount:I

.field private mFirstStart:Z

.field private mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

.field protected mIsInWifiGuideMode:Z

.field private mRestorePrevDialog:I

.field protected mScanButtonEnabled:Z

.field private mShowedDialog:I

.field private onCloseHelpDialogListener:Lcom/android/settings/wifi/WifiGuideSettings$OnCloseHelpDialogListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mIsInWifiGuideMode:Z

    .line 38
    iput-object v1, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mHelpDialog:Lcom/sec/android/touchwiz/widget/TwHelpDialog;

    .line 41
    iput v2, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mShowedDialog:I

    .line 42
    iput v2, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mRestorePrevDialog:I

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mClosed:Z

    .line 46
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mFirstStart:Z

    .line 47
    iput-boolean v3, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mConnecting:Z

    .line 48
    iput v0, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mEmptyScanResultCount:I

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mScanButtonEnabled:Z

    .line 51
    iput-object v1, p0, Lcom/android/settings/wifi/WifiGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/wifi/WifiGuideSettings$OnCloseHelpDialogListener;

    .line 52
    iput-object v1, p0, Lcom/android/settings/wifi/WifiGuideSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 349
    return-void
.end method


# virtual methods
.method protected handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 301
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sput-object p0, Lcom/android/settings/wifi/WifiGuideSettings;->mWifiSettings:Lcom/android/settings/wifi/WifiGuideSettings;

    .line 71
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 80
    return-void
.end method
