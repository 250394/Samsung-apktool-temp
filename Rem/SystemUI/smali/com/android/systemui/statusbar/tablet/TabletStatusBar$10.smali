.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;
.super Landroid/content/BroadcastReceiver;
.source "TabletStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3072
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3074
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3075
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3077
    :cond_0
    const/4 v3, 0x0

    .line 3078
    .local v3, excludeRecents:Z
    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3079
    const-string v5, "reason"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3080
    .local v4, reason:Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 3081
    const-string v5, "recentapps"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 3084
    .end local v4           #reason:Ljava/lang/String;
    :cond_1
    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3089
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentsPanel:Lcom/android/systemui/recent/RecentsPanelView;
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$700(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Lcom/android/systemui/recent/RecentsPanelView;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Lcom/android/systemui/recent/RecentsPanelView;->show(ZZ)V

    .line 3090
    const/4 v3, 0x1

    .line 3092
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->animateCollapse(Z)V
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$2300(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;Z)V

    .line 3121
    .end local v3           #excludeRecents:Z
    :cond_3
    :goto_0
    return-void

    .line 3095
    :cond_4
    const-string v5, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 3096
    const-string v5, "TabletStatusBar"

    const-string v6, "ACTION_BATTERY_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3098
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v5, v5, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/tablet/NotificationPanel;

    const v6, 0x7f0f00c6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/tablet/NotificationPanel;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 3099
    .local v2, brightnessController:Landroid/view/View;
    const-string v5, "level"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_6

    .line 3100
    const-string v5, "status"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3101
    .local v1, battStatus:I
    const/4 v5, 0x2

    if-ne v1, v5, :cond_5

    .line 3102
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3103
    const-string v5, "TabletStatusBar"

    const-string v6, "BATTERY_STATUS_CHARGING"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3105
    :cond_5
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3106
    const-string v5, "TabletStatusBar"

    const-string v6, "LOW_BATTERY"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3109
    .end local v1           #battStatus:I
    :cond_6
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 3110
    const-string v5, "TabletStatusBar"

    const-string v6, "NORMAL_BATTERY"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3116
    .end local v2           #brightnessController:Landroid/view/View;
    :cond_7
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #getter for: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mDisplayPlmnIcon:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$500(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)Z

    move-result v5

    if-ne v5, v8, :cond_3

    .line 3117
    const-string v5, "TabletStatusBar"

    const-string v6, "ACTION_SCREEN_ON"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3118
    iget-object v5, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$10;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->showPlmnString()V

    goto :goto_0
.end method
