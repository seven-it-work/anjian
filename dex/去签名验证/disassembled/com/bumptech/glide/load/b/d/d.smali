.class public final Lcom/bumptech/glide/load/b/d/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/d/d$a;
    }
.end annotation


# static fields
.field static final a:Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Landroid/graphics/Bitmap$Config;

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    sput-object v0, Lcom/bumptech/glide/load/b/d/d;->a:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public constructor <init>(IILandroid/graphics/Bitmap$Config;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Config must not be null"

    invoke-static {p3, v0}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap$Config;

    iput-object p3, p0, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    iput p1, p0, Lcom/bumptech/glide/load/b/d/d;->b:I

    iput p2, p0, Lcom/bumptech/glide/load/b/d/d;->c:I

    iput p4, p0, Lcom/bumptech/glide/load/b/d/d;->e:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->b:I

    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->c:I

    return v0
.end method

.method private c()Landroid/graphics/Bitmap$Config;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->e:I

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/bumptech/glide/load/b/d/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    check-cast p1, Lcom/bumptech/glide/load/b/d/d;

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->c:I

    iget v2, p1, Lcom/bumptech/glide/load/b/d/d;->c:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->b:I

    iget v2, p1, Lcom/bumptech/glide/load/b/d/d;->b:I

    if-ne v0, v2, :cond_21

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->e:I

    iget v2, p1, Lcom/bumptech/glide/load/b/d/d;->e:I

    if-ne v0, v2, :cond_21

    iget-object v0, p0, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    iget-object p1, p1, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    if-ne v0, p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/d/d;->b:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/b/d/d;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/load/b/d/d;->e:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PreFillSize{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bumptech/glide/load/b/d/d;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/d/d;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", config="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/d/d;->d:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", weight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bumptech/glide/load/b/d/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
