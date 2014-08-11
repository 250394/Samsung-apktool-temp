.class public Lcom/android/settings/dormantmode/DormantModeCustomList;
.super Landroid/app/Activity;
.source "DormantModeCustomList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 51
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const v3, 0x1020002

    .line 41
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/dormantmode/DormantModeCustomList;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 44
    .local v0, fm:Landroid/app/FragmentManager;
    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_0

    .line 45
    new-instance v1, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;

    invoke-direct {v1}, Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;-><init>()V

    .line 46
    .local v1, list:Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v3, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commit()I

    .line 49
    .end local v1           #list:Lcom/android/settings/dormantmode/DormantModeCustomList$CustomListFragment;
    :cond_0
    return-void
.end method
