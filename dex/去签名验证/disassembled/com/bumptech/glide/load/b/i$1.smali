.class final Lcom/bumptech/glide/load/b/i$1;
.super Lcom/bumptech/glide/load/b/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/b/i;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/bumptech/glide/load/a;)Z
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/a;->REMOTE:Lcom/bumptech/glide/load/a;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    return p1

    :cond_6
    const/4 p1, 0x0

    return p1
.end method

.method public final a(ZLcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/c;)Z
    .registers 4

    sget-object p1, Lcom/bumptech/glide/load/a;->RESOURCE_DISK_CACHE:Lcom/bumptech/glide/load/a;

    if-eq p2, p1, :cond_a

    sget-object p1, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    if-eq p2, p1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    const/4 p1, 0x0

    return p1
.end method

.method public final b()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
