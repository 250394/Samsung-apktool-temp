.class Lcom/android/settings/bluetooth/BluetoothGuideSettings$2;
.super Ljava/lang/Object;
.source "BluetoothGuideSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothGuideSettings;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    #getter for: Lcom/android/settings/bluetooth/BluetoothGuideSettings;->onCloseHelpDialogListener:Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->access$100(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$2;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->dismissHelpDialog()V

    .line 255
    return-void
.end method
