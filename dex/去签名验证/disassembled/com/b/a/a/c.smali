.class public final Lcom/b/a/a/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:[B

.field public static final b:[Ljava/lang/String;

.field public static final c:Lcom/b/a/au;

.field public static final d:Lcom/b/a/aq;

.field public static final e:Ljava/nio/charset/Charset;

.field public static final f:Ljava/util/TimeZone;

.field private static final g:Lcom/b/b/i;

.field private static final h:Lcom/b/b/i;

.field private static final i:Lcom/b/b/i;

.field private static final j:Lcom/b/b/i;

.field private static final k:Lcom/b/b/i;

.field private static final l:Ljava/nio/charset/Charset;

.field private static final m:Ljava/nio/charset/Charset;

.field private static final n:Ljava/nio/charset/Charset;

.field private static final o:Ljava/nio/charset/Charset;

.field private static final p:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lcom/b/a/a/c;->a:[B

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/b/a/a/c;->b:[Ljava/lang/String;

    sget-object v0, Lcom/b/a/a/c;->a:[B

    invoke-static {v0}, Lcom/b/a/au;->a([B)Lcom/b/a/au;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->c:Lcom/b/a/au;

    sget-object v0, Lcom/b/a/a/c;->a:[B

    invoke-static {v0}, Lcom/b/a/aq;->a([B)Lcom/b/a/aq;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->d:Lcom/b/a/aq;

    const-string v0, "efbbbf"

    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->g:Lcom/b/b/i;

    const-string v0, "feff"

    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->h:Lcom/b/b/i;

    const-string v0, "fffe"

    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->i:Lcom/b/b/i;

    const-string v0, "0000ffff"

    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->j:Lcom/b/b/i;

    const-string v0, "ffff0000"

    invoke-static {v0}, Lcom/b/b/i;->b(Ljava/lang/String;)Lcom/b/b/i;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->k:Lcom/b/b/i;

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->e:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->l:Ljava/nio/charset/Charset;

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->m:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32BE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->n:Ljava/nio/charset/Charset;

    const-string v0, "UTF-32LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->o:Ljava/nio/charset/Charset;

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->f:Ljava/util/TimeZone;

    const-string v0, "([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/c;->p:Ljava/util/regex/Pattern;

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

.method public static a([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    array-length v0, p0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v2, p0, v1

    invoke-static {v2, p1}, Lcom/b/a/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v1

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_10
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Lcom/b/a/ac;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_28

    :cond_24
    invoke-virtual {p0}, Lcom/b/a/ac;->f()Ljava/lang/String;

    move-result-object v0

    :goto_28
    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/b/a/ac;->g()I

    move-result p1

    invoke-virtual {p0}, Lcom/b/a/ac;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v1

    if-eq p1, v1, :cond_39

    goto :goto_3a

    :cond_39
    return-object v0

    :cond_3a
    :goto_3a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/b/a/ac;->g()I

    move-result p0

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

.method public static a(Lcom/b/b/h;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 4

    sget-object v0, Lcom/b/a/a/c;->g:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object p1, Lcom/b/a/a/c;->g:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    sget-object p0, Lcom/b/a/a/c;->e:Ljava/nio/charset/Charset;

    return-object p0

    :cond_15
    sget-object v0, Lcom/b/a/a/c;->h:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p1, Lcom/b/a/a/c;->h:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    sget-object p0, Lcom/b/a/a/c;->l:Ljava/nio/charset/Charset;

    return-object p0

    :cond_2a
    sget-object v0, Lcom/b/a/a/c;->i:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object p1, Lcom/b/a/a/c;->i:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    sget-object p0, Lcom/b/a/a/c;->m:Ljava/nio/charset/Charset;

    return-object p0

    :cond_3f
    sget-object v0, Lcom/b/a/a/c;->j:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_54

    sget-object p1, Lcom/b/a/a/c;->j:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    sget-object p0, Lcom/b/a/a/c;->n:Ljava/nio/charset/Charset;

    return-object p0

    :cond_54
    sget-object v0, Lcom/b/a/a/c;->k:Lcom/b/b/i;

    invoke-interface {p0, v0}, Lcom/b/b/h;->b(Lcom/b/b/i;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object p1, Lcom/b/a/a/c;->k:Lcom/b/b/i;

    invoke-virtual {p1}, Lcom/b/b/i;->g()I

    move-result p1

    int-to-long v0, p1

    invoke-interface {p0, v0, v1}, Lcom/b/b/h;->f(J)V

    sget-object p0, Lcom/b/a/a/c;->o:Ljava/nio/charset/Charset;

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

    new-instance v0, Lcom/b/a/a/d;

    invoke-direct {v0, p0, p1}, Lcom/b/a/a/d;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static a(JJ)V
    .registers 9

    const-wide/16 v0, 0x0

    or-long v2, p2, v0

    cmp-long v4, v2, v0

    if-ltz v4, :cond_14

    cmp-long v2, v0, p0

    if-gtz v2, :cond_14

    sub-long v2, p0, v0

    cmp-long p0, v2, p2

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

    invoke-static {p0}, Lcom/b/a/a/c;->a(Ljava/lang/AssertionError;)Z

    move-result v0

    if-nez v0, :cond_10

    throw p0

    :catch_10
    :cond_10
    return-void
.end method

.method public static a(Lcom/b/b/x;ILjava/util/concurrent/TimeUnit;)Z
    .registers 14

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/b/y;->c_()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_1e

    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v2

    invoke-virtual {v2}, Lcom/b/b/y;->d()J

    move-result-wide v5

    sub-long v7, v5, v0

    goto :goto_1f

    :cond_1e
    move-wide v7, v3

    :goto_1f
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object v2

    int-to-long v5, p1

    invoke-virtual {p2, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-static {v7, v8, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    add-long v5, v0, p1

    invoke-virtual {v2, v5, v6}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    :try_start_31
    new-instance p1, Lcom/b/b/f;

    invoke-direct {p1}, Lcom/b/b/f;-><init>()V

    :goto_36
    const-wide/16 v5, 0x2000

    invoke-interface {p0, p1, v5, v6}, Lcom/b/b/x;->a(Lcom/b/b/f;J)J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long p2, v5, v9

    if-eqz p2, :cond_46

    invoke-virtual {p1}, Lcom/b/b/f;->o()V
    :try_end_45
    .catch Ljava/io/InterruptedIOException; {:try_start_31 .. :try_end_45} :catch_74
    .catchall {:try_start_31 .. :try_end_45} :catchall_5d

    goto :goto_36

    :cond_46
    cmp-long p1, v7, v3

    if-nez p1, :cond_52

    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    goto :goto_5b

    :cond_52
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    add-long p1, v0, v7

    invoke-virtual {p0, p1, p2}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    :goto_5b
    const/4 p0, 0x1

    return p0

    :catchall_5d
    move-exception p1

    cmp-long p2, v7, v3

    if-nez p2, :cond_6a

    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    goto :goto_73

    :cond_6a
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    add-long v2, v0, v7

    invoke-virtual {p0, v2, v3}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    :goto_73
    throw p1

    :catch_74
    cmp-long p1, v7, v3

    if-nez p1, :cond_80

    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    invoke-virtual {p0}, Lcom/b/b/y;->e_()Lcom/b/b/y;

    goto :goto_89

    :cond_80
    invoke-interface {p0}, Lcom/b/b/x;->a()Lcom/b/b/y;

    move-result-object p0

    add-long p1, v0, v7

    invoke-virtual {p0, p1, p2}, Lcom/b/b/y;->a(J)Lcom/b/b/y;

    :goto_89
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/b/b/x;Ljava/util/concurrent/TimeUnit;)Z
    .registers 3

    const/16 v0, 0x64

    :try_start_2
    invoke-static {p0, v0, p1}, Lcom/b/a/a/c;->a(Lcom/b/b/x;ILjava/util/concurrent/TimeUnit;)Z

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

.method public static a(Ljava/lang/Class;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[TT;[TT;)[TT;"
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

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

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

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

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

.method public static c(Ljava/lang/String;II)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/b/a/a/c;->a(Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1, p2}, Lcom/b/a/a/c;->b(Ljava/lang/String;II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Z
    .registers 2

    sget-object v0, Lcom/b/a/a/c;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method
