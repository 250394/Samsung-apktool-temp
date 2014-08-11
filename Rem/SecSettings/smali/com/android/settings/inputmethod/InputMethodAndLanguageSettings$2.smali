.class Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;
.super Ljava/lang/Object;
.source "InputMethodAndLanguageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->showGuideDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

.field final synthetic val$layout:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 566
    iput-object p1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    iput-object p2, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$layout:Landroid/view/View;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->val$layout:Landroid/view/View;

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 569
    .local v0, check:Landroid/widget/CheckBox;
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings$2;->this$0:Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;

    #calls: Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;->access$200(Lcom/android/settings/inputmethod/InputMethodAndLanguageSettings;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "voiceinputcontrol_showNeverAgain"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 572
    :cond_0
    return-void
.end method
