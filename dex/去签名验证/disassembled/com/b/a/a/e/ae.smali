.class final Lcom/b/a/a/e/ae;
.super Lcom/b/b/a;


# instance fields
.field final synthetic a:Lcom/b/a/a/e/ab;


# direct methods
.method constructor <init>(Lcom/b/a/a/e/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/e/ae;->a:Lcom/b/a/a/e/ab;

    invoke-direct {p0}, Lcom/b/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Ljava/io/IOException;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/net/SocketTimeoutException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_c

    invoke-virtual {v0, p1}, Ljava/net/SocketTimeoutException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    :cond_c
    return-object v0
.end method

.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/b/a/a/e/ae;->a:Lcom/b/a/a/e/ab;

    sget-object v1, Lcom/b/a/a/e/b;->f:Lcom/b/a/a/e/b;

    invoke-virtual {v0, v1}, Lcom/b/a/a/e/ab;->b(Lcom/b/a/a/e/b;)V

    return-void
.end method

.method public final b()V
    .registers 2

    invoke-virtual {p0}, Lcom/b/a/a/e/ae;->a_()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/b/a/a/e/ae;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    return-void
.end method
