.class public Lcom/android/settings/SatelliteView$UserGpsSatellite;
.super Ljava/lang/Object;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserGpsSatellite"
.end annotation


# instance fields
.field private mSV:I

.field private mSat:Landroid/location/GpsSatellite;


# direct methods
.method public constructor <init>(Landroid/location/GpsSatellite;I)V
    .locals 0
    .parameter "sat"
    .parameter "j"

    .prologue
    .line 304
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 306
    invoke-virtual {p0, p1}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->setSat(Landroid/location/GpsSatellite;)V

    .line 307
    invoke-virtual {p0, p2}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->setSV(I)V

    .line 308
    return-void
.end method


# virtual methods
.method public getSat()Landroid/location/GpsSatellite;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/settings/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    return-object v0
.end method

.method public setSV(I)V
    .locals 0
    .parameter "mSV"

    .prologue
    .line 311
    iput p1, p0, Lcom/android/settings/SatelliteView$UserGpsSatellite;->mSV:I

    .line 312
    return-void
.end method

.method public setSat(Landroid/location/GpsSatellite;)V
    .locals 0
    .parameter "mSat"

    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/settings/SatelliteView$UserGpsSatellite;->mSat:Landroid/location/GpsSatellite;

    .line 320
    return-void
.end method
