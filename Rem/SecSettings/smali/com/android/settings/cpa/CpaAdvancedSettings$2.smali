.class Lcom/android/settings/cpa/CpaAdvancedSettings$2;
.super Ljava/lang/Object;
.source "CpaAdvancedSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cpa/CpaAdvancedSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cpa/CpaAdvancedSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/cpa/CpaAdvancedSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/android/settings/cpa/CpaAdvancedSettings$2;->this$0:Lcom/android/settings/cpa/CpaAdvancedSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/settings/cpa/CpaAdvancedSettings$2;->this$0:Lcom/android/settings/cpa/CpaAdvancedSettings;

    invoke-virtual {v0}, Lcom/android/settings/cpa/CpaAdvancedSettings;->finish()V

    .line 1018
    return-void
.end method