.class public final La/a/a/b;
.super Ljava/io/InputStream;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:[I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, La/a/a/b;->c:I

    iput-boolean v0, p0, La/a/a/b;->d:Z

    iput-object p1, p0, La/a/a/b;->a:Ljava/io/InputStream;

    return-void
.end method

.method private a()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v1, v0, [C

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_5
    iget-object v4, p0, La/a/a/b;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_20

    if-eqz v3, :cond_19

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    new-array v0, v2, [I

    iput-object v0, p0, La/a/a/b;->b:[I

    iput-boolean v6, p0, La/a/a/b;->d:Z

    return-void

    :cond_20
    int-to-char v4, v4

    sget-object v7, La/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v5, :cond_3e

    sget-char v7, La/a/a/d;->b:C

    if-ne v4, v7, :cond_2e

    goto :goto_3e

    :cond_2e
    const/16 v7, 0xd

    if-eq v4, v7, :cond_43

    const/16 v7, 0xa

    if-eq v4, v7, :cond_43

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3e
    :goto_3e
    add-int/lit8 v7, v3, 0x1

    aput-char v4, v1, v3

    move v3, v7

    :cond_43
    if-lt v3, v0, :cond_5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_47
    if-ge v3, v0, :cond_5f

    aget-char v7, v1, v3

    sget-char v8, La/a/a/d;->b:C

    if-eq v7, v8, :cond_59

    if-eqz v4, :cond_5c

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_59
    if-nez v4, :cond_5c

    const/4 v4, 0x1

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_47

    :cond_5f
    const/4 v3, 0x3

    aget-char v4, v1, v3

    sget-char v7, La/a/a/d;->b:C

    const/4 v8, 0x2

    if-ne v4, v7, :cond_82

    iget-object v4, p0, La/a/a/b;->a:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v5, :cond_77

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_77
    iput-boolean v6, p0, La/a/a/b;->d:Z

    aget-char v4, v1, v8

    sget-char v5, La/a/a/d;->b:C

    if-ne v4, v5, :cond_80

    goto :goto_83

    :cond_80
    const/4 v6, 0x2

    goto :goto_83

    :cond_82
    const/4 v6, 0x3

    :goto_83
    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_85
    if-ge v4, v0, :cond_9e

    aget-char v7, v1, v4

    sget-char v9, La/a/a/d;->b:C

    if-eq v7, v9, :cond_9b

    sget-object v7, La/a/a/d;->a:Ljava/lang/String;

    aget-char v9, v1, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    rsub-int/lit8 v9, v4, 0x3

    mul-int/lit8 v9, v9, 0x6

    shl-int/2addr v7, v9

    or-int/2addr v5, v7

    :cond_9b
    add-int/lit8 v4, v4, 0x1

    goto :goto_85

    :cond_9e
    new-array v0, v6, [I

    iput-object v0, p0, La/a/a/b;->b:[I

    :goto_a2
    if-ge v2, v6, :cond_b3

    iget-object v0, p0, La/a/a/b;->b:[I

    rsub-int/lit8 v1, v2, 0x2

    mul-int/lit8 v1, v1, 0x8

    ushr-int v1, v5, v1

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    :cond_b3
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

    iget-object v0, p0, La/a/a/b;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public final read()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, La/a/a/b;->b:[I

    if-eqz v0, :cond_b

    iget v0, p0, La/a/a/b;->c:I

    iget-object v1, p0, La/a/a/b;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_d0

    :cond_b
    iget-boolean v0, p0, La/a/a/b;->d:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_11

    return v1

    :cond_11
    const/4 v0, 0x4

    new-array v2, v0, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_16
    iget-object v5, p0, La/a/a/b;->a:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v1, :cond_31

    if-eqz v4, :cond_29

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_29
    new-array v0, v3, [I

    iput-object v0, p0, La/a/a/b;->b:[I

    iput-boolean v6, p0, La/a/a/b;->d:Z

    goto/16 :goto_c5

    :cond_31
    int-to-char v5, v5

    sget-object v7, La/a/a/d;->a:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-ne v7, v1, :cond_4f

    sget-char v7, La/a/a/d;->b:C

    if-ne v5, v7, :cond_3f

    goto :goto_4f

    :cond_3f
    const/16 v7, 0xd

    if-eq v5, v7, :cond_54

    const/16 v7, 0xa

    if-eq v5, v7, :cond_54

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    :goto_4f
    add-int/lit8 v7, v4, 0x1

    aput-char v5, v2, v4

    move v4, v7

    :cond_54
    if-lt v4, v0, :cond_16

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_58
    if-ge v4, v0, :cond_70

    aget-char v7, v2, v4

    sget-char v8, La/a/a/d;->b:C

    if-eq v7, v8, :cond_6a

    if-eqz v5, :cond_6d

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6a
    if-nez v5, :cond_6d

    const/4 v5, 0x1

    :cond_6d
    add-int/lit8 v4, v4, 0x1

    goto :goto_58

    :cond_70
    const/4 v4, 0x3

    aget-char v5, v2, v4

    sget-char v7, La/a/a/d;->b:C

    const/4 v8, 0x2

    if-ne v5, v7, :cond_93

    iget-object v5, p0, La/a/a/b;->a:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-eq v5, v1, :cond_88

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Bad base64 stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_88
    iput-boolean v6, p0, La/a/a/b;->d:Z

    aget-char v5, v2, v8

    sget-char v7, La/a/a/d;->b:C

    if-ne v5, v7, :cond_91

    goto :goto_94

    :cond_91
    const/4 v6, 0x2

    goto :goto_94

    :cond_93
    const/4 v6, 0x3

    :goto_94
    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_96
    if-ge v5, v0, :cond_af

    aget-char v9, v2, v5

    sget-char v10, La/a/a/d;->b:C

    if-eq v9, v10, :cond_ac

    sget-object v9, La/a/a/d;->a:Ljava/lang/String;

    aget-char v10, v2, v5

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    rsub-int/lit8 v10, v5, 0x3

    mul-int/lit8 v10, v10, 0x6

    shl-int/2addr v9, v10

    or-int/2addr v7, v9

    :cond_ac
    add-int/lit8 v5, v5, 0x1

    goto :goto_96

    :cond_af
    new-array v0, v6, [I

    iput-object v0, p0, La/a/a/b;->b:[I

    const/4 v0, 0x0

    :goto_b4
    if-ge v0, v6, :cond_c5

    iget-object v2, p0, La/a/a/b;->b:[I

    rsub-int/lit8 v4, v0, 0x2

    mul-int/lit8 v4, v4, 0x8

    ushr-int v4, v7, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b4

    :cond_c5
    :goto_c5
    iget-object v0, p0, La/a/a/b;->b:[I

    array-length v0, v0

    if-nez v0, :cond_ce

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/b;->b:[I

    return v1

    :cond_ce
    iput v3, p0, La/a/a/b;->c:I

    :cond_d0
    iget-object v0, p0, La/a/a/b;->b:[I

    iget v1, p0, La/a/a/b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, La/a/a/b;->c:I

    aget v0, v0, v1

    return v0
.end method
