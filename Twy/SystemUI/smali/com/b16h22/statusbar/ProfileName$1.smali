.class Lcom/b16h22/statusbar/ProfileName$1;
.super Landroid/content/BroadcastReceiver;
.source "ProfileName.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b16h22/statusbar/ProfileName;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/b16h22/statusbar/ProfileName;

.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/b16h22/statusbar/ProfileName;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/b16h22/statusbar/ProfileName$1;->this$0:Lcom/b16h22/statusbar/ProfileName;

    iput-object p2, p0, Lcom/b16h22/statusbar/ProfileName$1;->val$context:Landroid/content/Context;

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "c"
    .parameter "i"

    .prologue
    .line 30
    iget-object v2, p0, Lcom/b16h22/statusbar/ProfileName$1;->this$0:Lcom/b16h22/statusbar/ProfileName;

    const-string v3, "NAME"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/b16h22/statusbar/ProfileName;->name:Ljava/lang/String;

    .line 31
    iget-object v2, p0, Lcom/b16h22/statusbar/ProfileName$1;->this$0:Lcom/b16h22/statusbar/ProfileName;

    iget-object v2, v2, Lcom/b16h22/statusbar/ProfileName;->profilename:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/b16h22/statusbar/ProfileName$1;->this$0:Lcom/b16h22/statusbar/ProfileName;

    iget-object v3, v3, Lcom/b16h22/statusbar/ProfileName;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v2, p0, Lcom/b16h22/statusbar/ProfileName$1;->val$context:Landroid/content/Context;

    const-string v3, "EvoPrefsFile"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 33
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 34
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "profileName"

    iget-object v3, p0, Lcom/b16h22/statusbar/ProfileName$1;->this$0:Lcom/b16h22/statusbar/ProfileName;

    iget-object v3, v3, Lcom/b16h22/statusbar/ProfileName;->name:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 35
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 36
    return-void
.end method
