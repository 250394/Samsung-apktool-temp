.class Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;
.super Ljava/lang/Object;
.source "DoNotDisturbQuickSettingButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$dndAlertDialogCheckBoxGroup:Landroid/widget/LinearLayout;

.field final synthetic val$toggle:Landroid/widget/CompoundButton;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Landroid/widget/CompoundButton;Landroid/widget/LinearLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;->val$toggle:Landroid/widget/CompoundButton;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;->val$dndAlertDialogCheckBoxGroup:Landroid/widget/LinearLayout;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;->val$toggle:Landroid/widget/CompoundButton;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;->val$toggle:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$1;->val$dndAlertDialogCheckBoxGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSoundEffectsEnabled(Z)V

    .line 109
    return-void

    .line 107
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
