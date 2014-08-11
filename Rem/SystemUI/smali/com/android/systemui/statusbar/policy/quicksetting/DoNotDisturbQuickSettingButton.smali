.class public Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;
.super Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;
.source "DoNotDisturbQuickSettingButton.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDndAlertDialog:Landroid/app/AlertDialog;

.field private mDoNotDisturb:Z

.field private mDoNotDisturbDialog:Z

.field mPrefs:Landroid/content/SharedPreferences;

.field mStatusBarManager:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 52
    const/4 v2, 0x0

    const v3, 0x7f09008d

    const v4, 0x7f020155

    const v5, 0x7f020154

    move-object v0, p0

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIIIII)V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setListener(Lcom/android/systemui/statusbar/policy/quicksetting/QuickSettingButton$Listener;)V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturbDialog:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->changePrefs(Z)V

    return-void
.end method

.method private changePrefs(Z)V
    .locals 3
    .parameter "state"

    .prologue
    .line 174
    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 175
    .local v1, newVal:Z
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eq v1, v2, :cond_0

    .line 176
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 177
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 178
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "do_not_disturb"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 179
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 181
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void

    .line 174
    .end local v1           #newVal:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deinit()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 93
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 73
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 76
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "do_not_disturb_dialog"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturbDialog:Z

    .line 78
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    .line 81
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 82
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "do_not_disturb"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 83
    const-string v1, "do_not_disturb_dialog"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturbDialog:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 84
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    const-string v2, "statusbar"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 88
    const-string v1, "systemui/quicksetting/QuickSettingButton"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() - mDoNotDisturb : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void

    .line 78
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public onClick(Z)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v8, 0x0

    .line 96
    const-string v5, "systemui/quicksetting/QuickSettingButton"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick() - state : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    move v0, p1

    .line 100
    .local v0, currentState:Z
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    const v6, 0x7f030021

    invoke-static {v5, v6, v8}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 101
    .local v2, dndAlertView:Landroid/view/View;
    const v5, 0x7f0f00ae

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CompoundButton;

    .line 102
    .local v4, toggle:Landroid/widget/CompoundButton;
    const v5, 0x7f0f00ad

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 104
    .local v1, dndAlertDialogCheckBoxGroup:Landroid/widget/LinearLayout;
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;

    invoke-direct {v5, p0, v4, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Landroid/widget/CompoundButton;Landroid/widget/LinearLayout;)V

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v5, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;

    invoke-direct {v5, p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Landroid/widget/CompoundButton;)V

    invoke-virtual {v4, v5}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 130
    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->changePrefs(Z)V

    .line 132
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 134
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturbDialog:Z

    if-nez v5, :cond_3

    .line 135
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x1010355

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040014

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 140
    .local v3, newDialog:Landroid/app/AlertDialog$Builder;
    const v5, 0x104000a

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Z)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 146
    const/high16 v5, 0x104

    new-instance v6, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$4;

    invoke-direct {v6, p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$4;-><init>(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Landroid/widget/CompoundButton;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 152
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDndAlertDialog:Landroid/app/AlertDialog;

    if-eqz v5, :cond_2

    .line 153
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->removeView(Landroid/view/View;)V

    .line 154
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->removeView(Landroid/view/View;)V

    .line 155
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->removeView(Landroid/view/View;)V

    .line 156
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDndAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 157
    iput-object v8, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDndAlertDialog:Landroid/app/AlertDialog;

    .line 160
    :cond_2
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDndAlertDialog:Landroid/app/AlertDialog;

    .line 161
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDndAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 162
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDndAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 164
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v5, :cond_0

    .line 165
    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapse()V

    goto :goto_0

    .line 168
    .end local v3           #newDialog:Landroid/app/AlertDialog$Builder;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->changePrefs(Z)V

    .line 169
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    goto :goto_0
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .parameter "prefs"
    .parameter "key"

    .prologue
    .line 64
    const-string v1, "do_not_disturb"

    const/4 v2, 0x0

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 66
    .local v0, val:Z
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    if-eq v0, v1, :cond_0

    .line 67
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturb:Z

    .line 70
    :cond_0
    return-void
.end method
