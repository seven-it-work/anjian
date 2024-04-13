.class public Lcom/squareup/picasso/LruCache;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/squareup/picasso/Cache;


# instance fields
.field private evictionCount:I

.field private hitCount:I

.field final map:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final maxSize:I

.field private missCount:I

.field private putCount:I

.field private size:I


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gtz p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Max size must be positive."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iput p1, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->calculateMemoryCacheSize(Landroid/content/Context;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/squareup/picasso/LruCache;-><init>(I)V

    return-void
.end method

.method private trimToSize(I)V
    .registers 5

    :goto_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-ltz v0, :cond_53

    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-eqz v0, :cond_12

    goto :goto_53

    :cond_12
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    if-le v0, p1, :cond_51

    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_51

    :cond_1f
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/squareup/picasso/LruCache;->size:I

    iget v0, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I

    monitor-exit p0

    goto :goto_0

    :cond_51
    :goto_51
    monitor-exit p0

    return-void

    :cond_53
    :goto_53
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".sizeOf() is reporting inconsistent results!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_72
    move-exception p1

    monitor-exit p0
    :try_end_74
    .catchall {:try_start_1 .. :try_end_74} :catchall_72

    throw p1
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/squareup/picasso/LruCache;->evictAll()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    monitor-exit p0

    return-void

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized clearKeyUri(Ljava/lang/String;)V
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-ne v6, v0, :cond_11

    invoke-virtual {v5, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    iget v3, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {v4}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/squareup/picasso/LruCache;->size:I

    const/4 v3, 0x1

    goto :goto_11

    :cond_49
    if-eqz v3, :cond_50

    iget p1, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    invoke-direct {p0, p1}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V
    :try_end_50
    .catchall {:try_start_1 .. :try_end_50} :catchall_52

    :cond_50
    monitor-exit p0

    return-void

    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final evictAll()V
    .registers 2

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V

    return-void
.end method

.method public final declared-synchronized evictionCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->evictionCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    monitor-enter p0

    :try_start_b
    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1d

    iget v0, p0, Lcom/squareup/picasso/LruCache;->hitCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->hitCount:I

    monitor-exit p0

    return-object p1

    :cond_1d
    iget p1, p0, Lcom/squareup/picasso/LruCache;->missCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/squareup/picasso/LruCache;->missCount:I

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_26
    move-exception p1

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_26

    throw p1
.end method

.method public final declared-synchronized hitCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->hitCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized maxSize()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->maxSize:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized missCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->missCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized putCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->putCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public set(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 5

    if-eqz p1, :cond_32

    if-nez p2, :cond_5

    goto :goto_32

    :cond_5
    monitor-enter p0

    :try_start_6
    iget v0, p0, Lcom/squareup/picasso/LruCache;->putCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->putCount:I

    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {p2}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/picasso/LruCache;->size:I

    iget-object v0, p0, Lcom/squareup/picasso/LruCache;->map:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_28

    iget p2, p0, Lcom/squareup/picasso/LruCache;->size:I

    invoke-static {p1}, Lcom/squareup/picasso/Utils;->getBitmapBytes(Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/squareup/picasso/LruCache;->size:I

    :cond_28
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_2f

    iget p1, p0, Lcom/squareup/picasso/LruCache;->maxSize:I

    invoke-direct {p0, p1}, Lcom/squareup/picasso/LruCache;->trimToSize(I)V

    return-void

    :catchall_2f
    move-exception p1

    :try_start_30
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p1

    :cond_32
    :goto_32
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "key == null || bitmap == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized size()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/picasso/LruCache;->size:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
