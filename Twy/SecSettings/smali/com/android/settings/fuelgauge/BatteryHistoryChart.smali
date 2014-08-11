.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I

.field mWakeLockLabel:Ljava/lang/String;

.field mWakeLockOffset:I

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 25
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 180
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 115
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    .line 122
    new-instance v20, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 123
    new-instance v20, Landroid/text/TextPaint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 125
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 126
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 127
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 128
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 129
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 130
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 131
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 132
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 133
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    const/16 v22, 0x80

    const/16 v23, 0x80

    const/16 v24, 0x80

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    const/16 v22, 0x0

    const/16 v23, 0xff

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xc0

    const/16 v22, 0xff

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    const/16 v22, 0x0

    const/16 v23, 0x80

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 205
    sget-object v20, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 209
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    .line 210
    .local v16, textColor:Landroid/content/res/ColorStateList;
    const/16 v17, 0xf

    .line 211
    .local v17, textSize:I
    const/16 v19, -0x1

    .line 212
    .local v19, typefaceIndex:I
    const/4 v15, -0x1

    .line 214
    .local v15, styleIndex:I
    const/4 v7, 0x0

    .line 215
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    const/16 v21, -0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 216
    .local v6, ap:I
    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v6, v0, :cond_0

    .line 217
    sget-object v20, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 221
    :cond_0
    if-eqz v7, :cond_2

    .line 222
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 223
    .local v12, n:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v12, :cond_1

    .line 224
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 226
    .local v8, attr:I
    packed-switch v8, :pswitch_data_0

    .line 223
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 228
    :pswitch_0
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 229
    goto :goto_1

    .line 232
    :pswitch_1
    move/from16 v0, v17

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 233
    goto :goto_1

    .line 236
    :pswitch_2
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 237
    goto :goto_1

    .line 240
    :pswitch_3
    const/16 v20, -0x1

    move/from16 v0, v20

    invoke-virtual {v7, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto :goto_1

    .line 245
    .end local v8           #attr:I
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    .end local v11           #i:I
    .end local v12           #n:I
    :cond_2
    const/4 v14, 0x0

    .line 249
    .local v14, shadowcolor:I
    const/4 v9, 0x0

    .local v9, dx:F
    const/4 v10, 0x0

    .local v10, dy:F
    const/4 v13, 0x0

    .line 251
    .local v13, r:F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 252
    .restart local v12       #n:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    if-ge v11, v12, :cond_3

    .line 253
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 255
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_1

    .line 252
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 257
    :pswitch_4
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 258
    goto :goto_3

    .line 261
    :pswitch_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 262
    goto :goto_3

    .line 265
    :pswitch_6
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 266
    goto :goto_3

    .line 269
    :pswitch_7
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 270
    goto :goto_3

    .line 273
    :pswitch_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 274
    goto :goto_3

    .line 277
    :pswitch_9
    move/from16 v0, v17

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 278
    goto :goto_3

    .line 281
    :pswitch_a
    move/from16 v0, v19

    invoke-virtual {v5, v8, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 282
    goto :goto_3

    .line 285
    :pswitch_b
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    goto :goto_3

    .line 290
    .end local v8           #attr:I
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setColor(I)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 295
    const/16 v18, 0x0

    .line 296
    .local v18, tf:Landroid/graphics/Typeface;
    packed-switch v19, :pswitch_data_2

    .line 310
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 312
    if-eqz v14, :cond_4

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v13, v9, v10, v14}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 315
    :cond_4
    return-void

    .line 298
    :pswitch_c
    sget-object v18, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 299
    goto :goto_4

    .line 302
    :pswitch_d
    sget-object v18, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 303
    goto :goto_4

    .line 306
    :pswitch_e
    sget-object v18, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_4

    .line 196
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0x20t 0x80t 0x80t 0xfft
        0x40t 0x80t 0x80t 0xfft
        0x60t 0x80t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
    .end array-data

    .line 226
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 296
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4
    .parameter "w"
    .parameter "h"
    .parameter "levelh"
    .parameter "startX"
    .parameter "y"
    .parameter "curLevelPath"
    .parameter "lastX"
    .parameter "lastCharging"
    .parameter "lastScreenOn"
    .parameter "lastGpsOn"
    .parameter "lastWifiRunning"
    .parameter "lastWakeLock"
    .parameter "lastPath"

    .prologue
    .line 401
    if-eqz p6, :cond_2

    .line 402
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 403
    if-eqz p13, :cond_0

    .line 404
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 406
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 413
    :cond_2
    if-eqz p8, :cond_3

    .line 414
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 416
    :cond_3
    if-eqz p9, :cond_4

    .line 417
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 419
    :cond_4
    if-eqz p10, :cond_5

    .line 420
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 422
    :cond_5
    if-eqz p11, :cond_6

    .line 423
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 425
    :cond_6
    if-eqz p12, :cond_7

    .line 426
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 428
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_8

    .line 429
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 431
    :cond_8
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16
    .parameter "canvas"

    .prologue
    .line 657
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 659
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v13

    .line 660
    .local v13, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v8

    .line 662
    .local v8, height:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 663
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_d

    .line 664
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    neg-int v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 666
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    div-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 697
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 698
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 700
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 701
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 703
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 706
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_4

    .line 707
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v1, v8, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v12, v1, v2

    .line 708
    .local v12, top:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v12, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 710
    .end local v12           #top:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 711
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 713
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 716
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v1, :cond_7

    .line 717
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 718
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 721
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v1, :cond_8

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 726
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 730
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_10

    .line 731
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_a

    .line 732
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 735
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v1, :cond_b

    .line 736
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 739
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v1, :cond_c

    .line 740
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 743
    :cond_c
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 745
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 747
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v3, v8, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 749
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v4, v13

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 751
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v3, v1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 753
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    const/16 v1, 0xa

    if-ge v9, v1, :cond_10

    .line 754
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v9

    div-int/lit8 v2, v2, 0xa

    add-int v15, v1, v2

    .line 755
    .local v15, y:I
    const/4 v2, 0x0

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v4, v1

    int-to-float v5, v15

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 753
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 670
    .end local v9           #i:I
    .end local v15           #y:I
    :cond_d
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 672
    div-int/lit8 v1, v13, 0x2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v14, v1, v2

    .line 673
    .local v14, widthcalc:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090618

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, ""

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 674
    .local v10, onbatterytext:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 675
    .local v11, s1:[Ljava/lang/String;
    int-to-float v1, v14

    div-int/lit8 v2, v8, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 676
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v10}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v14, v1

    .line 678
    array-length v1, v11

    add-int/lit8 v9, v1, -0x1

    .restart local v9       #i:I
    :goto_2
    if-ltz v9, :cond_0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, v11, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v14

    div-int/lit8 v3, v8, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 680
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, v11, v9

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v14, v1

    .line 678
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 683
    .end local v9           #i:I
    .end local v10           #onbatterytext:Ljava/lang/String;
    .end local v11           #s1:[Ljava/lang/String;
    .end local v14           #widthcalc:I
    :cond_e
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    if-le v1, v13, :cond_f

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    const/4 v2, 0x0

    div-int/lit8 v3, v8, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 692
    :catch_0
    move-exception v7

    .line 693
    .local v7, e:Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v8, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 687
    .end local v7           #e:Ljava/lang/Exception;
    :cond_f
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v13, 0x2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v8, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 758
    :cond_10
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 391
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 393
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    .line 394
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 395
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 396
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 39
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 435
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 437
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v27, v2, v3

    .line 438
    .local v27, textHeight:I
    const/4 v2, 0x1

    const/high16 v3, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 440
    mul-int/lit8 v2, v27, 0x6

    move/from16 v0, p2

    if-le v0, v2, :cond_b

    .line 441
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 442
    mul-int/lit8 v2, v27, 0xf

    move/from16 v0, p2

    if-le v0, v2, :cond_a

    .line 444
    div-int/lit8 v2, v27, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 449
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v2, v2, v27

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 450
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 451
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 452
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 453
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/16 v4, 0x20

    const/16 v37, 0x40

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 463
    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 464
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 465
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 466
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 468
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 469
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 470
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 471
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 474
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_f

    .line 475
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int v17, v27, v2

    .line 476
    .local v17, barOffset:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 477
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 478
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    .line 479
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    add-int v2, v2, v17

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 480
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_c

    move/from16 v2, v17

    :goto_2
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 481
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_d

    move/from16 v2, v17

    :goto_3
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 482
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v3, :cond_e

    .end local v17           #barOffset:I
    :goto_4
    add-int v2, v2, v17

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v3, v3, 0x3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 484
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 485
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 498
    :cond_1
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 499
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 501
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 502
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 504
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 508
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v30, v0

    .line 509
    .local v30, timeStart:J
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v37, v0

    sub-long v28, v2, v37

    .line 511
    .local v28, timeChange:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v19, v0

    .line 512
    .local v19, batLow:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v18, v2, v3

    .line 514
    .local v18, batChange:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v5, v2, v3

    .line 515
    .local v5, levelh:I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 517
    const/16 v35, 0x0

    .local v35, x:I
    const/16 v36, 0x0

    .local v36, y:I
    const/4 v6, 0x0

    .local v6, startX:I
    const/4 v9, -0x1

    .local v9, lastX:I
    const/4 v7, -0x1

    .line 518
    .local v7, lastY:I
    const/16 v23, 0x0

    .line 519
    .local v23, i:I
    const/4 v8, 0x0

    .line 520
    .local v8, curLevelPath:Landroid/graphics/Path;
    const/4 v15, 0x0

    .line 521
    .local v15, lastLinePath:Landroid/graphics/Path;
    const/4 v10, 0x0

    .local v10, lastCharging:Z
    const/4 v11, 0x0

    .local v11, lastScreenOn:Z
    const/4 v12, 0x0

    .line 522
    .local v12, lastGpsOn:Z
    const/4 v13, 0x0

    .local v13, lastWifiRunning:Z
    const/4 v14, 0x0

    .line 523
    .local v14, lastWakeLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v16, v0

    .line 524
    .local v16, N:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 525
    new-instance v25, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v25 .. v25}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 526
    .end local v10           #lastCharging:Z
    .end local v11           #lastScreenOn:Z
    .end local v12           #lastGpsOn:Z
    .local v25, rec:Landroid/os/BatteryStats$HistoryItem;
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, v25

    invoke-virtual {v2, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v2

    if-eqz v2, :cond_21

    move/from16 v0, v23

    move/from16 v1, v16

    if-ge v0, v1, :cond_21

    .line 527
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x1

    if-ne v2, v3, :cond_20

    .line 528
    move-object/from16 v0, v25

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v2, v2, v30

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v37, v0

    mul-long v2, v2, v37

    div-long v2, v2, v28

    long-to-int v0, v2

    move/from16 v35, v0

    .line 529
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v2, v5

    move-object/from16 v0, v25

    iget-byte v3, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v3, v3, v19

    add-int/lit8 v4, v5, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v18

    sub-int v36, v2, v3

    .line 531
    move/from16 v0, v35

    if-eq v9, v0, :cond_9

    .line 533
    move/from16 v0, v36

    if-eq v7, v0, :cond_3

    .line 536
    move-object/from16 v0, v25

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v32, v0

    .line 537
    .local v32, value:B
    const/16 v2, 0xe

    move/from16 v0, v32

    if-gt v0, v2, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .line 541
    .local v24, path:Landroid/graphics/Path;
    :goto_7
    move-object/from16 v0, v24

    if-eq v0, v15, :cond_12

    .line 542
    if-eqz v15, :cond_2

    .line 543
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v15, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 545
    :cond_2
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 546
    move-object/from16 v15, v24

    .line 551
    :goto_8
    if-nez v8, :cond_13

    .line 552
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 553
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 554
    move/from16 v6, v35

    .line 558
    :goto_9
    move/from16 v9, v35

    .line 559
    move/from16 v7, v36

    .line 562
    .end local v24           #path:Landroid/graphics/Path;
    .end local v32           #value:B
    :cond_3
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x8

    and-int/2addr v2, v3

    if-eqz v2, :cond_14

    const/16 v21, 0x1

    .line 564
    .local v21, charging:Z
    :goto_a
    move/from16 v0, v21

    if-eq v0, v10, :cond_4

    .line 565
    if-eqz v21, :cond_15

    .line 566
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 570
    :goto_b
    move/from16 v10, v21

    .line 573
    :cond_4
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x10

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    const/16 v26, 0x1

    .line 575
    .local v26, screenOn:Z
    :goto_c
    move/from16 v0, v26

    if-eq v0, v11, :cond_5

    .line 576
    if-eqz v26, :cond_17

    .line 577
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 581
    :goto_d
    move/from16 v11, v26

    .line 584
    :cond_5
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x1000

    and-int/2addr v2, v3

    if-eqz v2, :cond_18

    const/16 v22, 0x1

    .line 586
    .local v22, gpsOn:Z
    :goto_e
    move/from16 v0, v22

    if-eq v0, v12, :cond_6

    .line 587
    if-eqz v22, :cond_19

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 592
    :goto_f
    move/from16 v12, v22

    .line 595
    :cond_6
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x400

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    const/16 v34, 0x1

    .line 597
    .local v34, wifiRunning:Z
    :goto_10
    move/from16 v0, v34

    if-eq v0, v13, :cond_7

    .line 598
    if-eqz v34, :cond_1b

    .line 599
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 603
    :goto_11
    move/from16 v13, v34

    .line 606
    :cond_7
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x4000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1c

    const/16 v33, 0x1

    .line 608
    .local v33, wakeLock:Z
    :goto_12
    move/from16 v0, v33

    if-eq v0, v14, :cond_8

    .line 609
    if-eqz v33, :cond_1d

    .line 610
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 614
    :goto_13
    move/from16 v14, v33

    .line 617
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_9

    .line 619
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf00

    shr-int/lit8 v2, v2, 0x8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1e

    .line 622
    const/16 v20, 0x0

    .line 630
    .local v20, bin:I
    :goto_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, v35

    move/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 646
    .end local v20           #bin:I
    .end local v21           #charging:Z
    .end local v22           #gpsOn:Z
    .end local v26           #screenOn:Z
    .end local v33           #wakeLock:Z
    .end local v34           #wifiRunning:Z
    :cond_9
    :goto_15
    add-int/lit8 v23, v23, 0x1

    goto/16 :goto_6

    .line 447
    .end local v5           #levelh:I
    .end local v6           #startX:I
    .end local v7           #lastY:I
    .end local v8           #curLevelPath:Landroid/graphics/Path;
    .end local v9           #lastX:I
    .end local v13           #lastWifiRunning:Z
    .end local v14           #lastWakeLock:Z
    .end local v15           #lastLinePath:Landroid/graphics/Path;
    .end local v16           #N:I
    .end local v18           #batChange:I
    .end local v19           #batLow:I
    .end local v23           #i:I
    .end local v25           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v28           #timeChange:J
    .end local v30           #timeStart:J
    .end local v35           #x:I
    .end local v36           #y:I
    :cond_a
    div-int/lit8 v2, v27, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto/16 :goto_0

    .line 455
    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 456
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 457
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 458
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 459
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 461
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    const/4 v4, 0x0

    const/16 v37, 0x0

    const/16 v38, 0xff

    move/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_1

    .line 480
    .restart local v17       #barOffset:I
    :cond_c
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 481
    :cond_d
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 482
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 488
    .end local v17           #barOffset:I
    :cond_f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 490
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 491
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 492
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 493
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_1

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 538
    .restart local v5       #levelh:I
    .restart local v6       #startX:I
    .restart local v7       #lastY:I
    .restart local v8       #curLevelPath:Landroid/graphics/Path;
    .restart local v9       #lastX:I
    .restart local v13       #lastWifiRunning:Z
    .restart local v14       #lastWakeLock:Z
    .restart local v15       #lastLinePath:Landroid/graphics/Path;
    .restart local v16       #N:I
    .restart local v18       #batChange:I
    .restart local v19       #batLow:I
    .restart local v23       #i:I
    .restart local v25       #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v28       #timeChange:J
    .restart local v30       #timeStart:J
    .restart local v32       #value:B
    .restart local v35       #x:I
    .restart local v36       #y:I
    :cond_10
    const/16 v2, 0x1d

    move/from16 v0, v32

    if-gt v0, v2, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .restart local v24       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 539
    .end local v24           #path:Landroid/graphics/Path;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v24, v0

    .restart local v24       #path:Landroid/graphics/Path;
    goto/16 :goto_7

    .line 548
    :cond_12
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_8

    .line 556
    :cond_13
    move/from16 v0, v35

    int-to-float v2, v0

    move/from16 v0, v36

    int-to-float v3, v0

    invoke-virtual {v8, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 562
    .end local v24           #path:Landroid/graphics/Path;
    .end local v32           #value:B
    :cond_14
    const/16 v21, 0x0

    goto/16 :goto_a

    .line 568
    .restart local v21       #charging:Z
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 573
    :cond_16
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 579
    .restart local v26       #screenOn:Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 584
    :cond_18
    const/16 v22, 0x0

    goto/16 :goto_e

    .line 590
    .restart local v22       #gpsOn:Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 595
    :cond_1a
    const/16 v34, 0x0

    goto/16 :goto_10

    .line 601
    .restart local v34       #wifiRunning:Z
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 606
    :cond_1c
    const/16 v33, 0x0

    goto/16 :goto_12

    .line 612
    .restart local v33       #wakeLock:Z
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move/from16 v0, v35

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v4, p2, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_13

    .line 623
    :cond_1e
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v3, 0x800

    and-int/2addr v2, v3

    if-eqz v2, :cond_1f

    .line 624
    const/16 v20, 0x1

    .restart local v20       #bin:I
    goto/16 :goto_14

    .line 626
    .end local v20           #bin:I
    :cond_1f
    move-object/from16 v0, v25

    iget v2, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v2, v2, 0xf0

    shr-int/lit8 v20, v2, 0x4

    .line 628
    .restart local v20       #bin:I
    add-int/lit8 v20, v20, 0x2

    goto/16 :goto_14

    .line 634
    .end local v20           #bin:I
    .end local v21           #charging:Z
    .end local v22           #gpsOn:Z
    .end local v26           #screenOn:Z
    .end local v33           #wakeLock:Z
    .end local v34           #wifiRunning:Z
    :cond_20
    move-object/from16 v0, v25

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    .line 635
    if-eqz v8, :cond_9

    .line 636
    add-int/lit8 v3, v35, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 639
    const/4 v7, -0x1

    move v9, v7

    .line 640
    const/4 v8, 0x0

    .line 641
    const/4 v15, 0x0

    .line 642
    const/4 v14, 0x0

    move v12, v14

    .local v12, lastGpsOn:I
    move v11, v14

    .local v11, lastScreenOn:I
    move v10, v14

    .local v10, lastCharging:I
    goto/16 :goto_15

    .end local v10           #lastCharging:I
    .end local v11           #lastScreenOn:I
    .end local v12           #lastGpsOn:I
    .end local v25           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_21
    move-object/from16 v2, p0

    move/from16 v3, p1

    move/from16 v4, p2

    .line 650
    invoke-virtual/range {v2 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 653
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 14
    .parameter "stats"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 341
    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 343
    .local v7, uSecTime:J
    iput-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, durationString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090618

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09061a

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09061b

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09061c

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09061d

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09061e

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f09061f

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 354
    const/4 v5, 0x0

    .line 355
    .local v5, pos:I
    const/4 v3, 0x0

    .line 356
    .local v3, lastInteresting:I
    const/4 v4, -0x1

    .line 357
    .local v4, lastLevel:B
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 358
    const/16 v9, 0x64

    iput v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 359
    const/4 v0, 0x0

    .line 360
    .local v0, aggrStates:I
    const/4 v2, 0x1

    .line 361
    .local v2, first:Z
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 362
    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 363
    .local v6, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 364
    add-int/lit8 v5, v5, 0x1

    .line 365
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 366
    if-eqz v2, :cond_1

    .line 367
    const/4 v2, 0x0

    .line 368
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 370
    :cond_1
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v9, v4, :cond_2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 371
    :cond_2
    iget-byte v4, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 373
    :cond_3
    move v3, v5

    .line 374
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 375
    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v0, v9

    goto :goto_0

    .line 379
    .end local v6           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 380
    const/high16 v9, 0x1000

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 381
    const/high16 v9, 0x400

    and-int/2addr v9, v0

    if-eqz v9, :cond_8

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 383
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    .line 385
    :cond_5
    iget-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v11, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_6

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 386
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v12, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    .line 387
    return-void

    .line 380
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 381
    :cond_8
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 318
    if-lez p2, :cond_4

    .line 319
    if-nez p1, :cond_1

    .line 320
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 325
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 327
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v1

    .line 328
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v4, v1, -0x1

    and-int v0, p2, v4

    .line 329
    .local v0, need:I
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v5, v0, 0x1

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 330
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    const/high16 v2, -0x4180

    :goto_2
    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 336
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_3
    return-void

    .line 322
    :cond_1
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 327
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_3
    move v2, v3

    .line 330
    goto :goto_2

    .line 332
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 333
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 334
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_3
.end method
