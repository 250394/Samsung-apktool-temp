.class Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;
.super Ljava/lang/Object;
.source "DoNotDisturbQuickSettingButton.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->onClick(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

.field final synthetic val$toggle:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Landroid/widget/CompoundButton;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;->val$toggle:Landroid/widget/CompoundButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .parameter "buttonView"
    .parameter "isChecked"

    .prologue
    .line 116
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;->val$toggle:Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 117
    const-string v1, "emin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCheckedChanged"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    #getter for: Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->access$000(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 119
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "do_not_disturb_dialog"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 120
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    #setter for: Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->mDoNotDisturbDialog:Z
    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->access$102(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Z)Z

    .line 125
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$2;->val$toggle:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 127
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    return-void
.end method
