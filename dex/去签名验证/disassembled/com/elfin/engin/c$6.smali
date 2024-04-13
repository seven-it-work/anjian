.class final Lcom/elfin/engin/c$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnSpecialMqCmdCallback;


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

    iput-object p1, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final doSpecialFuction(ILjava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {p1}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {p1}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/elfin/engin/e;->d(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final getForegroundPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/e;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getRunningPackages()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/elfin/engin/e;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public final inputText(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/elfin/engin/e;->c(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final keyPress(I)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/elfin/engin/e;->c(I)V

    :cond_11
    return-void
.end method

.method public final killApp(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/elfin/engin/e;->b(Ljava/lang/String;)V

    :cond_11
    return-void
.end method

.method public final launchApp(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$6;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/elfin/engin/e;->a(Ljava/lang/String;)V

    :cond_11
    return-void
.end method
