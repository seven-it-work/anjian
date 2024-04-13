.class public final Lb/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Lb/af;

.field public static final d:Lb/ad;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/util/TimeZone;

.field public static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Lc/f;

.field private static final i:Lc/f;

.field private static final j:Lc/f;

.field private static final k:Lc/f;

.field private static final l:Lc/f;

.field private static final m:Ljava/nio/charset/Charset;

.field private static final n:Ljava/nio/charset/Charset;

.field private static final o:Ljava/nio/charset/Charset;

.field private static final p:Ljava/nio/charset/Charset;

.field private static final q:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lb/a/c;->a:[B

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lb/a/c;->b:[Ljava/lang/String;

    sget-object v0, Lb/a/c;->a:[B

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lb/af;->create(Lb/x;[B)Lb/af;

    move-result-object v0

    sput-object v0, Lb/a/c;->c:Lb/af;

    sget-object v0, Lb/a/c;->a:[B

    invoke-static {v1, v0}, Lb/ad;->create(Lb/x;[B)Lb/ad;

    move-result-object v0

    sput-object v0, Lb/a/c;->d:Lb/ad;

    const-string v0, "efbbbf"

    invoke-static {v0}, Lc/f;->decodeHex(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/c;->h:Lc/f;

    const-string v0, "feff"

    invoke-static {v0}, Lc/f;->decodeHex(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/c;->i:Lc/f;

    const-string v0, "fffe"

    invoke-static {v0}, Lc/f;->decodeHex(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/c;->j:Lc/f;

    const-string v0, "0000ffff"

    invoke-static {v0}, Lc/f;->decodeHex(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/c;->k:Lc/f;

    const-string v0, "ffff0000"

    invoke-static {v0}, Lc/f;->decodeHex(Ljava/lang/String;)Lc/f;

    move-result-object v0

    sput-object v0, Lb/a/c;->l:Lc/f;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/a/c;->e:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/a/c;->m:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/a/c;->n:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/a/c;->o:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/a/c;->p:Ljava/nio/charset/Charset;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lb/a/c;->f:Ljava/util/TimeZone;

    new-instance v0, Lb/a/c$1;

    invoke-direct {v0}, Lb/a/c$1;-><init>()V

    sput-object v0, Lb/a/c;->g:Ljava/util/Comparator;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/a/c;->q:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;II)I
    .registers 4

    :goto_0
    if-ge p1, p2, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_e

    return p1

    :sswitch_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_d
    return p2

    :sswitch_data_e
    .sparse-switch
        0x9 -> :sswitch_a
        0xa -> :sswitch_a
        0xc -> :sswitch_a
        0xd -> :sswitch_a
        0x20 -> :sswitch_a
    .end sparse-switch
.end method

.method public static a(Ljava/lang/String;IIC)I
    .registers 5

    :goto_0
    if-ge p1, p2, :cond_c

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_9

    return p1

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_c
    return p2
.end method

.method public static a(Ljava/lang/String;IILjava/lang/String;)I
    .registers 6

    :goto_0
    if-ge p1, p2, :cond_11

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return p1

    :cond_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_11
    return p2
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;Ljava/lang/String;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p1, v1

    invoke-interface {p0, v2, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-nez v2, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lb/v;Z)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/v;->l:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_20
    iget-object v0, p0, Lb/v;->l:Ljava/lang/String;

    :goto_22
    if-nez p1, :cond_30

    iget p1, p0, Lb/v;->m:I

    iget-object v1, p0, Lb/v;->k:Ljava/lang/String;

    invoke-static {v1}, Lb/v;->a(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_2f

    goto :goto_30

    :cond_2f
    return-object v0

    :cond_30
    :goto_30
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lb/v;->m:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    return-object v0

    :cond_12
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_14
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_35

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x1f

    if-le v3, v5, :cond_36

    const/16 v5, 0x7f

    if-lt v3, v5, :cond_28

    goto :goto_36

    :cond_28
    const-string v5, " #%/:?@[\\]"

    invoke-virtual {v5, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3
    :try_end_2e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_2e} :catch_3a

    const/4 v5, -0x1

    if-eq v3, v5, :cond_32

    goto :goto_36

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_35
    const/4 v4, 0x0

    :cond_36
    :goto_36
    if-eqz v4, :cond_39

    return-object v0

    :cond_39
    return-object p0

    :catch_3a
    return-object v0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lc/e;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a/c;->h:Lc/f;

    invoke-interface {p0, v0}, Lc/e;->d(Lc/f;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object p1, Lb/a/c;->h:Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lc/e;->h(J)V

    sget-object p0, Lb/a/c;->e:Ljava/nio/charset/Charset;

    return-object p0

    :cond_15
    sget-object v0, Lb/a/c;->i:Lc/f;

    invoke-interface {p0, v0}, Lc/e;->d(Lc/f;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p1, Lb/a/c;->i:Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lc/e;->h(J)V

    sget-object p0, Lb/a/c;->m:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2a
    sget-object v0, Lb/a/c;->j:Lc/f;

    invoke-interface {p0, v0}, Lc/e;->d(Lc/f;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object p1, Lb/a/c;->j:Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lc/e;->h(J)V

    sget-object p0, Lb/a/c;->n:Ljava/nio/charset/Charset;

    return-object p0

    :cond_3f
    sget-object v0, Lb/a/c;->k:Lc/f;

    invoke-interface {p0, v0}, Lc/e;->d(Lc/f;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object p1, Lb/a/c;->k:Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lc/e;->h(J)V

    sget-object p0, Lb/a/c;->o:Ljava/nio/charset/Charset;

    return-object p0

    :cond_54
    sget-object v0, Lb/a/c;->l:Lc/f;

    invoke-interface {p0, v0}, Lc/e;->d(Lc/f;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object p1, Lb/a/c;->l:Lc/f;

    invoke-virtual {p1}, Lc/f;->size()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lc/e;->h(J)V

    sget-object p0, Lb/a/c;->p:Ljava/nio/charset/Charset;

    return-object p0

    :cond_69
    return-object p1
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a([Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;
    .registers 3

    new-instance v0, Lb/a/c$2;

    invoke-direct {v0, p0, p1}, Lb/a/c$2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJJ)V
    .registers 11

    or-long v0, p2, p4

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_14

    cmp-long v0, p2, p0

    if-gtz v0, :cond_14

    sub-long v0, p0, p2

    cmp-long p0, v0, p4

    if-gez p0, :cond_13

    goto :goto_14

    :cond_13
    return-void

    :cond_14
    :goto_14
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    return-void

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    :cond_8
    return-void
.end method

.method private static a(Ljava/net/ServerSocket;)V
    .registers 1

    if-eqz p0, :cond_8

    :try_start_2
    invoke-virtual {p0}, Ljava/net/ServerSocket;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    return-void

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    :cond_8
    return-void
.end method

.method public static a(Ljava/net/Socket;)V
    .registers 2

    if-eqz p0, :cond_10

    :try_start_2
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/AssertionError; {:try_start_2 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_10

    return-void

    :catch_6
    move-exception p0

    throw p0

    :catch_8
    move-exception p0

    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-nez v0, :cond_10

    throw p0

    :catch_10
    :cond_10
    return-void
.end method

.method public static a(Lc/y;ILjava/util/concurrent/TimeUnit;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object v2

    invoke-virtual {v2}, Lc/z;->m_()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1e

    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object v2

    invoke-virtual {v2}, Lc/z;->c()J

    move-result-wide v5

    sub-long v7, v5, v0

    goto :goto_1f

    :cond_1e
    move-wide v7, v3

    :goto_1f
    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object v2

    int-to-long v5, p1

    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long v5, v0, p1

    invoke-virtual {v2, v5, v6}, Lc/z;->a(J)Lc/z;

    :try_start_31
    new-instance p1, Lc/c;

    invoke-direct {p1}, Lc/c;-><init>()V

    :goto_36
    const-wide/16 v5, 0x2000

    invoke-interface {p0, p1, v5, v6}, Lc/y;->read(Lc/c;J)J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long p2, v5, v9

    if-eqz p2, :cond_46

    invoke-virtual {p1}, Lc/c;->w()V
    :try_end_45
    .catch Ljava/io/InterruptedIOException; {:try_start_31 .. :try_end_45} :catch_74
    .catchall {:try_start_31 .. :try_end_45} :catchall_5d

    goto :goto_36

    :cond_46
    cmp-long p1, v7, v3

    if-nez p1, :cond_52

    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object p0

    invoke-virtual {p0}, Lc/z;->n_()Lc/z;

    goto :goto_5b

    :cond_52
    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object p0

    add-long p1, v0, v7

    invoke-virtual {p0, p1, p2}, Lc/z;->a(J)Lc/z;

    :goto_5b
    const/4 p0, 0x1

    return p0

    :catchall_5d
    move-exception p1

    cmp-long p2, v7, v3

    if-nez p2, :cond_6a

    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object p0

    invoke-virtual {p0}, Lc/z;->n_()Lc/z;

    goto :goto_73

    :cond_6a
    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object p0

    add-long v2, v0, v7

    invoke-virtual {p0, v2, v3}, Lc/z;->a(J)Lc/z;

    :goto_73
    throw p1

    :catch_74
    cmp-long p1, v7, v3

    if-nez p1, :cond_80

    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object p0

    invoke-virtual {p0}, Lc/z;->n_()Lc/z;

    goto :goto_89

    :cond_80
    invoke-interface {p0}, Lc/y;->timeout()Lc/z;

    move-result-object p0

    add-long p1, v0, v7

    invoke-virtual {p0, p1, p2}, Lc/z;->a(J)Lc/z;

    :goto_89
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lc/y;Ljava/util/concurrent/TimeUnit;)Z
    .registers 3

    const/16 v0, 0x64

    :try_start_2
    invoke-static {p0, v0, p1}, Lb/a/c;->a(Lc/y;ILjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_6} :catch_7

    return p0

    :catch_7
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/AssertionError;)Z
    .registers 2

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "getsockname failed"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-eq p0, p1, :cond_d

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    return p0

    :cond_d
    :goto_d
    const/4 p0, 0x1

    return p0
.end method

.method public static a(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v1, :cond_22

    aget-object v4, p1, v3

    array-length v5, p2

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v5, :cond_1f

    aget-object v7, p2, v6

    invoke-interface {p0, v4, v7}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-nez v7, :cond_1c

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    :cond_1c
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_22
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static a([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    array-length v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_17

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_14

    return v1

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_17
    return v1

    :cond_18
    const/4 p0, -0x1

    return p0
.end method

.method public static b(Ljava/lang/String;II)I
    .registers 4

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-lt p2, p1, :cond_11

    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_12

    add-int/lit8 p2, p2, 0x1

    return p2

    :sswitch_e
    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :cond_11
    return p1

    :sswitch_data_12
    .sparse-switch
        0x9 -> :sswitch_e
        0xa -> :sswitch_e
        0xc -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_e
    .end sparse-switch
.end method

.method public static b(Ljava/util/Comparator;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    if-eqz p2, :cond_26

    array-length v1, p1

    if-eqz v1, :cond_26

    array-length v1, p2

    if-nez v1, :cond_c

    return v0

    :cond_c
    array-length v1, p1

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v1, :cond_26

    aget-object v3, p1, v2

    array-length v4, p2

    const/4 v5, 0x0

    :goto_14
    if-ge v5, v4, :cond_23

    aget-object v6, p2, v5

    invoke-interface {p0, v3, v6}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-nez v6, :cond_20

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    :cond_23
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_26
    return v0
.end method

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lb/a/c;->a(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1, p2}, Lb/a/c;->b(Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lb/a/c;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_3e

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x7f

    const/16 v5, 0x1f

    if-le v3, v5, :cond_1b

    if-lt v3, v4, :cond_15

    goto :goto_1b

    :cond_15
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_6

    :cond_1b
    :goto_1b
    new-instance v3, Lc/c;

    invoke-direct {v3}, Lc/c;-><init>()V

    invoke-virtual {v3, p0, v1, v2}, Lc/c;->a(Ljava/lang/String;II)Lc/c;

    :goto_23
    if-ge v2, v0, :cond_3a

    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-le v1, v5, :cond_2f

    if-ge v1, v4, :cond_2f

    move v6, v1

    goto :goto_31

    :cond_2f
    const/16 v6, 0x3f

    :goto_31
    invoke-virtual {v3, v6}, Lc/c;->a(I)Lc/c;

    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr v2, v1

    goto :goto_23

    :cond_3a
    invoke-virtual {v3}, Lc/c;->q()Ljava/lang/String;

    move-result-object p0

    :cond_3e
    return-object p0
.end method

.method private static e(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x1f

    const/4 v4, 0x1

    if-le v2, v3, :cond_23

    const/16 v3, 0x7f

    if-lt v2, v3, :cond_16

    return v4

    :cond_16
    const-string v3, " #%/:?@[\\]"

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_20

    return v4

    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return v4

    :cond_24
    return v0
.end method
