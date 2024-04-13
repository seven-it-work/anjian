.class public final Lcom/bumptech/glide/load/d/a/l;
.super Lcom/bumptech/glide/load/d/a/g;


# static fields
.field private static final c:I = 0x1

.field private static final d:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

.field private static final e:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    sget-object v1, Lcom/bumptech/glide/load/d/a/l;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/l;->e:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/load/d/a/g;-><init>()V

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

    invoke-static {p1, p2, p3, p4}, Lcom/bumptech/glide/load/d/a/z;->d(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/security/MessageDigest;)V
    .registers 3
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/bumptech/glide/load/d/a/l;->e:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 2

    instance-of p1, p1, Lcom/bumptech/glide/load/d/a/l;

    return p1
.end method

.method public final hashCode()I
    .registers 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.CircleCrop.1"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
