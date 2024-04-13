.class public final Lcom/bumptech/glide/load/a/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/a/k$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/e<",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:I = 0x500000


# instance fields
.field private final b:Lcom/bumptech/glide/load/d/a/v;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/d/a/v;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/d/a/v;-><init>(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/a/k;->b:Lcom/bumptech/glide/load/d/a/v;

    iget-object p1, p0, Lcom/bumptech/glide/load/a/k;->b:Lcom/bumptech/glide/load/d/a/v;

    const/high16 p2, 0x500000

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/d/a/v;->mark(I)V

    return-void
.end method

.method private c()Ljava/io/InputStream;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/a/k;->b:Lcom/bumptech/glide/load/d/a/v;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/a/v;->reset()V

    iget-object v0, p0, Lcom/bumptech/glide/load/a/k;->b:Lcom/bumptech/glide/load/d/a/v;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/a/k;->b:Lcom/bumptech/glide/load/d/a/v;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/a/v;->reset()V

    iget-object v0, p0, Lcom/bumptech/glide/load/a/k;->b:Lcom/bumptech/glide/load/d/a/v;

    return-object v0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/a/k;->b:Lcom/bumptech/glide/load/d/a/v;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/a/v;->b()V

    return-void
.end method
