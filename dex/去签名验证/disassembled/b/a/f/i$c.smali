.class final Lb/a/f/i$c;
.super Lc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lb/a/f/i;


# direct methods
.method constructor <init>(Lb/a/f/i;)V
    .registers 2

    iput-object p1, p0, Lb/a/f/i$c;->a:Lb/a/f/i;

    invoke-direct {p0}, Lc/a;-><init>()V

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

    iget-object v0, p0, Lb/a/f/i$c;->a:Lb/a/f/i;

    sget-object v1, Lb/a/f/b;->CANCEL:Lb/a/f/b;

    invoke-virtual {v0, v1}, Lb/a/f/i;->b(Lb/a/f/b;)V

    return-void
.end method

.method public final b()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lb/a/f/i$c;->k_()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lb/a/f/i$c;->a(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_c
    return-void
.end method
