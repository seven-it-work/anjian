.class public final Lc/l;
.super Ljava/lang/Object;

# interfaces
.implements Lc/y;


# static fields
.field private static final a:B = 0x1t

.field private static final b:B = 0x2t

.field private static final c:B = 0x3t

.field private static final d:B = 0x4t

.field private static final e:B = 0x0t

.field private static final f:B = 0x1t

.field private static final g:B = 0x2t

.field private static final h:B = 0x3t


# instance fields
.field private i:I

.field private final j:Lc/e;

.field private final k:Ljava/util/zip/Inflater;

.field private final l:Lc/o;

.field private final m:Ljava/util/zip/CRC32;


# direct methods
.method public constructor <init>(Lc/y;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lc/l;->i:I

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lc/l;->m:Ljava/util/zip/CRC32;

    if-nez p1, :cond_17

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "source == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    new-instance v0, Ljava/util/zip/Inflater;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/zip/Inflater;-><init>(Z)V

    iput-object v0, p0, Lc/l;->k:Ljava/util/zip/Inflater;

    invoke-static {p1}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object p1

    iput-object p1, p0, Lc/l;->j:Lc/e;

    new-instance p1, Lc/o;

    iget-object v0, p0, Lc/l;->j:Lc/e;

    iget-object v1, p0, Lc/l;->k:Ljava/util/zip/Inflater;

    invoke-direct {p1, v0, v1}, Lc/o;-><init>(Lc/e;Ljava/util/zip/Inflater;)V

    iput-object p1, p0, Lc/l;->l:Lc/o;

    return-void
.end method

.method private a()V
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lc/l;->j:Lc/e;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lc/e;->a(J)V

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lc/c;->c(J)B

    move-result v7

    shr-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    and-int/2addr v0, v8

    const/4 v9, 0x0

    if-ne v0, v8, :cond_1e

    const/4 v10, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v10, 0x0

    :goto_1f
    if-eqz v10, :cond_2f

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_2f
    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->h()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v1, v2, v0}, Lc/l;->a(Ljava/lang/String;II)V

    iget-object v0, v6, Lc/l;->j:Lc/e;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lc/e;->h(J)V

    shr-int/lit8 v0, v7, 0x2

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_87

    iget-object v0, v6, Lc/l;->j:Lc/e;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lc/e;->a(J)V

    if-eqz v10, :cond_5f

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_5f
    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->h()S

    move-result v0

    invoke-static {v0}, Lc/ab;->a(S)S

    move-result v0

    iget-object v1, v6, Lc/l;->j:Lc/e;

    int-to-long v11, v0

    invoke-interface {v1, v11, v12}, Lc/e;->a(J)V

    if-eqz v10, :cond_82

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide v4, v11

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_82
    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0, v11, v12}, Lc/e;->h(J)V

    :cond_87
    shr-int/lit8 v0, v7, 0x3

    and-int/2addr v0, v8

    const-wide/16 v11, -0x1

    const-wide/16 v13, 0x1

    if-ne v0, v8, :cond_b7

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0, v9}, Lc/e;->a(B)J

    move-result-wide v15

    cmp-long v0, v15, v11

    if-nez v0, :cond_a0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_a0
    if-eqz v10, :cond_b0

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v15, v13

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_b0
    iget-object v0, v6, Lc/l;->j:Lc/e;

    add-long v1, v15, v13

    invoke-interface {v0, v1, v2}, Lc/e;->h(J)V

    :cond_b7
    shr-int/lit8 v0, v7, 0x4

    and-int/2addr v0, v8

    if-ne v0, v8, :cond_e3

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0, v9}, Lc/e;->a(B)J

    move-result-wide v7

    cmp-long v0, v7, v11

    if-nez v0, :cond_cc

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_cc
    if-eqz v10, :cond_dc

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v7, v13

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_dc
    iget-object v0, v6, Lc/l;->j:Lc/e;

    add-long v1, v7, v13

    invoke-interface {v0, v1, v2}, Lc/e;->h(J)V

    :cond_e3
    if-eqz v10, :cond_fd

    const-string v0, "FHCRC"

    iget-object v1, v6, Lc/l;->j:Lc/e;

    invoke-interface {v1}, Lc/e;->k()S

    move-result v1

    iget-object v2, v6, Lc/l;->m:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lc/l;->a(Ljava/lang/String;II)V

    iget-object v0, v6, Lc/l;->m:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_fd
    return-void
.end method

.method private a(Lc/c;JJ)V
    .registers 12

    iget-object p1, p1, Lc/c;->b:Lc/u;

    :goto_2
    iget v0, p1, Lc/u;->e:I

    iget v1, p1, Lc/u;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_18

    iget v0, p1, Lc/u;->e:I

    iget v1, p1, Lc/u;->d:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    sub-long v2, p2, v0

    iget-object p1, p1, Lc/u;->h:Lc/u;

    move-wide p2, v2

    goto :goto_2

    :cond_18
    const-wide/16 v0, 0x0

    :goto_1a
    cmp-long v2, p4, v0

    if-lez v2, :cond_3c

    iget v2, p1, Lc/u;->d:I

    int-to-long v2, v2

    add-long v4, v2, p2

    long-to-int p2, v4

    iget p3, p1, Lc/u;->e:I

    sub-int/2addr p3, p2

    int-to-long v2, p3

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int p3, v2

    iget-object v2, p0, Lc/l;->m:Ljava/util/zip/CRC32;

    iget-object v3, p1, Lc/u;->c:[B

    invoke-virtual {v2, v3, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    int-to-long p2, p3

    sub-long v2, p4, p2

    iget-object p1, p1, Lc/u;->h:Lc/u;

    move-wide p2, v0

    move-wide p4, v2

    goto :goto_1a

    :cond_3c
    return-void
.end method

.method private static a(Ljava/lang/String;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eq p2, p1, :cond_22

    new-instance v0, Ljava/io/IOException;

    const-string v1, "%s: actual 0x%08x != expected 0x%08x"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v2, p0

    const/4 p0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, p0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    return-void
.end method

.method private b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "CRC"

    iget-object v1, p0, Lc/l;->j:Lc/e;

    invoke-interface {v1}, Lc/e;->l()I

    move-result v1

    iget-object v2, p0, Lc/l;->m:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lc/l;->a(Ljava/lang/String;II)V

    const-string v0, "ISIZE"

    iget-object v1, p0, Lc/l;->j:Lc/e;

    invoke-interface {v1}, Lc/e;->l()I

    move-result v1

    iget-object v2, p0, Lc/l;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lc/l;->a(Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lc/l;->l:Lc/o;

    invoke-virtual {v0}, Lc/o;->close()V

    return-void
.end method

.method public final read(Lc/c;J)J
    .registers 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-wide/from16 v8, p2

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-gez v2, :cond_20

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "byteCount < 0: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    cmp-long v2, v8, v0

    if-nez v2, :cond_25

    return-wide v0

    :cond_25
    iget v0, v6, Lc/l;->i:I

    const-wide/16 v10, -0x1

    const/4 v12, 0x1

    if-nez v0, :cond_128

    iget-object v0, v6, Lc/l;->j:Lc/e;

    const-wide/16 v1, 0xa

    invoke-interface {v0, v1, v2}, Lc/e;->a(J)V

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v0

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lc/c;->c(J)B

    move-result v13

    shr-int/lit8 v0, v13, 0x1

    and-int/2addr v0, v12

    const/4 v14, 0x0

    if-ne v0, v12, :cond_47

    const/4 v15, 0x1

    goto :goto_48

    :cond_47
    const/4 v15, 0x0

    :goto_48
    if-eqz v15, :cond_58

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xa

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_58
    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->h()S

    move-result v0

    const-string v1, "ID1ID2"

    const/16 v2, 0x1f8b

    invoke-static {v1, v2, v0}, Lc/l;->a(Ljava/lang/String;II)V

    iget-object v0, v6, Lc/l;->j:Lc/e;

    const-wide/16 v1, 0x8

    invoke-interface {v0, v1, v2}, Lc/e;->h(J)V

    shr-int/lit8 v0, v13, 0x2

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_b2

    iget-object v0, v6, Lc/l;->j:Lc/e;

    const-wide/16 v1, 0x2

    invoke-interface {v0, v1, v2}, Lc/e;->a(J)V

    if-eqz v15, :cond_88

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_88
    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/c;->k()S

    move-result v0

    iget-object v1, v6, Lc/l;->j:Lc/e;

    int-to-long v4, v0

    invoke-interface {v1, v4, v5}, Lc/e;->a(J)V

    if-eqz v15, :cond_a9

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-object v0, v6

    move-wide/from16 v16, v4

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    goto :goto_ab

    :cond_a9
    move-wide/from16 v16, v4

    :goto_ab
    iget-object v0, v6, Lc/l;->j:Lc/e;

    move-wide/from16 v1, v16

    invoke-interface {v0, v1, v2}, Lc/e;->h(J)V

    :cond_b2
    shr-int/lit8 v0, v13, 0x3

    and-int/2addr v0, v12

    const-wide/16 v16, 0x1

    if-ne v0, v12, :cond_e0

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0, v14}, Lc/e;->a(B)J

    move-result-wide v18

    cmp-long v0, v18, v10

    if-nez v0, :cond_c9

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_c9
    if-eqz v15, :cond_d9

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v18, v16

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_d9
    iget-object v0, v6, Lc/l;->j:Lc/e;

    add-long v1, v18, v16

    invoke-interface {v0, v1, v2}, Lc/e;->h(J)V

    :cond_e0
    shr-int/lit8 v0, v13, 0x4

    and-int/2addr v0, v12

    if-ne v0, v12, :cond_10c

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0, v14}, Lc/e;->a(B)J

    move-result-wide v13

    cmp-long v0, v13, v10

    if-nez v0, :cond_f5

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_f5
    if-eqz v15, :cond_105

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->a()Lc/c;

    move-result-object v1

    const-wide/16 v2, 0x0

    add-long v4, v13, v16

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    :cond_105
    iget-object v0, v6, Lc/l;->j:Lc/e;

    add-long v1, v13, v16

    invoke-interface {v0, v1, v2}, Lc/e;->h(J)V

    :cond_10c
    if-eqz v15, :cond_126

    const-string v0, "FHCRC"

    iget-object v1, v6, Lc/l;->j:Lc/e;

    invoke-interface {v1}, Lc/e;->k()S

    move-result v1

    iget-object v2, v6, Lc/l;->m:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-static {v0, v1, v2}, Lc/l;->a(Ljava/lang/String;II)V

    iget-object v0, v6, Lc/l;->m:Ljava/util/zip/CRC32;

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->reset()V

    :cond_126
    iput v12, v6, Lc/l;->i:I

    :cond_128
    iget v0, v6, Lc/l;->i:I

    const/4 v1, 0x2

    if-ne v0, v12, :cond_142

    iget-wide v2, v7, Lc/c;->c:J

    iget-object v0, v6, Lc/l;->l:Lc/o;

    invoke-virtual {v0, v7, v8, v9}, Lc/o;->read(Lc/c;J)J

    move-result-wide v8

    cmp-long v0, v8, v10

    if-eqz v0, :cond_140

    move-object v0, v6

    move-object v1, v7

    move-wide v4, v8

    invoke-direct/range {v0 .. v5}, Lc/l;->a(Lc/c;JJ)V

    return-wide v8

    :cond_140
    iput v1, v6, Lc/l;->i:I

    :cond_142
    iget v0, v6, Lc/l;->i:I

    if-ne v0, v1, :cond_17d

    const-string v0, "CRC"

    iget-object v1, v6, Lc/l;->j:Lc/e;

    invoke-interface {v1}, Lc/e;->l()I

    move-result v1

    iget-object v2, v6, Lc/l;->m:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lc/l;->a(Ljava/lang/String;II)V

    const-string v0, "ISIZE"

    iget-object v1, v6, Lc/l;->j:Lc/e;

    invoke-interface {v1}, Lc/e;->l()I

    move-result v1

    iget-object v2, v6, Lc/l;->k:Ljava/util/zip/Inflater;

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->getBytesWritten()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lc/l;->a(Ljava/lang/String;II)V

    const/4 v0, 0x3

    iput v0, v6, Lc/l;->i:I

    iget-object v0, v6, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->d()Z

    move-result v0

    if-nez v0, :cond_17d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "gzip finished without exhausting source"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17d
    return-wide v10
.end method

.method public final timeout()Lc/z;
    .registers 2

    iget-object v0, p0, Lc/l;->j:Lc/e;

    invoke-interface {v0}, Lc/e;->timeout()Lc/z;

    move-result-object v0

    return-object v0
.end method
