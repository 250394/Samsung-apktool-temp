.class public Lcom/android/settings/FontSizeListAdapter;
.super Landroid/widget/BaseAdapter;
.source "FontSizeListAdapter.java"


# instance fields
.field context:Landroid/content/Context;

.field public mFontSizeNames:Ljava/util/Vector;

.field public mFontSizeValues:Ljava/util/Vector;

.field mInflater:Landroid/view/LayoutInflater;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    const v5, 0x7f0908b2

    const v4, 0x7f0908b1

    const v3, 0x7f0908b0

    .line 59
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 41
    iput-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    .line 44
    iput-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 46
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    .line 47
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    .line 60
    iput-object p1, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    .line 61
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 63
    invoke-static {p1}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "1.15"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "1.30"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "0.85"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "0.93"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "1.30"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0908af

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeValues:Ljava/util/Vector;

    const-string v1, "1.80"

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/settings/FontSizeListAdapter;->mFontSizeNames:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 105
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const v10, 0x7f0908b2

    const v9, 0x7f0908b1

    const v8, 0x7f0908b0

    .line 122
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x1090119

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 123
    const v5, 0x1020014

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 125
    .local v3, v:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    const v6, 0x1030044

    invoke-virtual {v3, v5, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 128
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    .line 129
    .local v4, wm:Landroid/view/WindowManager;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 130
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 131
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 134
    .local v0, density:I
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/settings/Utils;->isFolderModel(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 135
    packed-switch p1, :pswitch_data_0

    .line 147
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    const/high16 v1, 0x41c8

    .line 179
    .local v1, mFontsize:F
    :goto_0
    const/4 v5, 0x1

    invoke-virtual {v3, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 187
    return-object v3

    .line 138
    .end local v1           #mFontsize:F
    :pswitch_1
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    const/high16 v1, 0x41e8

    .line 140
    .restart local v1       #mFontsize:F
    goto :goto_0

    .line 142
    .end local v1           #mFontsize:F
    :pswitch_2
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    const/high16 v1, 0x41b0

    .line 144
    .restart local v1       #mFontsize:F
    goto :goto_0

    .line 153
    .end local v1           #mFontsize:F
    :cond_0
    packed-switch p1, :pswitch_data_1

    .line 173
    :pswitch_3
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const/high16 v1, 0x41b0

    .restart local v1       #mFontsize:F
    goto :goto_0

    .line 156
    .end local v1           #mFontsize:F
    :pswitch_4
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0908af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    const/high16 v1, 0x4220

    .line 158
    .restart local v1       #mFontsize:F
    goto :goto_0

    .line 160
    .end local v1           #mFontsize:F
    :pswitch_5
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    const/high16 v1, 0x41e8

    .line 162
    .restart local v1       #mFontsize:F
    goto :goto_0

    .line 164
    .end local v1           #mFontsize:F
    :pswitch_6
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const/high16 v1, 0x41a0

    .line 166
    .restart local v1       #mFontsize:F
    goto :goto_0

    .line 168
    .end local v1           #mFontsize:F
    :pswitch_7
    iget-object v5, p0, Lcom/android/settings/FontSizeListAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0908b3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const/high16 v1, 0x4190

    .line 170
    .restart local v1       #mFontsize:F
    goto :goto_0

    .line 135
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 153
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
