.class public Lcom/android/settings/lockscreenshortcut/AppList;
.super Landroid/app/ListActivity;
.source "AppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;,
        Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;,
        Lcom/android/settings/lockscreenshortcut/AppList$ViewHolder;
    }
.end annotation


# instance fields
.field private mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

.field private mClickedViewIndex:I

.field private mIconCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mNumOfSavedShortcut:I

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSetedShortcut_activity:[Ljava/lang/String;

.field private mSetedShortcut_package:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 52
    iput v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 53
    iput v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    .line 54
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    aput-object v1, v0, v3

    aput-object v1, v0, v4

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    .line 179
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/lockscreenshortcut/AppList;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/lockscreenshortcut/AppList;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 21
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 63
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/settings/lockscreenshortcut/AppList;->setResult(I)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getIntent()Landroid/content/Intent;

    move-result-object v13

    .line 66
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "shortcut_app_list"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 67
    .local v20, shortcut_app_list:Ljava/lang/String;
    const-string v2, "num_of_shortcut"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 68
    const-string v2, "clicked_view_index"

    invoke-virtual {v13, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    .line 70
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_0

    .line 71
    const/4 v2, 0x4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    .line 74
    :cond_0
    const-string v14, ""

    .line 75
    .local v14, intent_content:Ljava/lang/String;
    const/4 v12, 0x0

    .line 76
    .local v12, index:I
    const/16 v17, 0x0

    .line 77
    .local v17, old_index:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v11, v2, :cond_1

    .line 78
    move/from16 v17, v12

    .line 79
    const/16 v2, 0x3b

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 80
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 81
    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v18

    .line 82
    .local v18, package_index:I
    const/4 v2, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    .line 83
    .local v19, package_name:Ljava/lang/String;
    add-int/lit8 v2, v18, 0x1

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v14, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 84
    .local v9, activity_name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    aput-object v19, v2, v11

    .line 85
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aput-object v9, v2, v11

    .line 86
    add-int/lit8 v12, v12, 0x1

    .line 77
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 89
    .end local v9           #activity_name:Ljava/lang/String;
    .end local v18           #package_index:I
    .end local v19           #package_name:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    .line 90
    new-instance v8, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v8, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 91
    .local v8, LauncherIntent:Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v8, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    const/16 v3, 0x20

    invoke-virtual {v2, v8, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 95
    .local v7, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v10, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;)V

    .line 96
    .local v10, alphaComparator:Lcom/android/settings/lockscreenshortcut/AppList$AlphaComparator;
    invoke-static {v7, v10}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 98
    const/4 v11, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mNumOfSavedShortcut:I

    if-ge v11, v2, :cond_4

    .line 99
    const/4 v15, 0x0

    .local v15, j:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_3

    .line 100
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_package:[Ljava/lang/String;

    aget-object v3, v2, v11

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mSetedShortcut_activity:[Ljava/lang/String;

    aget-object v3, v2, v11

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 101
    invoke-interface {v7, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 99
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 98
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 106
    .end local v15           #j:I
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    .line 107
    const/4 v11, 0x0

    :goto_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v11, v2, :cond_5

    .line 108
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mIconCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 111
    :cond_5
    new-instance v2, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    const v5, 0x7f040078

    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;-><init>(Lcom/android/settings/lockscreenshortcut/AppList;Landroid/content/Context;IILjava/util/List;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/lockscreenshortcut/AppList;->getListView()Landroid/widget/ListView;

    move-result-object v16

    .line 114
    .local v16, list_view:Landroid/widget/ListView;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 115
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 116
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter "parent"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 120
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 121
    .local v0, result_intent:Landroid/content/Intent;
    const-string v2, "AppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " shortcut selected : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const-string v2, "selected_package"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    const-string v2, "selected_activity"

    iget-object v1, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mAppListAdapter:Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;

    invoke-virtual {v1, p3}, Lcom/android/settings/lockscreenshortcut/AppList$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "clicked_view_index"

    iget v2, p0, Lcom/android/settings/lockscreenshortcut/AppList;->mClickedViewIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 125
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/lockscreenshortcut/AppList;->setResult(ILandroid/content/Intent;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/lockscreenshortcut/AppList;->finish()V

    .line 127
    return-void
.end method
