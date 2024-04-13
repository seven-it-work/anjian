.class final Lcom/bumptech/glide/i$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/i$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    const/4 v0, 0x0

    :goto_a
    if-ge v0, p1, :cond_19

    iget-object v1, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    new-instance v2, Lcom/bumptech/glide/i$c;

    invoke-direct {v2}, Lcom/bumptech/glide/i$c;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_19
    return-void
.end method


# virtual methods
.method public final a(II)Lcom/bumptech/glide/i$c;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/i$c;

    iget-object v1, p0, Lcom/bumptech/glide/i$d;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    iput p1, v0, Lcom/bumptech/glide/i$c;->b:I

    iput p2, v0, Lcom/bumptech/glide/i$c;->a:I

    return-object v0
.end method
