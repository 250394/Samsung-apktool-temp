.class public Lcom/android/settings/tts/TtsEnginePreference;
.super Landroid/preference/Preference;
.source "TtsEnginePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;
    }
.end annotation


# instance fields
.field private final mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

.field private final mPreferenceActivity:Landroid/preference/PreferenceActivity;

.field private volatile mPreventRadioButtonCallbacks:Z

.field private mRadioButton:Landroid/widget/RadioButton;

.field private final mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mSettingsIcon:Landroid/view/View;

.field private final mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

.field private mVoiceCheckData:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$EngineInfo;Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;Landroid/preference/PreferenceActivity;)V
    .locals 1
    .parameter "context"
    .parameter "info"
    .parameter "state"
    .parameter "prefActivity"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Lcom/android/settings/tts/TtsEnginePreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/tts/TtsEnginePreference$1;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    iput-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 93
    const v0, 0x7f0400b7

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setLayoutResource(I)V

    .line 95
    iput-object p3, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    .line 96
    iput-object p4, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    .line 97
    iput-object p2, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setKey(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    iget-object v0, v0, Landroid/speech/tts/TextToSpeech$EngineInfo;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/tts/TtsEnginePreference;->onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/speech/tts/TextToSpeech$EngineInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mEngineInfo:Landroid/speech/tts/TextToSpeech$EngineInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/tts/TtsEnginePreference;)Landroid/preference/PreferenceActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreferenceActivity:Landroid/preference/PreferenceActivity;

    return-object v0
.end method

.method private onRadioButtonClicked(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 193
    iget-boolean v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    if-eqz v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    if-eqz p2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentChecked()Landroid/widget/Checkable;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0, p1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentKey(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v0}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/tts/TtsEnginePreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 204
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    invoke-virtual {v0, p2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method


# virtual methods
.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 106
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    if-nez v5, :cond_0

    .line 107
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Call to getView() before a call tosetSharedState()"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 112
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0b0214

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 113
    .local v1, rb:Landroid/widget/RadioButton;
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/tts/TtsEnginePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v8}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->getCurrentKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 116
    .local v0, isChecked:Z
    if-eqz v0, :cond_1

    .line 117
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSharedState:Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;

    invoke-interface {v5, v1}, Lcom/android/settings/tts/TtsEnginePreference$RadioButtonGroupState;->setCurrentChecked(Landroid/widget/Checkable;)V

    .line 120
    :cond_1
    iput-boolean v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 121
    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 122
    iput-boolean v7, p0, Lcom/android/settings/tts/TtsEnginePreference;->mPreventRadioButtonCallbacks:Z

    .line 124
    iput-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    .line 126
    const v5, 0x7f0b0215

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 127
    .local v3, textLayout:Landroid/view/View;
    new-instance v5, Lcom/android/settings/tts/TtsEnginePreference$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/tts/TtsEnginePreference$2;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    const v5, 0x7f0b0213

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 135
    .local v2, textButtonLayout:Landroid/view/View;
    new-instance v5, Lcom/android/settings/tts/TtsEnginePreference$3;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/tts/TtsEnginePreference$3;-><init>(Lcom/android/settings/tts/TtsEnginePreference;Landroid/widget/RadioButton;)V

    invoke-virtual {v2, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    const v5, 0x7f0b0216

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    .line 145
    iget-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v8, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 146
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v8, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v8, :cond_4

    :goto_1
    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 147
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    new-instance v6, Lcom/android/settings/tts/TtsEnginePreference$4;

    invoke-direct {v6, p0}, Lcom/android/settings/tts/TtsEnginePreference$4;-><init>(Lcom/android/settings/tts/TtsEnginePreference;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    if-eqz v5, :cond_2

    .line 168
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 169
    iget-object v5, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v6, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v6}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 172
    :cond_2
    return-object v4

    :cond_3
    move v5, v7

    .line 145
    goto :goto_0

    :cond_4
    move v6, v7

    .line 146
    goto :goto_1
.end method

.method public getVoiceDataDetails()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    return-object v0
.end method

.method public setVoiceDataDetails(Landroid/content/Intent;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 176
    iput-object p1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mVoiceCheckData:Landroid/content/Intent;

    .line 180
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/tts/TtsEnginePreference;->mSettingsIcon:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/tts/TtsEnginePreference;->mRadioButton:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 186
    :goto_0
    return-void

    .line 184
    :cond_0
    const-string v0, "TtsEnginePreference"

    const-string v1, "Can\'t update mSettingsIcon cause of null exception"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
