.class Lcom/android/settings/dormantmode/DormantmodeSettings$1;
.super Landroid/database/ContentObserver;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dormantmode/DormantmodeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.DORMANTMODE_SWITCH_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 89
    const-string v1, "DormantModeSettings"

    const-string v2, "onChange() DORMANTMODE_SWITCH_CHANGED"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$1;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->updateDormantmodepage()V

    .line 91
    return-void
.end method
