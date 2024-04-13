.class final Lcom/elfin/engin/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnEngineStartCallback;


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

    iput-object p1, p0, Lcom/elfin/engin/c$3;->a:Lcom/elfin/engin/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEngineStart(I)V
    .registers 2

    iget-object p1, p0, Lcom/elfin/engin/c$3;->a:Lcom/elfin/engin/c;

    invoke-static {p1}, Lcom/elfin/engin/c;->b(Lcom/elfin/engin/c;)Z

    iget-object p1, p0, Lcom/elfin/engin/c$3;->a:Lcom/elfin/engin/c;

    invoke-static {p1}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object p1

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/elfin/engin/c$3;->a:Lcom/elfin/engin/c;

    invoke-static {p1}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/elfin/engin/e;->a()V

    :cond_16
    return-void
.end method
