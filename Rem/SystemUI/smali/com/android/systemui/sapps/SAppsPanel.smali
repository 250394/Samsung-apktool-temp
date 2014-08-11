.class public Lcom/android/systemui/sapps/SAppsPanel;
.super Landroid/widget/FrameLayout;
.source "SAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;,
        Lcom/android/systemui/sapps/SAppsPanel$IconInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x10e

.field private static final ANIMATION_LAYOUT_HEIGHT:I = 0x96

.field private static final ANIMATION_LAYOUT_WIDTH:I = 0x96

.field private static final DEBUG:Z = false

.field private static final ICON_LANDSCAPE_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.landscape.focus"

.field private static final ICON_LANDSCAPE_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.landscape.normal"

.field private static final ICON_PORTRAIT_FOCUS:Ljava/lang/String; = "com.sec.minimode.icon.portrait.focus"

.field private static final ICON_PORTRAIT_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.portrait.normal"

.field private static final ICON_PREVIEW_NORMAL:Ljava/lang/String; = "com.sec.minimode.icon.preview.normal"

.field private static final SYSTEM_UI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "SAppsPanel"


# instance fields
.field private mBackgroundProtector:Landroid/view/View;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mChosenApps:[Ljava/lang/String;

.field private mComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mIconDpi:I

.field private mRecentsContainer:Landroid/widget/LinearLayout;

.field private mSAppsComponentDescriptions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mSAppsList:[Ljava/lang/String;

.field private mSAppsPanelUI:Lcom/android/systemui/sapps/SAppsPanelUI;

.field private mSAppsPanelVisibility:I

.field private mSettingsIcon:Landroid/widget/LinearLayout;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 254
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/sapps/SAppsPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 255
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 258
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    .line 68
    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsList:[Ljava/lang/String;

    .line 69
    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    .line 76
    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mChosenApps:[Ljava/lang/String;

    .line 78
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelVisibility:I

    .line 225
    new-instance v3, Lcom/android/systemui/sapps/SAppsPanel$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/sapps/SAppsPanel$1;-><init>(Lcom/android/systemui/sapps/SAppsPanel;)V

    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 261
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v3, v3, 0xf

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    .line 264
    .local v2, xlarge:Z
    :goto_0
    if-eqz v2, :cond_1

    const/16 v3, 0xf0

    :goto_1
    iput v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mIconDpi:I

    .line 268
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 269
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 270
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 272
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;

    .line 274
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->initComponentDescriptionOrder()V

    .line 276
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->initComponentDescriptions()V

    .line 278
    return-void

    .line 261
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v2           #xlarge:Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 264
    .restart local v2       #xlarge:Z
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/systemui/sapps/SAppsPanel;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/sapps/SAppsPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mIconDpi:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/sapps/SAppsPanel;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->refreshApplicationList()V

    return-void
.end method

.method private initComponentDescriptionOrder()V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f06

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsList:[Ljava/lang/String;

    .line 238
    return-void
.end method

.method private initComponentDescriptions()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 296
    iget-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->mComponentDescriptions:Ljava/util/ArrayList;

    if-eqz v11, :cond_1

    .line 330
    :cond_0
    return-void

    .line 302
    :cond_1
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 304
    .local v10, sAppResolverlist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsList:[Ljava/lang/String;

    .local v3, arr$:[Ljava/lang/String;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_3

    aget-object v1, v3, v7

    .line 305
    .local v1, app:Ljava/lang/String;
    const-string v11, ","

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, component:[Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v2, appIntent:Landroid/content/Intent;
    aget-object v11, v5, v13

    const/4 v12, 0x1

    aget-object v12, v5, v12

    invoke-virtual {v2, v11, v12}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v11, "android.intent.category.DEFAULT"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->pm:Landroid/content/pm/PackageManager;

    const/16 v12, 0x80

    invoke-virtual {v11, v2, v12}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, alist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 311
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 314
    .end local v0           #alist:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1           #app:Ljava/lang/String;
    .end local v2           #appIntent:Landroid/content/Intent;
    .end local v5           #component:[Ljava/lang/String;
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    iput-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    .line 315
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 316
    .local v9, r:Landroid/content/pm/ResolveInfo;
    const/4 v4, 0x0

    .line 317
    .local v4, cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    if-eqz v9, :cond_4

    .line 319
    :try_start_0
    new-instance v4, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .end local v4           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v4, p0, v11}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;-><init>(Lcom/android/systemui/sapps/SAppsPanel;Landroid/content/pm/ComponentInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .restart local v4       #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    :goto_2
    if-eqz v4, :cond_4

    .line 326
    iget-object v11, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 320
    .end local v4           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    :catch_0
    move-exception v6

    .line 321
    .local v6, e:Ljava/lang/Exception;
    const/4 v4, 0x0

    .line 322
    .restart local v4       #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    const-string v11, "SAppsPanel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "initComponentDescriptions() : exception occurs! while loading spen app (serviceInfo="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v9, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private isChosenApp(Ljava/lang/String;)Z
    .locals 6
    .parameter "name"

    .prologue
    const/4 v4, 0x1

    .line 460
    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanel;->mChosenApps:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 468
    :cond_0
    :goto_0
    return v4

    .line 463
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mChosenApps:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 464
    .local v3, str:Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 463
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 468
    .end local v3           #str:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshApplicationList()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 335
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 337
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsComponentDescriptions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .line 338
    .local v0, cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    const/4 v2, 0x0

    .line 339
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f030006

    const/4 v6, 0x0

    invoke-static {v3, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 340
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 344
    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->getName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/sapps/SAppsPanel;->isChosenApp(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 345
    invoke-virtual {v0, v2}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->setIconView(Landroid/view/View;)V

    .line 346
    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->updateLabel()V

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_0

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->updateResources(Z)V

    .line 349
    iget-object v3, p0, Lcom/android/systemui/sapps/SAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 347
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 351
    .end local v0           #cd:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    .end local v2           #view:Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public closeSAppsPanel()V
    .locals 1

    .prologue
    .line 444
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->refreshApplicationList()V

    .line 445
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->setItemsAnimation(Z)V

    .line 446
    return-void
.end method

.method public getPanelVisibility()I
    .locals 1

    .prologue
    .line 456
    iget v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelVisibility:I

    return v0
.end method

.method public isInContentArea(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 242
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 243
    .local v1, l:I
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 244
    .local v2, r:I
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 245
    .local v3, t:I
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 246
    .local v0, b:I
    if-lt p1, v1, :cond_0

    if-ge p1, v2, :cond_0

    if-lt p2, v3, :cond_0

    if-ge p2, v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 354
    if-eqz p1, :cond_1

    .line 356
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    const v5, 0x7f0f0027

    if-ne v4, v5, :cond_2

    .line 357
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.settings.PEN_SETTINGS"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 358
    .local v1, intent:Landroid/content/Intent;
    const v4, 0x10008000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 374
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelUI:Lcom/android/systemui/sapps/SAppsPanelUI;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/systemui/sapps/SAppsPanelUI;->closeSAppsPanel(Z)V

    .line 376
    .end local v1           #intent:Landroid/content/Intent;
    :cond_1
    return-void

    .line 361
    :cond_2
    move-object v3, p1

    .line 362
    .local v3, v:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;

    .line 363
    .local v0, componentDescription:Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;
    #getter for: Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->access$300(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v2

    .line 364
    .local v2, name:Landroid/content/ComponentName;
    const/4 v1, 0x0

    .line 365
    .restart local v1       #intent:Landroid/content/Intent;
    #getter for: Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->ci:Landroid/content/pm/ComponentInfo;
    invoke-static {v0}, Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;->access$400(Lcom/android/systemui/sapps/SAppsPanel$ComponentDescription;)Landroid/content/pm/ComponentInfo;

    move-result-object v4

    instance-of v4, v4, Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_0

    .line 368
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 369
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 370
    const/high16 v4, 0x1020

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 371
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 282
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 286
    const v0, 0x7f0f0026

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;

    .line 287
    const v0, 0x7f0f0024

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mBackgroundProtector:Landroid/view/View;

    .line 289
    const v0, 0x7f0f0027

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSettingsIcon:Landroid/widget/LinearLayout;

    .line 290
    iget-object v0, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSettingsIcon:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/sapps/SAppsPanel;->refreshApplicationList()V

    .line 292
    return-void
.end method

.method public openSAppsPanel()V
    .locals 1

    .prologue
    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/sapps/SAppsPanel;->setItemsAnimation(Z)V

    .line 440
    return-void
.end method

.method public setCallView(Lcom/android/systemui/sapps/SAppsPanelUI;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelUI:Lcom/android/systemui/sapps/SAppsPanelUI;

    .line 251
    return-void
.end method

.method public setItemsAnimation(Z)V
    .locals 12
    .parameter "isShowAnim"

    .prologue
    const v11, 0x7f0f0025

    const/high16 v10, 0x4316

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 379
    const/16 v3, 0x96

    .line 380
    .local v3, sPenAppItemHeight:I
    const/16 v4, 0x96

    .line 381
    .local v4, sPenAppItemWidth:I
    invoke-virtual {p0}, Lcom/android/systemui/sapps/SAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v8, v6, :cond_0

    move v2, v6

    .line 383
    .local v2, isPortrait:Z
    :goto_0
    if-eqz p1, :cond_1

    .line 385
    const/4 v5, 0x0

    .line 390
    .local v5, showAppPanel:Landroid/view/animation/TranslateAnimation;
    new-instance v5, Landroid/view/animation/TranslateAnimation;

    .end local v5           #showAppPanel:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v5, v10, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 392
    .restart local v5       #showAppPanel:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0x10e

    invoke-virtual {v5, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 394
    invoke-virtual {p0, v11}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 395
    .local v0, bg:Landroid/view/View;
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-virtual {v0, v5}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 398
    invoke-virtual {v0, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 435
    .end local v5           #showAppPanel:Landroid/view/animation/TranslateAnimation;
    :goto_1
    return-void

    .end local v0           #bg:Landroid/view/View;
    .end local v2           #isPortrait:Z
    :cond_0
    move v2, v7

    .line 381
    goto :goto_0

    .line 402
    .restart local v2       #isPortrait:Z
    :cond_1
    const/4 v1, 0x0

    .line 406
    .local v1, hideAppPanel:Landroid/view/animation/TranslateAnimation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    .end local v1           #hideAppPanel:Landroid/view/animation/TranslateAnimation;
    invoke-direct {v1, v9, v10, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 408
    .restart local v1       #hideAppPanel:Landroid/view/animation/TranslateAnimation;
    const-wide/16 v8, 0x10e

    invoke-virtual {v1, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 410
    invoke-virtual {p0, v11}, Lcom/android/systemui/sapps/SAppsPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 411
    .restart local v0       #bg:Landroid/view/View;
    const/4 v6, 0x4

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 414
    invoke-virtual {v0, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 416
    new-instance v6, Lcom/android/systemui/sapps/SAppsPanel$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/sapps/SAppsPanel$2;-><init>(Lcom/android/systemui/sapps/SAppsPanel;)V

    invoke-virtual {v1, v6}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_1
.end method

.method public setPanelVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 449
    iput p1, p0, Lcom/android/systemui/sapps/SAppsPanel;->mSAppsPanelVisibility:I

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/systemui/sapps/SAppsPanel;->setVisibility(I)V

    .line 452
    return-void
.end method
