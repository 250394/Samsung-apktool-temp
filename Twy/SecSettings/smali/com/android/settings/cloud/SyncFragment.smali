.class public abstract Lcom/android/settings/cloud/SyncFragment;
.super Landroid/preference/PreferenceFragment;
.source "SyncFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/cloud/CloudDialog$DialogListener;


# instance fields
.field private dialogFragment:Landroid/app/DialogFragment;

.field protected mActionBarSwitch:Landroid/widget/Switch;

.field private mEmptyView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    return-void
.end method


# virtual methods
.method protected abstract addPreferences()V
.end method

.method protected abstract broadcastStatus()V
.end method

.method protected finish()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStack()V

    .line 123
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/16 v3, 0x10

    const/4 v6, -0x2

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 47
    .local v0, activity:Landroid/app/Activity;
    new-instance v2, Landroid/widget/Switch;

    invoke-direct {v2, v0}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    .line 49
    instance-of v2, v0, Landroid/preference/PreferenceActivity;

    if-eqz v2, :cond_1

    move-object v1, v0

    .line 50
    check-cast v1, Landroid/preference/PreferenceActivity;

    .line 51
    .local v1, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v2

    if-nez v2, :cond_1

    .line 57
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    invoke-virtual {v2, v3, v3}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 59
    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v4, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v4, v6, v6, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3, v4}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x1020004

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/cloud/SyncFragment;->mEmptyView:Landroid/widget/TextView;

    .line 70
    .end local v1           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_1
    return-void
.end method

.method public onCancelButtonClick()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 164
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    const/4 v2, 0x0

    .line 105
    if-eqz p2, :cond_0

    .line 106
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mEmptyView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus()V

    .line 115
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->updateScreen()V

    .line 116
    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 110
    const/4 v0, 0x2

    const v1, 0x7f090c2f

    invoke-virtual {p0, v1}, Lcom/android/settings/cloud/SyncFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lcom/android/settings/cloud/CloudDialog;->getInstance(ILjava/lang/String;Lcom/android/settings/cloud/CloudDialog$DialogListener;)Lcom/android/settings/cloud/CloudDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    .line 112
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0, v2}, Landroid/app/DialogFragment;->setCancelable(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->dialogFragment:Landroid/app/DialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPositiveButtonClick()V
    .locals 0

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->removeAll()V

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->updateScreen()V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->broadcastStatus()V

    .line 156
    return-void
.end method

.method protected abstract removeAll()V
.end method

.method protected setEmptyMessage(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceActivity;

    invoke-virtual {v0}, Landroid/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/cloud/SyncFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    return-void
.end method

.method protected updateScreen()V
    .locals 2

    .prologue
    .line 129
    invoke-static {}, Lcom/android/settings/cloud/CloudSettings;->getInstance()Lcom/android/settings/cloud/CloudSettings;

    move-result-object v0

    .line 131
    .local v0, settings:Lcom/android/settings/cloud/CloudSettings;
    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    .line 145
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/cloud/CloudSettings;->isAccountSet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->finish()V

    goto :goto_0

    .line 139
    :cond_1
    iget-object v1, p0, Lcom/android/settings/cloud/SyncFragment;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->addPreferences()V

    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/cloud/SyncFragment;->removeAll()V

    goto :goto_0
.end method
