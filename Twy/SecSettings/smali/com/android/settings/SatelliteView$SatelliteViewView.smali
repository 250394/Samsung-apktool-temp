.class Lcom/android/settings/SatelliteView$SatelliteViewView;
.super Landroid/view/View;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatelliteViewView"
.end annotation


# static fields
.field static sx:I

.field static sy:I


# instance fields
.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 563
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settings/SatelliteView$SatelliteViewView;->sx:I

    .line 564
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settings/SatelliteView$SatelliteViewView;->sy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 570
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 565
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/SatelliteView$SatelliteViewView;->mState:I

    .line 571
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 574
    iput p1, p0, Lcom/android/settings/SatelliteView$SatelliteViewView;->mState:I

    .line 575
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, -0x1

    const v11, 0x4480c000

    const v10, 0x441d8000

    const-wide/high16 v8, 0x4000

    const/16 v7, 0x9

    .line 596
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget v0, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    if-ge v6, v0, :cond_7

    .line 598
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 600
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v0

    aget v0, v0, v6

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 602
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v1

    aput v1, v0, v6

    .line 603
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v1

    aput v1, v0, v6

    .line 605
    :cond_0
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 606
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 607
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v0, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v1

    aget v1, v1, v6

    int-to-float v1, v1

    const/high16 v2, 0x41a0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 609
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 610
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 611
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 612
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 613
    if-ge v6, v7, :cond_2

    .line 614
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 619
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 620
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 621
    const-string v0, "GT-S7568"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 622
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    float-to-int v0, v0

    rsub-int v0, v0, 0x258

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x23

    int-to-float v3, v0

    const/high16 v4, 0x4416

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 628
    :goto_2
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 629
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 630
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 631
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 633
    const-string v0, "GT-S7568"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 634
    if-ge v6, v7, :cond_4

    .line 635
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 596
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 616
    :cond_2
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 624
    :cond_3
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    float-to-int v0, v0

    rsub-int v0, v0, 0x3e8

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x23

    int-to-float v3, v0

    const/high16 v4, 0x447a

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 637
    :cond_4
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v10, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 639
    :cond_5
    if-ge v6, v7, :cond_6

    .line 640
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 642
    :cond_6
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v11, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_3

    .line 645
    :cond_7
    return-void
.end method

.method public setPoint(DD)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v3, 0x4000

    .line 578
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 579
    .local v0, lengthPoint:F
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 580
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p1

    float-to-double v3, v0

    div-double p1, v1, v3

    .line 581
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p3

    float-to-double v3, v0

    div-double p3, v1, v3

    .line 583
    :cond_0
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    add-double/2addr v1, p1

    double-to-int v1, v1

    sput v1, Lcom/android/settings/SatelliteView$SatelliteViewView;->sx:I

    .line 584
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    sub-double/2addr v1, p3

    double-to-int v1, v1

    sput v1, Lcom/android/settings/SatelliteView$SatelliteViewView;->sy:I

    .line 585
    return-void
.end method
