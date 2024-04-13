.class public Lcom/bumptech/glide/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/c/b;


# static fields
.field private static final f:Ljava/lang/String; = "g"

.field private static final g:I = 0x1000

.field private static final h:I = -0x1

.field private static final i:I = -0x1

.field private static final j:I = 0x4

.field private static final k:I = 0xff

.field private static final l:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:I

.field private E:I

.field private F:Ljava/lang/Boolean;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private G:Landroid/graphics/Bitmap$Config;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private m:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final n:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private final o:Lcom/bumptech/glide/c/b$a;

.field private p:Ljava/nio/ByteBuffer;

.field private q:[B

.field private r:Lcom/bumptech/glide/c/e;

.field private s:[S

.field private t:[B

.field private u:[B

.field private v:[B

.field private w:[I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private x:I

.field private y:Lcom/bumptech/glide/c/d;

.field private z:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/c/b$a;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/c/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->n:[I

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->G:Landroid/graphics/Bitmap$Config;

    iput-object p1, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    new-instance p1, Lcom/bumptech/glide/c/d;

    invoke-direct {p1}, Lcom/bumptech/glide/c/d;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/c/b$a;Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/c/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bumptech/glide/c/g;-><init>(Lcom/bumptech/glide/c/b$a;Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/c/b$a;Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)V
    .registers 5
    .param p1    # Lcom/bumptech/glide/c/b$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/bumptech/glide/c/g;-><init>(Lcom/bumptech/glide/c/b$a;)V

    invoke-virtual {p0, p2, p3, p4}, Lcom/bumptech/glide/c/g;->a(Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method private a(III)I
    .registers 13
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_7
    iget v7, p0, Lcom/bumptech/glide/c/g;->C:I

    add-int/2addr v7, p1

    if-ge v1, v7, :cond_36

    iget-object v7, p0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v7, v7

    if-ge v1, v7, :cond_36

    if-ge v1, p2, :cond_36

    iget-object v7, p0, Lcom/bumptech/glide/c/g;->v:[B

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    iget-object v8, p0, Lcom/bumptech/glide/c/g;->m:[I

    aget v7, v8, v7

    if-eqz v7, :cond_33

    shr-int/lit8 v8, v7, 0x18

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v2, v8

    shr-int/lit8 v8, v7, 0x10

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v3, v8

    shr-int/lit8 v8, v7, 0x8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v4, v8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_36
    add-int/2addr p1, p3

    move p3, p1

    :goto_38
    iget v1, p0, Lcom/bumptech/glide/c/g;->C:I

    add-int/2addr v1, p1

    if-ge p3, v1, :cond_67

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v1, v1

    if-ge p3, v1, :cond_67

    if-ge p3, p2, :cond_67

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->v:[B

    aget-byte v1, v1, p3

    and-int/lit16 v1, v1, 0xff

    iget-object v7, p0, Lcom/bumptech/glide/c/g;->m:[I

    aget v1, v7, v1

    if-eqz v1, :cond_64

    shr-int/lit8 v7, v1, 0x18

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v2, v7

    shr-int/lit8 v7, v1, 0x10

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v3, v7

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v4, v7

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v5, v1

    add-int/lit8 v6, v6, 0x1

    :cond_64
    add-int/lit8 p3, p3, 0x1

    goto :goto_38

    :cond_67
    if-nez v6, :cond_6a

    return v0

    :cond_6a
    div-int/2addr v2, v6

    shl-int/lit8 p1, v2, 0x18

    div-int/2addr v3, v6

    shl-int/lit8 p2, v3, 0x10

    or-int/2addr p1, p2

    div-int/2addr v4, v6

    shl-int/lit8 p2, v4, 0x8

    or-int/2addr p1, p2

    div-int/2addr v5, v6

    or-int/2addr p1, v5

    return p1
.end method

.method private a(Lcom/bumptech/glide/c/c;Lcom/bumptech/glide/c/c;)Landroid/graphics/Bitmap;
    .registers 53

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v10, v0, Lcom/bumptech/glide/c/g;->w:[I

    const/4 v11, 0x0

    if-nez v2, :cond_1c

    iget-object v3, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_16

    iget-object v3, v0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget-object v4, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    invoke-interface {v3, v4}, Lcom/bumptech/glide/c/b$a;->a(Landroid/graphics/Bitmap;)V

    :cond_16
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_1c
    const/4 v12, 0x3

    if-eqz v2, :cond_2a

    iget v3, v2, Lcom/bumptech/glide/c/c;->k:I

    if-ne v3, v12, :cond_2a

    iget-object v3, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2a

    invoke-static {v10, v11}, Ljava/util/Arrays;->fill([II)V

    :cond_2a
    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_9b

    iget v3, v2, Lcom/bumptech/glide/c/c;->k:I

    if-lez v3, :cond_9b

    iget v3, v2, Lcom/bumptech/glide/c/c;->k:I

    if-ne v3, v13, :cond_84

    iget-boolean v3, v1, Lcom/bumptech/glide/c/c;->j:Z

    if-nez v3, :cond_4b

    iget-object v3, v0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v3, v3, Lcom/bumptech/glide/c/d;->n:I

    iget-object v4, v1, Lcom/bumptech/glide/c/c;->o:[I

    if-eqz v4, :cond_56

    iget-object v4, v0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v4, v4, Lcom/bumptech/glide/c/d;->l:I

    iget v5, v1, Lcom/bumptech/glide/c/c;->l:I

    if-ne v4, v5, :cond_56

    goto :goto_55

    :cond_4b
    iget v3, v0, Lcom/bumptech/glide/c/g;->x:I

    if-nez v3, :cond_55

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    :cond_55
    :goto_55
    const/4 v3, 0x0

    :cond_56
    iget v4, v2, Lcom/bumptech/glide/c/c;->h:I

    iget v5, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v4, v5

    iget v5, v2, Lcom/bumptech/glide/c/c;->f:I

    iget v6, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v5, v6

    iget v6, v2, Lcom/bumptech/glide/c/c;->g:I

    iget v7, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v6, v7

    iget v2, v2, Lcom/bumptech/glide/c/c;->e:I

    iget v7, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v2, v7

    iget v7, v0, Lcom/bumptech/glide/c/g;->E:I

    mul-int v5, v5, v7

    add-int/2addr v5, v2

    iget v2, v0, Lcom/bumptech/glide/c/g;->E:I

    mul-int v4, v4, v2

    add-int/2addr v4, v5

    :goto_74
    if-ge v5, v4, :cond_9b

    add-int v2, v5, v6

    move v7, v5

    :goto_79
    if-ge v7, v2, :cond_80

    aput v3, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_79

    :cond_80
    iget v2, v0, Lcom/bumptech/glide/c/g;->E:I

    add-int/2addr v5, v2

    goto :goto_74

    :cond_84
    iget v2, v2, Lcom/bumptech/glide/c/c;->k:I

    if-ne v2, v12, :cond_9b

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_9b

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    iget v5, v0, Lcom/bumptech/glide/c/g;->E:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v8, v0, Lcom/bumptech/glide/c/g;->E:I

    iget v9, v0, Lcom/bumptech/glide/c/g;->D:I

    move-object v3, v10

    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    :cond_9b
    if-eqz v1, :cond_a4

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/c/c;->n:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_a4
    if-nez v1, :cond_b1

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v2, v2, Lcom/bumptech/glide/c/d;->h:I

    iget-object v3, v0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v3, v3, Lcom/bumptech/glide/c/d;->i:I

    :goto_ae
    mul-int v2, v2, v3

    goto :goto_b6

    :cond_b1
    iget v2, v1, Lcom/bumptech/glide/c/c;->g:I

    iget v3, v1, Lcom/bumptech/glide/c/c;->h:I

    goto :goto_ae

    :goto_b6
    iget-object v3, v0, Lcom/bumptech/glide/c/g;->v:[B

    if-eqz v3, :cond_bf

    iget-object v3, v0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v3, v3

    if-ge v3, v2, :cond_c7

    :cond_bf
    iget-object v3, v0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    invoke-interface {v3, v2}, Lcom/bumptech/glide/c/b$a;->a(I)[B

    move-result-object v3

    iput-object v3, v0, Lcom/bumptech/glide/c/g;->v:[B

    :cond_c7
    iget-object v3, v0, Lcom/bumptech/glide/c/g;->v:[B

    iget-object v4, v0, Lcom/bumptech/glide/c/g;->s:[S

    const/16 v5, 0x1000

    if-nez v4, :cond_d3

    new-array v4, v5, [S

    iput-object v4, v0, Lcom/bumptech/glide/c/g;->s:[S

    :cond_d3
    iget-object v4, v0, Lcom/bumptech/glide/c/g;->s:[S

    iget-object v6, v0, Lcom/bumptech/glide/c/g;->t:[B

    if-nez v6, :cond_dd

    new-array v6, v5, [B

    iput-object v6, v0, Lcom/bumptech/glide/c/g;->t:[B

    :cond_dd
    iget-object v6, v0, Lcom/bumptech/glide/c/g;->t:[B

    iget-object v7, v0, Lcom/bumptech/glide/c/g;->u:[B

    if-nez v7, :cond_e9

    const/16 v7, 0x1001

    new-array v7, v7, [B

    iput-object v7, v0, Lcom/bumptech/glide/c/g;->u:[B

    :cond_e9
    iget-object v7, v0, Lcom/bumptech/glide/c/g;->u:[B

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/c/g;->q()I

    move-result v8

    shl-int v9, v14, v8

    add-int/lit8 v15, v9, 0x1

    add-int/lit8 v16, v9, 0x2

    add-int/2addr v8, v14

    shl-int v17, v14, v8

    add-int/lit8 v17, v17, -0x1

    const/4 v13, 0x0

    :goto_fb
    if-ge v13, v9, :cond_107

    aput-short v11, v4, v13

    int-to-byte v5, v13

    aput-byte v5, v6, v13

    add-int/lit8 v13, v13, 0x1

    const/16 v5, 0x1000

    goto :goto_fb

    :cond_107
    iget-object v5, v0, Lcom/bumptech/glide/c/g;->q:[B

    move/from16 v27, v8

    move/from16 v25, v16

    move/from16 v26, v17

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v28, -0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    :goto_120
    const/16 v31, 0x8

    if-ge v13, v2, :cond_1fc

    if-nez v20, :cond_152

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/c/g;->q()I

    move-result v14

    if-gtz v14, :cond_131

    move/from16 v32, v8

    move/from16 v33, v13

    goto :goto_147

    :cond_131
    iget-object v12, v0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    iget-object v11, v0, Lcom/bumptech/glide/c/g;->q:[B

    move/from16 v32, v8

    iget-object v8, v0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v8

    invoke-static {v14, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    move/from16 v33, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v11, v13, v8}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_147
    if-gtz v14, :cond_14e

    const/4 v8, 0x3

    iput v8, v0, Lcom/bumptech/glide/c/g;->B:I

    goto/16 :goto_1fc

    :cond_14e
    const/4 v8, 0x3

    const/16 v24, 0x0

    goto :goto_159

    :cond_152
    move/from16 v32, v8

    move/from16 v33, v13

    const/4 v8, 0x3

    move/from16 v14, v20

    :goto_159
    aget-byte v11, v5, v24

    and-int/lit16 v11, v11, 0xff

    shl-int v11, v11, v22

    add-int v23, v23, v11

    add-int/lit8 v22, v22, 0x8

    const/4 v11, 0x1

    add-int/lit8 v24, v24, 0x1

    const/4 v11, -0x1

    add-int/lit8 v20, v14, -0x1

    move/from16 v12, v22

    move/from16 v8, v25

    move/from16 v13, v27

    move/from16 v14, v28

    move/from16 v34, v29

    :goto_173
    if-lt v12, v13, :cond_1e7

    and-int v11, v23, v26

    shr-int v23, v23, v13

    sub-int/2addr v12, v13

    if-ne v11, v9, :cond_185

    move/from16 v8, v16

    move/from16 v26, v17

    move/from16 v13, v32

    const/4 v11, -0x1

    const/4 v14, -0x1

    goto :goto_173

    :cond_185
    if-eq v11, v15, :cond_1e7

    move-object/from16 v35, v5

    const/4 v5, -0x1

    if-ne v14, v5, :cond_19b

    aget-byte v5, v6, v11

    aput-byte v5, v3, v21

    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v33, v33, 0x1

    move v14, v11

    move/from16 v34, v14

    move-object/from16 v5, v35

    :goto_199
    const/4 v11, -0x1

    goto :goto_173

    :cond_19b
    if-lt v11, v8, :cond_1a6

    move/from16 v5, v34

    int-to-byte v5, v5

    aput-byte v5, v7, v30

    add-int/lit8 v30, v30, 0x1

    move v5, v14

    goto :goto_1a7

    :cond_1a6
    move v5, v11

    :goto_1a7
    if-lt v5, v9, :cond_1b2

    aget-byte v22, v6, v5

    aput-byte v22, v7, v30

    add-int/lit8 v30, v30, 0x1

    aget-short v5, v4, v5

    goto :goto_1a7

    :cond_1b2
    aget-byte v5, v6, v5

    and-int/lit16 v5, v5, 0xff

    move/from16 v36, v9

    int-to-byte v9, v5

    aput-byte v9, v3, v21

    :goto_1bb
    add-int/lit8 v21, v21, 0x1

    add-int/lit8 v33, v33, 0x1

    if-lez v30, :cond_1c8

    add-int/lit8 v30, v30, -0x1

    aget-byte v22, v7, v30

    aput-byte v22, v3, v21

    goto :goto_1bb

    :cond_1c8
    move/from16 v37, v5

    const/16 v5, 0x1000

    if-ge v8, v5, :cond_1df

    int-to-short v14, v14

    aput-short v14, v4, v8

    aput-byte v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    and-int v9, v8, v26

    if-nez v9, :cond_1df

    if-ge v8, v5, :cond_1df

    add-int/lit8 v13, v13, 0x1

    add-int v26, v26, v8

    :cond_1df
    move v14, v11

    move-object/from16 v5, v35

    move/from16 v9, v36

    move/from16 v34, v37

    goto :goto_199

    :cond_1e7
    move/from16 v11, v34

    move/from16 v25, v8

    move/from16 v29, v11

    move/from16 v22, v12

    move/from16 v27, v13

    move/from16 v28, v14

    move/from16 v8, v32

    move/from16 v13, v33

    const/4 v11, 0x0

    const/4 v12, 0x3

    const/4 v14, 0x1

    goto/16 :goto_120

    :cond_1fc
    :goto_1fc
    move/from16 v11, v21

    const/4 v13, 0x0

    invoke-static {v3, v11, v2, v13}, Ljava/util/Arrays;->fill([BIIB)V

    iget-boolean v2, v1, Lcom/bumptech/glide/c/c;->i:Z

    if-nez v2, :cond_27b

    iget v2, v0, Lcom/bumptech/glide/c/g;->C:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_20d

    goto/16 :goto_27b

    :cond_20d
    iget-object v2, v0, Lcom/bumptech/glide/c/g;->w:[I

    iget v3, v1, Lcom/bumptech/glide/c/c;->h:I

    iget v4, v1, Lcom/bumptech/glide/c/c;->f:I

    iget v5, v1, Lcom/bumptech/glide/c/c;->g:I

    iget v6, v1, Lcom/bumptech/glide/c/c;->e:I

    iget v7, v0, Lcom/bumptech/glide/c/g;->x:I

    if-nez v7, :cond_21d

    const/4 v7, 0x1

    goto :goto_21e

    :cond_21d
    const/4 v7, 0x0

    :goto_21e
    iget v8, v0, Lcom/bumptech/glide/c/g;->E:I

    iget-object v9, v0, Lcom/bumptech/glide/c/g;->v:[B

    iget-object v11, v0, Lcom/bumptech/glide/c/g;->m:[I

    const/4 v12, 0x0

    const/4 v14, -0x1

    :goto_226
    if-ge v12, v3, :cond_265

    add-int v15, v12, v4

    mul-int v15, v15, v8

    add-int v16, v15, v6

    add-int v13, v16, v5

    add-int/2addr v15, v8

    if-ge v15, v13, :cond_234

    move v13, v15

    :cond_234
    iget v15, v1, Lcom/bumptech/glide/c/c;->g:I

    mul-int v15, v15, v12

    move/from16 v38, v3

    move v3, v14

    move/from16 v14, v16

    :goto_23d
    if-ge v14, v13, :cond_25a

    move/from16 v39, v4

    aget-byte v4, v9, v15

    move/from16 v40, v5

    and-int/lit16 v5, v4, 0xff

    if-eq v5, v3, :cond_251

    aget v5, v11, v5

    if-eqz v5, :cond_250

    aput v5, v2, v14

    goto :goto_251

    :cond_250
    move v3, v4

    :cond_251
    :goto_251
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v14, v14, 0x1

    move/from16 v4, v39

    move/from16 v5, v40

    goto :goto_23d

    :cond_25a
    move/from16 v39, v4

    move/from16 v40, v5

    add-int/lit8 v12, v12, 0x1

    move v14, v3

    move/from16 v3, v38

    const/4 v13, 0x0

    goto :goto_226

    :cond_265
    iget-object v2, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    if-nez v2, :cond_270

    if-eqz v7, :cond_270

    const/4 v2, -0x1

    if-eq v14, v2, :cond_270

    const/4 v2, 0x1

    goto :goto_271

    :cond_270
    const/4 v2, 0x0

    :goto_271
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    move-object/from16 v41, v10

    goto/16 :goto_400

    :cond_27b
    :goto_27b
    iget-object v2, v0, Lcom/bumptech/glide/c/g;->w:[I

    iget v3, v1, Lcom/bumptech/glide/c/c;->h:I

    iget v4, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v3, v4

    iget v4, v1, Lcom/bumptech/glide/c/c;->f:I

    iget v5, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v4, v5

    iget v5, v1, Lcom/bumptech/glide/c/c;->g:I

    iget v6, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v5, v6

    iget v6, v1, Lcom/bumptech/glide/c/c;->e:I

    iget v7, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v6, v7

    iget v7, v0, Lcom/bumptech/glide/c/g;->x:I

    if-nez v7, :cond_297

    const/4 v7, 0x1

    goto :goto_298

    :cond_297
    const/4 v7, 0x0

    :goto_298
    iget v8, v0, Lcom/bumptech/glide/c/g;->C:I

    iget v9, v0, Lcom/bumptech/glide/c/g;->E:I

    iget v11, v0, Lcom/bumptech/glide/c/g;->D:I

    iget-object v12, v0, Lcom/bumptech/glide/c/g;->v:[B

    iget-object v13, v0, Lcom/bumptech/glide/c/g;->m:[I

    iget-object v14, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    move-object/from16 v41, v10

    move-object v10, v14

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x8

    :goto_2ad
    if-ge v14, v3, :cond_3ea

    move-object/from16 v42, v10

    iget-boolean v10, v1, Lcom/bumptech/glide/c/c;->i:Z

    if-eqz v10, :cond_2ca

    const/4 v10, 0x4

    if-lt v15, v3, :cond_2c7

    add-int/lit8 v16, v16, 0x1

    packed-switch v16, :pswitch_data_43c

    goto :goto_2c7

    :pswitch_2be
    const/4 v15, 0x1

    const/16 v17, 0x2

    goto :goto_2c7

    :pswitch_2c2
    const/4 v15, 0x2

    const/16 v17, 0x4

    goto :goto_2c7

    :pswitch_2c6
    const/4 v15, 0x4

    :cond_2c7
    :goto_2c7
    add-int v10, v15, v17

    goto :goto_2cc

    :cond_2ca
    move v10, v15

    move v15, v14

    :goto_2cc
    add-int/2addr v15, v4

    move/from16 v43, v3

    const/4 v3, 0x1

    if-ne v8, v3, :cond_2d4

    const/4 v3, 0x1

    goto :goto_2d5

    :cond_2d4
    const/4 v3, 0x0

    :goto_2d5
    if-ge v15, v11, :cond_3ca

    mul-int v15, v15, v9

    add-int v18, v15, v6

    move/from16 v44, v4

    add-int v4, v18, v5

    add-int/2addr v15, v9

    if-ge v15, v4, :cond_2e3

    goto :goto_2e4

    :cond_2e3
    move v15, v4

    :goto_2e4
    mul-int v4, v14, v8

    move/from16 v45, v5

    iget v5, v1, Lcom/bumptech/glide/c/c;->g:I

    mul-int v4, v4, v5

    if-eqz v3, :cond_30c

    move/from16 v3, v18

    :goto_2f0
    if-ge v3, v15, :cond_3ce

    aget-byte v5, v12, v4

    and-int/lit16 v5, v5, 0xff

    aget v5, v13, v5

    if-eqz v5, :cond_2fd

    aput v5, v2, v3

    goto :goto_308

    :cond_2fd
    if-eqz v7, :cond_308

    if-nez v42, :cond_308

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    move-object/from16 v42, v18

    :cond_308
    :goto_308
    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f0

    :cond_30c
    sub-int v3, v15, v18

    mul-int v3, v3, v8

    add-int/2addr v3, v4

    move v5, v4

    move/from16 v4, v18

    :goto_314
    if-ge v4, v15, :cond_3ce

    move/from16 v46, v6

    iget v6, v1, Lcom/bumptech/glide/c/c;->g:I

    move/from16 v47, v9

    move/from16 v48, v10

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move v9, v5

    :goto_329
    iget v10, v0, Lcom/bumptech/glide/c/g;->C:I

    add-int/2addr v10, v5

    if-ge v9, v10, :cond_360

    iget-object v10, v0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v10, v10

    if-ge v9, v10, :cond_360

    if-ge v9, v3, :cond_360

    iget-object v10, v0, Lcom/bumptech/glide/c/g;->v:[B

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    move/from16 v49, v11

    iget-object v11, v0, Lcom/bumptech/glide/c/g;->m:[I

    aget v10, v11, v10

    if-eqz v10, :cond_35b

    shr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    add-int v18, v18, v11

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int v19, v19, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int v20, v20, v11

    and-int/lit16 v10, v10, 0xff

    add-int v21, v21, v10

    add-int/lit8 v22, v22, 0x1

    :cond_35b
    add-int/lit8 v9, v9, 0x1

    move/from16 v11, v49

    goto :goto_329

    :cond_360
    move/from16 v49, v11

    add-int/2addr v6, v5

    move v9, v6

    :goto_364
    iget v10, v0, Lcom/bumptech/glide/c/g;->C:I

    add-int/2addr v10, v6

    if-ge v9, v10, :cond_397

    iget-object v10, v0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v10, v10

    if-ge v9, v10, :cond_397

    if-ge v9, v3, :cond_397

    iget-object v10, v0, Lcom/bumptech/glide/c/g;->v:[B

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    iget-object v11, v0, Lcom/bumptech/glide/c/g;->m:[I

    aget v10, v11, v10

    if-eqz v10, :cond_394

    shr-int/lit8 v11, v10, 0x18

    and-int/lit16 v11, v11, 0xff

    add-int v18, v18, v11

    shr-int/lit8 v11, v10, 0x10

    and-int/lit16 v11, v11, 0xff

    add-int v19, v19, v11

    shr-int/lit8 v11, v10, 0x8

    and-int/lit16 v11, v11, 0xff

    add-int v20, v20, v11

    and-int/lit16 v10, v10, 0xff

    add-int v21, v21, v10

    add-int/lit8 v22, v22, 0x1

    :cond_394
    add-int/lit8 v9, v9, 0x1

    goto :goto_364

    :cond_397
    if-nez v22, :cond_39b

    const/4 v11, 0x0

    goto :goto_3ad

    :cond_39b
    div-int v18, v18, v22

    shl-int/lit8 v6, v18, 0x18

    div-int v19, v19, v22

    shl-int/lit8 v9, v19, 0x10

    or-int/2addr v6, v9

    div-int v20, v20, v22

    shl-int/lit8 v9, v20, 0x8

    or-int/2addr v6, v9

    div-int v21, v21, v22

    or-int v11, v6, v21

    :goto_3ad
    if-eqz v11, :cond_3b2

    aput v11, v2, v4

    goto :goto_3bd

    :cond_3b2
    if-eqz v7, :cond_3bd

    if-nez v42, :cond_3bd

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    move-object/from16 v42, v9

    :cond_3bd
    :goto_3bd
    add-int/2addr v5, v8

    add-int/lit8 v4, v4, 0x1

    move/from16 v6, v46

    move/from16 v9, v47

    move/from16 v10, v48

    move/from16 v11, v49

    goto/16 :goto_314

    :cond_3ca
    move/from16 v44, v4

    move/from16 v45, v5

    :cond_3ce
    move/from16 v46, v6

    move/from16 v47, v9

    move/from16 v48, v10

    move/from16 v49, v11

    move-object/from16 v10, v42

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v43

    move/from16 v4, v44

    move/from16 v5, v45

    move/from16 v6, v46

    move/from16 v9, v47

    move/from16 v15, v48

    move/from16 v11, v49

    goto/16 :goto_2ad

    :cond_3ea
    move-object/from16 v42, v10

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    if-nez v2, :cond_400

    if-nez v42, :cond_3f4

    const/4 v11, 0x0

    goto :goto_3fa

    :cond_3f4
    move-object/from16 v14, v42

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    :goto_3fa
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    :cond_400
    :goto_400
    iget-boolean v2, v0, Lcom/bumptech/glide/c/g;->A:Z

    if-eqz v2, :cond_427

    iget v2, v1, Lcom/bumptech/glide/c/c;->k:I

    if-eqz v2, :cond_40d

    iget v1, v1, Lcom/bumptech/glide/c/c;->k:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_427

    :cond_40d
    iget-object v1, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    if-nez v1, :cond_417

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/c/g;->s()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    :cond_417
    iget-object v1, v0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iget v4, v0, Lcom/bumptech/glide/c/g;->E:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/bumptech/glide/c/g;->E:I

    iget v8, v0, Lcom/bumptech/glide/c/g;->D:I

    move-object/from16 v2, v41

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    :cond_427
    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/c/g;->s()Landroid/graphics/Bitmap;

    move-result-object v9

    const/4 v3, 0x0

    iget v4, v0, Lcom/bumptech/glide/c/g;->E:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget v7, v0, Lcom/bumptech/glide/c/g;->E:I

    iget v8, v0, Lcom/bumptech/glide/c/g;->D:I

    move-object v1, v9

    move-object/from16 v2, v41

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object v9

    nop

    :pswitch_data_43c
    .packed-switch 0x2
        :pswitch_2c6
        :pswitch_2c2
        :pswitch_2be
    .end packed-switch
.end method

.method private a(Lcom/bumptech/glide/c/c;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->w:[I

    iget v3, v1, Lcom/bumptech/glide/c/c;->h:I

    iget v4, v1, Lcom/bumptech/glide/c/c;->f:I

    iget v5, v1, Lcom/bumptech/glide/c/c;->g:I

    iget v6, v1, Lcom/bumptech/glide/c/c;->e:I

    iget v7, v0, Lcom/bumptech/glide/c/g;->x:I

    if-nez v7, :cond_14

    const/4 v7, 0x1

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    :goto_15
    iget v10, v0, Lcom/bumptech/glide/c/g;->E:I

    iget-object v11, v0, Lcom/bumptech/glide/c/g;->v:[B

    iget-object v12, v0, Lcom/bumptech/glide/c/g;->m:[I

    const/4 v14, 0x0

    const/4 v15, -0x1

    :goto_1d
    if-ge v14, v3, :cond_57

    add-int v16, v14, v4

    mul-int v16, v16, v10

    add-int v17, v16, v6

    add-int v8, v17, v5

    add-int v9, v16, v10

    if-ge v9, v8, :cond_2c

    move v8, v9

    :cond_2c
    iget v9, v1, Lcom/bumptech/glide/c/c;->g:I

    mul-int v9, v9, v14

    move v13, v15

    move v15, v9

    move/from16 v9, v17

    :goto_34
    if-ge v9, v8, :cond_4f

    aget-byte v1, v11, v15

    move/from16 v18, v3

    and-int/lit16 v3, v1, 0xff

    if-eq v3, v13, :cond_46

    aget v3, v12, v3

    if-eqz v3, :cond_45

    aput v3, v2, v9

    goto :goto_46

    :cond_45
    move v13, v1

    :cond_46
    :goto_46
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v9, v9, 0x1

    move/from16 v3, v18

    move-object/from16 v1, p1

    goto :goto_34

    :cond_4f
    move/from16 v18, v3

    add-int/lit8 v14, v14, 0x1

    move v15, v13

    move-object/from16 v1, p1

    goto :goto_1d

    :cond_57
    iget-object v1, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    if-nez v1, :cond_62

    if-eqz v7, :cond_62

    const/4 v1, -0x1

    if-eq v15, v1, :cond_62

    const/4 v1, 0x1

    goto :goto_63

    :cond_62
    const/4 v1, 0x0

    :goto_63
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    return-void
.end method

.method private b(Lcom/bumptech/glide/c/c;)V
    .registers 33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->w:[I

    iget v3, v1, Lcom/bumptech/glide/c/c;->h:I

    iget v4, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v3, v4

    iget v4, v1, Lcom/bumptech/glide/c/c;->f:I

    iget v5, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v4, v5

    iget v5, v1, Lcom/bumptech/glide/c/c;->g:I

    iget v6, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v5, v6

    iget v6, v1, Lcom/bumptech/glide/c/c;->e:I

    iget v7, v0, Lcom/bumptech/glide/c/g;->C:I

    div-int/2addr v6, v7

    iget v7, v0, Lcom/bumptech/glide/c/g;->x:I

    if-nez v7, :cond_20

    const/4 v7, 0x1

    goto :goto_21

    :cond_20
    const/4 v7, 0x0

    :goto_21
    iget v10, v0, Lcom/bumptech/glide/c/g;->C:I

    iget v11, v0, Lcom/bumptech/glide/c/g;->E:I

    iget v12, v0, Lcom/bumptech/glide/c/g;->D:I

    iget-object v13, v0, Lcom/bumptech/glide/c/g;->v:[B

    iget-object v14, v0, Lcom/bumptech/glide/c/g;->m:[I

    iget-object v15, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    const/16 v16, 0x8

    move-object/from16 v17, v15

    const/4 v8, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x8

    :goto_37
    if-ge v15, v3, :cond_168

    iget-boolean v9, v1, Lcom/bumptech/glide/c/c;->i:Z

    if-eqz v9, :cond_54

    const/4 v9, 0x4

    const/16 v20, 0x2

    if-lt v8, v3, :cond_51

    add-int/lit8 v18, v18, 0x1

    packed-switch v18, :pswitch_data_17e

    goto :goto_51

    :pswitch_48
    const/4 v8, 0x1

    const/16 v19, 0x2

    goto :goto_51

    :pswitch_4c
    const/4 v8, 0x2

    const/16 v19, 0x4

    goto :goto_51

    :pswitch_50
    const/4 v8, 0x4

    :cond_51
    :goto_51
    add-int v9, v8, v19

    goto :goto_56

    :cond_54
    move v9, v8

    move v8, v15

    :goto_56
    add-int/2addr v8, v4

    move/from16 v21, v3

    const/4 v3, 0x1

    if-ne v10, v3, :cond_5e

    const/4 v3, 0x1

    goto :goto_5f

    :cond_5e
    const/4 v3, 0x0

    :goto_5f
    if-ge v8, v12, :cond_14f

    mul-int v8, v8, v11

    add-int v20, v8, v6

    move/from16 v22, v4

    add-int v4, v20, v5

    add-int/2addr v8, v11

    if-ge v8, v4, :cond_6d

    move v4, v8

    :cond_6d
    mul-int v8, v15, v10

    move/from16 v23, v5

    iget v5, v1, Lcom/bumptech/glide/c/c;->g:I

    mul-int v8, v8, v5

    if-eqz v3, :cond_93

    move/from16 v3, v20

    :goto_79
    if-ge v3, v4, :cond_153

    aget-byte v5, v13, v8

    and-int/lit16 v5, v5, 0xff

    aget v5, v14, v5

    if-eqz v5, :cond_86

    aput v5, v2, v3

    goto :goto_8f

    :cond_86
    if-eqz v7, :cond_8f

    if-nez v17, :cond_8f

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    :cond_8f
    :goto_8f
    add-int/2addr v8, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_79

    :cond_93
    sub-int v3, v4, v20

    mul-int v3, v3, v10

    add-int/2addr v3, v8

    move/from16 v5, v20

    :goto_9a
    if-ge v5, v4, :cond_153

    move/from16 v24, v4

    iget v4, v1, Lcom/bumptech/glide/c/c;->g:I

    move/from16 v29, v6

    move v1, v8

    const/16 v20, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    :goto_ad
    iget v6, v0, Lcom/bumptech/glide/c/g;->C:I

    add-int/2addr v6, v8

    if-ge v1, v6, :cond_e4

    iget-object v6, v0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v6, v6

    if-ge v1, v6, :cond_e4

    if-ge v1, v3, :cond_e4

    iget-object v6, v0, Lcom/bumptech/glide/c/g;->v:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    move/from16 v30, v9

    iget-object v9, v0, Lcom/bumptech/glide/c/g;->m:[I

    aget v6, v9, v6

    if-eqz v6, :cond_df

    shr-int/lit8 v9, v6, 0x18

    and-int/lit16 v9, v9, 0xff

    add-int v20, v20, v9

    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v6, v6, 0xff

    add-int v27, v27, v6

    add-int/lit8 v28, v28, 0x1

    :cond_df
    add-int/lit8 v1, v1, 0x1

    move/from16 v9, v30

    goto :goto_ad

    :cond_e4
    move/from16 v30, v9

    add-int/2addr v4, v8

    move v1, v4

    :goto_e8
    iget v6, v0, Lcom/bumptech/glide/c/g;->C:I

    add-int/2addr v6, v4

    if-ge v1, v6, :cond_11b

    iget-object v6, v0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v6, v6

    if-ge v1, v6, :cond_11b

    if-ge v1, v3, :cond_11b

    iget-object v6, v0, Lcom/bumptech/glide/c/g;->v:[B

    aget-byte v6, v6, v1

    and-int/lit16 v6, v6, 0xff

    iget-object v9, v0, Lcom/bumptech/glide/c/g;->m:[I

    aget v6, v9, v6

    if-eqz v6, :cond_118

    shr-int/lit8 v9, v6, 0x18

    and-int/lit16 v9, v9, 0xff

    add-int v20, v20, v9

    shr-int/lit8 v9, v6, 0x10

    and-int/lit16 v9, v9, 0xff

    add-int v25, v25, v9

    shr-int/lit8 v9, v6, 0x8

    and-int/lit16 v9, v9, 0xff

    add-int v26, v26, v9

    and-int/lit16 v6, v6, 0xff

    add-int v27, v27, v6

    add-int/lit8 v28, v28, 0x1

    :cond_118
    add-int/lit8 v1, v1, 0x1

    goto :goto_e8

    :cond_11b
    if-nez v28, :cond_11f

    const/4 v1, 0x0

    goto :goto_131

    :cond_11f
    div-int v20, v20, v28

    shl-int/lit8 v1, v20, 0x18

    div-int v25, v25, v28

    shl-int/lit8 v4, v25, 0x10

    or-int/2addr v1, v4

    div-int v26, v26, v28

    shl-int/lit8 v4, v26, 0x8

    or-int/2addr v1, v4

    div-int v27, v27, v28

    or-int v1, v1, v27

    :goto_131
    if-eqz v1, :cond_137

    aput v1, v2, v5

    :cond_135
    const/4 v1, 0x1

    goto :goto_142

    :cond_137
    if-eqz v7, :cond_135

    if-nez v17, :cond_135

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object/from16 v17, v4

    :goto_142
    add-int/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v24

    move/from16 v6, v29

    move/from16 v9, v30

    move-object/from16 v1, p1

    goto/16 :goto_9a

    :cond_14f
    move/from16 v22, v4

    move/from16 v23, v5

    :cond_153
    move/from16 v29, v6

    move/from16 v30, v9

    const/4 v1, 0x1

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v21

    move/from16 v4, v22

    move/from16 v5, v23

    move/from16 v6, v29

    move/from16 v8, v30

    move-object/from16 v1, p1

    goto/16 :goto_37

    :cond_168
    iget-object v1, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    if-nez v1, :cond_17c

    move-object/from16 v15, v17

    if-nez v15, :cond_172

    const/4 v8, 0x0

    goto :goto_176

    :cond_172
    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    :goto_176
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    :cond_17c
    return-void

    nop

    :pswitch_data_17e
    .packed-switch 0x2
        :pswitch_50
        :pswitch_4c
        :pswitch_48
    .end packed-switch
.end method

.method private c(Lcom/bumptech/glide/c/c;)V
    .registers 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_d

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    iget v3, v1, Lcom/bumptech/glide/c/c;->n:I

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_d
    if-nez v1, :cond_1a

    iget-object v1, v0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v1, v1, Lcom/bumptech/glide/c/d;->h:I

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v2, v2, Lcom/bumptech/glide/c/d;->i:I

    mul-int v1, v1, v2

    goto :goto_20

    :cond_1a
    iget v2, v1, Lcom/bumptech/glide/c/c;->g:I

    iget v1, v1, Lcom/bumptech/glide/c/c;->h:I

    mul-int v1, v1, v2

    :goto_20
    iget-object v2, v0, Lcom/bumptech/glide/c/g;->v:[B

    if-eqz v2, :cond_29

    iget-object v2, v0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v2, v2

    if-ge v2, v1, :cond_31

    :cond_29
    iget-object v2, v0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    invoke-interface {v2, v1}, Lcom/bumptech/glide/c/b$a;->a(I)[B

    move-result-object v2

    iput-object v2, v0, Lcom/bumptech/glide/c/g;->v:[B

    :cond_31
    iget-object v2, v0, Lcom/bumptech/glide/c/g;->v:[B

    iget-object v3, v0, Lcom/bumptech/glide/c/g;->s:[S

    const/16 v4, 0x1000

    if-nez v3, :cond_3d

    new-array v3, v4, [S

    iput-object v3, v0, Lcom/bumptech/glide/c/g;->s:[S

    :cond_3d
    iget-object v3, v0, Lcom/bumptech/glide/c/g;->s:[S

    iget-object v5, v0, Lcom/bumptech/glide/c/g;->t:[B

    if-nez v5, :cond_47

    new-array v5, v4, [B

    iput-object v5, v0, Lcom/bumptech/glide/c/g;->t:[B

    :cond_47
    iget-object v5, v0, Lcom/bumptech/glide/c/g;->t:[B

    iget-object v6, v0, Lcom/bumptech/glide/c/g;->u:[B

    if-nez v6, :cond_53

    const/16 v6, 0x1001

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/bumptech/glide/c/g;->u:[B

    :cond_53
    iget-object v6, v0, Lcom/bumptech/glide/c/g;->u:[B

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/c/g;->q()I

    move-result v7

    const/4 v8, 0x1

    shl-int v9, v8, v7

    add-int/lit8 v10, v9, 0x1

    add-int/lit8 v11, v9, 0x2

    add-int/2addr v7, v8

    shl-int v12, v8, v7

    sub-int/2addr v12, v8

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_66
    if-ge v14, v9, :cond_70

    aput-short v13, v3, v14

    int-to-byte v15, v14

    aput-byte v15, v5, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_66

    :cond_70
    iget-object v14, v0, Lcom/bumptech/glide/c/g;->q:[B

    move/from16 v26, v7

    move/from16 v24, v11

    move/from16 v25, v12

    const/4 v4, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    :goto_89
    if-ge v4, v1, :cond_15a

    if-nez v16, :cond_b8

    invoke-direct/range {p0 .. p0}, Lcom/bumptech/glide/c/g;->q()I

    move-result v15

    if-gtz v15, :cond_98

    move/from16 v27, v4

    move/from16 v28, v7

    goto :goto_ae

    :cond_98
    iget-object v8, v0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    iget-object v13, v0, Lcom/bumptech/glide/c/g;->q:[B

    move/from16 v27, v4

    iget-object v4, v0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v15, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move/from16 v28, v7

    const/4 v7, 0x0

    invoke-virtual {v8, v13, v7, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    :goto_ae
    if-gtz v15, :cond_b5

    const/4 v3, 0x3

    iput v3, v0, Lcom/bumptech/glide/c/g;->B:I

    goto/16 :goto_15a

    :cond_b5
    const/16 v20, 0x0

    goto :goto_be

    :cond_b8
    move/from16 v27, v4

    move/from16 v28, v7

    move/from16 v15, v16

    :goto_be
    aget-byte v4, v14, v20

    and-int/lit16 v4, v4, 0xff

    shl-int v4, v4, v18

    add-int v19, v19, v4

    add-int/lit8 v18, v18, 0x8

    const/4 v4, 0x1

    add-int/lit8 v20, v20, 0x1

    const/4 v7, -0x1

    add-int/lit8 v16, v15, -0x1

    move/from16 v8, v18

    move/from16 v15, v21

    move/from16 v29, v22

    move/from16 v4, v24

    move/from16 v13, v26

    :goto_d8
    if-lt v8, v13, :cond_146

    and-int v7, v19, v25

    shr-int v19, v19, v13

    sub-int/2addr v8, v13

    if-ne v7, v9, :cond_e9

    move v4, v11

    move/from16 v25, v12

    move/from16 v13, v28

    const/4 v7, -0x1

    const/4 v15, -0x1

    goto :goto_d8

    :cond_e9
    if-eq v7, v10, :cond_146

    const/4 v0, -0x1

    if-ne v15, v0, :cond_fd

    aget-byte v15, v5, v7

    aput-byte v15, v2, v17

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v27, v27, 0x1

    move v15, v7

    move/from16 v29, v15

    :goto_f9
    move-object/from16 v0, p0

    const/4 v7, -0x1

    goto :goto_d8

    :cond_fd
    if-lt v7, v4, :cond_108

    move/from16 v0, v29

    int-to-byte v0, v0

    aput-byte v0, v6, v23

    add-int/lit8 v23, v23, 0x1

    move v0, v15

    goto :goto_109

    :cond_108
    move v0, v7

    :goto_109
    if-lt v0, v9, :cond_114

    aget-byte v18, v5, v0

    aput-byte v18, v6, v23

    add-int/lit8 v23, v23, 0x1

    aget-short v0, v3, v0

    goto :goto_109

    :cond_114
    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    move/from16 v30, v7

    int-to-byte v7, v0

    aput-byte v7, v2, v17

    :goto_11d
    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v27, v27, 0x1

    if-lez v23, :cond_12a

    add-int/lit8 v23, v23, -0x1

    aget-byte v18, v6, v23

    aput-byte v18, v2, v17

    goto :goto_11d

    :cond_12a
    move/from16 v31, v0

    const/16 v0, 0x1000

    if-ge v4, v0, :cond_141

    int-to-short v15, v15

    aput-short v15, v3, v4

    aput-byte v7, v5, v4

    add-int/lit8 v4, v4, 0x1

    and-int v7, v4, v25

    if-nez v7, :cond_141

    if-ge v4, v0, :cond_141

    add-int/lit8 v13, v13, 0x1

    add-int v25, v25, v4

    :cond_141
    move/from16 v15, v30

    move/from16 v29, v31

    goto :goto_f9

    :cond_146
    move/from16 v24, v4

    move/from16 v18, v8

    move/from16 v26, v13

    move/from16 v21, v15

    move/from16 v4, v27

    move/from16 v7, v28

    move/from16 v22, v29

    move-object/from16 v0, p0

    const/4 v8, 0x1

    const/4 v13, 0x0

    goto/16 :goto_89

    :cond_15a
    :goto_15a
    move/from16 v13, v17

    const/4 v0, 0x0

    invoke-static {v2, v13, v1, v0}, Ljava/util/Arrays;->fill([BIIB)V

    return-void
.end method

.method private p()Lcom/bumptech/glide/c/e;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->r:Lcom/bumptech/glide/c/e;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bumptech/glide/c/e;

    invoke-direct {v0}, Lcom/bumptech/glide/c/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->r:Lcom/bumptech/glide/c/e;

    :cond_b
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->r:Lcom/bumptech/glide/c/e;

    return-object v0
.end method

.method private q()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private r()I
    .registers 6

    invoke-direct {p0}, Lcom/bumptech/glide/c/g;->q()I

    move-result v0

    if-gtz v0, :cond_7

    return v0

    :cond_7
    iget-object v1, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/bumptech/glide/c/g;->q:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return v0
.end method

.method private s()Landroid/graphics/Bitmap;
    .registers 5

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_10

    :cond_d
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->G:Landroid/graphics/Bitmap$Config;

    goto :goto_12

    :cond_10
    :goto_10
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_12
    iget-object v1, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget v2, p0, Lcom/bumptech/glide/c/g;->E:I

    iget v3, p0, Lcom/bumptech/glide/c/g;->D:I

    invoke-interface {v1, v2, v3, v0}, Lcom/bumptech/glide/c/b$a;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->h:I

    return v0
.end method

.method public final a(I)I
    .registers 3

    if-ltz p1, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->e:I

    if-ge p1, v0, :cond_15

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget-object v0, v0, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/c/c;

    iget p1, p1, Lcom/bumptech/glide/c/c;->m:I

    return p1

    :cond_15
    const/4 p1, -0x1

    return p1
.end method

.method public final a(Ljava/io/InputStream;I)I
    .registers 8
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_32

    const/16 v0, 0x4000

    if-lez p2, :cond_9

    add-int/lit16 p2, p2, 0x1000

    goto :goto_b

    :cond_9
    const/16 p2, 0x4000

    :goto_b
    :try_start_b
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-array p2, v0, [B

    :goto_12
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1e

    invoke-virtual {v1, p2, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_12

    :cond_1e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bumptech/glide/c/g;->a([B)I
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_28} :catch_29

    goto :goto_35

    :catch_29
    move-exception p2

    sget-object v0, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    const-string v1, "Error reading data from stream"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    :cond_32
    const/4 p2, 0x2

    iput p2, p0, Lcom/bumptech/glide/c/g;->B:I

    :goto_35
    if-eqz p1, :cond_43

    :try_start_37
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3b

    goto :goto_43

    :catch_3b
    move-exception p1

    sget-object p2, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    const-string v0, "Error closing stream"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_43
    :goto_43
    iget p1, p0, Lcom/bumptech/glide/c/g;->B:I

    return p1
.end method

.method public final declared-synchronized a([B)I
    .registers 5
    .param p1    # [B
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->r:Lcom/bumptech/glide/c/e;

    if-nez v0, :cond_c

    new-instance v0, Lcom/bumptech/glide/c/e;

    invoke-direct {v0}, Lcom/bumptech/glide/c/e;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->r:Lcom/bumptech/glide/c/e;

    :cond_c
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->r:Lcom/bumptech/glide/c/e;

    if-eqz p1, :cond_18

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/c/e;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/c/e;

    goto :goto_20

    :cond_18
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bumptech/glide/c/e;->c:Ljava/nio/ByteBuffer;

    iget-object v1, v0, Lcom/bumptech/glide/c/e;->d:Lcom/bumptech/glide/c/d;

    const/4 v2, 0x2

    iput v2, v1, Lcom/bumptech/glide/c/d;->d:I

    :goto_20
    invoke-virtual {v0}, Lcom/bumptech/glide/c/e;->a()Lcom/bumptech/glide/c/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    if-eqz p1, :cond_2d

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    invoke-virtual {p0, v0, p1}, Lcom/bumptech/glide/c/g;->a(Lcom/bumptech/glide/c/d;[B)V

    :cond_2d
    iget p1, p0, Lcom/bumptech/glide/c/g;->B:I
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    monitor-exit p0

    return p1

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Landroid/graphics/Bitmap$Config;)V
    .registers 5
    .param p1    # Landroid/graphics/Bitmap$Config;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_30

    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    if-eq p1, v0, :cond_30

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", must be one of "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " or "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    iput-object p1, p0, Lcom/bumptech/glide/c/g;->G:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public final declared-synchronized a(Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1    # Lcom/bumptech/glide/c/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/bumptech/glide/c/g;->a(Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)V
    .registers 6
    .param p1    # Lcom/bumptech/glide/c/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    if-gtz p3, :cond_19

    :try_start_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Sample size must be >=0, not: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_17
    move-exception p1

    goto :goto_7d

    :cond_19
    invoke-static {p3}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p3

    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/c/g;->B:I

    iput-object p1, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    const/4 v1, -0x1

    iput v1, p0, Lcom/bumptech/glide/c/g;->x:I

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p2

    iput-object p2, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p2, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/bumptech/glide/c/g;->A:Z

    iget-object p2, p1, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/c/c;

    iget v0, v0, Lcom/bumptech/glide/c/c;->k:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3f

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/bumptech/glide/c/g;->A:Z

    :cond_53
    iput p3, p0, Lcom/bumptech/glide/c/g;->C:I

    iget p2, p1, Lcom/bumptech/glide/c/d;->h:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/c/g;->E:I

    iget p2, p1, Lcom/bumptech/glide/c/d;->i:I

    div-int/2addr p2, p3

    iput p2, p0, Lcom/bumptech/glide/c/g;->D:I

    iget-object p2, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget p3, p1, Lcom/bumptech/glide/c/d;->h:I

    iget p1, p1, Lcom/bumptech/glide/c/d;->i:I

    mul-int p3, p3, p1

    invoke-interface {p2, p3}, Lcom/bumptech/glide/c/b$a;->a(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/c/g;->v:[B

    iget-object p1, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget p2, p0, Lcom/bumptech/glide/c/g;->E:I

    iget p3, p0, Lcom/bumptech/glide/c/g;->D:I

    mul-int p2, p2, p3

    invoke-interface {p1, p2}, Lcom/bumptech/glide/c/b$a;->b(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/c/g;->w:[I
    :try_end_7b
    .catchall {:try_start_3 .. :try_end_7b} :catchall_17

    monitor-exit p0

    return-void

    :goto_7d
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Lcom/bumptech/glide/c/d;[B)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/c/d;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/c/g;->a(Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->i:I

    return v0
.end method

.method public final c()Ljava/nio/ByteBuffer;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/c/g;->B:I

    return v0
.end method

.method public final e()V
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/c/g;->x:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v1, v1, Lcom/bumptech/glide/c/d;->e:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/bumptech/glide/c/g;->x:I

    return-void
.end method

.method public final f()I
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->e:I

    if-lez v0, :cond_23

    iget v0, p0, Lcom/bumptech/glide/c/g;->x:I

    if-gez v0, :cond_b

    goto :goto_23

    :cond_b
    iget v0, p0, Lcom/bumptech/glide/c/g;->x:I

    const/4 v1, -0x1

    if-ltz v0, :cond_22

    iget-object v2, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v2, v2, Lcom/bumptech/glide/c/d;->e:I

    if-ge v0, v2, :cond_22

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget-object v1, v1, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/c/c;

    iget v1, v0, Lcom/bumptech/glide/c/c;->m:I

    :cond_22
    return v1

    :cond_23
    :goto_23
    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->e:I

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/c/g;->x:I

    return v0
.end method

.method public final i()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/c/g;->x:I

    return-void
.end method

.method public final j()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->o:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->o:I

    return v0
.end method

.method public final k()I
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->o:I

    return v0
.end method

.method public final l()I
    .registers 4

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->o:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    return v1

    :cond_9
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->o:I

    if-nez v0, :cond_11

    const/4 v0, 0x0

    return v0

    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->o:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m()I
    .registers 3

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->v:[B

    array-length v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->w:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method public final declared-synchronized n()Landroid/graphics/Bitmap;
    .registers 8
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v0, v0, Lcom/bumptech/glide/c/d;->e:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-lez v0, :cond_d

    iget v0, p0, Lcom/bumptech/glide/c/g;->x:I

    if-gez v0, :cond_38

    :cond_d
    sget-object v0, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to decode frame, frameCount="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget v4, v4, Lcom/bumptech/glide/c/d;->e:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", framePointer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/bumptech/glide/c/g;->x:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    iput v2, p0, Lcom/bumptech/glide/c/g;->B:I

    :cond_38
    iget v0, p0, Lcom/bumptech/glide/c/g;->B:I

    const/4 v3, 0x0

    if-eq v0, v2, :cond_c2

    iget v0, p0, Lcom/bumptech/glide/c/g;->B:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_44

    goto/16 :goto_c2

    :cond_44
    const/4 v0, 0x0

    iput v0, p0, Lcom/bumptech/glide/c/g;->B:I

    iget-object v4, p0, Lcom/bumptech/glide/c/g;->q:[B

    if-nez v4, :cond_55

    iget-object v4, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    const/16 v5, 0xff

    invoke-interface {v4, v5}, Lcom/bumptech/glide/c/b$a;->a(I)[B

    move-result-object v4

    iput-object v4, p0, Lcom/bumptech/glide/c/g;->q:[B

    :cond_55
    iget-object v4, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget-object v4, v4, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    iget v5, p0, Lcom/bumptech/glide/c/g;->x:I

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/c/c;

    iget v5, p0, Lcom/bumptech/glide/c/g;->x:I

    sub-int/2addr v5, v2

    if-ltz v5, :cond_71

    iget-object v6, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget-object v6, v6, Lcom/bumptech/glide/c/d;->g:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/c/c;

    goto :goto_72

    :cond_71
    move-object v5, v3

    :goto_72
    iget-object v6, v4, Lcom/bumptech/glide/c/c;->o:[I

    if-eqz v6, :cond_79

    iget-object v6, v4, Lcom/bumptech/glide/c/c;->o:[I

    goto :goto_7d

    :cond_79
    iget-object v6, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget-object v6, v6, Lcom/bumptech/glide/c/d;->c:[I

    :goto_7d
    iput-object v6, p0, Lcom/bumptech/glide/c/g;->m:[I

    iget-object v6, p0, Lcom/bumptech/glide/c/g;->m:[I

    if-nez v6, :cond_a4

    sget-object v0, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a0

    sget-object v0, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "No valid color table found for frame #"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/bumptech/glide/c/g;->x:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a0
    iput v2, p0, Lcom/bumptech/glide/c/g;->B:I
    :try_end_a2
    .catchall {:try_start_1 .. :try_end_a2} :catchall_e1

    monitor-exit p0

    return-object v3

    :cond_a4
    :try_start_a4
    iget-boolean v1, v4, Lcom/bumptech/glide/c/c;->j:Z

    if-eqz v1, :cond_bc

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->m:[I

    iget-object v2, p0, Lcom/bumptech/glide/c/g;->n:[I

    iget-object v3, p0, Lcom/bumptech/glide/c/g;->m:[I

    array-length v3, v3

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->n:[I

    iput-object v1, p0, Lcom/bumptech/glide/c/g;->m:[I

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->m:[I

    iget v2, v4, Lcom/bumptech/glide/c/c;->l:I

    aput v0, v1, v2

    :cond_bc
    invoke-direct {p0, v4, v5}, Lcom/bumptech/glide/c/g;->a(Lcom/bumptech/glide/c/c;Lcom/bumptech/glide/c/c;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_c0
    .catchall {:try_start_a4 .. :try_end_c0} :catchall_e1

    monitor-exit p0

    return-object v0

    :cond_c2
    :goto_c2
    :try_start_c2
    sget-object v0, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_df

    sget-object v0, Lcom/bumptech/glide/c/g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to decode frame, status="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bumptech/glide/c/g;->B:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_df
    .catchall {:try_start_c2 .. :try_end_df} :catchall_e1

    :cond_df
    monitor-exit p0

    return-object v3

    :catchall_e1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final o()V
    .registers 4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->y:Lcom/bumptech/glide/c/d;

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->v:[B

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget-object v2, p0, Lcom/bumptech/glide/c/g;->v:[B

    invoke-interface {v1, v2}, Lcom/bumptech/glide/c/b$a;->a([B)V

    :cond_e
    iget-object v1, p0, Lcom/bumptech/glide/c/g;->w:[I

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget-object v2, p0, Lcom/bumptech/glide/c/g;->w:[I

    invoke-interface {v1, v2}, Lcom/bumptech/glide/c/b$a;->a([I)V

    :cond_19
    iget-object v1, p0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_24

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget-object v2, p0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    invoke-interface {v1, v2}, Lcom/bumptech/glide/c/b$a;->a(Landroid/graphics/Bitmap;)V

    :cond_24
    iput-object v0, p0, Lcom/bumptech/glide/c/g;->z:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->p:Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/bumptech/glide/c/g;->F:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->q:[B

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/bumptech/glide/c/g;->o:Lcom/bumptech/glide/c/b$a;

    iget-object v1, p0, Lcom/bumptech/glide/c/g;->q:[B

    invoke-interface {v0, v1}, Lcom/bumptech/glide/c/b$a;->a([B)V

    :cond_35
    return-void
.end method
