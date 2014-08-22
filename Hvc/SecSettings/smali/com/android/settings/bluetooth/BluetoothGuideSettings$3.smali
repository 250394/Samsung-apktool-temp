.class Lcom/android/settings/bluetooth/BluetoothGuideSettings$3;
.super Ljava/lang/Object;
.source "BluetoothGuideSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/BluetoothGuideSettings;->showCompleteDialog()V
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
    .line 279
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 283
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "settings:guide_completed"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 284
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothGuideSettings$3;->this$0:Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->startActivity(Landroid/content/Intent;)V

    .line 286
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->access$200()Lcom/android/settings/bluetooth/BluetoothGuideSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/bluetooth/BluetoothGuideSettings;->finish()V

    .line 287
    return-void
.end method
