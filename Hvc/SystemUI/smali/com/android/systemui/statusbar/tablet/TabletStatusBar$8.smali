.class Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;
.super Ljava/lang/Object;
.source "TabletStatusBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/tablet/TabletStatusBar;
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
    .line 2132
    iput-object p1, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "v"

    .prologue
    .line 2134
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->mRecentButton:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 2135
    iget-object v0, p0, Lcom/android/systemui/statusbar/tablet/TabletStatusBar$8;->this$0:Lcom/android/systemui/statusbar/tablet/TabletStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/tablet/TabletStatusBar;->onLongClickRecentButton()V

    .line 2136
    const/4 v0, 0x1

    .line 2138
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
