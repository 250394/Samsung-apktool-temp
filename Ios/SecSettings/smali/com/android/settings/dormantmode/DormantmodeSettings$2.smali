.class Lcom/android/settings/dormantmode/DormantmodeSettings$2;
.super Landroid/preference/Preference;
.source "DormantmodeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dormantmode/DormantmodeSettings;->initPref()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-direct {p0, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 171
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    invoke-virtual {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->loadDormantTime()V

    .line 172
    const v2, 0x7f0b0102

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 173
    .local v0, mFormBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #setter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2, v0}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$002(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 174
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mStarthour:I
    invoke-static {v3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$100(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mStartmin:I
    invoke-static {v4}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$200(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v4

    #calls: Lcom/android/settings/dormantmode/DormantmodeSettings;->setStartTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$300(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V

    .line 175
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeFromBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$000(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dormantmode/DormantmodeSettings$2$1;

    invoke-direct {v3, p0}, Lcom/android/settings/dormantmode/DormantmodeSettings$2$1;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    const v2, 0x7f0b0104

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 182
    .local v1, mtoBtn:Landroid/widget/Button;
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #setter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2, v1}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$602(Lcom/android/settings/dormantmode/DormantmodeSettings;Landroid/widget/Button;)Landroid/widget/Button;

    .line 183
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    iget-object v3, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndhour:I
    invoke-static {v3}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$700(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mEndmin:I
    invoke-static {v4}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$800(Lcom/android/settings/dormantmode/DormantmodeSettings;)I

    move-result v4

    #calls: Lcom/android/settings/dormantmode/DormantmodeSettings;->setEndTime(II)V
    invoke-static {v2, v3, v4}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$900(Lcom/android/settings/dormantmode/DormantmodeSettings;II)V

    .line 184
    iget-object v2, p0, Lcom/android/settings/dormantmode/DormantmodeSettings$2;->this$0:Lcom/android/settings/dormantmode/DormantmodeSettings;

    #getter for: Lcom/android/settings/dormantmode/DormantmodeSettings;->mTimeToBtn:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/dormantmode/DormantmodeSettings;->access$600(Lcom/android/settings/dormantmode/DormantmodeSettings;)Landroid/widget/Button;

    move-result-object v2

    new-instance v3, Lcom/android/settings/dormantmode/DormantmodeSettings$2$2;

    invoke-direct {v3, p0}, Lcom/android/settings/dormantmode/DormantmodeSettings$2$2;-><init>(Lcom/android/settings/dormantmode/DormantmodeSettings$2;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    return-void
.end method
