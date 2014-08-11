.class public Lcom/android/settings/sleepmode/SleepingModePreference;
.super Landroid/preference/Preference;
.source "SleepingModePreference.java"


# static fields
.field private static final sDaysShortest:[I


# instance fields
.field private mListDayColorActive:I

.field private mListDayColorInactive:I

.field private mPreferenceView:Landroid/widget/LinearLayout;

.field private mSharedPreference:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/sleepmode/SleepingModePreference;->sDaysShortest:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x88t 0x0t 0x4t 0x1t
        0x87t 0x0t 0x4t 0x1t
        0x86t 0x0t 0x4t 0x1t
        0x85t 0x0t 0x4t 0x1t
        0x84t 0x0t 0x4t 0x1t
        0x83t 0x0t 0x4t 0x1t
        0x82t 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/sleepmode/SleepingModePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const v1, 0x7f0400e2

    invoke-virtual {p0, v1}, Lcom/android/settings/sleepmode/SleepingModePreference;->setLayoutResource(I)V

    .line 67
    const-string v1, "key_sleeping_mode_pref"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 71
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f0d0015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorActive:I

    .line 72
    const v1, 0x7f0d0014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorInactive:I

    .line 73
    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 79
    const v0, 0x7f0b0289

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->updateSleepingMode()V

    .line 82
    return-void
.end method

.method public refreshSleepingModeList()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 172
    return-void
.end method

.method public timeFormatToString(II)Ljava/lang/String;
    .locals 6
    .parameter "hour"
    .parameter "minute"

    .prologue
    const/16 v5, 0xc

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    .line 176
    .local v0, is24H:Z
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, mAmPm:Ljava/lang/String;
    move v2, p1

    .line 179
    .local v2, mHour:I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p1, 0xa

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    :goto_2
    return-object v3

    .line 180
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 183
    :cond_2
    if-lt p1, v5, :cond_3

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090aa2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 185
    if-le p1, v5, :cond_3

    add-int/lit8 v2, p1, -0xc

    .line 188
    :cond_3
    if-nez p1, :cond_4

    const/16 v2, 0xc

    .line 190
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, v2, 0xa

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit8 v3, p2, 0xa

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_3

    :cond_6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_4
.end method

.method public updateSleepingMode()V
    .locals 17

    .prologue
    .line 85
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v15, "key_sleeping_mode_is_set"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 86
    .local v6, isSleepingModeChecked:Z
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v15, "key_start_hour"

    const/16 v16, 0x17

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 87
    .local v9, sh:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v15, "key_start_minute"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 88
    .local v10, sm:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v15, "key_end_hour"

    const/16 v16, 0x7

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 89
    .local v3, eh:I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v15, "key_end_minute"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 91
    .local v4, em:I
    const-string v1, ""

    .line 93
    .local v1, ampm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b028b

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 94
    .local v11, startTimeView:Landroid/widget/TextView;
    if-eqz v11, :cond_0

    .line 95
    move-object/from16 v0, p0

    invoke-virtual {v0, v9, v10}, Lcom/android/settings/sleepmode/SleepingModePreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 98
    const/16 v14, 0xc

    if-lt v9, v14, :cond_2

    .line 99
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090aa2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 103
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b028c

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b028e

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/sleepmode/SleepingModePreference;->timeFormatToString(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 111
    const-string v1, ""

    .line 113
    const/16 v14, 0xc

    if-lt v3, v14, :cond_4

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090aa2

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 118
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b028f

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mSharedPreference:Landroid/content/SharedPreferences;

    const-string v15, "key_repeat_days"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 124
    .local v8, repeatDays:I
    move v13, v8

    .line 125
    .local v13, tmpDays:I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 127
    .local v7, r:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_4
    const/4 v14, 0x7

    if-ge v5, v14, :cond_7

    .line 128
    and-int/lit8 v2, v13, 0xf

    .line 129
    .local v2, curDay:I
    shr-int/lit8 v13, v13, 0x4

    .line 130
    const/4 v12, 0x0

    .line 132
    .local v12, t:Landroid/widget/TextView;
    packed-switch v5, :pswitch_data_0

    .line 159
    :goto_5
    if-eqz v12, :cond_1

    .line 160
    sget-object v14, Lcom/android/settings/sleepmode/SleepingModePreference;->sDaysShortest:[I

    aget v14, v14, v5

    invoke-virtual {v7, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    if-lez v2, :cond_6

    if-eqz v6, :cond_6

    .line 163
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorActive:I

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    :cond_1
    :goto_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 101
    .end local v2           #curDay:I
    .end local v5           #i:I
    .end local v7           #r:Landroid/content/res/Resources;
    .end local v8           #repeatDays:I
    .end local v12           #t:Landroid/widget/TextView;
    .end local v13           #tmpDays:I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090aa1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 105
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b028c

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 116
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sleepmode/SleepingModePreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090aa1

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 120
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b028f

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 134
    .restart local v2       #curDay:I
    .restart local v5       #i:I
    .restart local v7       #r:Landroid/content/res/Resources;
    .restart local v8       #repeatDays:I
    .restart local v12       #t:Landroid/widget/TextView;
    .restart local v13       #tmpDays:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0297

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #t:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 135
    .restart local v12       #t:Landroid/widget/TextView;
    goto :goto_5

    .line 137
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0296

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #t:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 138
    .restart local v12       #t:Landroid/widget/TextView;
    goto :goto_5

    .line 140
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0295

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #t:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 141
    .restart local v12       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 143
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0294

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #t:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 144
    .restart local v12       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 146
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0293

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #t:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 147
    .restart local v12       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 149
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0292

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #t:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 150
    .restart local v12       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 152
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mPreferenceView:Landroid/widget/LinearLayout;

    const v15, 0x7f0b0291

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #t:Landroid/widget/TextView;
    check-cast v12, Landroid/widget/TextView;

    .line 153
    .restart local v12       #t:Landroid/widget/TextView;
    goto/16 :goto_5

    .line 165
    :cond_6
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/sleepmode/SleepingModePreference;->mListDayColorInactive:I

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_6

    .line 168
    .end local v2           #curDay:I
    .end local v12           #t:Landroid/widget/TextView;
    :cond_7
    return-void

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
