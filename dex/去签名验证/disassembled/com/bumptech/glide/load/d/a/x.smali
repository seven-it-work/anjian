.class public final Lcom/bumptech/glide/load/d/a/x;
.super Lcom/bumptech/glide/load/d/a/g;


# static fields
.field private static final c:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

.field private static final d:[B


# instance fields
.field private final e:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    sget-object v1, Lcom/bumptech/glide/load/d/a/x;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/x;->d:[B

    return-void
.end method

.method private constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/a/g;-><init>()V

    if-lez p1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "roundingRadius must be greater than 0."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(ZLjava/lang/String;)V

    iput p1, p0, Lcom/bumptech/glide/load/d/a/x;->e:I

    return-void
.end method


# virtual methods
.method protected final a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 5
    .param p1    # Lcom/bumptech/glide/load/b/a/e;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget p3, p0, Lcom/bumptech/glide/load/d/a/x;->e:I

    invoke-static {p1, p2, p3}, Lcom/bumptech/glide/load/d/a/z;->b(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 4
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/bumptech/glide/load/d/a/x;->d:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/d/a/x;->e:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/bumptech/glide/load/d/a/x;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    check-cast p1, Lcom/bumptech/glide/load/d/a/x;

    iget v0, p0, Lcom/bumptech/glide/load/d/a/x;->e:I

    iget p1, p1, Lcom/bumptech/glide/load/d/a/x;->e:I

    if-ne v0, p1, :cond_f

    const/4 p1, 0x1

    return p1

    :cond_f
    return v1
.end method

.method public final hashCode()I
    .registers 3

    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/d/a/x;->e:I

    invoke-static {v1}, Lcom/bumptech/glide/util/k;->b(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/k;->b(II)I

    move-result v0

    return v0
.end method
