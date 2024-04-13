.class final Lcom/bumptech/glide/load/d/a/y$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/d/a/o$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d/a/v;

.field private final b:Lcom/bumptech/glide/util/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/d/a/v;Lcom/bumptech/glide/util/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/y$a;->a:Lcom/bumptech/glide/load/d/a/v;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/y$a;->b:Lcom/bumptech/glide/util/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/y$a;->a:Lcom/bumptech/glide/load/d/a/v;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/a/v;->a()V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/y$a;->b:Lcom/bumptech/glide/util/c;

    iget-object v0, v0, Lcom/bumptech/glide/util/c;->a:Ljava/io/IOException;

    if-eqz v0, :cond_c

    if-eqz p2, :cond_b

    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    :cond_b
    throw v0

    :cond_c
    return-void
.end method
