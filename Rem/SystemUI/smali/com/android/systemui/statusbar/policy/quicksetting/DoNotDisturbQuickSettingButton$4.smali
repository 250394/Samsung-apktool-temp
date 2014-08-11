.class Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$4;
.super Ljava/lang/Object;
.source "DoNotDisturbQuickSettingButton.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$4;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$4;->val$toggle:Landroid/widget/CompoundButton;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$4;->val$toggle:Landroid/widget/CompoundButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 149
    return-void
.end method
