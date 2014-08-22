.class public Lcom/android/settings/SatelliteView;
.super Landroid/app/Activity;
.source "SatelliteView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SatelliteView$setHandler;,
        Lcom/android/settings/SatelliteView$SatelliteViewView;,
        Lcom/android/settings/SatelliteView$UserGpsSatellite;,
        Lcom/android/settings/SatelliteView$SatComp;
    }
.end annotation


# static fields
.field private static ANIMATION_COUNT:I

.field private static ANIMATION_TIME:I

.field private static CENTER_X:I

.field private static CENTER_Y:I

.field private static CIRCLE_RADIUS:I

.field private static ICON_RADIUS:I

.field private static a:[D

.field static ani_count:I

.field static ani_gap_x:D

.field static ani_gap_y:D

.field private static azimuth:[F

.field private static b:[D

.field private static circlePaint:Landroid/graphics/Paint;

.field private static elevation:[F

.field private static mAltitude:D

.field private static mBearing:F

.field private static mLatitude:D

.field private static mLongitude:D

.field static mNoOfSat:I

.field public static mStartMode:I

.field static mSvInformation:Ljava/lang/String;

.field private static px:[I

.field private static py:[I

.field private static snr:[F


# instance fields
.field private btn_cal:Landroid/widget/Button;

.field private btn_log:Landroid/widget/Button;

.field calendarDate:Ljava/lang/String;

.field private drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

.field private draw_layout:Landroid/widget/LinearLayout;

.field private mAccuracy:F

.field mGpsStatusListener:Landroid/location/GpsStatus$Listener;

.field mHandler:Lcom/android/settings/SatelliteView$setHandler;

.field mLm:Landroid/location/LocationManager;

.field mLoc:Landroid/location/Location;

.field mLocationListener:Landroid/location/LocationListener;

.field mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private mSpeed:D

.field private mTime:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field sv_list:[Landroid/location/GpsSatellite;

.field sv_list_mask:I

.field private text:Landroid/widget/TextView;

.field private ttff:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/16 v1, 0xc

    .line 75
    const/16 v0, 0x1c2

    sput v0, Lcom/android/settings/SatelliteView;->CENTER_X:I

    .line 76
    const/16 v0, 0x21c

    sput v0, Lcom/android/settings/SatelliteView;->CENTER_Y:I

    .line 77
    const/16 v0, 0x25

    sput v0, Lcom/android/settings/SatelliteView;->ICON_RADIUS:I

    .line 78
    const/16 v0, 0xc8

    sput v0, Lcom/android/settings/SatelliteView;->CIRCLE_RADIUS:I

    .line 79
    const/16 v0, 0x64

    sput v0, Lcom/android/settings/SatelliteView;->ANIMATION_TIME:I

    .line 80
    const/16 v0, 0x28

    sput v0, Lcom/android/settings/SatelliteView;->ANIMATION_COUNT:I

    .line 93
    sput-wide v2, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 95
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 97
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 98
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 117
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 118
    const-string v0, " "

    sput-object v0, Lcom/android/settings/SatelliteView;->mSvInformation:Ljava/lang/String;

    .line 120
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/SatelliteView;->azimuth:[F

    .line 121
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/SatelliteView;->elevation:[F

    .line 122
    new-array v0, v1, [F

    sput-object v0, Lcom/android/settings/SatelliteView;->snr:[F

    .line 123
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/SatelliteView;->px:[I

    .line 124
    new-array v0, v1, [I

    sput-object v0, Lcom/android/settings/SatelliteView;->py:[I

    .line 125
    new-array v0, v1, [D

    sput-object v0, Lcom/android/settings/SatelliteView;->a:[D

    .line 126
    new-array v0, v1, [D

    sput-object v0, Lcom/android/settings/SatelliteView;->b:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 64
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 96
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    .line 99
    iput v2, p0, Lcom/android/settings/SatelliteView;->ttff:I

    .line 100
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SatelliteView;->mAccuracy:F

    .line 102
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 105
    iput-object v3, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 106
    iput-object v3, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 108
    iput v2, p0, Lcom/android/settings/SatelliteView;->sv_list_mask:I

    .line 109
    const/16 v0, 0x20

    new-array v0, v0, [Landroid/location/GpsSatellite;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    .line 389
    new-instance v0, Lcom/android/settings/SatelliteView$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$2;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    .line 431
    new-instance v0, Lcom/android/settings/SatelliteView$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$3;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    .line 438
    new-instance v0, Lcom/android/settings/SatelliteView$4;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$4;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    .line 656
    return-void
.end method

.method static synthetic access$100()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->ANIMATION_TIME:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->CENTER_X:I

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->ICON_RADIUS:I

    return v0
.end method

.method static synthetic access$1300()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->CENTER_Y:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->CIRCLE_RADIUS:I

    return v0
.end method

.method static synthetic access$1500()[F
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->snr:[F

    return-object v0
.end method

.method static synthetic access$1600()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->px:[I

    return-object v0
.end method

.method static synthetic access$1700()[I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->py:[I

    return-object v0
.end method

.method static synthetic access$1800()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/settings/SatelliteView;)Lcom/android/settings/SatelliteView$SatelliteViewView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/settings/SatelliteView;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/SatelliteView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/SatelliteView;->ttff:I

    return p1
.end method

.method static synthetic access$2100()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->ANIMATION_COUNT:I

    return v0
.end method

.method static synthetic access$2200(Lcom/android/settings/SatelliteView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/settings/SatelliteView;->diplayCompleted()V

    return-void
.end method

.method static synthetic access$300()D
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/android/settings/SatelliteView;->mLongitude:D

    return-wide v0
.end method

.method static synthetic access$302(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-wide p0, Lcom/android/settings/SatelliteView;->mLongitude:D

    return-wide p0
.end method

.method static synthetic access$400()D
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/android/settings/SatelliteView;->mLatitude:D

    return-wide v0
.end method

.method static synthetic access$402(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-wide p0, Lcom/android/settings/SatelliteView;->mLatitude:D

    return-wide p0
.end method

.method static synthetic access$500()D
    .locals 2

    .prologue
    .line 64
    sget-wide v0, Lcom/android/settings/SatelliteView;->mAltitude:D

    return-wide v0
.end method

.method static synthetic access$502(D)D
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-wide p0, Lcom/android/settings/SatelliteView;->mAltitude:D

    return-wide p0
.end method

.method static synthetic access$600()F
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/settings/SatelliteView;->mBearing:F

    return v0
.end method

.method static synthetic access$602(F)F
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput p0, Lcom/android/settings/SatelliteView;->mBearing:F

    return p0
.end method

.method static synthetic access$700(Lcom/android/settings/SatelliteView;)D
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/settings/SatelliteView;D)D
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    return-wide p1
.end method

.method static synthetic access$802(Lcom/android/settings/SatelliteView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput p1, p0, Lcom/android/settings/SatelliteView;->mAccuracy:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/SatelliteView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 64
    iget-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    return-wide v0
.end method

.method static synthetic access$902(Lcom/android/settings/SatelliteView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/android/settings/SatelliteView;->mTime:J

    return-wide p1
.end method

.method private diplayCompleted()V
    .locals 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 534
    return-void
.end method

.method private init()V
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 150
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/SatelliteView;->startGPS()V

    .line 154
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 155
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 156
    iput-wide v2, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 157
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    .line 158
    sput v5, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 159
    sput-wide v2, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 162
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/16 v0, 0xc

    if-ge v7, v0, :cond_0

    .line 164
    sget-object v0, Lcom/android/settings/SatelliteView;->azimuth:[F

    aput v5, v0, v7

    .line 165
    sget-object v0, Lcom/android/settings/SatelliteView;->elevation:[F

    aput v5, v0, v7

    .line 166
    sget-object v0, Lcom/android/settings/SatelliteView;->snr:[F

    aput v5, v0, v7

    .line 168
    sget-object v0, Lcom/android/settings/SatelliteView;->a:[D

    aput-wide v2, v0, v7

    .line 169
    sget-object v0, Lcom/android/settings/SatelliteView;->b:[D

    aput-wide v2, v0, v7

    .line 170
    sget-object v0, Lcom/android/settings/SatelliteView;->px:[I

    aput v4, v0, v7

    .line 171
    sget-object v0, Lcom/android/settings/SatelliteView;->py:[I

    aput v4, v0, v7

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 174
    :cond_0
    new-instance v6, Ljava/util/Date;

    iget-wide v0, p0, Lcom/android/settings/SatelliteView;->mTime:J

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 175
    .local v6, date:Ljava/util/Date;
    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 178
    const v0, 0x7f0b025d

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    .line 180
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_cal:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    const v0, 0x7f0b025e

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    .line 185
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 189
    const v0, 0x7f0b025b

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    .line 190
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v9}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/settings/SatelliteView;->circlePaint:Landroid/graphics/Paint;

    .line 197
    const v0, 0x7f090c99

    new-array v1, v10, [Ljava/lang/Object;

    sget-wide v2, Lcom/android/settings/SatelliteView;->mAltitude:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    iget-wide v2, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v9

    const/4 v2, 0x2

    sget v3, Lcom/android/settings/SatelliteView;->mBearing:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 198
    .local v8, sSatelliteResult:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    new-instance v0, Lcom/android/settings/SatelliteView$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$1;-><init>(Lcom/android/settings/SatelliteView;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mTimerTask:Ljava/util/TimerTask;

    .line 211
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 213
    const-string v0, "GT-S7568"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    const/16 v0, 0xe1

    sput v0, Lcom/android/settings/SatelliteView;->CENTER_X:I

    .line 215
    const/16 v0, 0x168

    sput v0, Lcom/android/settings/SatelliteView;->CENTER_Y:I

    .line 216
    const/16 v0, 0x64

    sput v0, Lcom/android/settings/SatelliteView;->CIRCLE_RADIUS:I

    .line 218
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    const/16 v1, 0x8

    .line 476
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 493
    :goto_0
    return-void

    .line 478
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 479
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 482
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 483
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 484
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    sget v2, Lcom/android/settings/SatelliteView;->ANIMATION_TIME:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/settings/SatelliteView$setHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 488
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 489
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SatelliteViewLog;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 490
    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 476
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b025d
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    new-instance v0, Lcom/android/settings/SatelliteView$setHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SatelliteView$setHandler;-><init>(Lcom/android/settings/SatelliteView;Lcom/android/settings/SatelliteView$1;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    .line 137
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mTimer:Ljava/util/Timer;

    .line 139
    const v0, 0x7f0400ce

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->setContentView(I)V

    .line 140
    new-instance v0, Lcom/android/settings/SatelliteView$SatelliteViewView;

    invoke-direct {v0, p0}, Lcom/android/settings/SatelliteView$SatelliteViewView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    .line 141
    const v0, 0x7f0b025c

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->draw_layout:Landroid/widget/LinearLayout;

    .line 142
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->draw_layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 144
    const/4 v0, 0x0

    sput v0, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 145
    invoke-direct {p0}, Lcom/android/settings/SatelliteView;->init()V

    .line 146
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 521
    sput v0, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/SatelliteView;->stopGPS()V

    .line 523
    iput-object v1, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 524
    iput-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 525
    sput v0, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 526
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 527
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    invoke-virtual {v0}, Lcom/android/settings/SatelliteView$SatelliteViewView;->destroyDrawingCache()V

    .line 528
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 529
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mHandler:Lcom/android/settings/SatelliteView$setHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/SatelliteView$setHandler;->removeMessages(I)V

    .line 516
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 517
    return-void
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 497
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 500
    const v1, 0x7f090c99

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    sget-wide v3, Lcom/android/settings/SatelliteView;->mAltitude:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v5

    iget-wide v3, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v6

    const/4 v3, 0x2

    sget v4, Lcom/android/settings/SatelliteView;->mBearing:F

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SatelliteView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, sSatelliteResult:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->text:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    if-eqz v1, :cond_0

    .line 505
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->drawView:Lcom/android/settings/SatelliteView$SatelliteViewView;

    #calls: Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V
    invoke-static {v1, v6}, Lcom/android/settings/SatelliteView$SatelliteViewView;->access$1000(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V

    .line 507
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->btn_log:Landroid/widget/Button;

    invoke-virtual {v1, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 508
    return-void
.end method

.method showSVStatus()V
    .locals 15

    .prologue
    .line 331
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v2, mSatList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/SatelliteView$UserGpsSatellite;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 333
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    const/16 v8, 0x20

    if-ge v0, v8, :cond_1

    .line 335
    iget v8, p0, Lcom/android/settings/SatelliteView;->sv_list_mask:I

    const/4 v9, 0x1

    shl-int/2addr v9, v0

    and-int/2addr v8, v9

    if-nez v8, :cond_0

    .line 333
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 338
    :cond_0
    iget-object v8, p0, Lcom/android/settings/SatelliteView;->sv_list:[Landroid/location/GpsSatellite;

    aget-object v3, v8, v0

    .line 339
    .local v3, sat:Landroid/location/GpsSatellite;
    new-instance v8, Lcom/android/settings/SatelliteView$UserGpsSatellite;

    invoke-direct {v8, v3, v1}, Lcom/android/settings/SatelliteView$UserGpsSatellite;-><init>(Landroid/location/GpsSatellite;I)V

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 343
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_1
    const-string v8, "GPS TEST"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "j = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    new-array v6, v1, [Lcom/android/settings/SatelliteView$UserGpsSatellite;

    .line 345
    .local v6, sorted_list:[Lcom/android/settings/SatelliteView$UserGpsSatellite;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 346
    new-instance v4, Lcom/android/settings/SatelliteView$SatComp;

    invoke-direct {v4}, Lcom/android/settings/SatelliteView$SatComp;-><init>()V

    .line 348
    .local v4, satComp:Lcom/android/settings/SatelliteView$SatComp;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 350
    .local v5, sb:Ljava/lang/StringBuffer;
    const/4 v7, 0x0

    .local v7, x:I
    :goto_2
    const/16 v8, 0xc

    if-ge v7, v8, :cond_2

    .line 352
    sget-object v8, Lcom/android/settings/SatelliteView;->azimuth:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 353
    sget-object v8, Lcom/android/settings/SatelliteView;->elevation:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 354
    sget-object v8, Lcom/android/settings/SatelliteView;->snr:[F

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 356
    sget-object v8, Lcom/android/settings/SatelliteView;->a:[D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v7

    .line 357
    sget-object v8, Lcom/android/settings/SatelliteView;->b:[D

    const-wide/16 v9, 0x0

    aput-wide v9, v8, v7

    .line 358
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 359
    sget-object v8, Lcom/android/settings/SatelliteView;->py:[I

    const/4 v9, 0x0

    aput v9, v8, v7

    .line 350
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 362
    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v1, :cond_4

    .line 364
    aget-object v8, v6, v0

    invoke-virtual {v8}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v3

    .line 366
    .restart local v3       #sat:Landroid/location/GpsSatellite;
    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-lez v8, :cond_3

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v8

    const/high16 v9, 0x42c8

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_3

    .line 368
    sget-object v8, Lcom/android/settings/SatelliteView;->azimuth:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v9

    aput v9, v8, v0

    .line 369
    sget-object v8, Lcom/android/settings/SatelliteView;->elevation:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v9

    aput v9, v8, v0

    .line 370
    sget-object v8, Lcom/android/settings/SatelliteView;->snr:[F

    invoke-virtual {v3}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v9

    aput v9, v8, v0

    .line 372
    sget-object v8, Lcom/android/settings/SatelliteView;->a:[D

    sget-object v9, Lcom/android/settings/SatelliteView;->elevation:[F

    aget v9, v9, v0

    float-to-double v9, v9

    const-wide v11, 0x3f91df3300de4c51L

    mul-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 373
    sget-object v8, Lcom/android/settings/SatelliteView;->b:[D

    sget-object v9, Lcom/android/settings/SatelliteView;->azimuth:[F

    aget v9, v9, v0

    const/high16 v10, 0x42b4

    sub-float/2addr v9, v10

    float-to-double v9, v9

    const-wide v11, 0x3f91df3300de4c51L

    mul-double/2addr v9, v11

    aput-wide v9, v8, v0

    .line 375
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    sget v9, Lcom/android/settings/SatelliteView;->CENTER_X:I

    int-to-double v9, v9

    sget v11, Lcom/android/settings/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v11, v11

    sget-object v13, Lcom/android/settings/SatelliteView;->a:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sget-object v13, Lcom/android/settings/SatelliteView;->b:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v8, v0

    .line 376
    sget-object v8, Lcom/android/settings/SatelliteView;->py:[I

    sget v9, Lcom/android/settings/SatelliteView;->CENTER_Y:I

    int-to-double v9, v9

    sget v11, Lcom/android/settings/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v11, v11

    sget-object v13, Lcom/android/settings/SatelliteView;->a:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sget-object v13, Lcom/android/settings/SatelliteView;->b:[D

    aget-wide v13, v13, v0

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    double-to-int v9, v9

    aput v9, v8, v0

    .line 378
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    aget v8, v8, v0

    sget v9, Lcom/android/settings/SatelliteView;->CENTER_X:I

    sub-int/2addr v8, v9

    int-to-double v8, v8

    const-wide/high16 v10, 0x4000

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    sget-object v10, Lcom/android/settings/SatelliteView;->py:[I

    aget v10, v10, v0

    sget v11, Lcom/android/settings/SatelliteView;->CENTER_Y:I

    sub-int/2addr v10, v11

    int-to-double v10, v10

    const-wide/high16 v12, 0x4000

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    sget v10, Lcom/android/settings/SatelliteView;->CIRCLE_RADIUS:I

    int-to-double v10, v10

    cmpl-double v8, v8, v10

    if-lez v8, :cond_3

    .line 380
    sget-object v8, Lcom/android/settings/SatelliteView;->px:[I

    sget v9, Lcom/android/settings/SatelliteView;->CENTER_X:I

    aput v9, v8, v0

    .line 381
    sget-object v8, Lcom/android/settings/SatelliteView;->py:[I

    sget v9, Lcom/android/settings/SatelliteView;->CENTER_Y:I

    aput v9, v8, v0

    .line 362
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    .line 385
    .end local v3           #sat:Landroid/location/GpsSatellite;
    :cond_4
    sput v1, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 386
    return-void
.end method

.method startGPS()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    const/4 v7, 0x1

    .line 222
    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 223
    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 225
    const-string v0, "location"

    invoke-virtual {p0, v0}, Lcom/android/settings/SatelliteView;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 228
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 229
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 231
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 232
    sput-wide v2, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 233
    sput-wide v2, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 234
    sput v4, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 235
    iput-wide v2, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 236
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/SatelliteView;->ttff:I

    .line 237
    sget v0, Lcom/android/settings/SatelliteView;->mStartMode:I

    if-nez v0, :cond_0

    .line 240
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 241
    .local v6, extra:Landroid/os/Bundle;
    const-string v0, "ephemeris"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 242
    const-string v0, "position"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 243
    const-string v0, "time"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 244
    const-string v0, "iono"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    const-string v0, "utc"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 246
    const-string v0, "health"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 247
    const-string v0, "svdir"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 248
    const-string v0, "svsteer"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 249
    const-string v0, "sadata"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 250
    const-string v0, "rti"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 251
    const-string v0, "celldb-info"

    invoke-virtual {v6, v0, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-string v2, "delete_aiding_data"

    invoke-virtual {v0, v1, v2, v6}, Landroid/location/LocationManager;->sendExtraCommand(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 255
    .end local v6           #extra:Landroid/os/Bundle;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    const-string v1, "gps"

    const-wide/16 v2, 0x3e8

    iget-object v5, p0, Lcom/android/settings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 256
    sput v7, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 257
    return-void
.end method

.method stopGPS()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    .line 260
    sput-wide v3, Lcom/android/settings/SatelliteView;->mLongitude:D

    .line 261
    sput-wide v3, Lcom/android/settings/SatelliteView;->mLatitude:D

    .line 262
    sput-wide v3, Lcom/android/settings/SatelliteView;->mAltitude:D

    .line 263
    sput v6, Lcom/android/settings/SatelliteView;->mBearing:F

    .line 264
    iput-wide v3, p0, Lcom/android/settings/SatelliteView;->mSpeed:D

    .line 265
    iput v5, p0, Lcom/android/settings/SatelliteView;->ttff:I

    .line 267
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 268
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mGpsStatusListener:Landroid/location/GpsStatus$Listener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/android/settings/SatelliteView;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 271
    sput v5, Lcom/android/settings/SatelliteView;->mStartMode:I

    .line 272
    iput-object v7, p0, Lcom/android/settings/SatelliteView;->mLoc:Landroid/location/Location;

    .line 273
    iput-object v7, p0, Lcom/android/settings/SatelliteView;->mLm:Landroid/location/LocationManager;

    .line 274
    sput v5, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    .line 276
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xc

    if-ge v0, v1, :cond_0

    .line 278
    sget-object v1, Lcom/android/settings/SatelliteView;->azimuth:[F

    aput v6, v1, v0

    .line 279
    sget-object v1, Lcom/android/settings/SatelliteView;->elevation:[F

    aput v6, v1, v0

    .line 280
    sget-object v1, Lcom/android/settings/SatelliteView;->snr:[F

    aput v6, v1, v0

    .line 282
    sget-object v1, Lcom/android/settings/SatelliteView;->a:[D

    aput-wide v3, v1, v0

    .line 283
    sget-object v1, Lcom/android/settings/SatelliteView;->b:[D

    aput-wide v3, v1, v0

    .line 284
    sget-object v1, Lcom/android/settings/SatelliteView;->px:[I

    aput v5, v1, v0

    .line 285
    sget-object v1, Lcom/android/settings/SatelliteView;->py:[I

    aput v5, v1, v0

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    return-void
.end method
