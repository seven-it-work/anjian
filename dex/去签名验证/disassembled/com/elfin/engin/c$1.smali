.class final Lcom/elfin/engin/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnKeyEventListener;


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

    iput-object p1, p0, Lcom/elfin/engin/c$1;->a:Lcom/elfin/engin/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyEvent(I)V
    .registers 3

    iget-object v0, p0, Lcom/elfin/engin/c$1;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/elfin/engin/c$1;->a:Lcom/elfin/engin/c;

    invoke-static {v0}, Lcom/elfin/engin/c;->a(Lcom/elfin/engin/c;)Lcom/elfin/engin/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/elfin/engin/e;->b(I)V

    :cond_11
    return-void
.end method
