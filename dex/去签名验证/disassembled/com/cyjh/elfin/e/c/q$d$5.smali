.class final Lcom/cyjh/elfin/e/c/q$d$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/c/q$d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/e/c/q$d;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/c/q$d;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/q$d$5;->a:Lcom/cyjh/elfin/e/c/q$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/q$d$5;->a:Lcom/cyjh/elfin/e/c/q$d;

    invoke-virtual {v0}, Lcom/cyjh/elfin/e/c/q$d;->b()V

    iget-object v0, p0, Lcom/cyjh/elfin/e/c/q$d$5;->a:Lcom/cyjh/elfin/e/c/q$d;

    invoke-virtual {v0}, Lcom/cyjh/elfin/e/c/q$d;->d()V

    return-void
.end method
