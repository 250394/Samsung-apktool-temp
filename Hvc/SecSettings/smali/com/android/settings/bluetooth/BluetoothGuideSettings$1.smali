.class Lcom/android/settings/bluetooth/BluetoothGuideSettings$1;
.super Ljava/lang/Object;
.source "BluetoothGuideSettings.java"

# interfaces
.implements Lcom/android/settings/bluetooth/BluetoothGuideSettings$OnCloseHelpDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showHelpDialog(I)V
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
    .line 147
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnCloseHelpDialog()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$1;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    #calls: Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showCompleteDialog()V
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->access$000(Lcom/android/settings/bluetooth/BluetoothGuideSettings;)V

    .line 150
    return-void
.end method
