.class Lcom/android/settings/dormantmode/DormantmodeSettings$2$1;
.super Ljava/lang/Object;
.source "DormantmodeSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantmodeSettings$2;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/dormantmode/DormantmodeSettings$2;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantmodeSettings$2;)V
    .locals 0
    .parameter

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2$1;->this$1:Lcom/android/settings/dormantmode/DormantmodeSettings$2;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2$1;->this$1:Lcom/android/settings/dormantmode/DormantmodeSettings$2;

    iget-object v0, v0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$402(I)I

    move-result v1

    #calls: Lcom/android/settings/dormantmode/DormantmodeSettings;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$500(Lcom/android/settings/dormantmode/DormantmodeSettings;I)V

    .line 178
    return-void
.end method
