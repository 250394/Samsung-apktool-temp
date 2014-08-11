.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->addPanelWindows()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V
    .locals 0
    .parameter

    .prologue
    .line 598
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 610
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 606
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1
    .parameter "animation"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$1;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    #calls: Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->playTraySound()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->access$100(Lcom/android/systemui/statusbar/tablet/TabletStatusBar;)V

    .line 602
    return-void
.end method
