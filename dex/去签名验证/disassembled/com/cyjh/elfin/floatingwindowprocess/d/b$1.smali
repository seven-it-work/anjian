.class final Lcom/cyjh/elfin/floatingwindowprocess/d/b$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/floatingwindowprocess/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/d/b;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_26

    const/4 v1, 0x3

    if-ne v0, v1, :cond_15

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/elfin/engin/a/c$a;->a()Lcom/elfin/engin/a/c;

    iget-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/d/b$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/d/b;

    iget p1, p1, Lcom/cyjh/elfin/floatingwindowprocess/d/b;->b:I

    return-void

    :cond_15
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_26

    invoke-static {}, Lcom/cyjh/http/c/c/f;->a()Lcom/cyjh/http/c/c/f;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/cyjh/http/c/c/f;->a(Landroid/content/Context;)V

    :cond_26
    return-void
.end method
