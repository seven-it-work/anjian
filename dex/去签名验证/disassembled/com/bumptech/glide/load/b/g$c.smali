.class final Lcom/bumptech/glide/load/b/g$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Lcom/bumptech/glide/load/g;

.field b:Lcom/bumptech/glide/load/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/l<",
            "TZ;>;"
        }
    .end annotation
.end field

.field c:Lcom/bumptech/glide/load/b/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/t<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/g$d;Lcom/bumptech/glide/load/j;)V
    .registers 7

    :try_start_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/b/g$d;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object p1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/g$c;->a:Lcom/bumptech/glide/load/g;

    new-instance v1, Lcom/bumptech/glide/load/b/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/g$c;->b:Lcom/bumptech/glide/load/l;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/g$c;->c:Lcom/bumptech/glide/load/b/t;

    invoke-direct {v1, v2, v3, p2}, Lcom/bumptech/glide/load/b/d;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/j;)V

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/b/a$b;)V
    :try_end_12
    .catchall {:try_start_0 .. :try_end_12} :catchall_18

    iget-object p1, p0, Lcom/bumptech/glide/load/b/g$c;->c:Lcom/bumptech/glide/load/b/t;

    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/t;->e()V

    return-void

    :catchall_18
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/b/g$c;->c:Lcom/bumptech/glide/load/b/t;

    invoke-virtual {p2}, Lcom/bumptech/glide/load/b/t;->e()V

    throw p1
.end method

.method private a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/l;Lcom/bumptech/glide/load/b/t;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/l<",
            "TX;>;",
            "Lcom/bumptech/glide/load/b/t<",
            "TX;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bumptech/glide/load/b/g$c;->a:Lcom/bumptech/glide/load/g;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/g$c;->b:Lcom/bumptech/glide/load/l;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/g$c;->c:Lcom/bumptech/glide/load/b/t;

    return-void
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/g$c;->a:Lcom/bumptech/glide/load/g;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/g$c;->b:Lcom/bumptech/glide/load/l;

    iput-object v0, p0, Lcom/bumptech/glide/load/b/g$c;->c:Lcom/bumptech/glide/load/b/t;

    return-void
.end method


# virtual methods
.method final a()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/g$c;->c:Lcom/bumptech/glide/load/b/t;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_6
    const/4 v0, 0x0

    return v0
.end method
