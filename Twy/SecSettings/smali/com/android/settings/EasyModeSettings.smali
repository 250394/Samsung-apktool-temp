.class public Lcom/android/settings/EasyModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "EasyModeSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;
    }
.end annotation


# instance fields
.field ButtonCancel:Landroid/widget/Button;

.field ButtonOk:Landroid/widget/Button;

.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHelptext:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mModeState:I

.field private mOkDialog:Landroid/app/Dialog;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 252
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/EasyModeSettings;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/EasyModeSettings;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/EasyModeSettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    return p1
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private updateState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 211
    const-string v2, "EasyModeSettings"

    const-string v3, "updateState()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 217
    const/4 v0, 0x0

    .line 222
    .local v0, saved_value:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 223
    .local v1, selected_value:I
    const-string v2, "EasyModeSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saved_value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , selected_vale = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    if-ne v0, v1, :cond_1

    .end local v0           #saved_value:I
    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 226
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    .line 233
    return-void

    .line 220
    .end local v1           #selected_value:I
    :cond_0
    const/4 v0, 0x1

    .restart local v0       #saved_value:I
    goto :goto_0

    .restart local v1       #selected_value:I
    :cond_1
    move v0, v1

    .line 225
    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const v5, 0x104000a

    const/high16 v4, 0x104

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 195
    :goto_0
    return-void

    .line 127
    :pswitch_0
    const-string v1, "EasyModeSettings"

    const-string v2, "setOnClickListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v2, "easy_mode_switch"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 130
    .local v0, saved_value:I
    :cond_0
    const-string v1, "EasyModeSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saved_value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , mSpinner.getSelectedItemPosition() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 132
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x1020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/EasyModeSettings;->startActivity(Landroid/content/Intent;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->finish()V

    goto :goto_0

    .line 138
    :cond_1
    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v1, :cond_3

    .line 139
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 141
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090bad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090bac

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$2;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$2;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$1;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 160
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 163
    :cond_3
    const-string v1, "EasyModeSettings"

    const-string v2, "onClick 1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 165
    :cond_4
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090baa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090ba9

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$4;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$4;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v5, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/EasyModeSettings$3;

    invoke-direct {v2, p0}, Lcom/android/settings/EasyModeSettings$3;-><init>(Lcom/android/settings/EasyModeSettings;)V

    invoke-virtual {v1, v4, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    .line 184
    iget-object v1, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    invoke-virtual {v1, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 189
    .end local v0           #saved_value:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x7f0b0109
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/EasyModeSettings;->mOkDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->dismissDialog()V

    .line 118
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "EasyModeSettings"

    const-string v1, "onCreate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 56
    const v2, 0x7f04005f

    invoke-virtual {p1, v2, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    .line 59
    const v2, 0x7f0b0107

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    .line 60
    const v2, 0x7f0b0106

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    .line 61
    const v2, 0x7f0b0109

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    .line 62
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v2, 0x7f0b010a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    .line 64
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    .line 67
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ba7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090b9a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    const v2, 0x7f0b00e7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    .line 73
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1090009

    iget-object v5, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerArray:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 75
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 76
    new-instance v2, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {v2, p0, p0, v3}, Lcom/android/settings/EasyModeSettings$SpinnerOnItemSelectedListener;-><init>(Lcom/android/settings/EasyModeSettings;Landroid/app/Fragment;Landroid/widget/ArrayAdapter;)V

    iput-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 77
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/EasyModeSettings;->mSpinnerListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "is_onConfigurationChange"

    invoke-virtual {v2, v3, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    .local v0, isOnConfigurationChanged:Z
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getActivity()Landroid/app/Activity;

    invoke-virtual {v2, v7}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "easymode_spinner_value"

    invoke-interface {v2, v3, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    .line 96
    :goto_0
    iget v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    if-nez v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 98
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090ba8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02028c

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 100
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 101
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    :goto_1
    return-object v1

    .line 82
    :cond_0
    if-nez p3, :cond_2

    .line 85
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->resolver:Landroid/content/ContentResolver;

    const-string v3, "easy_mode_switch"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v6, v2, :cond_1

    .line 86
    iput v7, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 89
    :cond_1
    iput v6, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 93
    :cond_2
    const-string v2, "easymode_spinner_value"

    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    goto :goto_0

    .line 104
    :cond_3
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 105
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mHelptext:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/EasyModeSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090bab

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->mImageView:Landroid/widget/ImageView;

    const v3, 0x7f02027f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 107
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonCancel:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 108
    iget-object v2, p0, Lcom/android/settings/EasyModeSettings;->ButtonOk:Landroid/widget/Button;

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 249
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 237
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 206
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 207
    invoke-direct {p0}, Lcom/android/settings/EasyModeSettings;->updateState()V

    .line 208
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 121
    const-string v0, "easymode_spinner_value"

    iget v1, p0, Lcom/android/settings/EasyModeSettings;->mModeState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    return-void
.end method
