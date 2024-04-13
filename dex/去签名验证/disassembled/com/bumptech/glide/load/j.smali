.class public final Lcom/bumptech/glide/load/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/g;


# instance fields
.field private final c:Landroid/support/v4/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/ArrayMap<",
            "Lcom/bumptech/glide/load/i<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;

    invoke-direct {v0}, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;Ljava/security/MessageDigest;)V
    .registers 6
    .param p0    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;",
            "Ljava/lang/Object;",
            "Ljava/security/MessageDigest;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/i;->b:Lcom/bumptech/glide/load/i$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->d:[B

    if-nez v1, :cond_10

    iget-object v1, p0, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    sget-object v2, Lcom/bumptech/glide/load/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/bumptech/glide/load/i;->d:[B

    :cond_10
    iget-object p0, p0, Lcom/bumptech/glide/load/i;->d:[B

    invoke-interface {v0, p0, p1, p2}, Lcom/bumptech/glide/load/i$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/i;Ljava/lang/Object;)Lcom/bumptech/glide/load/j;
    .registers 4
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;TT;)",
            "Lcom/bumptech/glide/load/j;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/i;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/i<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object p1, p1, Lcom/bumptech/glide/load/i;->a:Ljava/lang/Object;

    return-object p1
.end method

.method public final a(Lcom/bumptech/glide/load/j;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    iget-object p1, p1, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    return-void
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 8
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1}, Landroid/support/v4/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2f

    iget-object v1, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bumptech/glide/load/i;

    iget-object v2, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/support/v4/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/bumptech/glide/load/i;->b:Lcom/bumptech/glide/load/i$a;

    iget-object v4, v1, Lcom/bumptech/glide/load/i;->d:[B

    if-nez v4, :cond_27

    iget-object v4, v1, Lcom/bumptech/glide/load/i;->c:Ljava/lang/String;

    sget-object v5, Lcom/bumptech/glide/load/g;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Lcom/bumptech/glide/load/i;->d:[B

    :cond_27
    iget-object v1, v1, Lcom/bumptech/glide/load/i;->d:[B

    invoke-interface {v3, v1, v2, p1}, Lcom/bumptech/glide/load/i$a;->a([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2f
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/bumptech/glide/load/j;

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/j;

    iget-object v0, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    iget-object p1, p1, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0}, Landroid/support/v4/util/ArrayMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/j;->c:Landroid/support/v4/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
