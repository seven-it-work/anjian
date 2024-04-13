.class public final Lb/a/k/b;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field static final b:I = 0x80

.field static final c:I = 0x40

.field static final d:I = 0x20

.field static final e:I = 0x10

.field static final f:I = 0xf

.field static final g:I = 0x8

.field static final h:I = 0x80

.field static final i:I = 0x7f

.field static final j:I = 0x0

.field static final k:I = 0x1

.field static final l:I = 0x2

.field static final m:I = 0x8

.field static final n:I = 0x9

.field static final o:I = 0xa

.field static final p:J = 0x7dL

.field static final q:J = 0x7bL

.field static final r:I = 0x7e

.field static final s:J = 0xffffL

.field static final t:I = 0x7f

.field static final u:I = 0x3e9

.field static final v:I = 0x3ea

.field static final w:I = 0x3ed

.field static final x:I = 0x3ee


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static a(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_2f

    const/16 v0, 0x1388

    if-lt p0, v0, :cond_9

    goto :goto_2f

    :cond_9
    const/16 v0, 0x3ec

    if-lt p0, v0, :cond_11

    const/16 v0, 0x3ee

    if-le p0, v0, :cond_19

    :cond_11
    const/16 v0, 0x3f4

    if-lt p0, v0, :cond_2d

    const/16 v0, 0xbb7

    if-gt p0, v0, :cond_2d

    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Code "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is reserved and may not be used."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0

    :cond_2f
    :goto_2f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Code must be in range [1000,5000): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_28
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lc/f;->encodeUtf8(Ljava/lang/String;)Lc/f;

    move-result-object p0

    invoke-virtual {p0}, Lc/f;->sha1()Lc/f;

    move-result-object p0

    invoke-virtual {p0}, Lc/f;->base64()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a([BJ[BJ)V
    .registers 12

    array-length v0, p3

    const/4 v1, 0x0

    :goto_2
    int-to-long v2, v1

    cmp-long v4, v2, p1

    if-gez v4, :cond_1b

    int-to-long v2, v0

    rem-long v2, p4, v2

    long-to-int v2, v2

    aget-byte v3, p0, v1

    aget-byte v2, p3, v2

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x1

    add-long v4, p4, v2

    move-wide p4, v4

    goto :goto_2

    :cond_1b
    return-void
.end method

.method static b(I)V
    .registers 2

    invoke-static {p0}, Lb/a/k/b;->a(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    return-void
.end method
