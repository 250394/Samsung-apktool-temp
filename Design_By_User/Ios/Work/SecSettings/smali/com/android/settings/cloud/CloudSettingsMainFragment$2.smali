.class Lcom/android/settings/cloud/CloudSettingsMainFragment$2;
.super Ljava/lang/Object;
.source "CloudSettingsMainFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/cloud/CloudSettingsMainFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/settings/cloud/CloudSettingsMainFragment$2;->this$0:Lcom/android/settings/cloud/CloudSettingsMainFragment;

    #calls: Lcom/android/settings/cloud/CloudSettingsMainFragment;->requestDropboxAuth()V
    invoke-static {v0}, Lcom/android/settings/cloud/CloudSettingsMainFragment;->access$300(Lcom/android/settings/cloud/CloudSettingsMainFragment;)V

    .line 502
    const/4 v0, 0x0

    return v0
.end method
