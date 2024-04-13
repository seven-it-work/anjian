.class final Lcom/bumptech/glide/load/b/a/j$b;
.super Lcom/bumptech/glide/load/b/a/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/load/b/a/d<",
        "Lcom/bumptech/glide/load/b/a/j$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/a/d;-><init>()V

    return-void
.end method

.method private c()Lcom/bumptech/glide/load/b/a/j$a;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/j$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/j$a;-><init>(Lcom/bumptech/glide/load/b/a/j$b;)V

    return-object v0
.end method


# virtual methods
.method final a(ILjava/lang/Class;)Lcom/bumptech/glide/load/b/a/j$a;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/bumptech/glide/load/b/a/j$a;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/j$b;->b()Lcom/bumptech/glide/load/b/a/m;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a/j$a;

    iput p1, v0, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    iput-object p2, v0, Lcom/bumptech/glide/load/b/a/j$a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method protected final synthetic a()Lcom/bumptech/glide/load/b/a/m;
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/b/a/j$a;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/a/j$a;-><init>(Lcom/bumptech/glide/load/b/a/j$b;)V

    return-object v0
.end method
