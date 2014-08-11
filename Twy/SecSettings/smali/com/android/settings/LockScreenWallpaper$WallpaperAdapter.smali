.class public Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;
.super Landroid/widget/BaseAdapter;
.source "LockScreenWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LockScreenWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WallpaperAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/LockScreenWallpaper;


# direct methods
.method public constructor <init>(Lcom/android/settings/LockScreenWallpaper;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    .line 147
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 148
    iput-object p2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    .line 149
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    .prologue
    .line 153
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mIsTypeHome:Z
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$000(Lcom/android/settings/LockScreenWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 173
    :cond_0
    return v0

    .line 156
    :cond_1
    const/4 v0, 0x0

    .line 158
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v3, "com.android.wallpaper.livepicker"

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 163
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 158
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    :cond_4
    const-string v3, "com.sec.android.gallery3d"

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v3, "com.sec.android.app.wallpaperchooser"

    iget-object v2, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 168
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 178
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 183
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/16 v6, 0x8

    .line 195
    if-nez p2, :cond_2

    .line 196
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mInflater:Landroid/view/LayoutInflater;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$300(Lcom/android/settings/LockScreenWallpaper;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0400f8

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 200
    new-instance v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    invoke-direct {v1}, Lcom/android/settings/LockScreenWallpaper$ViewHolder;-><init>()V

    .line 201
    .local v1, holder:Lcom/android/settings/LockScreenWallpaper$ViewHolder;
    const v3, 0x7f0b02ea

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    .line 202
    const v3, 0x7f0b02eb

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    .line 203
    const v3, 0x7f0b004d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 206
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mIsTablet:Z
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$400(Lcom/android/settings/LockScreenWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->mContext:Landroid/content/Context;

    const v5, 0x1030042

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 211
    :cond_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 219
    :goto_0
    move v0, p1

    .line 220
    .local v0, count:I
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mIsTypeHome:Z
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$000(Lcom/android/settings/LockScreenWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 221
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$500(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$500(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 253
    :cond_1
    return-object p2

    .line 215
    .end local v0           #count:I
    .end local v1           #holder:Lcom/android/settings/LockScreenWallpaper$ViewHolder;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;

    .restart local v1       #holder:Lcom/android/settings/LockScreenWallpaper$ViewHolder;
    goto :goto_0

    .line 224
    .restart local v0       #count:I
    :cond_3
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->isTypeBoth:Z
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$200(Lcom/android/settings/LockScreenWallpaper;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 225
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 226
    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v4, "com.android.wallpaper.livepicker"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 229
    :cond_4
    if-nez v0, :cond_5

    .line 230
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$500(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$500(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$600(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 235
    :cond_5
    add-int/lit8 v0, v0, -0x1

    .line 225
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 239
    .end local v2           #i:I
    :cond_7
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 240
    const-string v4, "com.sec.android.gallery3d"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v4, "com.sec.android.app.wallpaperchooser"

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 242
    :cond_8
    if-nez v0, :cond_9

    .line 243
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$500(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    iget-object v3, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v4, v1, Lcom/android/settings/LockScreenWallpaper$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v5, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/settings/LockScreenWallpaper;->access$500(Lcom/android/settings/LockScreenWallpaper;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->ItemName:[Ljava/lang/String;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$600(Lcom/android/settings/LockScreenWallpaper;)[Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/android/settings/LockScreenWallpaper$WallpaperAdapter;->this$0:Lcom/android/settings/LockScreenWallpaper;

    #getter for: Lcom/android/settings/LockScreenWallpaper;->rList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/settings/LockScreenWallpaper;->access$100(Lcom/android/settings/LockScreenWallpaper;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    aput-object v3, v4, p1

    .line 248
    :cond_9
    add-int/lit8 v0, v0, -0x1

    .line 239
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_2
.end method
