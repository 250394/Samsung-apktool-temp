.class public Lcom/android/settings/LockScreenWallpaper;
.super Lcom/android/internal/app/AlertActivity;
.source "LockScreenWallpaper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/LockScreenWallpaper$AlphaComparator;,
        Lcom/android/settings/LockScreenWallpaper$ViewHolder;,
        Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
    }
.end annotation


# instance fields
.field private ItemName:[Ljava/lang/String;

.field private isTypeBoth:Z

.field private mDirectWallpaper:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsTablet:Z

.field private mIsTypeHome:Z

.field private mPm:Landroid/content/pm/PackageManager;

.field private rList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 58
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    .line 59
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTypeHome:Z

    .line 61
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTablet:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 269
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTypeHome:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/LockScreenWallpaper;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTablet:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .parameter "dialog"
    .parameter "position"

    .prologue
    const/4 v5, 0x1

    .line 112
    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTypeHome:Z

    if-eqz v3, :cond_0

    .line 113
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 114
    .local v0, intent:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    .line 141
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 117
    :cond_0
    const-string v3, "com.sec.android.gallery3d"

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 119
    .restart local v0       #intent:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_1

    .line 120
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.BothScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 122
    :cond_1
    const-string v3, "com.sec.android.gallery3d"

    const-string v4, "com.sec.android.gallery3d.app.LockScreen"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 124
    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;

    aget-object v4, v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 125
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 126
    .local v2, intentLiveWallpaperChooser:Landroid/content/Intent;
    const-string v3, "SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.wallpaper.livepicker"

    const-string v5, "com.android.wallpaper.livepicker.LiveWallpaperActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    invoke-virtual {p0, v2}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    .end local v2           #intentLiveWallpaperChooser:Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v1, intentCallWallpaperChooser:Landroid/content/Intent;
    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    if-eqz v3, :cond_4

    .line 133
    const-string v3, "SET_WALLPAPER_MODE"

    const/4 v4, 0x2

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    :goto_2
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.wallpaperchooser"

    const-string v5, "com.sec.android.app.wallpaperchooser.WallpaperChooser"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v1}, Lcom/android/settings/LockScreenWallpaper;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 135
    :cond_4
    const-string v3, "SET_WALLPAPER_MODE"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-static {v5}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTablet:Z

    .line 74
    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTablet:Z

    if-eqz v3, :cond_0

    .line 75
    invoke-virtual {p0, v7}, Lcom/android/settings/LockScreenWallpaper;->setFinishOnTouchOutside(Z)V

    .line 79
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/android/settings/LockScreenWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "direct_wallpaper"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    const-string v3, "Direct"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDirectWallpaper : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "both"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v7, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mDirectWallpaper:Z

    if-eqz v3, :cond_2

    .line 88
    :cond_1
    iput-boolean v7, p0, Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z

    .line 90
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "home"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/LockScreenWallpaper;->mIsTypeHome:Z

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    .line 94
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 95
    .local v2, pickWallpaper:Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;

    const/high16 v4, 0x1

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    .line 98
    new-instance v1, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;

    invoke-direct {v1, p0}, Lcom/android/settings/LockScreenWallpaper$AlphaComparator;-><init>(Lcom/android/settings/LockScreenWallpaper;)V

    .line 99
    .local v1, mAlphaComparator:Lcom/android/settings/LockScreenWallpaper$AlphaComparator;
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;

    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 101
    iget-object v0, p0, Lcom/android/settings/LockScreenWallpaper;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 103
    .local v0, ap:Lcom/android/internal/app/AlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0907da

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 104
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 105
    new-instance v3, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;

    invoke-direct {v3, p0, p0}, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;-><init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V

    iput-object v3, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/LockScreenWallpaper;->setupAlert()V

    .line 108
    return-void
.end method
