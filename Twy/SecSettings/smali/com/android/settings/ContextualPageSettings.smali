.class public Lcom/android/settings/ContextualPageSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ContextualPageSettings.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private car_cardle_state:I

.field private desk_cradle_state:I

.field private earphone_state:I

.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

.field private mContextualPageObserver:Landroid/database/ContentObserver;

.field private mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

.field private mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

.field private s_pen_state:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 69
    new-instance v0, Lcom/android/settings/ContextualPageSettings$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/ContextualPageSettings$1;-><init>(Lcom/android/settings/ContextualPageSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ContextualPageSettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V

    return-void
.end method

.method private updateContextualPageSaving()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 167
    .local v0, State:I
    const-string v1, "ContextualPageSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateContextualPageSaving : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-nez v0, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 171
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 172
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v4}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 180
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 175
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 177
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 178
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 184
    const-string v0, "ContextualPageSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckChanged"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "contextual_page"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 186
    invoke-direct {p0}, Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V

    .line 187
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x10

    const/4 v10, -0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 80
    const-string v4, "ContextualPageSettings"

    const-string v7, "onCreate() "

    invoke-static {v4, v7}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    const v4, 0x7f070019

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->addPreferencesFromResource(I)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 86
    .local v0, activity:Landroid/app/Activity;
    new-instance v4, Landroid/widget/Switch;

    invoke-direct {v4, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    .line 88
    instance-of v4, v0, Landroid/preference/PreferenceActivity;

    if-eqz v4, :cond_0

    move-object v2, v0

    .line 89
    check-cast v2, Landroid/preference/PreferenceActivity;

    .line 90
    .local v2, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0e0002

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 92
    .local v1, padding:I
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v6, v6, v1, v6}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 93
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 95
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v8, Landroid/app/ActionBar$LayoutParams;

    const/16 v9, 0x15

    invoke-direct {v8, v10, v10, v9}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v4, v7, v8}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 99
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    .line 101
    .end local v1           #padding:I
    .end local v2           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    new-instance v4, Lcom/android/settings/ContextualPageEnabler;

    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-direct {v4, v0, v7}, Lcom/android/settings/ContextualPageEnabler;-><init>(Landroid/content/Context;Landroid/widget/Switch;)V

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

    .line 103
    const-string v4, "contextual_page_s_pen"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    .line 104
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_s_pen"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 105
    const-string v4, "contextual_page_earphone"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    .line 106
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_earphone"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 107
    const-string v4, "contextual_page_car_cradle"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    .line 108
    iget-object v7, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "contextual_page_car_cradle"

    invoke-static {v4, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 109
    const-string v4, "contextual_page_desk_cradle"

    invoke-virtual {p0, v4}, Lcom/android/settings/ContextualPageSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    .line 110
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "contextual_page_desk_cardle"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    :goto_3
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_s_pen"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->s_pen_state:I

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_earphone"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->earphone_state:I

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_car_cradle"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->car_cardle_state:I

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "contextual_page_desk_cardle"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/ContextualPageSettings;->desk_cradle_state:I

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    .line 122
    .local v3, ps:Landroid/preference/PreferenceScreen;
    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    return-void

    .end local v3           #ps:Landroid/preference/PreferenceScreen;
    :cond_1
    move v4, v6

    .line 104
    goto/16 :goto_0

    :cond_2
    move v4, v6

    .line 106
    goto :goto_1

    :cond_3
    move v4, v6

    .line 108
    goto :goto_2

    :cond_4
    move v5, v6

    .line 110
    goto :goto_3
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 140
    const-string v1, "ContextualPageSettings"

    const-string v2, "onPause() "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 143
    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->s_pen_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_s_pen"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->earphone_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_earphone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->car_cardle_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_car_cradle"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/settings/ContextualPageSettings;->desk_cradle_state:I

    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_desk_cardle"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 147
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CONTEXTUALPAGE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "changed"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "ContextualPageSettings"

    const-string v2, "onPause() CONTEXTUALPAGE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

    invoke-virtual {v1}, Lcom/android/settings/ContextualPageEnabler;->pause()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 155
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 190
    iget-object v2, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_s_pen"

    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_s_pen:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 191
    goto :goto_0

    .line 192
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_earphone"

    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_earphone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_2
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_2

    .line 194
    :cond_4
    iget-object v2, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_car_cradle"

    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_car_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    :goto_3
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_3

    .line 196
    :cond_6
    iget-object v2, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "contextual_page_desk_cardle"

    iget-object v4, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPage_desk_cradle:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_7

    :goto_4
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_4
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 127
    const-string v0, "ContextualPageSettings"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 130
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/ContextualPageSettings;->updateContextualPageSaving()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageEnabler:Lcom/android/settings/ContextualPageEnabler;

    invoke-virtual {v0}, Lcom/android/settings/ContextualPageEnabler;->resume()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/ContextualPageSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "contextual_page"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/ContextualPageSettings;->mContextualPageObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 160
    const-string v0, "ContextualPageSettings"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/android/settings/ContextualPageSettings;->mActionBarLayout:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 163
    :cond_0
    return-void
.end method
