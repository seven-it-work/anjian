.class final Lcom/bumptech/glide/load/b/a/o$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/m;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field a:I

.field private final b:Lcom/bumptech/glide/load/b/a/o$b;

.field private c:Landroid/graphics/Bitmap$Config;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/o$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/o$a;->b:Lcom/bumptech/glide/load/b/a/o$b;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/a/o$b;ILandroid/graphics/Bitmap$Config;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/a/o$a;-><init>(Lcom/bumptech/glide/load/b/a/o$b;)V

    invoke-virtual {p0, p2, p3}, Lcom/bumptech/glide/load/b/a/o$a;->a(ILandroid/graphics/Bitmap$Config;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/o$a;->b:Lcom/bumptech/glide/load/b/a/o$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/b/a/o$b;->a(Lcom/bumptech/glide/load/b/a/m;)V

    return-void
.end method

.method public final a(ILandroid/graphics/Bitmap$Config;)V
    .registers 3

    iput p1, p0, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    iput-object p2, p0, Lcom/bumptech/glide/load/b/a/o$a;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/b/a/o$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    check-cast p1, Lcom/bumptech/glide/load/b/a/o$a;

    iget v0, p0, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/o$a;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/a/o$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1}, Lcom/bumptech/glide/util/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    return p1

    :cond_19
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o$a;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/a/o$a;->a:I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/o$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/b/a/o;->a(ILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
