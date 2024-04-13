.class public final Lcom/c/d/b;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private maxCount:I

.field private maxPixels:I

.field private maxTotalPixels:I

.field private pixels:I


# direct methods
.method public constructor <init>(III)V
    .registers 7

    const/16 v0, 0x8

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput p1, p0, Lcom/c/d/b;->maxCount:I

    iput p2, p0, Lcom/c/d/b;->maxPixels:I

    iput p3, p0, Lcom/c/d/b;->maxTotalPixels:I

    return-void
.end method

.method private pixels(Landroid/graphics/Bitmap;)I
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    mul-int v0, v0, p1

    return v0
.end method

.method private shrink()V
    .registers 4

    iget v0, p0, Lcom/c/d/b;->pixels:I

    iget v1, p0, Lcom/c/d/b;->maxTotalPixels:I

    if-le v0, v1, :cond_22

    invoke-virtual {p0}, Lcom/c/d/b;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget v1, p0, Lcom/c/d/b;->pixels:I

    iget v2, p0, Lcom/c/d/b;->maxTotalPixels:I

    if-le v1, v2, :cond_22

    goto :goto_e

    :cond_22
    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    invoke-super {p0}, Ljava/util/LinkedHashMap;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/c/d/b;->pixels:I

    return-void
.end method

.method public final put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 5

    invoke-direct {p0, p2}, Lcom/c/d/b;->pixels(Landroid/graphics/Bitmap;)I

    move-result v0

    iget v1, p0, Lcom/c/d/b;->maxPixels:I

    if-gt v0, v1, :cond_1f

    iget v1, p0, Lcom/c/d/b;->pixels:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/c/d/b;->pixels:I

    invoke-super {p0, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_20

    iget p2, p0, Lcom/c/d/b;->pixels:I

    invoke-direct {p0, p1}, Lcom/c/d/b;->pixels(Landroid/graphics/Bitmap;)I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/c/d/b;->pixels:I

    return-object p1

    :cond_1f
    const/4 p1, 0x0

    :cond_20
    return-object p1
.end method

.method public final bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/c/d/b;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 4

    invoke-super {p0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    if-eqz p1, :cond_11

    iget v0, p0, Lcom/c/d/b;->pixels:I

    invoke-direct {p0, p1}, Lcom/c/d/b;->pixels(Landroid/graphics/Bitmap;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/c/d/b;->pixels:I

    :cond_11
    return-object p1
.end method

.method public final bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/c/d/b;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)Z"
        }
    .end annotation

    iget v0, p0, Lcom/c/d/b;->pixels:I

    iget v1, p0, Lcom/c/d/b;->maxTotalPixels:I

    if-gt v0, v1, :cond_e

    invoke-virtual {p0}, Lcom/c/d/b;->size()I

    move-result v0

    iget v1, p0, Lcom/c/d/b;->maxCount:I

    if-le v0, v1, :cond_15

    :cond_e
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/c/d/b;->remove(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    :cond_15
    invoke-direct {p0}, Lcom/c/d/b;->shrink()V

    const/4 p1, 0x0

    return p1
.end method
