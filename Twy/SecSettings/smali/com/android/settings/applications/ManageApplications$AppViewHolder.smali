.class Lcom/android/settings/applications/ManageApplications$AppViewHolder;
.super Ljava/lang/Object;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppViewHolder"
.end annotation


# instance fields
.field appIcon:Landroid/widget/ImageView;

.field appName:Landroid/widget/TextView;

.field appSize:Landroid/widget/TextView;

.field checkBox:Landroid/widget/CheckBox;

.field disabled:Landroid/widget/TextView;

.field entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 212
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateSizeText(Lcom/android/settings/applications/ManageApplications;I)V
    .locals 4
    .parameter "ma"
    .parameter "whichSize"

    .prologue
    .line 221
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSizeText of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 224
    packed-switch p2, :pswitch_data_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 226
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 229
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 235
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/applications/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    #getter for: Lcom/android/settings/applications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;
    invoke-static {p1}, Lcom/android/settings/applications/ManageApplications;->access$000(Lcom/android/settings/applications/ManageApplications;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 224
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
