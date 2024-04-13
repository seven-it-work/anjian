.class final Lcom/bumptech/glide/load/d/e/g$a;
.super Lcom/bumptech/glide/request/target/SimpleTarget;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/e/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final a:I

.field b:Landroid/graphics/Bitmap;

.field private final c:Landroid/os/Handler;

.field private final d:J


# direct methods
.method constructor <init>(Landroid/os/Handler;IJ)V
    .registers 5

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g$a;->c:Landroid/os/Handler;

    iput p2, p0, Lcom/bumptech/glide/load/d/e/g$a;->a:I

    iput-wide p3, p0, Lcom/bumptech/glide/load/d/e/g$a;->d:J

    return-void
.end method

.method private a()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g$a;->b:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;)V
    .registers 5
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g$a;->b:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/bumptech/glide/load/d/e/g$a;->c:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/g$a;->c:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/bumptech/glide/load/d/e/g$a;->d:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method


# virtual methods
.method public final synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/g$a;->b:Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/bumptech/glide/load/d/e/g$a;->c:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/bumptech/glide/load/d/e/g$a;->c:Landroid/os/Handler;

    iget-wide v0, p0, Lcom/bumptech/glide/load/d/e/g$a;->d:J

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    return-void
.end method
