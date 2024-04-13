.class final Lcom/bumptech/glide/load/b/a/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/l;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/p$a;,
        Lcom/bumptech/glide/load/b/a/p$b;
    }
.end annotation


# static fields
.field private static final a:I = 0x8


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/a/p$b;

.field private final c:Lcom/bumptech/glide/load/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/a/h<",
            "Lcom/bumptech/glide/load/b/a/p$a;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/a/p$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/p$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->b:Lcom/bumptech/glide/load/b/a/p$b;

    new-instance v0, Lcom/bumptech/glide/load/b/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->c:Lcom/bumptech/glide/load/b/a/h;

    new-instance v0, Lcom/bumptech/glide/load/b/a/n;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/n;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    return-void
.end method

.method static a(I)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/Integer;)V
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    invoke-interface {v0, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_15
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static d(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p0

    invoke-static {p0}, Lcom/bumptech/glide/load/b/a/p;->a(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Landroid/graphics/Bitmap;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->c:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_15

    invoke-static {v0}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/b/a/p;->a(Ljava/lang/Integer;)V

    :cond_15
    return-object v0
.end method

.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/p;->b:Lcom/bumptech/glide/load/b/a/p$b;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/b/a/p$b;->a(I)Lcom/bumptech/glide/load/b/a/p$a;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v0, :cond_35

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v0, v0, 0x8

    if-gt v3, v0, :cond_35

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->b:Lcom/bumptech/glide/load/b/a/p$b;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/a/p$b;->a(Lcom/bumptech/glide/load/b/a/m;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->b:Lcom/bumptech/glide/load/b/a/p$b;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/a/p$b;->a(I)Lcom/bumptech/glide/load/b/a/p$a;

    move-result-object v1

    :cond_35
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/p;->c:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_45

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Bitmap;->reconfigure(IILandroid/graphics/Bitmap$Config;)V

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a/p;->a(Ljava/lang/Integer;)V

    :cond_45
    return-object v0
.end method

.method public final a(Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/p;->b:Lcom/bumptech/glide/load/b/a/p$b;

    invoke-virtual {v1, v0}, Lcom/bumptech/glide/load/b/a/p$b;->a(I)Lcom/bumptech/glide/load/b/a/p$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/p;->c:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v1, v0, p1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    iget v1, v0, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    iget v0, v0, Lcom/bumptech/glide/load/b/a/p$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_29

    goto :goto_2e

    :cond_29
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v2, p1

    :goto_2e
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;
    .registers 4

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/util/k;->a(IILandroid/graphics/Bitmap$Config;)I

    move-result p1

    invoke-static {p1}, Lcom/bumptech/glide/load/b/a/p;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 2

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    invoke-static {p1}, Lcom/bumptech/glide/load/b/a/p;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/graphics/Bitmap;)I
    .registers 2

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result p1

    return p1
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SizeStrategy:\n  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/p;->c:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  SortedSizes"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/p;->d:Ljava/util/NavigableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
