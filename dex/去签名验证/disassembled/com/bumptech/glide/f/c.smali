.class public final Lcom/bumptech/glide/f/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/g;


# instance fields
.field private final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:J

.field private final e:I


# direct methods
.method private constructor <init>(Ljava/lang/String;JI)V
    .registers 5
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_7

    const-string p1, ""

    :cond_7
    iput-object p1, p0, Lcom/bumptech/glide/f/c;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/bumptech/glide/f/c;->d:J

    iput p4, p0, Lcom/bumptech/glide/f/c;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .registers 5
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-wide v1, p0, Lcom/bumptech/glide/f/c;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/f/c;->e:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v0, p0, Lcom/bumptech/glide/f/c;->c:Ljava/lang/String;

    sget-object v1, Lcom/bumptech/glide/f/c;->b:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    return v1

    :cond_12
    check-cast p1, Lcom/bumptech/glide/f/c;

    iget-wide v2, p0, Lcom/bumptech/glide/f/c;->d:J

    iget-wide v4, p1, Lcom/bumptech/glide/f/c;->d:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_1d

    return v1

    :cond_1d
    iget v2, p0, Lcom/bumptech/glide/f/c;->e:I

    iget v3, p1, Lcom/bumptech/glide/f/c;->e:I

    if-eq v2, v3, :cond_24

    return v1

    :cond_24
    iget-object v2, p0, Lcom/bumptech/glide/f/c;->c:Ljava/lang/String;

    iget-object p1, p1, Lcom/bumptech/glide/f/c;->c:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2f

    return v1

    :cond_2f
    return v0

    :cond_30
    return v1
.end method

.method public final hashCode()I
    .registers 8

    iget-object v0, p0, Lcom/bumptech/glide/f/c;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/bumptech/glide/f/c;->d:J

    iget-wide v3, p0, Lcom/bumptech/glide/f/c;->d:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/bumptech/glide/f/c;->e:I

    add-int/2addr v0, v1

    return v0
.end method
