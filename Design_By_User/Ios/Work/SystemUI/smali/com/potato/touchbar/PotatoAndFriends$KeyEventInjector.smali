.class Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;
.super Ljava/lang/Object;
.source "PotatoAndFriends.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/potato/touchbar/PotatoAndFriends;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyEventInjector"
.end annotation


# instance fields
.field private keyCode:I

.field final synthetic this$0:Lcom/potato/touchbar/PotatoAndFriends;


# direct methods
.method constructor <init>(Lcom/potato/touchbar/PotatoAndFriends;I)V
    .locals 0
    .parameter
    .parameter "keyCode"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;->this$0:Lcom/potato/touchbar/PotatoAndFriends;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p2, p0, Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;->keyCode:I

    .line 38
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 43
    :try_start_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 45
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x0

    iget v3, p0, Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;->keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    .line 44
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 49
    :cond_0
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 51
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v2, 0x1

    iget v3, p0, Lcom/potato/touchbar/PotatoAndFriends$KeyEventInjector;->keyCode:I

    invoke-direct {v1, v2, v3}, Landroid/view/KeyEvent;-><init>(II)V

    const/4 v2, 0x1

    .line 50
    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->injectKeyEvent(Landroid/view/KeyEvent;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    move-exception v0

    goto :goto_0
.end method
