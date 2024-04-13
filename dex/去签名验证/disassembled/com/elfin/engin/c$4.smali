.class final Lcom/elfin/engin/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnScriptListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/engin/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/elfin/engin/c;


# direct methods
.method constructor <init>(Lcom/elfin/engin/c;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPause()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/e;->c()V

    :cond_11
    return-void
.end method

.method public final onResume()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/e;->d()V

    :cond_11
    return-void
.end method

.method public final onScriptIsRunning()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/e;->e()V

    :cond_11
    return-void
.end method

.method public final onSetControlBarVisiable(I)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/elfin/engin/e;->a(I)V

    :cond_11
    return-void
.end method

.method public final onStartScript()V
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/e;->b()V

    :cond_11
    return-void
.end method

.method public final onStopScript(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/elfin/engin/e;->b(ILjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final onUpdateControlBarPos(FII)V
    .registers 5

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$4;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/elfin/engin/e;->a(FII)V

    :cond_11
    return-void
.end method
