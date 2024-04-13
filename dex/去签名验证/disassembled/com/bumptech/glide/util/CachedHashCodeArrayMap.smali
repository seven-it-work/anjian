.class public final Lcom/bumptech/glide/util/CachedHashCodeArrayMap;
.super Landroid/support/v4/util/ArrayMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/util/ArrayMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/util/ArrayMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .registers 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    invoke-super {p0}, Landroid/support/v4/util/ArrayMap;->clear()V

    return-void
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/support/v4/util/ArrayMap;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    :cond_a
    iget v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    invoke-super {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final putAll(Landroid/support/v4/util/SimpleArrayMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/util/SimpleArrayMap<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    invoke-super {p0, p1}, Landroid/support/v4/util/ArrayMap;->putAll(Landroid/support/v4/util/SimpleArrayMap;)V

    return-void
.end method

.method public final removeAt(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    invoke-super {p0, p1}, Landroid/support/v4/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/util/CachedHashCodeArrayMap;->a:I

    invoke-super {p0, p1, p2}, Landroid/support/v4/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
