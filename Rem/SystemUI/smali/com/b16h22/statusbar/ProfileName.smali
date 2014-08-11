.class public Lcom/b16h22/statusbar/ProfileName;
.super Landroid/widget/TextView;
.source "ProfileName.java"


# instance fields
.field name:Ljava/lang/String;

.field profilename:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    const v2, 0x7f0f00eb

    invoke-virtual {p0, v2}, Lcom/b16h22/statusbar/ProfileName;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/b16h22/statusbar/ProfileName;->profilename:Landroid/widget/TextView;

    .line 21
    iget-object v2, p0, Lcom/b16h22/statusbar/ProfileName;->profilename:Landroid/widget/TextView;

    const/high16 v3, 0x4170

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 22
    const-string v2, "EvoPrefsFile"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 23
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "profileName"

    const-string v3, "欢迎使用，雨辰ROM！"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/b16h22/statusbar/ProfileName;->name:Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcom/b16h22/statusbar/ProfileName;->profilename:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/b16h22/statusbar/ProfileName;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    new-instance v0, Lcom/b16h22/statusbar/ProfileName$1;

    invoke-direct {v0, p0, p1}, Lcom/b16h22/statusbar/ProfileName$1;-><init>(Lcom/b16h22/statusbar/ProfileName;Landroid/content/Context;)V

    .line 40
    .local v0, mReceiver:Landroid/content/BroadcastReceiver;
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.b16h22.statusbar.CHANGE_PROFILE_NAME"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 41
    return-void
.end method
