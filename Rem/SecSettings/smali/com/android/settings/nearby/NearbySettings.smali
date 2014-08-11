.class public Lcom/android/settings/nearby/NearbySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;,
        Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;,
        Lcom/android/settings/nearby/NearbySettings$HandleAcceptDevice;,
        Lcom/android/settings/nearby/NearbySettings$HandleAllowUpload;,
        Lcom/android/settings/nearby/NearbySettings$HandleShareContentType;,
        Lcom/android/settings/nearby/NearbySettings$HandleServerName;,
        Lcom/android/settings/nearby/NearbySettings$HandleServerStart;,
        Lcom/android/settings/nearby/NearbySettings$HandleSetUploadPath;
    }
.end annotation


# static fields
.field protected static mStorageManager:Landroid/os/storage/StorageManager;

.field protected static mStorageVolumes:[Landroid/os/storage/StorageVolume;


# instance fields
.field private final SHARE_VALUE_MUSIC:Ljava/lang/String;

.field private final SHARE_VALUE_PHOTOS:Ljava/lang/String;

.field private final SHARE_VALUE_VIDEOS:Ljava/lang/String;

.field private bAutoStart:Z

.field private bDBCanceled:Z

.field private bDBUpdated:Z

.field private bFunctionState:Z

.field private bInitPreference:Z

.field private bRegisterReceiver:Z

.field private bSelfFinish:Z

.field private bWifiPopupShown:Z

.field private dialogTime:J

.field private mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDeviceName:Landroid/preference/EditTextPreference;

.field private mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

.field private mDownloadFrom:Landroid/preference/ListPreference;

.field private mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

.field private mFunctionOnoff:Landroid/preference/CheckBoxPreference;

.field private mHandler:Landroid/os/Handler;

.field private mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

.field private mPreferenceChangeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/preference/Preference$OnPreferenceChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceChangeThread:Landroid/os/HandlerThread;

.field private mPreferenceChangeWorker:Landroid/os/Handler;

.field private mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

.field private mSharedContents:Landroid/preference/MultiSelectListPreference;

.field private mSharedContentsValue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    .line 93
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->SHARE_VALUE_VIDEOS:Ljava/lang/String;

    .line 94
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->SHARE_VALUE_PHOTOS:Ljava/lang/String;

    .line 95
    const-string v0, "2"

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->SHARE_VALUE_MUSIC:Ljava/lang/String;

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    .line 125
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    .line 131
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z

    .line 132
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z

    .line 133
    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bDBCanceled:Z

    .line 134
    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 135
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/nearby/NearbySettings;->dialogTime:J

    .line 138
    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 139
    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    .line 157
    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    .line 159
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    .line 162
    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    .line 163
    new-instance v0, Lcom/android/settings/nearby/NearbySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$1;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    .line 902
    new-instance v0, Lcom/android/settings/nearby/NearbySettings$10;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$10;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1181
    new-instance v0, Lcom/android/settings/nearby/NearbySettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/nearby/NearbySettings$11;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    .line 1867
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/IMediaServer;)Lcom/android/settings/nearby/IMediaServer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bDBCanceled:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/Preference;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/nearby/NearbySettings;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/DownloadListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/AcceptListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/RejectListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/settings/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->refreshPreferenceValues()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/nearby/NearbySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWelcomePopup()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/settings/nearby/NearbySettings;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/android/settings/nearby/NearbySettings;->dialogTime:J

    return-wide v0
.end method

.method static synthetic access$2102(Lcom/android/settings/nearby/NearbySettings;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/android/settings/nearby/NearbySettings;->dialogTime:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/settings/nearby/NearbySettings;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/android/settings/nearby/NearbySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/settings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/settings/nearby/NearbySettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z

    return v0
.end method

.method static synthetic access$2502(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/nearby/NearbySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/settings/nearby/NearbySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    return p1
.end method

.method private checkDeviceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 1132
    .line 1136
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 1138
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 1141
    :try_start_1
    invoke-interface {v0}, Landroid/view/IWindowManager;->canStatusBarHide()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1143
    const-string v0, "[Mobile]"
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1155
    :goto_0
    if-eqz p1, :cond_1

    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    .line 1178
    :goto_1
    return-object v0

    .line 1147
    :cond_0
    :try_start_3
    const-string v0, "[Tablet]"
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 1150
    :catch_0
    move-exception v0

    .line 1152
    :try_start_4
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: exception on wm.canStatusBarHide(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_0

    .line 1162
    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1168
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090a1e

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    goto :goto_1

    .line 1172
    :catch_1
    move-exception v0

    .line 1174
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: checkDeviceName(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, p1

    goto :goto_1
.end method

.method private initChangePreferenceHandler()V
    .locals 5

    .prologue
    .line 295
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: initChangePreferenceHandler"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_onoff"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleServerStart;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleServerStart;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_shared_contents"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleShareContentType;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleShareContentType;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_device_name"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleServerName;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleServerName;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_from"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleAllowUpload;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$HandleAllowUpload;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_download_to"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleSetUploadPath;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/settings/nearby/NearbySettings$HandleSetUploadPath;-><init>(Lcom/android/settings/nearby/NearbySettings;Lcom/android/settings/nearby/NearbySettings$1;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_accept_device"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleAcceptDevice;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$HandleAcceptDevice;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    const-string v2, "allshare_reject_device"

    new-instance v3, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;

    invoke-direct {v3, p0}, Lcom/android/settings/nearby/NearbySettings$HandleRejectDevice;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :goto_0
    return-void

    .line 308
    :catch_0
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initChangePreferenceHandler() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initPreferences()V
    .locals 4

    .prologue
    .line 607
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: initPreferences()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 613
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/settings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    return-void

    .line 619
    :catch_0
    move-exception v0

    .line 621
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: initPreferences() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private refreshPreference(Landroid/preference/Preference;)V
    .locals 2
    .parameter "preference"

    .prologue
    .line 838
    if-nez p1, :cond_0

    .line 845
    :goto_0
    return-void

    .line 841
    :cond_0
    invoke-virtual {p1}, Landroid/preference/Preference;->isEnabled()Z

    move-result v0

    .line 843
    .local v0, value:Z
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 844
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 843
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private refreshPreferenceValues()V
    .locals 4

    .prologue
    .line 649
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1, v2}, Landroid/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    .line 650
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v2}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->checkDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 651
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    invoke-virtual {v2}, Lcom/android/settings/nearby/DownloadListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/nearby/DownloadListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    :goto_0
    return-void

    .line 656
    :catch_0
    move-exception v0

    .line 658
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: refreshPreferenceValues() preference variable :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V
    .locals 9
    .parameter "preferenceGroup"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p2, currentPreference:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: registerPreferenceChangeListener"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p1, p0}, Landroid/preference/PreferenceGroup;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 211
    invoke-virtual {p1}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .line 213
    .local v2, nCount:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v2, :cond_8

    .line 215
    invoke-virtual {p1, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v3

    .line 217
    .local v3, preference:Landroid/preference/Preference;
    if-eqz v3, :cond_2

    .line 219
    invoke-virtual {v3, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    invoke-virtual {v3}, Landroid/preference/Preference;->hasKey()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 224
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 227
    .local v5, value:Ljava/lang/Object;
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_onoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v5, :cond_3

    .line 229
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Preference Init OFF"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 231
    const/4 v5, 0x0

    .line 281
    .end local v5           #value:Ljava/lang/Object;
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 282
    invoke-virtual {p0, v3, v5}, Lcom/android/settings/nearby/NearbySettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z

    .line 285
    :cond_1
    instance-of v6, v3, Landroid/preference/PreferenceGroup;

    if-eqz v6, :cond_2

    .line 287
    check-cast v3, Landroid/preference/PreferenceGroup;

    .end local v3           #preference:Landroid/preference/Preference;
    invoke-direct {p0, v3, p2}, Lcom/android/settings/nearby/NearbySettings;->registerPreferenceChangeListener(Landroid/preference/PreferenceGroup;Ljava/util/Map;)V

    .line 213
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .restart local v3       #preference:Landroid/preference/Preference;
    .restart local v5       #value:Ljava/lang/Object;
    :cond_3
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_onoff"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v5

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 238
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v6}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v6

    if-nez v6, :cond_4

    .line 240
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Function Init OFF"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 243
    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v6}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 244
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .local v5, value:Ljava/lang/Boolean;
    goto :goto_1

    .line 248
    .local v5, value:Ljava/lang/Object;
    :cond_4
    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v8}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 251
    :catch_0
    move-exception v0

    .line 253
    .local v0, e:Landroid/os/RemoteException;
    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_1

    .line 257
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_5
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_device_name"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    if-nez v5, :cond_7

    .line 259
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 261
    const-string v6, "AllshareSetting"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AllshareSetting: Set Default Device Name :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 263
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 267
    .local v5, value:Ljava/lang/Object;
    :cond_6
    const v6, 0x7f090a1e

    invoke-virtual {p0, v6}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 268
    .local v5, value:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 271
    .local v5, value:Ljava/lang/Object;
    :cond_7
    invoke-virtual {v3}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "allshare_shared_contents"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-nez v5, :cond_0

    .line 273
    const-string v6, "AllshareSetting"

    const-string v7, "AllshareSetting: Share Contents Init"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 275
    .local v4, temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string v6, "0"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 276
    const-string v6, "1"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 277
    const-string v6, "2"

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 278
    move-object v5, v4

    .local v5, value:Ljava/util/HashSet;
    goto/16 :goto_1

    .line 291
    .end local v3           #preference:Landroid/preference/Preference;
    .end local v4           #temp:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v5           #value:Ljava/util/HashSet;
    :cond_8
    return-void
.end method

.method private requestDBUpdatedPopup()V
    .locals 4

    .prologue
    .line 734
    :try_start_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    .line 736
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090a1e

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 737
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090a29

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 738
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f090a15

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nearby/NearbySettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbySettings$5;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ProgressDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/android/settings/nearby/NearbySettings$6;

    invoke-direct {v1, p0}, Lcom/android/settings/nearby/NearbySettings$6;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 766
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 769
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/nearby/NearbySettings;->dialogTime:J

    .line 773
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z

    if-eqz v0, :cond_0

    .line 775
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: Auto start DMS!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    :cond_0
    :goto_0
    return-void

    .line 778
    :catch_0
    move-exception v0

    .line 780
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: requestDBUpdatedPopup() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWelcomePopup()V
    .locals 5

    .prologue
    .line 789
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 790
    const v1, 0x7f07000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 791
    const v0, 0x7f0b03ae

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 793
    new-instance v2, Lcom/android/settings/nearby/NearbySettings$7;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/nearby/NearbySettings$7;-><init>(Lcom/android/settings/nearby/NearbySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 803
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f090a1e

    invoke-virtual {p0, v3}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090a14

    new-instance v4, Lcom/android/settings/nearby/NearbySettings$9;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/nearby/NearbySettings$9;-><init>(Lcom/android/settings/nearby/NearbySettings;Landroid/widget/CheckBox;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/nearby/NearbySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbySettings$8;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 834
    :goto_0
    return-void

    .line 829
    :catch_0
    move-exception v0

    .line 831
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on requestWelcomePopup"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private requestWifiSettingPopup()V
    .locals 4

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    if-nez v0, :cond_0

    .line 694
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: requestWifiSettingPopup()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bWifiPopupShown:Z

    .line 700
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090a1e

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a16

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090a14

    new-instance v2, Lcom/android/settings/nearby/NearbySettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/nearby/NearbySettings$4;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/nearby/NearbySettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/nearby/NearbySettings$3;-><init>(Lcom/android/settings/nearby/NearbySettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 726
    :cond_0
    :goto_0
    return-void

    .line 720
    :catch_0
    move-exception v0

    .line 722
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: requestWifiSettingPopup() :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setBroadcastReceiver()V
    .locals 4

    .prologue
    .line 849
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: setBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-nez v0, :cond_0

    .line 854
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 855
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "WIFI_P2P_CONNECTION_CHANGED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 856
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 858
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.REFRESH"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 859
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.sec.android.nearby.mediaserver.REFRESH_DEVICE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 861
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.UPDATE_LIST"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 862
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.SERVER_STATE_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 865
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.SERVER_DB_UPDATE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 866
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.settings.allshare.ACTIVITY_START"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 868
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 869
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 870
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 871
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 872
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 873
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 874
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 876
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 883
    :cond_0
    :goto_0
    return-void

    .line 879
    :catch_0
    move-exception v0

    .line 881
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on setBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private unregisterBroadcastReceiver()V
    .locals 4

    .prologue
    .line 887
    const-string v0, "AllshareSetting"

    const-string v1, "AllshareSetting: unregisterBroadcastReceiver()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z

    if-eqz v0, :cond_0

    .line 892
    iget-object v0, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/nearby/NearbySettings;->bRegisterReceiver:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 900
    :cond_0
    :goto_0
    return-void

    .line 896
    :catch_0
    move-exception v0

    .line 898
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: Exception on unregisterBroadcastReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public isExternalStorageSdMounted()Z
    .locals 5

    .prologue
    .line 629
    const/4 v1, 0x0

    .line 633
    .local v1, value:Z
    :try_start_0
    sget-object v2, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v3, Lcom/android/settings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 641
    :goto_0
    return v1

    .line 635
    :catch_0
    move-exception v0

    .line 637
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: isExternalStorageSdMounted() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 594
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 603
    :goto_0
    return-void

    .line 599
    :catch_0
    move-exception v0

    .line 601
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AllshareSetting: onActivityCreated():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 318
    invoke-super/range {p0 .. p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 320
    const-string v17, "AllshareSetting"

    const-string v18, "AllshareSetting: onCreate"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v17

    const-string v18, "pref_allshare"

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 325
    const v17, 0x7f070009

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->addPreferencesFromResource(I)V

    .line 327
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const v18, 0x7f090a17

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x37

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/nearby/NearbySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    .line 333
    :try_start_0
    const-string v17, "allshare_onoff"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/CheckBoxPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 336
    const-string v17, "allshare_shared_contents"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/MultiSelectListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mSharedContents:Landroid/preference/MultiSelectListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c7

    invoke-virtual/range {v17 .. v18}, Landroid/preference/MultiSelectListPreference;->setWidgetLayoutResource(I)V

    .line 339
    const-string v17, "allshare_device_name"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/EditTextPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c7

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setWidgetLayoutResource(I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090a1b

    invoke-virtual/range {v17 .. v18}, Landroid/preference/EditTextPreference;->setPositiveButtonText(I)V

    .line 343
    new-instance v17, Lcom/android/settings/nearby/EditTextWatcher;

    invoke-direct/range {v17 .. v17}, Lcom/android/settings/nearby/EditTextWatcher;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v10

    .line 346
    .local v10, edit:Landroid/widget/EditText;
    if-eqz v10, :cond_2

    .line 348
    const/16 v17, 0x4001

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 349
    invoke-virtual {v10}, Landroid/widget/EditText;->requestFocus()Z

    .line 350
    new-instance v17, Lcom/android/settings/nearby/NearbySettings$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v10}, Lcom/android/settings/nearby/NearbySettings$2;-><init>(Lcom/android/settings/nearby/NearbySettings;Landroid/widget/EditText;)V

    const-wide/16 v18, 0x64

    move-object/from16 v0, v17

    move-wide/from16 v1, v18

    invoke-virtual {v10, v0, v1, v2}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v7

    .line 360
    .local v7, dialog:Landroid/app/Dialog;
    instance-of v0, v7, Landroid/app/AlertDialog;

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 362
    const/16 v16, 0x0

    .line 363
    .local v16, spaceNum:I
    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v14

    .line 364
    .local v14, length:I
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 366
    .local v6, deviceName:Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v14, :cond_1

    .line 368
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    move-result v17

    const/16 v18, 0x20

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    .line 370
    add-int/lit8 v16, v16, 0x1

    .line 366
    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 374
    :cond_1
    check-cast v7, Landroid/app/AlertDialog;

    .end local v7           #dialog:Landroid/app/Dialog;
    const/16 v17, -0x1

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 375
    .local v4, btn:Landroid/widget/Button;
    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/text/Editable;->length()I

    move-result v17

    if-lez v17, :cond_5

    move/from16 v0, v16

    if-eq v14, v0, :cond_5

    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 383
    .end local v4           #btn:Landroid/widget/Button;
    .end local v6           #deviceName:Ljava/lang/String;
    .end local v11           #i:I
    .end local v14           #length:I
    .end local v16           #spaceNum:I
    :cond_2
    const-string v17, "allshare_download_to"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/nearby/DownloadListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c7

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/DownloadListPreference;->setWidgetLayoutResource(I)V

    .line 386
    const-string v17, "allshare_download_from"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Landroid/preference/ListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDownloadFrom:Landroid/preference/ListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c7

    invoke-virtual/range {v17 .. v18}, Landroid/preference/ListPreference;->setWidgetLayoutResource(I)V

    .line 392
    const-string v17, "allshare_accept_device"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/nearby/AcceptListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c7

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/AcceptListPreference;->setWidgetLayoutResource(I)V

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090a1c

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/AcceptListPreference;->setPositiveButtonText(I)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/AcceptListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 397
    const-string v17, "allshare_reject_device"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    check-cast v17, Lcom/android/settings/nearby/RejectListPreference;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f0400c7

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/RejectListPreference;->setWidgetLayoutResource(I)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    move-object/from16 v17, v0

    const v18, 0x7f090a1c

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/RejectListPreference;->setPositiveButtonText(I)V

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/RejectListPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v10           #edit:Landroid/widget/EditText;
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->initChangePreferenceHandler()V

    .line 415
    :try_start_1
    new-instance v12, Landroid/content/Intent;

    const-string v17, "com.sec.android.nearby.MediaServer.START"

    move-object/from16 v0, v17

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 416
    .local v12, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v12, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 426
    .end local v12           #intent:Landroid/content/Intent;
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 431
    :try_start_2
    new-instance v17, Landroid/os/HandlerThread;

    const-string v18, "Preference Change Worker"

    invoke-direct/range {v17 .. v18}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/os/HandlerThread;->start()V

    .line 433
    new-instance v17, Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeThread:Landroid/os/HandlerThread;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 442
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->setBroadcastReceiver()V

    .line 447
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "storage"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/storage/StorageManager;

    sput-object v17, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 448
    sget-object v17, Lcom/android/settings/nearby/NearbySettings;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual/range {v17 .. v17}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v17

    sput-object v17, Lcom/android/settings/nearby/NearbySettings;->mStorageVolumes:[Landroid/os/storage/StorageVolume;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mDownloadTo:Lcom/android/settings/nearby/DownloadListPreference;

    move-object/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/settings/nearby/DownloadListPreference;->setIsExternalMounted(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 461
    :goto_5
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 462
    .local v3, activity:Landroid/app/Activity;
    instance-of v0, v3, Landroid/preference/PreferenceActivity;

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 464
    move-object v0, v3

    check-cast v0, Landroid/preference/PreferenceActivity;

    move-object v15, v0

    .line 465
    .local v15, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v15}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v17

    if-nez v17, :cond_3

    invoke-virtual {v15}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v17

    if-nez v17, :cond_4

    .line 467
    :cond_3
    invoke-virtual {v3}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v17

    const v18, 0x7f090a1e

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/settings/nearby/NearbySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 477
    .end local v3           #activity:Landroid/app/Activity;
    .end local v15           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_4
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getFlags()I

    move-result v5

    .line 478
    .local v5, currentFlag:I
    new-instance v13, Landroid/content/Intent;

    const-string v17, "com.android.settings.allshare.ACTIVITY_START"

    move-object/from16 v0, v17

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 479
    .local v13, intentStart:Landroid/content/Intent;
    const-string v17, "FLAG"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 481
    return-void

    .line 375
    .end local v5           #currentFlag:I
    .end local v13           #intentStart:Landroid/content/Intent;
    .restart local v4       #btn:Landroid/widget/Button;
    .restart local v6       #deviceName:Ljava/lang/String;
    .restart local v10       #edit:Landroid/widget/EditText;
    .restart local v11       #i:I
    .restart local v14       #length:I
    .restart local v16       #spaceNum:I
    :cond_5
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 403
    .end local v4           #btn:Landroid/widget/Button;
    .end local v6           #deviceName:Ljava/lang/String;
    .end local v10           #edit:Landroid/widget/EditText;
    .end local v11           #i:I
    .end local v14           #length:I
    .end local v16           #spaceNum:I
    :catch_0
    move-exception v8

    .line 405
    .local v8, e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 419
    .end local v8           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v9

    .line 421
    .local v9, e1:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() bind service:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 435
    .end local v9           #e1:Ljava/lang/Exception;
    :catch_2
    move-exception v8

    .line 437
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() Thread :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 452
    .end local v8           #e:Ljava/lang/Exception;
    :catch_3
    move-exception v8

    .line 454
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() storage :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    .line 471
    .end local v8           #e:Ljava/lang/Exception;
    :catch_4
    move-exception v8

    .line 473
    .restart local v8       #e:Ljava/lang/Exception;
    const-string v17, "AllshareSetting"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "AllshareSetting: onCreate() Title :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_6
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 486
    const-string v2, "AllshareSetting"

    const-string v3, "AllshareSetting: onDestroy"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 493
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 494
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 497
    :cond_0
    iget-boolean v2, p0, Lcom/android/settings/nearby/NearbySettings;->bSelfFinish:Z

    if-nez v2, :cond_1

    .line 499
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.nearby.mediaserver.STOP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 500
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 504
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->unregisterBroadcastReceiver()V

    .line 507
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    if-eqz v2, :cond_2

    .line 508
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 516
    :cond_2
    :goto_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 517
    return-void

    .line 510
    :catch_0
    move-exception v0

    .line 512
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: onDestroy() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 574
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: onPause()"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 577
    .local v0, intentFlag:Landroid/content/Intent;
    const-string v1, "FLAG"

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 578
    const-string v1, "SCREEN"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 582
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1298
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 1300
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Preference Changed: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string v1, "allshare_onoff"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, p2

    .line 1305
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 1306
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    if-ne v1, v6, :cond_0

    .line 1308
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AllshareSetting: Duplicated on/off message: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1596
    :goto_0
    return v1

    .line 1311
    :cond_0
    iput-boolean v6, p0, Lcom/android/settings/nearby/NearbySettings;->bFunctionState:Z

    .line 1313
    const-string v1, "wifi"

    invoke-virtual {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1314
    const-string v2, "wifip2p"

    invoke-virtual {p0, v2}, Lcom/android/settings/nearby/NearbySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pManager;

    .line 1317
    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-eqz p2, :cond_8

    .line 1319
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1321
    invoke-virtual {v1, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 1322
    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v7

    move-object v1, p2

    .line 1325
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_a

    .line 1328
    if-eqz v2, :cond_4

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1331
    if-eqz v7, :cond_2

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v8

    invoke-virtual {v1, v8}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1333
    const-string v1, "AllshareSetting"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: Wifi State : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ", WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1336
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1337
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1338
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1340
    :cond_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1342
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1343
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1344
    goto/16 :goto_0

    .line 1347
    :cond_2
    if-nez v7, :cond_a

    .line 1349
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1352
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1353
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1354
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1356
    :cond_3
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1358
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1359
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1360
    goto/16 :goto_0

    .line 1364
    :cond_4
    if-nez v2, :cond_a

    .line 1366
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoWifi is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    if-eqz v7, :cond_6

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1370
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting:  WifiDirect State : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo$DetailedState;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1373
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1374
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1375
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1377
    :cond_5
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1379
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1380
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1381
    goto/16 :goto_0

    .line 1384
    :cond_6
    if-nez v7, :cond_a

    .line 1386
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Wifi State : netInfoP2p is null >> check p2p state"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1389
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 1390
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1391
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 1393
    :cond_7
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0, v1}, Lcom/android/settings/nearby/NearbySettings;->refreshPreference(Landroid/preference/Preference;)V

    .line 1395
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWifiSettingPopup()V

    .line 1396
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    move v1, v4

    .line 1397
    goto/16 :goto_0

    .line 1405
    :cond_8
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Check Wi-Fi State or Function state"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Landroid/preference/CheckBoxPreference;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1408
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Set Enable Function"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    :cond_9
    move v1, v4

    .line 1411
    goto/16 :goto_0

    .line 1417
    :cond_a
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z

    if-nez v1, :cond_b

    if-ne v6, v3, :cond_b

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1419
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z

    .line 1420
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "AutoDMS"

    iget-boolean v6, p0, Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1421
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: DB is NOT updated:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v6, p0, Lcom/android/settings/nearby/NearbySettings;->bDBUpdated:Z

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestDBUpdatedPopup()V

    .line 1423
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    .line 1424
    goto/16 :goto_0

    .line 1428
    :catch_0
    move-exception v1

    .line 1430
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 1436
    :cond_b
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const-string v2, "pref_allshare"

    const/4 v6, 0x0

    invoke-virtual {v1, v2, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1437
    const-string v2, "allshare_welcome_popup"

    const/4 v6, 0x0

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1439
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: HandleServerStart :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1440
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v2}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1442
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Don\'t display the welcome popup"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1499
    :cond_c
    :goto_1
    iget-boolean v1, p0, Lcom/android/settings/nearby/NearbySettings;->bDBCanceled:Z

    if-eqz v1, :cond_f

    .line 1501
    iput-boolean v4, p0, Lcom/android/settings/nearby/NearbySettings;->bDBCanceled:Z

    .line 1571
    :cond_d
    :goto_2
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeMap:Ljava/util/HashMap;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference$OnPreferenceChangeListener;

    .line 1575
    if-eqz v1, :cond_15

    .line 1577
    :try_start_2
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mPreferenceChangeWorker:Landroid/os/Handler;

    new-instance v5, Lcom/android/settings/nearby/NearbySettings$12;

    invoke-direct {v5, p0, v1, p1, p2}, Lcom/android/settings/nearby/NearbySettings$12;-><init>(Lcom/android/settings/nearby/NearbySettings;Landroid/preference/Preference$OnPreferenceChangeListener;Landroid/preference/Preference;Ljava/lang/Object;)V

    invoke-virtual {v2, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1586
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.allshare.REFRESH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1587
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move v1, v3

    .line 1588
    goto/16 :goto_0

    .line 1447
    :cond_e
    if-nez v1, :cond_c

    :try_start_3
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, v3, :cond_c

    .line 1449
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->requestWelcomePopup()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 1493
    :catch_1
    move-exception v1

    .line 1495
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onCreate() Popup Start :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1496
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 1505
    :cond_f
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_2

    .line 1510
    :cond_10
    const-string v1, "allshare_device_name"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    if-eqz p2, :cond_13

    .line 1512
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 1513
    if-lez v1, :cond_11

    const/16 v2, 0x37

    if-le v1, v2, :cond_12

    .line 1515
    :cond_11
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name length error "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1516
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    move v1, v4

    .line 1517
    goto/16 :goto_0

    .line 1522
    :cond_12
    :try_start_4
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v1}, Lcom/android/settings/nearby/IMediaServer;->getMediaServerName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Samsung Mobile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 1524
    const-string v1, "AllshareSetting"

    const-string v2, "AllshareSetting: Device name is same. return"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    move v1, v4

    .line 1525
    goto/16 :goto_0

    .line 1528
    :catch_2
    move-exception v1

    .line 1530
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: mIMediaServer.getMediaServerName()- DeadObjectException"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto/16 :goto_2

    .line 1533
    :catch_3
    move-exception v1

    .line 1535
    const-string v2, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: mIMediaServer.getMediaServerName()"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1536
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    .line 1541
    :cond_13
    const-string v1, "allshare_shared_contents"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz p2, :cond_14

    .line 1544
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 1545
    iget-object v2, p0, Lcom/android/settings/nearby/NearbySettings;->mSharedContentsValue:Ljava/util/HashSet;

    move-object v1, p2

    check-cast v1, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_2

    .line 1563
    :cond_14
    const-string v1, "allshare_download_to"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    if-eqz p2, :cond_d

    .line 1565
    const-string v1, "AllshareSetting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AllshareSetting: value: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const-string v1, "1"

    if-ne p2, v1, :cond_d

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->isExternalStorageSdMounted()Z

    move-result v1

    if-nez v1, :cond_d

    move v1, v4

    .line 1568
    goto/16 :goto_0

    .line 1591
    :catch_4
    move-exception v1

    .line 1593
    const-string v2, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: OnPreference run: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_15
    move v1, v4

    .line 1596
    goto/16 :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 9
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1221
    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    :try_start_0
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_device_name"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1226
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    check-cast p1, Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 1227
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceNameWatcher:Lcom/android/settings/nearby/EditTextWatcher;

    iget-object v4, p0, Lcom/android/settings/nearby/NearbySettings;->mDeviceName:Landroid/preference/EditTextPreference;

    invoke-virtual {v4}, Landroid/preference/EditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v5}, Lcom/android/settings/nearby/EditTextWatcher;->setDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    :goto_0
    move v1, v2

    .line 1291
    :goto_1
    return v1

    .line 1229
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_onoff"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1231
    const-string v1, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ONOFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v1

    .line 1286
    const-string v2, "AllshareSetting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AllshareSetting: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v3

    .line 1288
    goto :goto_1

    .line 1234
    :cond_2
    :try_start_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1237
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_accept_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1239
    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_ACCEPTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mAcceptDevice:Lcom/android/settings/nearby/AcceptListPreference;

    invoke-virtual {v1}, Lcom/android/settings/nearby/AcceptListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 1242
    if-eqz v1, :cond_4

    .line 1244
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 1245
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1247
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 1249
    if-eqz v5, :cond_4

    .line 1251
    new-instance v6, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1252
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1254
    new-instance v5, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1255
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1259
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v4, "allshare_reject_device"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1261
    const-string v1, "AllshareSetting"

    const-string v4, "AllshareSetting: onPreferenceClick(): KEY_ALLSHARE_REJECTED_DEVICE "

    invoke-static {v1, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    iget-object v1, p0, Lcom/android/settings/nearby/NearbySettings;->mRejectDevice:Lcom/android/settings/nearby/RejectListPreference;

    invoke-virtual {v1}, Lcom/android/settings/nearby/RejectListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 1264
    if-eqz v1, :cond_0

    .line 1266
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v4

    .line 1267
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1269
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v5

    .line 1271
    if-eqz v5, :cond_0

    .line 1273
    new-instance v6, Lcom/android/settings/nearby/ListItemListener;

    invoke-direct {v6, v4}, Lcom/android/settings/nearby/ListItemListener;-><init>(Landroid/widget/Button;)V

    .line 1274
    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1276
    new-instance v5, Lcom/android/settings/nearby/DeleteButtonListener;

    iget-object v7, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v1, v7, v8}, Lcom/android/settings/nearby/DeleteButtonListener;-><init>(Lcom/android/settings/nearby/ListItemListener;Landroid/app/Dialog;Landroid/content/Context;Z)V

    .line 1277
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 9

    .prologue
    .line 522
    const-string v5, "AllshareSetting"

    const-string v6, "AllshareSetting: onResume()"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 525
    iget-boolean v5, p0, Lcom/android/settings/nearby/NearbySettings;->bAutoStart:Z

    if-nez v5, :cond_0

    .line 527
    invoke-direct {p0}, Lcom/android/settings/nearby/NearbySettings;->initPreferences()V

    .line 531
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-eqz v5, :cond_0

    .line 533
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    invoke-interface {v5}, Lcom/android/settings/nearby/IMediaServer;->isServerStarted()Z

    move-result v0

    .line 534
    .local v0, bState:Z
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-eq v0, v5, :cond_0

    .line 536
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: Change State: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mFunctionOnoff:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 538
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xbb9

    const-wide/16 v7, 0x64

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 548
    .end local v0           #bState:Z
    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;

    if-nez v5, :cond_1

    .line 553
    :try_start_1
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.sec.android.nearby.MediaServer.START"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 555
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/settings/nearby/NearbySettings;->mConn:Landroid/content/ServiceConnection;

    const/4 v7, 0x0

    invoke-virtual {v5, v3, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 564
    .end local v3           #intent:Landroid/content/Intent;
    :cond_1
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.sec.android.nearby.mediaserver.SET_NEARBY_FLAG"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 565
    .local v4, intentFlag:Landroid/content/Intent;
    const-string v5, "FLAG"

    invoke-virtual {p0}, Lcom/android/settings/nearby/NearbySettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 566
    const-string v5, "SCREEN"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 567
    iget-object v5, p0, Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 569
    return-void

    .line 542
    .end local v4           #intentFlag:Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 544
    .local v2, e1:Landroid/os/RemoteException;
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onResume() change state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 557
    .end local v2           #e1:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 559
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AllshareSetting: onResume() bind service:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "state"

    .prologue
    .line 587
    const-string v0, "AllshareSetting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AllshareSetting: onSaveInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 589
    return-void
.end method
