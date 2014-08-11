.class Lcom/android/systemui/statusbar/policy/ToggleSlider$1;
.super Ljava/lang/Object;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 121
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    return v0

    .line 123
    :pswitch_0
    const/16 v2, 0x42

    if-eq p2, v2, :cond_1

    const/16 v2, 0x17

    if-ne p2, v2, :cond_0

    .line 126
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSupportFolderType:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$000(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #calls: Lcom/android/systemui/statusbar/policy/ToggleSlider;->isFolderOpen()Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$200(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0900d9

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 130
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    #getter for: Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Landroid/widget/CompoundButton;
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->access$300(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Landroid/widget/CompoundButton;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;->this$0:Lcom/android/systemui/statusbar/policy/ToggleSlider;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    :cond_3
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    move v0, v1

    .line 132
    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
