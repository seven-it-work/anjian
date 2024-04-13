.class final Lcom/bumptech/glide/load/b/a/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/m;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Landroid/graphics/Bitmap$Config;

.field private final d:Lcom/bumptech/glide/load/b/a/c$b;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/b/a/c$b;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/a/c$a;->d:Lcom/bumptech/glide/load/b/a/c$b;

    return-void
.end method

.method private a(IILandroid/graphics/Bitmap$Config;)V
    .registers 4

    iput p1, p0, Lcom/bumptech/glide/load/b/a/c$a;->a:I

    iput p2, p0, Lcom/bumptech/glide/load/b/a/c$a;->b:I

    iput-object p3, p0, Lcom/bumptech/glide/load/b/a/c$a;->c:Landroid/graphics/Bitmap$Config;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/c$a;->d:Lcom/bumptech/glide/load/b/a/c$b;

    invoke-virtual {v0, p0}, Lcom/bumptech/glide/load/b/a/c$b;->a(Lcom/bumptech/glide/load/b/a/m;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/b/a/c$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    check-cast p1, Lcom/bumptech/glide/load/b/a/c$a;

    iget v0, p0, Lcom/bumptech/glide/load/b/a/c$a;->a:I

    iget v2, p1, Lcom/bumptech/glide/load/b/a/c$a;->a:I

    if-ne v0, v2, :cond_1b

    iget v0, p0, Lcom/bumptech/glide/load/b/a/c$a;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/b/a/c$a;->b:I

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/c$a;->c:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/a/c$a;->c:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_1b

    const/4 p1, 0x1

    return p1

    :cond_1b
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/a/c$a;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/b/a/c$a;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/c$a;->c:Landroid/graphics/Bitmap$Config;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/c$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget v0, p0, Lcom/bumptech/glide/load/b/a/c$a;->a:I

    iget v1, p0, Lcom/bumptech/glide/load/b/a/c$a;->b:I

    iget-object v2, p0, Lcom/bumptech/glide/load/b/a/c$a;->c:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/b/a/c;->c(IILandroid/graphics/Bitmap$Config;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
