.class final Lcom/bumptech/glide/util/a/c$a;
.super Lcom/bumptech/glide/util/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/util/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private volatile a:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/util/a/c;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/util/a/c$a;->a:Ljava/lang/RuntimeException;

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already released"

    iget-object v2, p0, Lcom/bumptech/glide/util/a/c$a;->a:Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_e
    return-void
.end method

.method final a(Z)V
    .registers 3

    if-eqz p1, :cond_c

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Released"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    :goto_9
    iput-object p1, p0, Lcom/bumptech/glide/util/a/c$a;->a:Ljava/lang/RuntimeException;

    return-void

    :cond_c
    const/4 p1, 0x0

    goto :goto_9
.end method
