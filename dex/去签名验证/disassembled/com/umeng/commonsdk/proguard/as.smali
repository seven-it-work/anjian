.class public Lcom/umeng/commonsdk/proguard/as;
.super Lcom/umeng/commonsdk/proguard/az;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/proguard/as$a;
    }
.end annotation


# static fields
.field protected static final a:I = -0x10000

.field protected static final b:I = -0x7fff0000

.field private static final h:Lcom/umeng/commonsdk/proguard/be;


# instance fields
.field protected c:Z

.field protected d:Z

.field protected e:I

.field protected f:Z

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:[B

.field private o:[B

.field private p:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/umeng/commonsdk/proguard/be;

    invoke-direct {v0}, Lcom/umeng/commonsdk/proguard/be;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/proguard/as;->h:Lcom/umeng/commonsdk/proguard/be;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/bn;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/umeng/commonsdk/proguard/as;-><init>(Lcom/umeng/commonsdk/proguard/bn;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/bn;ZZ)V
    .registers 8

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/az;-><init>(Lcom/umeng/commonsdk/proguard/bn;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/as;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/as;->d:Z

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/as;->f:Z

    new-array p1, v0, [B

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->i:[B

    const/4 p1, 0x2

    new-array v1, p1, [B

    iput-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->j:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    iput-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->k:[B

    const/16 v2, 0x8

    new-array v3, v2, [B

    iput-object v3, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->m:[B

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->n:[B

    new-array p1, v1, [B

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->o:[B

    new-array p1, v2, [B

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->p:[B

    iput-boolean p2, p0, Lcom/umeng/commonsdk/proguard/as;->c:Z

    iput-boolean p3, p0, Lcom/umeng/commonsdk/proguard/as;->d:Z

    return-void
.end method

.method private a([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0, p3}, Lcom/umeng/commonsdk/proguard/as;->d(I)V

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0, p1, p2, p3}, Lcom/umeng/commonsdk/proguard/bn;->d([BII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public A()Ljava/nio/ByteBuffer;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->d(I)V

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v1

    if-lt v1, v0, :cond_25

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v2

    invoke-static {v1, v2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    return-object v1

    :cond_25
    new-array v1, v0, [B

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/umeng/commonsdk/proguard/bn;->d([BII)I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 1

    return-void
.end method

.method public a(B)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->i:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->i:[B

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void
.end method

.method public a(D)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/as;->a(J)V

    return-void
.end method

.method public a(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->k:[B

    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->k:[B

    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->k:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v3, 0x2

    aput-byte v1, v0, v3

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->k:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->k:[B

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void
.end method

.method public a(J)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    const/16 v1, 0x38

    shr-long v1, p1, v1

    const-wide/16 v3, 0xff

    and-long v5, v1, v3

    long-to-int v1, v5

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    const/16 v1, 0x30

    shr-long v5, p1, v1

    and-long v7, v5, v3

    long-to-int v1, v7

    int-to-byte v1, v1

    const/4 v5, 0x1

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    const/16 v1, 0x28

    shr-long v5, p1, v1

    and-long v7, v5, v3

    long-to-int v1, v7

    int-to-byte v1, v1

    const/4 v5, 0x2

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    const/16 v1, 0x20

    shr-long v5, p1, v1

    and-long v7, v5, v3

    long-to-int v1, v7

    int-to-byte v1, v1

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    const/16 v1, 0x18

    shr-long v5, p1, v1

    and-long v7, v5, v3

    long-to-int v1, v7

    int-to-byte v1, v1

    const/4 v5, 0x4

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    const/16 v1, 0x10

    shr-long v5, p1, v1

    and-long v7, v5, v3

    long-to-int v1, v7

    int-to-byte v1, v1

    const/4 v5, 0x5

    aput-byte v1, v0, v5

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    const/16 v1, 0x8

    shr-long v5, p1, v1

    and-long v7, v5, v3

    long-to-int v5, v7

    int-to-byte v5, v5

    const/4 v6, 0x6

    aput-byte v5, v0, v6

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    and-long v5, p1, v3

    long-to-int p1, v5

    int-to-byte p1, p1

    const/4 p2, 0x7

    aput-byte p1, v0, p2

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object p2, p0, Lcom/umeng/commonsdk/proguard/as;->l:[B

    invoke-virtual {p1, p2, v2, v1}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/au;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/au;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    iget-short p1, p1, Lcom/umeng/commonsdk/proguard/au;->c:S

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/as;->a(S)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/av;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/av;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    iget p1, p1, Lcom/umeng/commonsdk/proguard/av;->b:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/as;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/aw;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/aw;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/aw;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    iget p1, p1, Lcom/umeng/commonsdk/proguard/aw;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/as;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/ax;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/umeng/commonsdk/proguard/as;->d:Z

    if-eqz v0, :cond_17

    const/high16 v0, -0x7fff0000

    iget-byte v1, p1, Lcom/umeng/commonsdk/proguard/ax;->b:B

    or-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(I)V

    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/ax;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(Ljava/lang/String;)V

    :goto_11
    iget p1, p1, Lcom/umeng/commonsdk/proguard/ax;->c:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/as;->a(I)V

    return-void

    :cond_17
    iget-object v0, p1, Lcom/umeng/commonsdk/proguard/ax;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(Ljava/lang/String;)V

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/ax;->b:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    goto :goto_11
.end method

.method public a(Lcom/umeng/commonsdk/proguard/bd;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/bd;->a:B

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    iget p1, p1, Lcom/umeng/commonsdk/proguard/bd;->b:I

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/as;->a(I)V

    return-void
.end method

.method public a(Lcom/umeng/commonsdk/proguard/be;)V
    .registers 2

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(I)V

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_11} :catch_12

    return-void

    :catch_12
    new-instance p1, Lcom/umeng/commonsdk/proguard/ag;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(I)V

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result p1

    add-int/2addr v3, p1

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void
.end method

.method public a(S)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->j:[B

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->j:[B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    iget-object p1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->j:[B

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v2, v1}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void
.end method

.method public a(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    return-void
.end method

.method public b(I)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/proguard/as;->d(I)V

    new-array v0, p1, [B

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p1}, Lcom/umeng/commonsdk/proguard/bn;->d([BII)I

    new-instance p1, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_12
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    return-object p1

    :catch_13
    new-instance p1, Lcom/umeng/commonsdk/proguard/ag;

    const-string v0, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {p1, v0}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()V
    .registers 1

    return-void
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public c(I)V
    .registers 2

    iput p1, p0, Lcom/umeng/commonsdk/proguard/as;->e:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/as;->f:Z

    return-void
.end method

.method public d()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->a(B)V

    return-void
.end method

.method protected d(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    if-gez p1, :cond_16

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Negative length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    iget-boolean v0, p0, Lcom/umeng/commonsdk/proguard/as;->f:Z

    if-eqz v0, :cond_37

    iget v0, p0, Lcom/umeng/commonsdk/proguard/as;->e:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/umeng/commonsdk/proguard/as;->e:I

    iget v0, p0, Lcom/umeng/commonsdk/proguard/as;->e:I

    if-gez v0, :cond_37

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Message length exceeded: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/proguard/ba;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    return-void
.end method

.method public e()V
    .registers 1

    return-void
.end method

.method public f()V
    .registers 1

    return-void
.end method

.method public g()V
    .registers 1

    return-void
.end method

.method public h()Lcom/umeng/commonsdk/proguard/ax;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v0

    const/4 v1, 0x4

    if-gez v0, :cond_27

    const/high16 v2, -0x10000

    and-int/2addr v2, v0

    const/high16 v3, -0x7fff0000

    if-eq v2, v3, :cond_16

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    const-string v2, "Bad version in readMessageBegin"

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/ba;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_16
    new-instance v1, Lcom/umeng/commonsdk/proguard/ax;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->z()Ljava/lang/String;

    move-result-object v2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v3

    invoke-direct {v1, v2, v0, v3}, Lcom/umeng/commonsdk/proguard/ax;-><init>(Ljava/lang/String;BI)V

    return-object v1

    :cond_27
    iget-boolean v2, p0, Lcom/umeng/commonsdk/proguard/as;->c:Z

    if-eqz v2, :cond_33

    new-instance v0, Lcom/umeng/commonsdk/proguard/ba;

    const-string v2, "Missing version in readMessageBegin, old client?"

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/ba;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_33
    new-instance v1, Lcom/umeng/commonsdk/proguard/ax;

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->u()B

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v3

    invoke-direct {v1, v0, v2, v3}, Lcom/umeng/commonsdk/proguard/ax;-><init>(Ljava/lang/String;BI)V

    return-object v1
.end method

.method public i()V
    .registers 1

    return-void
.end method

.method public j()Lcom/umeng/commonsdk/proguard/be;
    .registers 2

    sget-object v0, Lcom/umeng/commonsdk/proguard/as;->h:Lcom/umeng/commonsdk/proguard/be;

    return-object v0
.end method

.method public k()V
    .registers 1

    return-void
.end method

.method public l()Lcom/umeng/commonsdk/proguard/au;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->u()B

    move-result v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->v()S

    move-result v1

    :goto_c
    new-instance v2, Lcom/umeng/commonsdk/proguard/au;

    const-string v3, ""

    invoke-direct {v2, v3, v0, v1}, Lcom/umeng/commonsdk/proguard/au;-><init>(Ljava/lang/String;BS)V

    return-object v2
.end method

.method public m()V
    .registers 1

    return-void
.end method

.method public n()Lcom/umeng/commonsdk/proguard/aw;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    new-instance v0, Lcom/umeng/commonsdk/proguard/aw;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->u()B

    move-result v2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/aw;-><init>(BBI)V

    return-object v0
.end method

.method public o()V
    .registers 1

    return-void
.end method

.method public p()Lcom/umeng/commonsdk/proguard/av;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    new-instance v0, Lcom/umeng/commonsdk/proguard/av;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/av;-><init>(BI)V

    return-object v0
.end method

.method public q()V
    .registers 1

    return-void
.end method

.method public r()Lcom/umeng/commonsdk/proguard/bd;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    new-instance v0, Lcom/umeng/commonsdk/proguard/bd;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->u()B

    move-result v1

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/umeng/commonsdk/proguard/bd;-><init>(BI)V

    return-object v0
.end method

.method public s()V
    .registers 1

    return-void
.end method

.method public t()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->u()B

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public u()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1d

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v0

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v2

    aget-byte v0, v0, v2

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2, v1}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    return v0

    :cond_1d
    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->m:[B

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/umeng/commonsdk/proguard/as;->a([BII)I

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->m:[B

    aget-byte v0, v0, v2

    return v0
.end method

.method public v()S
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->n:[B

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1e

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v2

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1, v3}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    goto :goto_23

    :cond_1e
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->n:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/as;->a([BII)I

    :goto_23
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v2, 0x1

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public w()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->o:[B

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-lt v1, v3, :cond_1e

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v2

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1, v3}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    goto :goto_23

    :cond_1e
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->o:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/as;->a([BII)I

    :goto_23
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v3, v2, 0x1

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    add-int/lit8 v3, v2, 0x2

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x3

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public x()J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->p:[B

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lt v1, v3, :cond_1f

    iget-object v0, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v0}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v2

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1, v3}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V

    goto :goto_24

    :cond_1f
    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->p:[B

    invoke-direct {p0, v1, v2, v3}, Lcom/umeng/commonsdk/proguard/as;->a([BII)I

    :goto_24
    aget-byte v1, v0, v2

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x38

    shl-long/2addr v4, v1

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    const/16 v1, 0x30

    shl-long/2addr v6, v1

    or-long v8, v4, v6

    add-int/lit8 v1, v2, 0x2

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long v6, v8, v4

    add-int/lit8 v1, v2, 0x3

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long v8, v6, v4

    add-int/lit8 v1, v2, 0x4

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long v6, v8, v4

    add-int/lit8 v1, v2, 0x5

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long v8, v6, v4

    add-int/lit8 v1, v2, 0x6

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v4, v1

    shl-long v3, v4, v3

    or-long v5, v8, v3

    add-int/lit8 v2, v2, 0x7

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    or-long v2, v5, v0

    return-wide v2
.end method

.method public y()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->x()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public z()Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/ag;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/as;->w()I

    move-result v0

    iget-object v1, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v1}, Lcom/umeng/commonsdk/proguard/bn;->h()I

    move-result v1

    if-lt v1, v0, :cond_2d

    :try_start_c
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/proguard/bn;->f()[B

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/proguard/bn;->g()I

    move-result v3

    const-string v4, "UTF-8"

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iget-object v2, p0, Lcom/umeng/commonsdk/proguard/as;->g:Lcom/umeng/commonsdk/proguard/bn;

    invoke-virtual {v2, v0}, Lcom/umeng/commonsdk/proguard/bn;->a(I)V
    :try_end_24
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_c .. :try_end_24} :catch_25

    return-object v1

    :catch_25
    new-instance v0, Lcom/umeng/commonsdk/proguard/ag;

    const-string v1, "JVM DOES NOT SUPPORT UTF-8"

    invoke-direct {v0, v1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2d
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/proguard/as;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
