.class public Lcom/android/settings/cpa/CpaNotiReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CpaNotiReceiver.java"


# static fields
.field private static final DEFAULTAPN_URI:Landroid/net/Uri;

.field public static MODE_CPA:Ljava/lang/String;

.field public static MODE_DEFAULT:Ljava/lang/String;

.field public static MODE_NAVI:Ljava/lang/String;

.field private static final PREFERAPN_URI:Landroid/net/Uri;

.field private static mNotiManager:Landroid/app/NotificationManager;

.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private final IS_CPA:Ljava/lang/String;

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-string v0, "NAVI"

    sput-object v0, Lcom/android/settings/cpa/CpaNotiReceiver;->MODE_NAVI:Ljava/lang/String;

    .line 48
    const-string v0, "DEFAULT"

    sput-object v0, Lcom/android/settings/cpa/CpaNotiReceiver;->MODE_DEFAULT:Ljava/lang/String;

    .line 49
    const-string v0, "DEFAULT_ON_CPA"

    sput-object v0, Lcom/android/settings/cpa/CpaNotiReceiver;->MODE_CPA:Ljava/lang/String;

    .line 98
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

    sput-object v0, Lcom/android/settings/cpa/CpaNotiReceiver;->sProjection:[Ljava/lang/String;

    .line 127
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cpa/CpaNotiReceiver;->DEFAULTAPN_URI:Landroid/net/Uri;

    .line 128
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/cpa/CpaNotiReceiver;->PREFERAPN_URI:Landroid/net/Uri;

    .line 142
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/cpa/CpaNotiReceiver;->mNotiManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 40
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 130
    iput v0, p0, Lcom/android/settings/cpa/CpaNotiReceiver;->mState:I

    .line 137
    iput-boolean v0, p0, Lcom/android/settings/cpa/CpaNotiReceiver;->DEBUG:Z

    .line 140
    const-string v0, "isCPA"

    iput-object v0, p0, Lcom/android/settings/cpa/CpaNotiReceiver;->IS_CPA:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 147
    return-void
.end method
