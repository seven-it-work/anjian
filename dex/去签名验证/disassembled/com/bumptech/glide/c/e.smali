.class public final Lcom/bumptech/glide/c/e;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x2

.field static final b:I = 0xa

.field private static final e:Ljava/lang/String; = "GifHeaderParser"

.field private static final f:I = 0xff

.field private static final g:I = 0x2c

.field private static final h:I = 0x21

.field private static final i:I = 0x3b

.field private static final j:I = 0xf9

.field private static final k:I = 0xff

.field private static final l:I = 0xfe

.field private static final m:I = 0x1

.field private static final n:I = 0x1c

.field private static final o:I = 0x2

.field private static final p:I = 0x1

.field private static final q:I = 0x80

.field private static final r:I = 0x40

.field private static final s:I = 0x7

.field private static final t:I = 0x80

.field private static final u:I = 0x7

.field private static final v:I = 0x100


# instance fields
.field public c:Ljava/nio/ByteBuffer;

.field public d:Lcom/bumptech/glide/c/d;

.field private final w:[B

.field private x:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/bumptech/glide/c/e;->w:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/c/e;->x:I

    return-void
.end method

.method private a([B)Lcom/bumptech/glide/c/e;
    .registers 3
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_a

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/c/e;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/c/e;

    return-object p0

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const/4 v0, 0x2

    iput v0, p1, Lcom/bumptech/glide/c/d;->d:I

    return-object p0
.end method

.method private a(I)V
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_3
    :goto_3
    if-nez v2, :cond_15c

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v3

    if-nez v3, :cond_15c

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v3, v3, Lcom/bumptech/glide/c/d;->e:I

    if-gt v3, p1, :cond_15c

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v3

    const/16 v4, 0x21

    if-eq v3, v4, :cond_c9

    const/16 v4, 0x2c

    if-eq v3, v4, :cond_28

    const/16 v4, 0x3b

    if-eq v3, v4, :cond_26

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iput v1, v3, Lcom/bumptech/glide/c/d;->d:I

    goto :goto_3

    :cond_26
    const/4 v2, 0x1

    goto :goto_3

    :cond_28
    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    if-nez v3, :cond_37

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    new-instance v4, Lcom/bumptech/glide/c/c;

    invoke-direct {v4}, Lcom/bumptech/glide/c/c;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    :cond_37
    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/c/c;->e:I

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/c/c;->f:I

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/c/c;->g:I

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/c/c;->h:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v3

    and-int/lit16 v4, v3, 0x80

    if-eqz v4, :cond_71

    const/4 v4, 0x1

    goto :goto_72

    :cond_71
    const/4 v4, 0x0

    :goto_72
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    and-int/lit8 v7, v3, 0x7

    add-int/2addr v7, v1

    int-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v6, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v6, v6, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_87

    const/4 v3, 0x1

    goto :goto_88

    :cond_87
    const/4 v3, 0x0

    :goto_88
    iput-boolean v3, v6, Lcom/bumptech/glide/c/c;->i:Z

    if-eqz v4, :cond_97

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    invoke-direct {p0, v5}, Lcom/bumptech/glide/c/e;->b(I)[I

    move-result-object v4

    :goto_94
    iput-object v4, v3, Lcom/bumptech/glide/c/c;->o:[I

    goto :goto_9d

    :cond_97
    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    const/4 v4, 0x0

    goto :goto_94

    :goto_9d
    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/c/c;->n:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->l()V

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v4, v3, Lcom/bumptech/glide/c/d;->e:I

    add-int/2addr v4, v1

    iput v4, v3, Lcom/bumptech/glide/c/d;->e:I

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v4, v4, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_c9
    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v3

    if-eq v3, v1, :cond_d6

    const/16 v4, 0xf9

    if-eq v3, v4, :cond_104

    packed-switch v3, :pswitch_data_15e

    :cond_d6
    :pswitch_d6
    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->l()V

    goto/16 :goto_3

    :pswitch_db
    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->m()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    :goto_e4
    const/16 v5, 0xb

    if-ge v4, v5, :cond_f3

    iget-object v5, p0, Lcom/bumptech/glide/c/e;->w:[B

    aget-byte v5, v5, v4

    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_e4

    :cond_f3
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NETSCAPE2.0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d6

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->h()V

    goto/16 :goto_3

    :cond_104
    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    new-instance v4, Lcom/bumptech/glide/c/c;

    invoke-direct {v4}, Lcom/bumptech/glide/c/c;-><init>()V

    iput-object v4, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v3

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v4, v4, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    and-int/lit8 v5, v3, 0x1c

    const/4 v6, 0x2

    shr-int/2addr v5, v6

    iput v5, v4, Lcom/bumptech/glide/c/c;->k:I

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v4, v4, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget v4, v4, Lcom/bumptech/glide/c/c;->k:I

    if-nez v4, :cond_12c

    iget-object v4, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v4, v4, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iput v1, v4, Lcom/bumptech/glide/c/c;->k:I

    :cond_12c
    iget-object v4, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v4, v4, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_136

    const/4 v3, 0x1

    goto :goto_137

    :cond_136
    const/4 v3, 0x0

    :goto_137
    iput-boolean v3, v4, Lcom/bumptech/glide/c/c;->j:Z

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v6, :cond_145

    const/16 v3, 0xa

    :cond_145
    iget-object v5, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v5, v5, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    mul-int/lit8 v3, v3, 0xa

    iput v3, v5, Lcom/bumptech/glide/c/c;->m:I

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, v3, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v4

    iput v4, v3, Lcom/bumptech/glide/c/c;->l:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    goto/16 :goto_3

    :cond_15c
    return-void

    nop

    :pswitch_data_15e
    .packed-switch 0xfe
        :pswitch_d6
        :pswitch_db
    .end packed-switch
.end method

.method private b()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    return-void
.end method

.method private b(I)[I
    .registers 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [B

    const/4 v1, 0x0

    :try_start_5
    iget-object v2, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    const/16 v2, 0x100

    new-array v2, v2, [I
    :try_end_e
    .catch Ljava/nio/BufferUnderflowException; {:try_start_5 .. :try_end_e} :catch_36

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_10
    if-ge v1, p1, :cond_4d

    add-int/lit8 v4, v3, 0x1

    :try_start_14
    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v1, 0x1

    const/high16 v8, -0x1000000

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v8

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    or-int/2addr v3, v5

    aput v3, v2, v1
    :try_end_31
    .catch Ljava/nio/BufferUnderflowException; {:try_start_14 .. :try_end_31} :catch_34

    move v3, v6

    move v1, v7

    goto :goto_10

    :catch_34
    move-exception p1

    goto :goto_38

    :catch_36
    move-exception p1

    move-object v2, v1

    :goto_38
    const-string v0, "GifHeaderParser"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_48

    const-string v0, "GifHeaderParser"

    const-string v1, "Format Error Reading Color Table"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_48
    iget-object p1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const/4 v0, 0x1

    iput v0, p1, Lcom/bumptech/glide/c/d;->d:I

    :cond_4d
    return-object v2
.end method

.method private c()V
    .registers 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->w:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/bumptech/glide/c/d;

    invoke-direct {v0}, Lcom/bumptech/glide/c/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iput v1, p0, Lcom/bumptech/glide/c/e;->x:I

    return-void
.end method

.method private d()Z
    .registers 3

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->i()V

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/e;->a(I)V

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->e:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_15

    return v1

    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .registers 2

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/e;->a(I)V

    return-void
.end method

.method private f()V
    .registers 5

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, v1, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    and-int/lit8 v2, v0, 0x1c

    const/4 v3, 0x2

    shr-int/2addr v2, v3

    iput v2, v1, Lcom/bumptech/glide/c/c;->k:I

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, v1, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget v1, v1, Lcom/bumptech/glide/c/c;->k:I

    const/4 v2, 0x1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, v1, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iput v2, v1, Lcom/bumptech/glide/c/c;->k:I

    :cond_20
    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, v1, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    and-int/2addr v0, v2

    if-eqz v0, :cond_28

    goto :goto_29

    :cond_28
    const/4 v2, 0x0

    :goto_29
    iput-boolean v2, v1, Lcom/bumptech/glide/c/c;->j:Z

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v3, :cond_37

    const/16 v0, 0xa

    :cond_37
    iget-object v2, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v2, v2, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    mul-int/lit8 v0, v0, 0xa

    iput v0, v2, Lcom/bumptech/glide/c/c;->m:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/c;->l:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    return-void
.end method

.method private g()V
    .registers 9

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/c;->e:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/c;->f:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/c;->g:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/c;->h:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    const/4 v1, 0x1

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    :goto_3d
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v6, v0, 0x7

    add-int/2addr v6, v3

    int-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v4, v4

    iget-object v5, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v5, v5, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_51

    const/4 v2, 0x1

    :cond_51
    iput-boolean v2, v5, Lcom/bumptech/glide/c/c;->i:Z

    if-eqz v1, :cond_60

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    invoke-direct {p0, v4}, Lcom/bumptech/glide/c/e;->b(I)[I

    move-result-object v1

    :goto_5d
    iput-object v1, v0, Lcom/bumptech/glide/c/c;->o:[I

    goto :goto_66

    :cond_60
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    const/4 v1, 0x0

    goto :goto_5d

    :goto_66
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/c;->n:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->l()V

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v0

    if-eqz v0, :cond_7f

    return-void

    :cond_7f
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v1, v0, Lcom/bumptech/glide/c/d;->e:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/bumptech/glide/c/d;->e:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, v1, Lcom/bumptech/glide/c/d;->f:Lcom/bumptech/glide/c/c;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private h()V
    .registers 4

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->m()V

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->w:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->w:[B

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->w:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    iput v0, v2, Lcom/bumptech/glide/c/d;->o:I

    :cond_1f
    iget v0, p0, Lcom/bumptech/glide/c/e;->x:I

    if-lez v0, :cond_29

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_29
    return-void
.end method

.method private i()V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_7
    const/4 v3, 0x6

    if-ge v2, v3, :cond_15

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GIF"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iput v2, v0, Lcom/bumptech/glide/c/d;->d:I

    return-void

    :cond_27
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/c/d;->h:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    iput v3, v0, Lcom/bumptech/glide/c/d;->i:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v0

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_46

    const/4 v1, 0x1

    :cond_46
    iput-boolean v1, v3, Lcom/bumptech/glide/c/d;->j:Z

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v2

    int-to-double v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/bumptech/glide/c/d;->k:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/d;->l:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/d;->m:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-boolean v0, v0, Lcom/bumptech/glide/c/d;->j:Z

    if-eqz v0, :cond_8d

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v0

    if-nez v0, :cond_8d

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v1, v1, Lcom/bumptech/glide/c/d;->k:I

    invoke-direct {p0, v1}, Lcom/bumptech/glide/c/e;->b(I)[I

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c/d;->c:[I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, v1, Lcom/bumptech/glide/c/d;->c:[I

    iget-object v2, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v2, v2, Lcom/bumptech/glide/c/d;->l:I

    aget v1, v1, v2

    iput v1, v0, Lcom/bumptech/glide/c/d;->n:I

    :cond_8d
    return-void
.end method

.method private j()V
    .registers 7

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/d;->h:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/d;->i:I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    and-int/lit16 v2, v0, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    const/4 v2, 0x1

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    iput-boolean v2, v1, Lcom/bumptech/glide/c/d;->j:Z

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    int-to-double v2, v0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Lcom/bumptech/glide/c/d;->k:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/d;->l:I

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v1

    iput v1, v0, Lcom/bumptech/glide/c/d;->m:I

    return-void
.end method

.method private k()V
    .registers 1

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->l()V

    return-void
.end method

.method private l()V
    .registers 4

    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-gtz v0, :cond_0

    return-void
.end method

.method private m()V
    .registers 7

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->n()I

    move-result v0

    iput v0, p0, Lcom/bumptech/glide/c/e;->x:I

    iget v0, p0, Lcom/bumptech/glide/c/e;->x:I

    if-lez v0, :cond_52

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_c
    :try_start_c
    iget v2, p0, Lcom/bumptech/glide/c/e;->x:I

    if-ge v0, v2, :cond_1d

    iget v2, p0, Lcom/bumptech/glide/c/e;->x:I

    sub-int v1, v2, v0

    iget-object v2, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    iget-object v3, p0, Lcom/bumptech/glide/c/e;->w:[B

    invoke-virtual {v2, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1e

    add-int/2addr v0, v1

    goto :goto_c

    :cond_1d
    return-void

    :catch_1e
    move-exception v2

    const-string v3, "GifHeaderParser"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4d

    const-string v3, "GifHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error Reading Block n: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " count: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " blockSize: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/bumptech/glide/c/e;->x:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4d
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/c/d;->d:I

    :cond_52
    return-void
.end method

.method private n()I
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_9

    and-int/lit16 v0, v0, 0xff

    return v0

    :catch_9
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/c/d;->d:I

    const/4 v0, 0x0

    return v0
.end method

.method private o()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v0

    return v0
.end method

.method private p()Z
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->d:I

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/c/d;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You must call setData() before parseHeader()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    return-object v0

    :cond_15
    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->i()V

    invoke-direct {p0}, Lcom/bumptech/glide/c/e;->p()Z

    move-result v0

    if-nez v0, :cond_2f

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/bumptech/glide/c/e;->a(I)V

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->e:I

    if-gez v0, :cond_2f

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const/4 v1, 0x1

    iput v1, v0, Lcom/bumptech/glide/c/d;->d:I

    :cond_2f
    iget-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/c/e;
    .registers 4
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/bumptech/glide/c/e;->w:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    new-instance v0, Lcom/bumptech/glide/c/d;

    invoke-direct {v0}, Lcom/bumptech/glide/c/d;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    iput v1, p0, Lcom/bumptech/glide/c/e;->x:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    iget-object p1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    return-object p0
.end method
