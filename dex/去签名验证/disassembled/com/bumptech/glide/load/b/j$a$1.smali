.class final Lcom/bumptech/glide/load/b/j$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/util/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/a/a$a<",
        "Lcom/bumptech/glide/load/b/g<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/j$a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/j$a;)V
    .registers 2

    iput-object p1, p0, Lcom/bumptech/glide/load/b/j$a$1;->a:Lcom/bumptech/glide/load/b/j$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b()Lcom/bumptech/glide/load/b/g;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/g<",
            "*>;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a$1;->a:Lcom/bumptech/glide/load/b/j$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/j$a;->a:Lcom/bumptech/glide/load/b/g$d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/j$a$1;->a:Lcom/bumptech/glide/load/b/j$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/j$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/g;-><init>(Lcom/bumptech/glide/load/b/g$d;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/b/g;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/j$a$1;->a:Lcom/bumptech/glide/load/b/j$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/j$a;->a:Lcom/bumptech/glide/load/b/g$d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/j$a$1;->a:Lcom/bumptech/glide/load/b/j$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/j$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/g;-><init>(Lcom/bumptech/glide/load/b/g$d;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method
