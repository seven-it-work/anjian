.class final Lcom/b/a/a/e/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final a:Ljava/util/logging/Logger;


# instance fields
.field final b:Lcom/b/a/a/e/e;

.field private final c:Lcom/b/b/h;

.field private final d:Lcom/b/a/a/e/z;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/b/a/a/e/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/b/a/a/e/y;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/b/b/h;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    iput-boolean p2, p0, Lcom/b/a/a/e/y;->e:Z

    new-instance p1, Lcom/b/a/a/e/z;

    iget-object p2, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-direct {p1, p2}, Lcom/b/a/a/e/z;-><init>(Lcom/b/b/h;)V

    iput-object p1, p0, Lcom/b/a/a/e/y;->d:Lcom/b/a/a/e/z;

    new-instance p1, Lcom/b/a/a/e/e;

    iget-object p2, p0, Lcom/b/a/a/e/y;->d:Lcom/b/a/a/e/z;

    invoke-direct {p1, p2}, Lcom/b/a/a/e/e;-><init>(Lcom/b/b/x;)V

    iput-object p1, p0, Lcom/b/a/a/e/y;->b:Lcom/b/a/a/e/e;

    return-void
.end method

.method private static a(IBS)I
    .registers 5

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

    invoke-static {p1, v0}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p0

    throw p0

    :cond_20
    sub-int/2addr p0, p2

    int-to-short p0, p0

    return p0
.end method

.method static a(Lcom/b/b/h;)I
    .registers 3

    invoke-interface {p0}, Lcom/b/b/h;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lcom/b/b/h;->e()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-interface {p0}, Lcom/b/b/h;->e()B

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
            "Lcom/b/a/a/e/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/a/e/y;->d:Lcom/b/a/a/e/z;

    iget-object v1, p0, Lcom/b/a/a/e/y;->d:Lcom/b/a/a/e/z;

    iput p1, v1, Lcom/b/a/a/e/z;->d:I

    iput p1, v0, Lcom/b/a/a/e/z;->a:I

    iget-object p1, p0, Lcom/b/a/a/e/y;->d:Lcom/b/a/a/e/z;

    iput-short p2, p1, Lcom/b/a/a/e/z;->e:S

    iget-object p1, p0, Lcom/b/a/a/e/y;->d:Lcom/b/a/a/e/z;

    iput-byte p3, p1, Lcom/b/a/a/e/z;->b:B

    iget-object p1, p0, Lcom/b/a/a/e/y;->d:Lcom/b/a/a/e/z;

    iput p4, p1, Lcom/b/a/a/e/z;->c:I

    iget-object p1, p0, Lcom/b/a/a/e/y;->b:Lcom/b/a/a/e/e;

    invoke-virtual {p1}, Lcom/b/a/a/e/e;->a()V

    iget-object p1, p0, Lcom/b/a/a/e/y;->b:Lcom/b/a/a/e/e;

    invoke-virtual {p1}, Lcom/b/a/a/e/e;->b()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->g()I

    iget-object v0, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->e()B

    return-void
.end method


# virtual methods
.method public final a(Lcom/b/a/a/e/aa;)V
    .registers 8

    iget-boolean v0, p0, Lcom/b/a/a/e/y;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    invoke-virtual {p0, v2, p1}, Lcom/b/a/a/e/y;->a(ZLcom/b/a/a/e/aa;)Z

    move-result p1

    if-nez p1, :cond_56

    const-string p1, "Required SETTINGS preface not received"

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_15
    iget-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    sget-object v0, Lcom/b/a/a/e/g;->a:Lcom/b/b/i;

    invoke-virtual {v0}, Lcom/b/b/i;->g()I

    move-result v0

    int-to-long v3, v0

    invoke-interface {p1, v3, v4}, Lcom/b/b/h;->c(J)Lcom/b/b/i;

    move-result-object p1

    sget-object v0, Lcom/b/a/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3f

    sget-object v0, Lcom/b/a/a/e/y;->a:Ljava/util/logging/Logger;

    const-string v3, "<< CONNECTION %s"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/b/b/i;->e()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3, v4}, Lcom/b/a/a/c;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_3f
    sget-object v0, Lcom/b/a/a/e/g;->a:Lcom/b/b/i;

    invoke-virtual {v0, p1}, Lcom/b/b/i;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_56

    const-string v0, "Expected a connection header but was %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/b/b/i;->a()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_56
    return-void
.end method

.method public final a(ZLcom/b/a/a/e/aa;)Z
    .registers 14

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    const-wide/16 v2, 0x9

    invoke-interface {v1, v2, v3}, Lcom/b/b/h;->a(J)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_8} :catch_299

    iget-object v1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-static {v1}, Lcom/b/a/a/e/y;->a(Lcom/b/b/h;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_28a

    const/16 v3, 0x4000

    if-le v1, v3, :cond_17

    goto/16 :goto_28a

    :cond_17
    iget-object v4, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v4}, Lcom/b/b/h;->e()B

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

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_34
    iget-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {p1}, Lcom/b/b/h;->e()B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    iget-object v6, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v6}, Lcom/b/b/h;->g()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    sget-object v8, Lcom/b/a/a/e/y;->a:Ljava/util/logging/Logger;

    sget-object v9, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_5a

    sget-object v8, Lcom/b/a/a/e/y;->a:Ljava/util/logging/Logger;

    invoke-static {v2, v6, v1, v4, p1}, Lcom/b/a/a/e/g;->a(ZIIBB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_5a
    const/16 v8, 0x8

    packed-switch v4, :pswitch_data_29a

    iget-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    int-to-long v0, v1

    :goto_62
    invoke-interface {p1, v0, v1}, Lcom/b/b/h;->f(J)V

    return v2

    :pswitch_66
    if-eq v1, v5, :cond_77

    const-string p1, "TYPE_WINDOW_UPDATE length !=4: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_77
    iget-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {p1}, Lcom/b/b/h;->g()I

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

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_98
    invoke-interface {p2, v6, v9, v10}, Lcom/b/a/a/e/aa;->a(IJ)V

    return v2

    :pswitch_9c
    if-ge v1, v8, :cond_ad

    const-string p1, "TYPE_GOAWAY length < 8: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_ad
    if-eqz v6, :cond_b8

    const-string p1, "TYPE_GOAWAY streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_b8
    iget-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {p1}, Lcom/b/b/h;->g()I

    move-result p1

    iget-object v3, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v3}, Lcom/b/b/h;->g()I

    move-result v3

    sub-int/2addr v1, v8

    invoke-static {v3}, Lcom/b/a/a/e/b;->a(I)Lcom/b/a/a/e/b;

    move-result-object v4

    if-nez v4, :cond_da

    const-string p1, "TYPE_GOAWAY unexpected error code: %d"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_da
    sget-object v0, Lcom/b/b/i;->b:Lcom/b/b/i;

    if-lez v1, :cond_e5

    iget-object v0, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lcom/b/b/h;->c(J)Lcom/b/b/i;

    move-result-object v0

    :cond_e5
    invoke-interface {p2, p1, v0}, Lcom/b/a/a/e/aa;->a(ILcom/b/b/i;)V

    return v2

    :pswitch_e9
    if-eq v1, v8, :cond_fa

    const-string p1, "TYPE_PING length != 8: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_fa
    if-eqz v6, :cond_105

    const-string p1, "TYPE_PING streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_105
    iget-object v1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v1}, Lcom/b/b/h;->g()I

    move-result v1

    iget-object v3, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v3}, Lcom/b/b/h;->g()I

    move-result v3

    and-int/2addr p1, v2

    if-eqz p1, :cond_115

    const/4 v0, 0x1

    :cond_115
    invoke-interface {p2, v0, v1, v3}, Lcom/b/a/a/e/aa;->a(ZII)V

    return v2

    :pswitch_119
    if-nez v6, :cond_124

    const-string p1, "PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_124
    and-int/lit8 v3, p1, 0x8

    if-eqz v3, :cond_131

    iget-object v0, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_131
    iget-object v3, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v3}, Lcom/b/b/h;->g()I

    move-result v3

    and-int/2addr v3, v7

    add-int/lit8 v1, v1, -0x4

    invoke-static {v1, p1, v0}, Lcom/b/a/a/e/y;->a(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v6}, Lcom/b/a/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v3, p1}, Lcom/b/a/a/e/aa;->a(ILjava/util/List;)V

    return v2

    :pswitch_146
    if-eqz v6, :cond_151

    const-string p1, "TYPE_SETTINGS streamId != 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_151
    and-int/2addr p1, v2

    if-eqz p1, :cond_15f

    if-eqz v1, :cond_289

    const-string p1, "FRAME_SIZE_ERROR ack frame should be empty!"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

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

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_172
    new-instance p1, Lcom/b/a/a/e/al;

    invoke-direct {p1}, Lcom/b/a/a/e/al;-><init>()V

    const/4 v4, 0x0

    :goto_178
    if-ge v4, v1, :cond_1c1

    iget-object v6, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v6}, Lcom/b/b/h;->f()S

    move-result v6

    iget-object v7, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v7}, Lcom/b/b/h;->g()I

    move-result v7

    packed-switch v6, :pswitch_data_2b0

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

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :pswitch_1a0
    const/4 v6, 0x7

    if-gez v7, :cond_1bb

    const-string p1, "PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

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

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1bb
    :goto_1bb
    :pswitch_1bb
    invoke-virtual {p1, v6, v7}, Lcom/b/a/a/e/al;->a(II)Lcom/b/a/a/e/al;

    add-int/lit8 v4, v4, 0x6

    goto :goto_178

    :cond_1c1
    invoke-interface {p2, p1}, Lcom/b/a/a/e/aa;->a(Lcom/b/a/a/e/al;)V

    return v2

    :pswitch_1c5
    if-eq v1, v5, :cond_1d6

    const-string p1, "TYPE_RST_STREAM length: %d != 4"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1d6
    if-nez v6, :cond_1e1

    const-string p1, "TYPE_RST_STREAM streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1e1
    iget-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {p1}, Lcom/b/b/h;->g()I

    move-result p1

    invoke-static {p1}, Lcom/b/a/a/e/b;->a(I)Lcom/b/a/a/e/b;

    move-result-object v1

    if-nez v1, :cond_1fc

    const-string p2, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v0

    invoke-static {p2, v1}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_1fc
    invoke-interface {p2, v6, v1}, Lcom/b/a/a/e/aa;->a(ILcom/b/a/a/e/b;)V

    return v2

    :pswitch_200
    const/4 p1, 0x5

    if-eq v1, p1, :cond_212

    const-string p1, "TYPE_PRIORITY length: %d != 5"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_212
    if-nez v6, :cond_21d

    const-string p1, "TYPE_PRIORITY streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_21d
    invoke-direct {p0}, Lcom/b/a/a/e/y;->a()V

    return v2

    :pswitch_221
    if-nez v6, :cond_22c

    const-string p1, "PROTOCOL_ERROR: TYPE_HEADERS streamId == 0"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

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

    iget-object v0, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_240
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_249

    invoke-direct {p0}, Lcom/b/a/a/e/y;->a()V

    add-int/lit8 v1, v1, -0x5

    :cond_249
    invoke-static {v1, p1, v0}, Lcom/b/a/a/e/y;->a(IBS)I

    move-result v1

    invoke-direct {p0, v1, v0, p1, v6}, Lcom/b/a/a/e/y;->a(ISBI)Ljava/util/List;

    move-result-object p1

    invoke-interface {p2, v3, v6, p1}, Lcom/b/a/a/e/aa;->a(ZILjava/util/List;)V

    return v2

    :pswitch_255
    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_25b

    const/4 v3, 0x1

    goto :goto_25c

    :cond_25b
    const/4 v3, 0x0

    :goto_25c
    and-int/lit8 v4, p1, 0x20

    if-eqz v4, :cond_262

    const/4 v4, 0x1

    goto :goto_263

    :cond_262
    const/4 v4, 0x0

    :goto_263
    if-eqz v4, :cond_26e

    const-string p1, "PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA"

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_26e
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_27b

    iget-object v0, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->e()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    :cond_27b
    invoke-static {v1, p1, v0}, Lcom/b/a/a/e/y;->a(IBS)I

    move-result p1

    iget-object v1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {p2, v3, v6, v1, p1}, Lcom/b/a/a/e/aa;->a(ZILcom/b/b/h;I)V

    iget-object p1, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    int-to-long v0, v0

    goto/16 :goto_62

    :cond_289
    return v2

    :cond_28a
    :goto_28a
    const-string p1, "FRAME_SIZE_ERROR: %s"

    new-array p2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {p1, p2}, Lcom/b/a/a/e/g;->b(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :catch_299
    return v0

    :pswitch_data_29a
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

    :pswitch_data_2b0
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

    iget-object v0, p0, Lcom/b/a/a/e/y;->c:Lcom/b/b/h;

    invoke-interface {v0}, Lcom/b/b/h;->close()V

    return-void
.end method
