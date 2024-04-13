.class public final Lcom/android/volley/toolbox/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/toolbox/f$b;,
        Lcom/android/volley/toolbox/f$a;
    }
.end annotation


# static fields
.field private static final e:I = 0x500000

.field private static final f:F = 0.9f

.field private static final g:I = 0x20150513


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/volley/toolbox/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private final c:Ljava/io/File;

.field private final d:I


# direct methods
.method private constructor <init>(Ljava/io/File;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/volley/toolbox/f;->b:J

    iput-object p1, p0, Lcom/android/volley/toolbox/f;->c:Ljava/io/File;

    const/high16 p1, 0x500000

    iput p1, p0, Lcom/android/volley/toolbox/f;->d:I

    return-void
.end method

.method public constructor <init>(Ljava/io/File;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f;-><init>(Ljava/io/File;)V

    return-void
.end method

.method static a(Ljava/io/InputStream;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v0, 0x0

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, v0

    return p0
.end method

.method private a(I)V
    .registers 21

    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/volley/toolbox/f;->b:J

    move/from16 v3, p1

    int-to-long v3, v3

    add-long v5, v1, v3

    iget v1, v0, Lcom/android/volley/toolbox/f;->d:I

    int-to-long v1, v1

    cmp-long v7, v5, v1

    if-gez v7, :cond_11

    return-void

    :cond_11
    sget-boolean v1, Lcom/android/volley/t;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1d

    const-string v1, "Pruning old cache entries."

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v1, v5}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    iget-wide v5, v0, Lcom/android/volley/toolbox/f;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iget-object v1, v0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v9, 0x0

    :goto_2e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eqz v10, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/volley/toolbox/f$a;

    iget-object v13, v10, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-direct {v0, v13}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    move-result v13

    if-eqz v13, :cond_5a

    iget-wide v13, v0, Lcom/android/volley/toolbox/f;->b:J

    move-wide v15, v3

    iget-wide v2, v10, Lcom/android/volley/toolbox/f$a;->a:J

    move-wide/from16 v17, v7

    sub-long v7, v13, v2

    iput-wide v7, v0, Lcom/android/volley/toolbox/f;->b:J

    goto :goto_71

    :cond_5a
    move-wide v15, v3

    move-wide/from16 v17, v7

    const-string v2, "Could not delete cache entry for key=%s, filename=%s"

    new-array v3, v11, [Ljava/lang/Object;

    iget-object v4, v10, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v4, v3, v7

    iget-object v4, v10, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v2, v3}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_71
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v9, v9, 0x1

    iget-wide v2, v0, Lcom/android/volley/toolbox/f;->b:J

    add-long v7, v2, v15

    long-to-float v2, v7

    iget v3, v0, Lcom/android/volley/toolbox/f;->d:I

    int-to-float v3, v3

    const v4, 0x3f666666    # 0.9f

    mul-float v3, v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_88

    goto :goto_8f

    :cond_88
    move-wide v3, v15

    move-wide/from16 v7, v17

    const/4 v2, 0x0

    goto :goto_2e

    :cond_8d
    move-wide/from16 v17, v7

    :goto_8f
    sget-boolean v1, Lcom/android/volley/t;->b:Z

    if-eqz v1, :cond_b8

    const-string v1, "pruned %d files, %d bytes, %d ms"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-wide v3, v0, Lcom/android/volley/toolbox/f;->b:J

    sub-long v7, v3, v5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v12

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v5, v3, v17

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {v1, v2}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b8
    return-void
.end method

.method static a(Ljava/io/OutputStream;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    shr-int/lit8 v0, p1, 0x0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 p1, p1, 0x18

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;J)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x8

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x10

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x18

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x20

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x28

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x30

    ushr-long v0, p1, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    const/16 v0, 0x38

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method static a(Ljava/io/OutputStream;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;J)V

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/android/volley/toolbox/f$a;)V
    .registers 12

    iget-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    iget-wide v0, p0, Lcom/android/volley/toolbox/f;->b:J

    iget-wide v2, p2, Lcom/android/volley/toolbox/f$a;->a:J

    add-long v4, v0, v2

    iput-wide v4, p0, Lcom/android/volley/toolbox/f;->b:J

    goto :goto_25

    :cond_11
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/f$a;

    iget-wide v1, p0, Lcom/android/volley/toolbox/f;->b:J

    iget-wide v3, p2, Lcom/android/volley/toolbox/f$a;->a:J

    iget-wide v5, v0, Lcom/android/volley/toolbox/f$a;->a:J

    sub-long v7, v3, v5

    add-long v3, v1, v7

    iput-wide v3, p0, Lcom/android/volley/toolbox/f;->b:J

    :goto_25
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/util/Map;Ljava/io/OutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_31

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_11

    :cond_30
    return-void

    :cond_31
    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/OutputStream;I)V

    return-void
.end method

.method private static a(Ljava/io/InputStream;I)[B
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p1, :cond_10

    sub-int v2, p1, v1

    invoke-virtual {p0, v0, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_10

    add-int/2addr v1, v2

    goto :goto_3

    :cond_10
    if-eq v1, p1, :cond_33

    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Expected "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes, read "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_33
    return-object v0
.end method

.method static b(Ljava/io/InputStream;)J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long v4, v0, v2

    const/4 v0, 0x0

    shl-long v0, v4, v0

    const-wide/16 v4, 0x0

    or-long v6, v0, v4

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x8

    shl-long v0, v4, v0

    or-long v4, v6, v0

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x10

    shl-long v0, v6, v0

    or-long v6, v4, v0

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x18

    shl-long v0, v4, v0

    or-long v4, v6, v0

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x20

    shl-long v0, v6, v0

    or-long v6, v4, v0

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long v4, v0, v2

    const/16 v0, 0x28

    shl-long v0, v4, v0

    or-long v4, v6, v0

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result v0

    int-to-long v0, v0

    and-long v6, v0, v2

    const/16 v0, 0x30

    shl-long v0, v6, v0

    or-long v6, v4, v0

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->e(Ljava/io/InputStream;)I

    move-result p0

    int-to-long v0, p0

    and-long v4, v0, v2

    const/16 p0, 0x38

    shl-long v0, v4, p0

    or-long v2, v6, v0

    return-wide v2
.end method

.method static c(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->b(Ljava/io/InputStream;)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {p0, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;I)[B

    move-result-object p0

    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/io/File;
    .registers 4

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/volley/toolbox/f;->c:Ljava/io/File;

    invoke-static {p1}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method static d(Ljava/io/InputStream;)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;)I

    move-result v0

    if-nez v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    goto :goto_10

    :cond_b
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    :goto_10
    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_29

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/android/volley/toolbox/f;->c(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_29
    return-object v1
.end method

.method private static e(Ljava/io/InputStream;)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_d

    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_d
    return p0
.end method

.method private e(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/f$a;

    if-eqz v0, :cond_17

    iget-wide v1, p0, Lcom/android/volley/toolbox/f;->b:J

    iget-wide v3, v0, Lcom/android/volley/toolbox/f$a;->a:J

    sub-long v5, v1, v3

    iput-wide v5, p0, Lcom/android/volley/toolbox/f;->b:J

    iget-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_17
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/android/volley/b$a;
    .registers 13

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/toolbox/f$a;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_8e

    const/4 v1, 0x0

    if-nez v0, :cond_e

    monitor-exit p0

    return-object v1

    :cond_e
    :try_start_e
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_e .. :try_end_12} :catchall_8e

    const/4 v3, 0x0

    :try_start_13
    new-instance v4, Lcom/android/volley/toolbox/f$b;

    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5, v3}, Lcom/android/volley/toolbox/f$b;-><init>(Ljava/io/InputStream;B)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_22} :catch_60
    .catchall {:try_start_13 .. :try_end_22} :catchall_5d

    :try_start_22
    invoke-static {v4}, Lcom/android/volley/toolbox/f$a;->a(Ljava/io/InputStream;)Lcom/android/volley/toolbox/f$a;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v4}, Lcom/android/volley/toolbox/f$b;->a(Lcom/android/volley/toolbox/f$b;)I

    move-result v7

    int-to-long v7, v7

    sub-long v9, v5, v7

    long-to-int v5, v9

    invoke-static {v4, v5}, Lcom/android/volley/toolbox/f;->a(Ljava/io/InputStream;I)[B

    move-result-object v5

    new-instance v6, Lcom/android/volley/b$a;

    invoke-direct {v6}, Lcom/android/volley/b$a;-><init>()V

    iput-object v5, v6, Lcom/android/volley/b$a;->a:[B

    iget-object v5, v0, Lcom/android/volley/toolbox/f$a;->c:Ljava/lang/String;

    iput-object v5, v6, Lcom/android/volley/b$a;->b:Ljava/lang/String;

    iget-wide v7, v0, Lcom/android/volley/toolbox/f$a;->d:J

    iput-wide v7, v6, Lcom/android/volley/b$a;->c:J

    iget-wide v7, v0, Lcom/android/volley/toolbox/f$a;->e:J

    iput-wide v7, v6, Lcom/android/volley/b$a;->d:J

    iget-wide v7, v0, Lcom/android/volley/toolbox/f$a;->f:J

    iput-wide v7, v6, Lcom/android/volley/b$a;->e:J

    iget-wide v7, v0, Lcom/android/volley/toolbox/f$a;->g:J

    iput-wide v7, v6, Lcom/android/volley/b$a;->f:J

    iget-object v0, v0, Lcom/android/volley/toolbox/f$a;->h:Ljava/util/Map;

    iput-object v0, v6, Lcom/android/volley/b$a;->g:Ljava/util/Map;
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_54} :catch_5b
    .catchall {:try_start_22 .. :try_end_54} :catchall_84

    :try_start_54
    invoke-virtual {v4}, Lcom/android/volley/toolbox/f$b;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59
    .catchall {:try_start_54 .. :try_end_57} :catchall_8e

    monitor-exit p0

    return-object v6

    :catch_59
    monitor-exit p0

    return-object v1

    :catch_5b
    move-exception v0

    goto :goto_62

    :catchall_5d
    move-exception p1

    move-object v4, v1

    goto :goto_85

    :catch_60
    move-exception v0

    move-object v4, v1

    :goto_62
    :try_start_62
    const-string v5, "%s: %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v3

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->b(Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_62 .. :try_end_7a} :catchall_84

    if-eqz v4, :cond_82

    :try_start_7c
    invoke-virtual {v4}, Lcom/android/volley/toolbox/f$b;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_7c .. :try_end_7f} :catch_80
    .catchall {:try_start_7c .. :try_end_7f} :catchall_8e

    goto :goto_82

    :catch_80
    monitor-exit p0

    return-object v1

    :cond_82
    :goto_82
    monitor-exit p0

    return-object v1

    :catchall_84
    move-exception p1

    :goto_85
    if-eqz v4, :cond_8d

    :try_start_87
    invoke-virtual {v4}, Lcom/android/volley/toolbox/f$b;->close()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_8b
    .catchall {:try_start_87 .. :try_end_8a} :catchall_8e

    goto :goto_8d

    :catch_8b
    monitor-exit p0

    return-object v1

    :cond_8d
    :goto_8d
    :try_start_8d
    throw p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8e

    :catchall_8e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .registers 9

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/android/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "Unable to create cache dir %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/android/volley/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_6e

    :cond_22
    monitor-exit p0

    return-void

    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_6e

    if-nez v0, :cond_2e

    monitor-exit p0

    return-void

    :cond_2e
    :try_start_2e
    array-length v2, v0

    :goto_2f
    if-ge v1, v2, :cond_6c

    aget-object v3, v0, v1
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_6e

    const/4 v4, 0x0

    :try_start_34
    new-instance v5, Ljava/io/BufferedInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3e
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_3e} :catch_58
    .catchall {:try_start_34 .. :try_end_3e} :catchall_56

    :try_start_3e
    invoke-static {v5}, Lcom/android/volley/toolbox/f$a;->a(Ljava/io/InputStream;)Lcom/android/volley/toolbox/f$a;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    iput-wide v6, v4, Lcom/android/volley/toolbox/f$a;->a:J

    iget-object v6, v4, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-direct {p0, v6, v4}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;Lcom/android/volley/toolbox/f$a;)V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_4d} :catch_54
    .catchall {:try_start_3e .. :try_end_4d} :catchall_51

    :try_start_4d
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_69
    .catchall {:try_start_4d .. :try_end_50} :catchall_6e

    goto :goto_69

    :catchall_51
    move-exception v0

    move-object v4, v5

    goto :goto_5e

    :catch_54
    move-object v4, v5

    goto :goto_58

    :catchall_56
    move-exception v0

    goto :goto_5e

    :catch_58
    :goto_58
    if-eqz v3, :cond_64

    :try_start_5a
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_56

    goto :goto_64

    :goto_5e
    if-eqz v4, :cond_63

    :try_start_60
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_60 .. :try_end_63} :catch_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_6e

    :catch_63
    :cond_63
    :try_start_63
    throw v0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_6e

    :cond_64
    :goto_64
    if-eqz v4, :cond_69

    :try_start_66
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_69
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_69} :catch_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_6e

    :catch_69
    :cond_69
    :goto_69
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_6c
    monitor-exit p0

    return-void

    :catchall_6e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/android/volley/b$a;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    monitor-enter p0

    :try_start_7
    iget-object v4, v3, Lcom/android/volley/b$a;->a:[B

    array-length v4, v4

    iget-wide v5, v1, Lcom/android/volley/toolbox/f;->b:J

    int-to-long v7, v4

    add-long v9, v5, v7

    iget v4, v1, Lcom/android/volley/toolbox/f;->d:I

    int-to-long v4, v4

    cmp-long v6, v9, v4

    const/4 v5, 0x0

    if-ltz v6, :cond_c9

    sget-boolean v6, Lcom/android/volley/t;->b:Z

    if-eqz v6, :cond_22

    const-string v6, "Pruning old cache entries."

    new-array v9, v5, [Ljava/lang/Object;

    invoke-static {v6, v9}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    iget-wide v9, v1, Lcom/android/volley/toolbox/f;->b:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    iget-object v6, v1, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v13, 0x0

    :goto_33
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    const/4 v15, 0x2

    if-eqz v14, :cond_9b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/volley/toolbox/f$a;

    iget-object v4, v14, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-direct {v1, v4}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_62

    move-object/from16 v16, v6

    iget-wide v5, v1, Lcom/android/volley/toolbox/f;->b:J

    iget-wide v3, v14, Lcom/android/volley/toolbox/f$a;->a:J

    const/4 v14, 0x0

    move-wide/from16 v17, v11

    sub-long v11, v5, v3

    iput-wide v11, v1, Lcom/android/volley/toolbox/f;->b:J

    :goto_5f
    move-object/from16 v3, v16

    goto :goto_7c

    :cond_62
    move-object/from16 v16, v6

    move-wide/from16 v17, v11

    const-string v3, "Could not delete cache entry for key=%s, filename=%s"

    new-array v4, v15, [Ljava/lang/Object;

    iget-object v5, v14, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-object v5, v14, Lcom/android/volley/toolbox/f$a;->b:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5f

    :goto_7c
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    add-int/lit8 v13, v13, 0x1

    iget-wide v4, v1, Lcom/android/volley/toolbox/f;->b:J

    const/4 v6, 0x0

    add-long v11, v4, v7

    long-to-float v4, v11

    iget v5, v1, Lcom/android/volley/toolbox/f;->d:I

    int-to-float v5, v5

    const v6, 0x3f666666    # 0.9f

    mul-float v5, v5, v6

    cmpg-float v4, v4, v5

    if-gez v4, :cond_94

    goto :goto_9d

    :cond_94
    move-object v6, v3

    move-wide/from16 v11, v17

    move-object/from16 v3, p2

    const/4 v5, 0x0

    goto :goto_33

    :cond_9b
    move-wide/from16 v17, v11

    :goto_9d
    sget-boolean v3, Lcom/android/volley/t;->b:Z

    if-eqz v3, :cond_c9

    const-string v3, "pruned %d files, %d bytes, %d ms"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    iget-wide v5, v1, Lcom/android/volley/toolbox/f;->b:J

    const/4 v7, 0x0

    sub-long v7, v5, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const/4 v7, 0x0

    sub-long v7, v5, v17

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v15

    invoke-static {v3, v4}, Lcom/android/volley/t;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_c9
    invoke-direct/range {p0 .. p1}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3
    :try_end_cd
    .catchall {:try_start_7 .. :try_end_cd} :catchall_120

    :try_start_cd
    new-instance v4, Ljava/io/BufferedOutputStream;

    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v5, Lcom/android/volley/toolbox/f$a;

    move-object/from16 v6, p2

    invoke-direct {v5, v2, v6}, Lcom/android/volley/toolbox/f$a;-><init>(Ljava/lang/String;Lcom/android/volley/b$a;)V

    invoke-virtual {v5, v4}, Lcom/android/volley/toolbox/f$a;->a(Ljava/io/OutputStream;)Z

    move-result v7

    if-nez v7, :cond_fc

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    const-string v2, "Failed to write header for %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v5, v6

    invoke-static {v2, v5}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2

    :cond_fc
    iget-object v6, v6, Lcom/android/volley/b$a;->a:[B

    invoke-virtual {v4, v6}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->close()V

    invoke-direct {v1, v2, v5}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;Lcom/android/volley/toolbox/f$a;)V
    :try_end_107
    .catch Ljava/io/IOException; {:try_start_cd .. :try_end_107} :catch_109
    .catchall {:try_start_cd .. :try_end_107} :catchall_120

    monitor-exit p0

    return-void

    :catch_109
    :try_start_109
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_11e

    const-string v2, "Could not clean up file %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v2, v4}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11e
    .catchall {:try_start_109 .. :try_end_11e} :catchall_120

    :cond_11e
    monitor-exit p0

    return-void

    :catchall_120
    move-exception v0

    move-object v2, v0

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)V
    .registers 6

    monitor-enter p0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;)Lcom/android/volley/b$a;

    move-result-object v0

    if-eqz v0, :cond_12

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/volley/b$a;->f:J

    if-eqz p2, :cond_f

    iput-wide v1, v0, Lcom/android/volley/b$a;->e:J

    :cond_f
    invoke-virtual {p0, p1, v0}, Lcom/android/volley/toolbox/f;->a(Ljava/lang/String;Lcom/android/volley/b$a;)V
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    array-length v2, v0

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_16

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_16
    iget-object v0, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/volley/toolbox/f;->b:J

    const-string v0, "Cache cleared."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    monitor-exit p0

    return-void

    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/f;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    iget-object v1, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/toolbox/f$a;

    if-eqz v1, :cond_21

    iget-wide v2, p0, Lcom/android/volley/toolbox/f;->b:J

    iget-wide v4, v1, Lcom/android/volley/toolbox/f$a;->a:J

    const/4 v1, 0x0

    sub-long v6, v2, v4

    iput-wide v6, p0, Lcom/android/volley/toolbox/f;->b:J

    iget-object v1, p0, Lcom/android/volley/toolbox/f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    if-nez v0, :cond_35

    const-string v0, "Could not delete cache entry for key=%s, filename=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Lcom/android/volley/toolbox/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_37

    :cond_35
    monitor-exit p0

    return-void

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method
