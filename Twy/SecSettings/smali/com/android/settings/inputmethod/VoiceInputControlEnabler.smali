.class public final Lcom/android/settings/inputmethod/VoiceInputControlEnabler;
.super Ljava/lang/Object;
.source "VoiceInputControlEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private final KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mSwitch:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 1
    .parameter "context"
    .parameter "switch_"

    .prologue
    .line 49
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-string v0, "voice_input_control"

    iput-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->KEY_VOICE_INPUT_CONTROL:Ljava/lang/String;

    .line 50
    iput-object p1, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/inputmethod/VoiceInputControlEnabler;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/VoiceInputControlEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 88
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voiceinputcontrol_showNeverAgain"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 89
    .local v3, showNeverAgain:I
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 91
    .local v4, voiceState:I
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 93
    if-eqz p2, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    .line 94
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v5, 0x7f040040

    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 97
    .local v1, layout:Landroid/view/View;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f090b08

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090b0a

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f090b0b

    new-instance v7, Lcom/android/settings/inputmethod/VoiceInputControlEnabler$1;

    invoke-direct {v7, p0}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler$1;-><init>(Lcom/android/settings/inputmethod/VoiceInputControlEnabler;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 110
    .local v2, mAutoHapticDialog:Landroid/app/AlertDialog;
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 111
    new-instance v5, Lcom/android/settings/inputmethod/VoiceInputControlEnabler$2;

    invoke-direct {v5, p0, v1}, Lcom/android/settings/inputmethod/VoiceInputControlEnabler$2;-><init>(Lcom/android/settings/inputmethod/VoiceInputControlEnabler;Landroid/view/View;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 121
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    .end local v1           #layout:Landroid/view/View;
    .end local v2           #mAutoHapticDialog:Landroid/app/AlertDialog;
    :cond_0
    if-eqz p2, :cond_2

    if-nez v4, :cond_2

    .line 122
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 123
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 124
    const-string v5, "VoiceInputControlEnabler"

    const-string v6, "switch is on"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_1
    :goto_0
    return-void

    .line 125
    :cond_2
    if-nez p2, :cond_1

    if-ne v4, v9, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v5, v8}, Landroid/widget/Switch;->setChecked(Z)V

    .line 127
    iget-object v5, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voice_input_control"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    const-string v5, "VoiceInputControlEnabler"

    const-string v6, "switch is off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voice_input_control"

    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 66
    return-void

    .line 64
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "voice_input_control"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 60
    :goto_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 61
    return-void

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/VoiceInputControlEnabler;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
