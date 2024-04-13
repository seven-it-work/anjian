.class final Lb/a/f/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/f/h$b;,
        Lb/a/f/h$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Lc/e;

.field final c:Z

.field final d:Lb/a/f/d$a;

.field private final e:Lb/a/f/h$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lb/a/f/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(Lc/e;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/f/h;->b:Lc/e;

    iput-boolean p2, p0, Lb/a/f/h;->c:Z

    new-instance p1, Lb/a/f/h$a;

    iget-object p2, p0, Lb/a/f/h;->b:Lc/e;

    invoke-direct {p1, p2}, Lb/a/f/h$a;-><init>(Lc/e;)V

    iput-object p1, p0, Lb/a/f/h;->e:Lb/a/f/h$a;

    new-instance p1, Lb/a/f/d$a;

    iget-object p2, p0, Lb/a/f/h;->e:Lb/a/f/h$a;

    invoke-direct {p1, p2}, Lb/a/f/d$a;-><init>(Lc/y;)V

    iput-object p1, p0, Lb/a/f/h;->d:Lb/a/f/d$a;

    return-void
.end method

.method private static a(IBS)I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_6

    add-int/lit8 p0, p0, -0x1

    :cond_6
    if-le p2, p0, :cond_20

    const-string p1, "PROTOCOL_ERROR padding %s > remaining length %s"

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, p2

    invoke-static {p1, v0}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_20
    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0
.end method

.method static a(Lc/e;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lc/e;->g()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lc/e;->g()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    return p0
.end method

.method private a(ISBI)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ISBI)",
            "Ljava/util/List<",
            "Lb/a/f/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/h;->e:Lb/a/f/h$a;

    iget-object v1, p0, Lb/a/f/h;->e:Lb/a/f/h$a;

    iput p1, v1, Lb/a/f/h$a;->d:I

    iput p1, v0, Lb/a/f/h$a;->a:I

    iget-object p1, p0, Lb/a/f/h;->e:Lb/a/f/h$a;

    iput-short p2, p1, Lb/a/f/h$a;->e:S

    iget-object p1, p0, Lb/a/f/h;->e:Lb/a/f/h$a;

    iput-byte p3, p1, Lb/a/f/h$a;->b:B

    iget-object p1, p0, Lb/a/f/h;->e:Lb/a/f/h$a;

    iput p4, p1, Lb/a/f/h$a;->c:I

    iget-object p1, p0, Lb/a/f/h;->d:Lb/a/f/d$a;

    :goto_16
    iget-object p2, p1, Lb/a/f/d$a;->b:Lc/e;

    invoke-interface {p2}, Lc/e;->d()Z

    move-result p2

    if-nez p2, :cond_120

    iget-object p2, p1, Lb/a/f/d$a;->b:Lc/e;

    invoke-interface {p2}, Lc/e;->g()B

    move-result p2

    and-int/lit16 p2, p2, 0xff

    const/16 p3, 0x80

    if-ne p2, p3, :cond_32

    new-instance p1, Ljava/io/IOException;

    const-string p2, "index == 0"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_32
    and-int/lit16 p4, p2, 0x80

    if-ne p4, p3, :cond_81

    const/16 p3, 0x7f

    invoke-virtual {p1, p2, p3}, Lb/a/f/d$a;->a(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2}, Lb/a/f/d$a;->c(I)Z

    move-result p3

    if-eqz p3, :cond_4e

    sget-object p3, Lb/a/f/d;->a:[Lb/a/f/c;

    aget-object p2, p3, p2

    iget-object p3, p1, Lb/a/f/d$a;->a:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_4e
    sget-object p3, Lb/a/f/d;->a:[Lb/a/f/c;

    array-length p3, p3

    sub-int p3, p2, p3

    invoke-virtual {p1, p3}, Lb/a/f/d$a;->a(I)I

    move-result p3

    if-ltz p3, :cond_6b

    iget-object p4, p1, Lb/a/f/d$a;->e:[Lb/a/f/c;

    array-length p4, p4

    add-int/lit8 p4, p4, -0x1

    if-le p3, p4, :cond_61

    goto :goto_6b

    :cond_61
    iget-object p2, p1, Lb/a/f/d$a;->a:Ljava/util/List;

    iget-object p4, p1, Lb/a/f/d$a;->e:[Lb/a/f/c;

    aget-object p3, p4, p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_6b
    :goto_6b
    new-instance p1, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Header index too large "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_81
    const/16 p3, 0x40

    if-ne p2, p3, :cond_9b

    invoke-virtual {p1}, Lb/a/f/d$a;->b()Lc/f;

    move-result-object p2

    invoke-static {p2}, Lb/a/f/d;->a(Lc/f;)Lc/f;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/f/d$a;->b()Lc/f;

    move-result-object p3

    new-instance p4, Lb/a/f/c;

    invoke-direct {p4, p2, p3}, Lb/a/f/c;-><init>(Lc/f;Lc/f;)V

    :goto_96
    invoke-virtual {p1, p4}, Lb/a/f/d$a;->a(Lb/a/f/c;)V

    goto/16 :goto_16

    :cond_9b
    and-int/lit8 p4, p2, 0x40

    if-ne p4, p3, :cond_b5

    const/16 p3, 0x3f

    invoke-virtual {p1, p2, p3}, Lb/a/f/d$a;->a(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lb/a/f/d$a;->b(I)Lc/f;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/f/d$a;->b()Lc/f;

    move-result-object p3

    new-instance p4, Lb/a/f/c;

    invoke-direct {p4, p2, p3}, Lb/a/f/c;-><init>(Lc/f;Lc/f;)V

    goto :goto_96

    :cond_b5
    and-int/lit8 p3, p2, 0x20

    const/16 p4, 0x20

    if-ne p3, p4, :cond_e9

    const/16 p3, 0x1f

    invoke-virtual {p1, p2, p3}, Lb/a/f/d$a;->a(II)I

    move-result p2

    iput p2, p1, Lb/a/f/d$a;->d:I

    iget p2, p1, Lb/a/f/d$a;->d:I

    if-ltz p2, :cond_d3

    iget p2, p1, Lb/a/f/d$a;->d:I

    iget p3, p1, Lb/a/f/d$a;->c:I

    if-le p2, p3, :cond_ce

    goto :goto_d3

    :cond_ce
    invoke-virtual {p1}, Lb/a/f/d$a;->a()V

    goto/16 :goto_16

    :cond_d3
    :goto_d3
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid dynamic table size update "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lb/a/f/d$a;->d:I

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_e9
    const/16 p3, 0x10

    if-eq p2, p3, :cond_108

    if-nez p2, :cond_f0

    goto :goto_108

    :cond_f0
    const/16 p3, 0xf

    invoke-virtual {p1, p2, p3}, Lb/a/f/d$a;->a(II)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lb/a/f/d$a;->b(I)Lc/f;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/f/d$a;->b()Lc/f;

    move-result-object p3

    iget-object p4, p1, Lb/a/f/d$a;->a:Ljava/util/List;

    new-instance v0, Lb/a/f/c;

    invoke-direct {v0, p2, p3}, Lb/a/f/c;-><init>(Lc/f;Lc/f;)V

    goto :goto_11b

    :cond_108
    :goto_108
    invoke-virtual {p1}, Lb/a/f/d$a;->b()Lc/f;

    move-result-object p2

    invoke-static {p2}, Lb/a/f/d;->a(Lc/f;)Lc/f;

    move-result-object p2

    invoke-virtual {p1}, Lb/a/f/d$a;->b()Lc/f;

    move-result-object p3

    iget-object p4, p1, Lb/a/f/d$a;->a:Ljava/util/List;

    new-instance v0, Lb/a/f/c;

    invoke-direct {v0, p2, p3}, Lb/a/f/c;-><init>(Lc/f;Lc/f;)V

    :goto_11b
    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_16

    :cond_120
    iget-object p1, p0, Lb/a/f/h;->d:Lb/a/f/d$a;

    new-instance p2, Ljava/util/ArrayList;

    iget-object p3, p1, Lb/a/f/d$a;->a:Ljava/util/List;

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object p1, p1, Lb/a/f/d$a;->a:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    return-object p2
.end method

.method private a()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->i()I

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    return-void
.end method

.method private a(II)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_14

    const-string p2, "TYPE_PRIORITY length: %d != 5"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_14
    if-nez p2, :cond_1f

    const-string p1, "TYPE_PRIORITY streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1f
    invoke-direct {p0}, Lb/a/f/h;->a()V

    return-void
.end method

.method private a(Lb/a/f/h$b;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lb/a/f/h;->c:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0, v2, p1}, Lb/a/f/h;->a(ZLb/a/f/h$b;)Z

    move-result p1

    if-nez p1, :cond_56

    const-string p1, "Required SETTINGS preface not received"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_15
    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    sget-object v0, Lb/a/f/e;->a:Lc/f;

    invoke-virtual {v0}, Lc/f;->size()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v3, v4}, Lc/e;->d(J)Lc/f;

    move-result-object p1

    sget-object v0, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    const-string v3, "<< CONNECTION %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lc/f;->hex()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lb/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3f
    sget-object v0, Lb/a/f/e;->a:Lc/f;

    invoke-virtual {v0, p1}, Lc/f;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "Expected a connection header but was %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lc/f;->utf8()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_56
    return-void
.end method

.method private a(Lb/a/f/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_20

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_20
    and-int/lit8 v2, p3, 0x20

    if-eqz v2, :cond_29

    invoke-direct {p0}, Lb/a/f/h;->a()V

    add-int/lit8 p2, p2, -0x5

    :cond_29
    invoke-static {p2, p3, v0}, Lb/a/f/h;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lb/a/f/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v1, p4, p2}, Lb/a/f/h$b;->a(ZILjava/util/List;)V

    return-void
.end method

.method private a(Lb/a/f/h$b;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eq p2, v2, :cond_14

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_14
    if-nez p3, :cond_1f

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1f
    iget-object p2, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p2}, Lc/e;->i()I

    move-result p2

    invoke-static {p2}, Lb/a/f/b;->fromHttp2(I)Lb/a/f/b;

    move-result-object v2

    if-nez v2, :cond_3a

    const-string p1, "TYPE_RST_STREAM unexpected error code: %d"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v1

    invoke-static {p1, p3}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_3a
    invoke-interface {p1, p3, v2}, Lb/a/f/h$b;->a(ILb/a/f/b;)V

    return-void
.end method

.method private b(Lb/a/f/h$b;IBI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const-string p1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    and-int/lit8 v1, p3, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    and-int/lit8 v3, p3, 0x20

    if-eqz v3, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v2, 0x0

    :goto_1a
    if-eqz v2, :cond_25

    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_25
    and-int/lit8 v2, p3, 0x8

    if-eqz v2, :cond_32

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_32
    invoke-static {p2, p3, v0}, Lb/a/f/h;->a(IBS)I

    move-result p2

    iget-object p3, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p1, v1, p4, p3, p2}, Lb/a/f/h$b;->a(ZILc/e;I)V

    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    int-to-long p2, v0

    invoke-interface {p1, p2, p3}, Lc/e;->h(J)V

    return-void
.end method

.method private b(Lb/a/f/h$b;II)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ge p2, v1, :cond_15

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    new-array p3, v0, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v2

    invoke-static {p1, p3}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_15
    if-eqz p3, :cond_20

    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_20
    iget-object p3, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p3}, Lc/e;->i()I

    move-result p3

    iget-object v3, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v3}, Lc/e;->i()I

    move-result v3

    sub-int/2addr p2, v1

    invoke-static {v3}, Lb/a/f/b;->fromHttp2(I)Lb/a/f/b;

    move-result-object v1

    if-nez v1, :cond_42

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v2

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_42
    sget-object v0, Lc/f;->EMPTY:Lc/f;

    if-lez p2, :cond_4d

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    int-to-long v1, p2

    invoke-interface {v0, v1, v2}, Lc/e;->d(J)Lc/f;

    move-result-object v0

    :cond_4d
    invoke-interface {p1, p3, v0}, Lb/a/f/h$b;->a(ILc/f;)V

    return-void
.end method

.method private c(Lb/a/f/h$b;IBI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p4, :cond_c

    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    const/4 p4, 0x1

    and-int/2addr p3, p4

    if-eqz p3, :cond_1c

    if-eqz p2, :cond_1b

    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1b
    return-void

    :cond_1c
    rem-int/lit8 p3, p2, 0x6

    if-eqz p3, :cond_2f

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_2f
    new-instance p3, Lb/a/f/n;

    invoke-direct {p3}, Lb/a/f/n;-><init>()V

    const/4 v1, 0x0

    :goto_35
    if-ge v1, p2, :cond_80

    iget-object v2, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v2}, Lc/e;->h()S

    move-result v2

    iget-object v3, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v3}, Lc/e;->i()I

    move-result v3

    packed-switch v2, :pswitch_data_84

    goto :goto_7a

    :pswitch_47
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_50

    const v4, 0xffffff

    if-le v3, v4, :cond_7a

    :cond_50
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array p2, p4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_5f
    const/4 v2, 0x7

    if-gez v3, :cond_7a

    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_6b
    const/4 v2, 0x4

    goto :goto_7a

    :pswitch_6d
    if-eqz v3, :cond_7a

    if-eq v3, p4, :cond_7a

    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_7a
    :goto_7a
    :pswitch_7a
    invoke-virtual {p3, v2, v3}, Lb/a/f/n;->a(II)Lb/a/f/n;

    add-int/lit8 v1, v1, 0x6

    goto :goto_35

    :cond_80
    invoke-interface {p1, p3}, Lb/a/f/h$b;->a(Lb/a/f/n;)V

    return-void

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_7a
        :pswitch_6d
        :pswitch_6b
        :pswitch_5f
        :pswitch_47
    .end packed-switch
.end method

.method private c(Lb/a/f/h$b;II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq p2, v2, :cond_14

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_14
    iget-object p2, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p2}, Lc/e;->i()I

    move-result p2

    int-to-long v2, p2

    const-wide/32 v4, 0x7fffffff

    and-long v6, v2, v4

    const-wide/16 v2, 0x0

    cmp-long p2, v6, v2

    if-nez p2, :cond_35

    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_35
    invoke-interface {p1, p3, v6, v7}, Lb/a/f/h$b;->a(IJ)V

    return-void
.end method

.method private d(Lb/a/f/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p4, :cond_c

    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_c
    and-int/lit8 v1, p3, 0x8

    if-eqz v1, :cond_19

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_19
    iget-object v1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v1}, Lc/e;->i()I

    move-result v1

    const v2, 0x7fffffff

    and-int/2addr v1, v2

    add-int/lit8 p2, p2, -0x4

    invoke-static {p2, p3, v0}, Lb/a/f/h;->a(IBS)I

    move-result p2

    invoke-direct {p0, p2, v0, p3, p4}, Lb/a/f/h;->a(ISBI)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Lb/a/f/h$b;->a(ILjava/util/List;)V

    return-void
.end method

.method private e(Lb/a/f/h$b;IBI)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p2, v2, :cond_15

    const-string p1, "TYPE_PING length != 8: %s"

    new-array p3, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_15
    if-eqz p4, :cond_20

    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_20
    iget-object p2, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p2}, Lc/e;->i()I

    move-result p2

    iget-object p4, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p4}, Lc/e;->i()I

    move-result p4

    and-int/2addr p3, v1

    if-eqz p3, :cond_30

    const/4 v0, 0x1

    :cond_30
    invoke-interface {p1, v0, p2, p4}, Lb/a/f/h$b;->a(ZII)V

    return-void
.end method


# virtual methods
.method public final a(ZLb/a/f/h$b;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lb/a/f/h;->b:Lc/e;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lc/e;->a(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_2a4

    iget-object v1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-static {v1}, Lb/a/f/h;->a(Lc/e;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_295

    const/16 v3, 0x4000

    if-le v1, v3, :cond_17

    goto/16 :goto_295

    :cond_17
    iget-object v4, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v4}, Lc/e;->g()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    const/4 v5, 0x4

    if-eqz p1, :cond_34

    if-eq v4, v5, :cond_34

    const-string p1, "Expected a SETTINGS frame but was %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_34
    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p1}, Lc/e;->g()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v6, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v6}, Lc/e;->i()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    sget-object v8, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_5a

    sget-object v8, Lb/a/f/h;->a:Ljava/util/logging/Logger;

    invoke-static {v2, v6, v1, v4, p1}, Lb/a/f/e;->a(ZIIBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5a
    const/16 v8, 0x8

    packed-switch v4, :pswitch_data_2a6

    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    int-to-long v0, v1

    :goto_62
    invoke-interface {p1, v0, v1}, Lc/e;->h(J)V

    return v2

    :pswitch_66
    if-eq v1, v5, :cond_77

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_77
    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p1}, Lc/e;->i()I

    move-result p1

    int-to-long v3, p1

    const-wide/32 v7, 0x7fffffff

    and-long v9, v3, v7

    const-wide/16 v3, 0x0

    cmp-long p1, v9, v3

    if-nez p1, :cond_98

    const-string p1, "windowSizeIncrement was 0"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_98
    invoke-interface {p2, v6, v9, v10}, Lb/a/f/h$b;->a(IJ)V

    return v2

    :pswitch_9c
    if-ge v1, v8, :cond_ad

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_ad
    if-eqz v6, :cond_b8

    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_b8
    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p1}, Lc/e;->i()I

    move-result p1

    iget-object v3, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v3}, Lc/e;->i()I

    move-result v3

    sub-int/2addr v1, v8

    invoke-static {v3}, Lb/a/f/b;->fromHttp2(I)Lb/a/f/b;

    move-result-object v4

    if-nez v4, :cond_da

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_da
    sget-object v0, Lc/f;->EMPTY:Lc/f;

    if-lez v1, :cond_e5

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lc/e;->d(J)Lc/f;

    move-result-object v0

    :cond_e5
    invoke-interface {p2, p1, v0}, Lb/a/f/h$b;->a(ILc/f;)V

    return v2

    :pswitch_e9
    if-eq v1, v8, :cond_fa

    const-string p1, "TYPE_PING length != 8: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_fa
    if-eqz v6, :cond_105

    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_105
    iget-object v1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v1}, Lc/e;->i()I

    move-result v1

    iget-object v3, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v3}, Lc/e;->i()I

    move-result v3

    and-int/2addr p1, v2

    if-eqz p1, :cond_115

    const/4 v0, 0x1

    :cond_115
    invoke-interface {p2, v0, v1, v3}, Lb/a/f/h$b;->a(ZII)V

    return v2

    :pswitch_119
    if-nez v6, :cond_124

    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_124
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_131

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_131
    iget-object v3, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v3}, Lc/e;->i()I

    move-result v3

    and-int/2addr v3, v7

    add-int/lit8 v1, v1, -0x4

    invoke-static {v1, p1, v0}, Lb/a/f/h;->a(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v6}, Lb/a/f/h;->a(ISBI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v3, p1}, Lb/a/f/h$b;->a(ILjava/util/List;)V

    return v2

    :pswitch_146
    if-eqz v6, :cond_151

    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_151
    and-int/2addr p1, v2

    if-eqz p1, :cond_15f

    if-eqz v1, :cond_294

    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_15f
    rem-int/lit8 p1, v1, 0x6

    if-eqz p1, :cond_172

    const-string p1, "TYPE_SETTINGS length %% 6 != 0: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_172
    new-instance p1, Lb/a/f/n;

    invoke-direct {p1}, Lb/a/f/n;-><init>()V

    const/4 v4, 0x0

    :goto_178
    if-ge v4, v1, :cond_1c1

    iget-object v6, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v6}, Lc/e;->h()S

    move-result v6

    iget-object v7, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v7}, Lc/e;->i()I

    move-result v7

    packed-switch v6, :pswitch_data_2bc

    goto :goto_1bb

    :pswitch_18a
    if-lt v7, v3, :cond_191

    const v8, 0xffffff

    if-le v7, v8, :cond_1bb

    :cond_191
    const-string p1, "PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1a0
    const/4 v6, 0x7

    if-gez v7, :cond_1bb

    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1ac
    const/4 v6, 0x4

    goto :goto_1bb

    :pswitch_1ae
    if-eqz v7, :cond_1bb

    if-eq v7, v2, :cond_1bb

    const-string p1, "PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1bb
    :goto_1bb
    :pswitch_1bb
    invoke-virtual {p1, v6, v7}, Lb/a/f/n;->a(II)Lb/a/f/n;

    add-int/lit8 v4, v4, 0x6

    goto :goto_178

    :cond_1c1
    invoke-interface {p2, p1}, Lb/a/f/h$b;->a(Lb/a/f/n;)V

    return v2

    :pswitch_1c5
    if-eq v1, v5, :cond_1d6

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1d6
    if-nez v6, :cond_1e1

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1e1
    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p1}, Lc/e;->i()I

    move-result p1

    invoke-static {p1}, Lb/a/f/b;->fromHttp2(I)Lb/a/f/b;

    move-result-object v1

    if-nez v1, :cond_1fc

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1fc
    invoke-interface {p2, v6, v1}, Lb/a/f/h$b;->a(ILb/a/f/b;)V

    return v2

    :pswitch_200
    const/4 p1, 0x5

    if-eq v1, p1, :cond_212

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_212
    if-nez v6, :cond_21d

    const-string p1, "TYPE_PRIORITY streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_21d
    invoke-direct {p0}, Lb/a/f/h;->a()V

    return v2

    :pswitch_221
    if-nez v6, :cond_22c

    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_22c
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_232

    const/4 v3, 0x1

    goto :goto_233

    :cond_232
    const/4 v3, 0x0

    :goto_233
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_240

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_240
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_249

    invoke-direct {p0}, Lb/a/f/h;->a()V

    add-int/lit8 v1, v1, -0x5

    :cond_249
    invoke-static {v1, p1, v0}, Lb/a/f/h;->a(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v6}, Lb/a/f/h;->a(ISBI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v3, v6, p1}, Lb/a/f/h$b;->a(ZILjava/util/List;)V

    return v2

    :pswitch_255
    if-nez v6, :cond_260

    const-string p1, "PROTOCOL_ERROR: TYPE_DATA streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_260
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_266

    const/4 v3, 0x1

    goto :goto_267

    :cond_266
    const/4 v3, 0x0

    :goto_267
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_26d

    const/4 v4, 0x1

    goto :goto_26e

    :cond_26d
    const/4 v4, 0x0

    :goto_26e
    if-eqz v4, :cond_279

    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_279
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_286

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->g()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_286
    invoke-static {v1, p1, v0}, Lb/a/f/h;->a(IBS)I

    move-result p1

    iget-object v1, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {p2, v3, v6, v1, p1}, Lb/a/f/h$b;->a(ZILc/e;I)V

    iget-object p1, p0, Lb/a/f/h;->b:Lc/e;

    int-to-long v0, v0

    goto/16 :goto_62

    :cond_294
    return v2

    :cond_295
    :goto_295
    const-string p1, "FRAME_SIZE_ERROR: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lb/a/f/e;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_2a4
    return v0

    nop

    :pswitch_data_2a6
    .packed-switch 0x0
        :pswitch_255
        :pswitch_221
        :pswitch_200
        :pswitch_1c5
        :pswitch_146
        :pswitch_119
        :pswitch_e9
        :pswitch_9c
        :pswitch_66
    .end packed-switch

    :pswitch_data_2bc
    .packed-switch 0x1
        :pswitch_1bb
        :pswitch_1ae
        :pswitch_1ac
        :pswitch_1a0
        :pswitch_18a
    .end packed-switch
.end method

.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/h;->b:Lc/e;

    invoke-interface {v0}, Lc/e;->close()V

    return-void
.end method
