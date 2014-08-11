.class public Lcom/android/settings/DateTimeSettingsSetupWizard;
.super Landroid/app/Activity;
.source "DateTimeSettingsSetupWizard.java"

# interfaces
.implements Landroid/preference/PreferenceFragment$OnPreferenceStartFragmentCallback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAutoDateTimeButton:Landroid/widget/CompoundButton;

.field private mDatePicker:Landroid/widget/DatePicker;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedTimeZone:Ljava/util/TimeZone;

.field private mTimePicker:Landroid/widget/TimePicker;

.field private mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

.field private mTimeZoneButton:Landroid/widget/Button;

.field private mTimeZonePopup:Landroid/widget/ListPopupWindow;

.field private mUsingXLargeLayout:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/settings/DateTimeSettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 387
    new-instance v0, Lcom/android/settings/DateTimeSettingsSetupWizard$1;

    invoke-direct {v0, p0}, Lcom/android/settings/DateTimeSettingsSetupWizard$1;-><init>(Lcom/android/settings/DateTimeSettingsSetupWizard;)V

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DateTimeSettingsSetupWizard;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->updateTimeAndDateDisplay()V

    return-void
.end method

.method private is24Hour()Z
    .locals 1

    .prologue
    .line 396
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isAutoDateTimeEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 354
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    .line 356
    :goto_0
    return v1

    .line 354
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0
.end method

.method private showTimezonePicker(I)V
    .locals 4
    .parameter "anchorViewId"

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 338
    .local v0, anchorView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 339
    sget-object v1, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find zone picker anchor view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :goto_0
    return-void

    .line 342
    :cond_0
    new-instance v1, Landroid/widget/ListPopupWindow;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 343
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 344
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 345
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 346
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 347
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 348
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    goto :goto_0
.end method

.method private updateTimeAndDateDisplay()V
    .locals 6

    .prologue
    .line 371
    iget-boolean v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v2, :cond_1

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 374
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 375
    .local v0, now:Ljava/util/Calendar;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 378
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 379
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 381
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 382
    .local v1, systemTimeZone:Ljava/util/TimeZone;
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 383
    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    goto :goto_0
.end method


# virtual methods
.method public initUiForXl()V
    .locals 13

    .prologue
    const/16 v12, 0xb

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 127
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v6

    .line 128
    .local v6, tz:Ljava/util/TimeZone;
    iput-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 129
    const v7, 0x7f0b00cd

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    .line 130
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v6}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 136
    .local v1, intent:Landroid/content/Intent;
    const-string v7, "VNZ"

    const-string v10, "ro.csc.sales_code"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 137
    const/4 v0, 0x0

    .line 150
    .local v0, autoDateTimeEnabled:Z
    :goto_0
    const v7, 0x7f0b00cf

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CompoundButton;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    .line 151
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 152
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 154
    const v7, 0x7f0b00d3

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TimePicker;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    .line 156
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->is24Hour()Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 158
    .local v4, now:Ljava/util/Calendar;
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 159
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v10, 0xc

    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 161
    iget-object v10, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_4

    move v7, v8

    :goto_1
    invoke-virtual {v10, v7}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 162
    const v7, 0x7f0b00d1

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/DatePicker;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    .line 163
    iget-object v10, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_5

    move v7, v8

    :goto_2
    invoke-virtual {v10, v7}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 164
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v7, v9}, Landroid/widget/DatePicker;->setCalendarViewShown(Z)V

    .line 166
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 167
    .local v3, mTime:Landroid/text/format/Time;
    const/16 v7, 0x7d0

    invoke-virtual {v3, v8, v9, v7}, Landroid/text/format/Time;->set(III)V

    .line 168
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/widget/DatePicker;->setMinDate(J)V

    .line 170
    const/16 v7, 0x1f

    const/16 v10, 0x7f4

    invoke-virtual {v3, v7, v12, v10}, Landroid/text/format/Time;->set(III)V

    .line 171
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v8}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Landroid/widget/DatePicker;->setMaxDate(J)V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 175
    const v7, 0x7f0b00ce

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 176
    .local v2, layout:Landroid/widget/LinearLayout;
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 177
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v7, v8}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 178
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v7, v8}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 179
    iget-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_time"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_time_zone"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 182
    sget-object v7, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v8, "isWifiOnly is true, remove Automatic date and time layout and set AUTO_TIME and AUTO_TIME_ZONE to false"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v2           #layout:Landroid/widget/LinearLayout;
    :cond_0
    const-string v7, "input_method"

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    iput-object v7, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 187
    const v7, 0x7f0b000e

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    const v7, 0x7f0b000c

    invoke-virtual {p0, v7}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    .line 189
    .local v5, skipButton:Landroid/widget/Button;
    if-eqz v5, :cond_1

    .line 190
    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    :cond_1
    return-void

    .line 139
    .end local v0           #autoDateTimeEnabled:Z
    .end local v3           #mTime:Landroid/text/format/Time;
    .end local v4           #now:Ljava/util/Calendar;
    .end local v5           #skipButton:Landroid/widget/Button;
    :cond_2
    const-string v7, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 140
    const-string v7, "extra_initial_auto_datetime_value"

    invoke-virtual {v1, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 141
    .restart local v0       #autoDateTimeEnabled:Z
    sget-object v7, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initUiForXl(), has EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 143
    .end local v0           #autoDateTimeEnabled:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->isAutoDateTimeEnabled()Z

    move-result v0

    .line 144
    .restart local v0       #autoDateTimeEnabled:Z
    sget-object v7, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initUiForXl(), has not EXTRA_INITIAL_AUTO_DATETIME_VALUE and autoDateTimeEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v4       #now:Ljava/util/Calendar;
    :cond_4
    move v7, v9

    .line 161
    goto/16 :goto_1

    :cond_5
    move v7, v9

    .line 163
    goto/16 :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 262
    move v0, p2

    .line 276
    .local v0, autoEnabled:Z
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-ne p1, v2, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_time"

    if-eqz p2, :cond_2

    move v2, v3

    :goto_0
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 280
    iget-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    if-nez v0, :cond_3

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TimePicker;->setEnabled(Z)V

    .line 281
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    if-nez v0, :cond_4

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/DatePicker;->setEnabled(Z)V

    .line 283
    :cond_0
    if-eqz v0, :cond_1

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 285
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 287
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 290
    .end local v1           #focusedView:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 277
    goto :goto_0

    :cond_3
    move v2, v4

    .line 280
    goto :goto_1

    :cond_4
    move v3, v4

    .line 281
    goto :goto_2
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    .line 215
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 218
    :sswitch_0
    iget-boolean v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 220
    .local v1, focusedView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 221
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 222
    invoke-virtual {v1}, Landroid/view/View;->clearFocus()V

    .line 225
    .end local v1           #focusedView:Landroid/view/View;
    :cond_0
    const v3, 0x7f0b00cd

    invoke-direct {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    goto :goto_0

    .line 229
    :sswitch_1
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    if-eqz v4, :cond_1

    .line 230
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 231
    .local v2, systemTimeZone:Ljava/util/TimeZone;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 232
    sget-object v4, Lcom/android/settings/DateTimeSettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v5, "Another TimeZone is selected by a user. Changing system TimeZone."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 235
    .local v0, alarm:Landroid/app/AlarmManager;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 238
    .end local v0           #alarm:Landroid/app/AlarmManager;
    .end local v2           #systemTimeZone:Ljava/util/TimeZone;
    :cond_1
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    if-eqz v4, :cond_3

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "auto_time"

    iget-object v6, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v6}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v3, 0x1

    :cond_2
    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mAutoDateTimeButton:Landroid/widget/CompoundButton;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    .line 242
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->clearFocus()V

    .line 243
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getYear()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getMonth()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v5}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v5

    invoke-static {v3, v4, v5}, Lcom/android/settings/DateTimeSettings;->setDate(III)V

    .line 246
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->clearFocus()V

    .line 247
    iget-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v4}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/settings/DateTimeSettings;->setTime(II)V

    .line 253
    :cond_3
    :sswitch_2
    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setResult(I)V

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->finish()V

    goto/16 :goto_0

    .line 215
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b000c -> :sswitch_2
        0x7f0b000e -> :sswitch_1
        0x7f0b00cd -> :sswitch_0
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    .line 404
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 405
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    .line 407
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 408
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 86
    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->requestWindowFeature(I)Z

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-static {}, Lcom/android/settings/Utils;->isDomesticModel()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "auto_time"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    :cond_0
    const v3, 0x7f04004c

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->setContentView(I)V

    .line 96
    const v3, 0x7f0b00cd

    invoke-virtual {p0, v3}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    .line 97
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->initUiForXl()V

    .line 102
    :goto_1
    const v1, 0x7f04004d

    invoke-static {p0, v2, v1}, Lcom/android/settings/ZonePicker;->constructTimezoneAdapter(Landroid/content/Context;ZI)Landroid/widget/SimpleAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneAdapter:Landroid/widget/SimpleAdapter;

    .line 110
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_1

    .line 111
    const v1, 0x7f0b00c9

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    .local v0, layoutRoot:Landroid/view/View;
    const/high16 v1, 0x40

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 114
    .end local v0           #layoutRoot:Landroid/view/View;
    :cond_1
    return-void

    :cond_2
    move v1, v2

    .line 96
    goto :goto_0

    .line 100
    :cond_3
    const v1, 0x7f0b000e

    invoke-virtual {p0, v1}, Lcom/android/settings/DateTimeSettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/ZonePicker;->obtainTimeZoneFromItem(Ljava/lang/Object;)Ljava/util/TimeZone;

    move-result-object v3

    .line 295
    .local v3, tz:Ljava/util/TimeZone;
    iget-boolean v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-eqz v4, :cond_1

    .line 296
    iput-object v3, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mSelectedTimeZone:Ljava/util/TimeZone;

    .line 297
    invoke-static {v3}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v1

    .line 298
    .local v1, now:Ljava/util/Calendar;
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    .line 299
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZoneButton:Landroid/widget/Button;

    invoke-virtual {v3}, Ljava/util/TimeZone;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mDatePicker:Landroid/widget/DatePicker;

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/4 v7, 0x5

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 304
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xb

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 305
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimePicker:Landroid/widget/TimePicker;

    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 315
    .end local v1           #now:Ljava/util/Calendar;
    :goto_0
    iget-object v4, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mTimeZonePopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v4}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 316
    return-void

    .line 309
    :cond_1
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 310
    .local v0, alarm:Landroid/app/AlarmManager;
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlarmManager;->setTimeZone(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0b00cb

    invoke-virtual {v4, v5}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/DateTimeSettings;

    .line 313
    .local v2, settingsFragment:Lcom/android/settings/DateTimeSettings;
    invoke-virtual {v2, p0}, Lcom/android/settings/DateTimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    iget-object v0, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 211
    return-void
.end method

.method public onPreferenceStartFragment(Landroid/preference/PreferenceFragment;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "caller"
    .parameter "pref"

    .prologue
    .line 332
    const v0, 0x7f0b00ca

    invoke-direct {p0, v0}, Lcom/android/settings/DateTimeSettingsSetupWizard;->showTimezonePicker(I)V

    .line 333
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 196
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 197
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 198
    .local v0, filter:Landroid/content/IntentFilter;
    iget-boolean v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mUsingXLargeLayout:Z

    if-nez v1, :cond_0

    .line 199
    const-string v1, "android.intent.action.TIME_TICK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 201
    :cond_0
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v1, p0, Lcom/android/settings/DateTimeSettingsSetupWizard;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v2, v2}, Lcom/android/settings/DateTimeSettingsSetupWizard;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 205
    return-void
.end method
