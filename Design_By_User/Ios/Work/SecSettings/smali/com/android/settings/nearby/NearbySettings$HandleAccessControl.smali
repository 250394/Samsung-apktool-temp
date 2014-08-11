.class Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;
.super Ljava/lang/Object;
.source "NearbySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nearby/NearbySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandleAccessControl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nearby/NearbySettings;


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1876
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    if-eqz v3, :cond_0

    if-eqz p2, :cond_0

    instance-of v3, p2, Ljava/lang/String;

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 1897
    :goto_0
    return v1

    .line 1881
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mIMediaServer:Lcom/android/settings/nearby/IMediaServer;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$000(Lcom/android/settings/nearby/NearbySettings;)Lcom/android/settings/nearby/IMediaServer;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/settings/nearby/IMediaServer;->setContentAccessAllowed(Ljava/lang/String;)V

    .line 1882
    const-string v3, "0"

    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$2500(Lcom/android/settings/nearby/NearbySettings;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1884
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    #getter for: Lcom/android/settings/nearby/NearbySettings;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/settings/nearby/NearbySettings;->access$400(Lcom/android/settings/nearby/NearbySettings;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090a26

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1891
    :catch_0
    move-exception v0

    .line 1893
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "AllshareSetting"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1894
    goto :goto_0

    .line 1888
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/android/settings/nearby/NearbySettings$HandleAccessControl;->this$0:Lcom/android/settings/nearby/NearbySettings;

    const/4 v4, 0x0

    #setter for: Lcom/android/settings/nearby/NearbySettings;->bInitPreference:Z
    invoke-static {v3, v4}, Lcom/android/settings/nearby/NearbySettings;->access$2502(Lcom/android/settings/nearby/NearbySettings;Z)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
