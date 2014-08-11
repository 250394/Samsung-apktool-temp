.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 3152
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3155
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3157
    :cond_0
    const/4 v2, 0x0

    .line 3158
    .local v2, excludeRecents:Z
    const-string v4, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 3159
    const-string v4, "reason"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3160
    .local v3, reason:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 3161
    const-string v4, "recentapps"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 3174
    .end local v3           #reason:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapse(Z)V

    .line 3211
    .end local v2           #excludeRecents:Z
    :cond_2
    :goto_1
    return-void

    .line 3165
    .restart local v2       #excludeRecents:Z
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUseStatusBarMarquee:Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3166
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->marqueeStatusBar()V

    .line 3167
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "marqueeStatusBar()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3168
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 3169
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->marqueeNavigationBar()V

    .line 3170
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "marqueeNavigationBar()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3176
    .end local v2           #excludeRecents:Z
    :cond_4
    const-string v4, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3177
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    #calls: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 3178
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateResources()V

    goto :goto_1

    .line 3181
    :cond_5
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDisplayPlmnIcon:Z

    if-ne v4, v7, :cond_6

    .line 3183
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showPlmnString()V

    goto :goto_1

    .line 3189
    :cond_6
    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3190
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "ACTION_BATTERY_CHANGED"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3193
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    if-eqz v4, :cond_2

    sget-boolean v4, Lcom/android/systemui/statusbar/StatusBar;->showBrightController:Z

    if-eqz v4, :cond_2

    .line 3194
    const-string v4, "level"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x5

    if-gt v4, v5, :cond_8

    .line 3195
    const-string v4, "status"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 3196
    .local v1, battStatus:I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_7

    .line 3197
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3198
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "BATTERY_STATUS_CHARGING"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3200
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 3201
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "LOW_BATTERY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3204
    .end local v1           #battStatus:I
    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$9;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->brightnessController:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 3205
    const-string v4, "STATUSBAR-PhoneStatusBar"

    const-string v5, "NORMAL_BATTERY"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
