.class Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;
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

.field final synthetic val$currentState:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;->val$currentState:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;->val$currentState:Z

    #calls: Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->changePrefs(Z)V
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->access$200(Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;Z)V

    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton$3;->this$0:Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/quicksetting/DoNotDisturbQuickSettingButton;->setActivateStatus(I)V

    .line 144
    return-void
.end method
