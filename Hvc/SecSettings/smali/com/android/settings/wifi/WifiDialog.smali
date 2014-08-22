.class Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# instance fields
.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mCWError:I

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private final mEdit:Z

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mRetry:Z

.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 1
    .parameter "context"
    .parameter "style"
    .parameter "listener"
    .parameter "accessPoint"
    .parameter "edit"
    .parameter "retry"

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/WifiDialog;->mCWError:I

    .line 67
    iput-boolean p5, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:Z

    .line 68
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->mRetry:Z

    .line 69
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 70
    iput-object p4, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 71
    return-void
.end method


# virtual methods
.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 147
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040111

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 86
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v4, p0, Lcom/android/settings/wifi/WifiDialog;->mEdit:Z

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiDialog;->mRetry:Z

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 88
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 90
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 93
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b01a7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 94
    .local v1, layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 95
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0310

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 97
    :cond_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0330

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 98
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0331

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 100
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0351

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 101
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0332

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 102
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0333

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 103
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0334

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 105
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0357

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 106
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0358

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 109
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b035b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 110
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 111
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b035c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 112
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b035d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 114
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b032b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 115
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 116
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b032c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 118
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0337

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 119
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 120
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0338

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 122
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b033e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 123
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 124
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b033f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->dismissSpinnerPopup()V

    .line 126
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b035a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 127
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 128
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b0312

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 129
    .local v0, checkbox:Landroid/widget/CheckBox;
    const v2, 0x7f090245

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 130
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/WifiConfigController;->onClick(Landroid/view/View;)V

    .line 132
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b035e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1           #layout:Landroid/widget/LinearLayout;
    check-cast v1, Landroid/widget/LinearLayout;

    .line 133
    .restart local v1       #layout:Landroid/widget/LinearLayout;
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_8

    .line 134
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    const v3, 0x7f0b035f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 135
    .restart local v0       #checkbox:Landroid/widget/CheckBox;
    const v2, 0x7f090223

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setText(I)V

    .line 136
    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2, v0}, Lcom/android/settings/wifi/WifiConfigController;->onClick(Landroid/view/View;)V

    .line 138
    .end local v0           #checkbox:Landroid/widget/CheckBox;
    :cond_8
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 172
    const/4 v0, -0x2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 173
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 167
    const/4 v0, -0x3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 168
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 162
    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 163
    return-void
.end method
