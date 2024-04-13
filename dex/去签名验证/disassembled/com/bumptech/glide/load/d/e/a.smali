.class public final Lcom/bumptech/glide/load/d/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/e/a$b;,
        Lcom/bumptech/glide/load/d/e/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "Ljava/nio/ByteBuffer;",
        "Lcom/bumptech/glide/load/d/e/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "BufferGifDecoder"

.field private static final b:Lcom/bumptech/glide/load/d/e/a$a;

.field private static final c:Lcom/bumptech/glide/load/d/e/a$b;


# instance fields
.field private final d:Landroid/content/Context;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/d/e/a$b;

.field private final g:Lcom/bumptech/glide/load/d/e/a$a;

.field private final h:Lcom/bumptech/glide/load/d/e/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/d/e/a$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/e/a$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/e/a;->b:Lcom/bumptech/glide/load/d/e/a$a;

    new-instance v0, Lcom/bumptech/glide/load/d/e/a$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/e/a$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/e/a;->c:Lcom/bumptech/glide/load/d/e/a$b;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v0

    iget-object v0, v0, Lcom/bumptech/glide/f;->c:Lcom/bumptech/glide/m;

    invoke-virtual {v0}, Lcom/bumptech/glide/m;->a()Ljava/util/List;

    move-result-object v0

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v1

    iget-object v1, v1, Lcom/bumptech/glide/f;->a:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {p1}, Lcom/bumptech/glide/f;->b(Landroid/content/Context;)Lcom/bumptech/glide/f;

    move-result-object v2

    iget-object v2, v2, Lcom/bumptech/glide/f;->d:Lcom/bumptech/glide/load/b/a/b;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/bumptech/glide/load/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/b/a/b;",
            ")V"
        }
    .end annotation

    sget-object v5, Lcom/bumptech/glide/load/d/e/a;->c:Lcom/bumptech/glide/load/d/e/a$b;

    sget-object v6, Lcom/bumptech/glide/load/d/e/a;->b:Lcom/bumptech/glide/load/d/e/a$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/bumptech/glide/load/d/e/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/d/e/a$b;Lcom/bumptech/glide/load/d/e/a$a;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;Lcom/bumptech/glide/load/d/e/a$b;Lcom/bumptech/glide/load/d/e/a$a;)V
    .registers 7
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Lcom/bumptech/glide/load/d/e/a$b;",
            "Lcom/bumptech/glide/load/d/e/a$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/a;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/e/a;->e:Ljava/util/List;

    iput-object p6, p0, Lcom/bumptech/glide/load/d/e/a;->g:Lcom/bumptech/glide/load/d/e/a$a;

    new-instance p1, Lcom/bumptech/glide/load/d/e/b;

    invoke-direct {p1, p3, p4}, Lcom/bumptech/glide/load/d/e/b;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/b/a/b;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/e/a;->h:Lcom/bumptech/glide/load/d/e/b;

    iput-object p5, p0, Lcom/bumptech/glide/load/d/e/a;->f:Lcom/bumptech/glide/load/d/e/a$b;

    return-void
.end method

.method private static a(Lcom/bumptech/glide/c/d;II)I
    .registers 7

    iget v0, p0, Lcom/bumptech/glide/c/d;->i:I

    div-int/2addr v0, p2

    iget v1, p0, Lcom/bumptech/glide/c/d;->h:I

    div-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x0

    goto :goto_12

    :cond_e
    invoke-static {v0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    :goto_12
    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v2, "BufferGifDecoder"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5e

    if-le v0, v1, :cond_5e

    const-string v1, "BufferGifDecoder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Downsampling GIF, sampleSize: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", target dimens: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], actual dimens: ["

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/bumptech/glide/c/d;->h:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/bumptech/glide/c/d;->i:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5e
    return v0
.end method

.method private a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/c/e;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/d/e/e;
    .registers 21
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    move-object v1, p0

    move/from16 v6, p2

    move/from16 v7, p3

    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v10

    const/4 v12, 0x2

    :try_start_a
    invoke-virtual/range {p4 .. p4}, Lcom/bumptech/glide/c/e;->a()Lcom/bumptech/glide/c/d;

    move-result-object v2

    iget v3, v2, Lcom/bumptech/glide/c/d;->e:I

    const/4 v4, 0x0

    if-lez v3, :cond_f0

    iget v3, v2, Lcom/bumptech/glide/c/d;->d:I

    if-eqz v3, :cond_19

    goto/16 :goto_f0

    :cond_19
    sget-object v3, Lcom/bumptech/glide/load/d/e/i;->a:Lcom/bumptech/glide/load/i;

    move-object/from16 v5, p5

    invoke-virtual {v5, v3}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v3

    sget-object v5, Lcom/bumptech/glide/load/b;->PREFER_RGB_565:Lcom/bumptech/glide/load/b;

    if-ne v3, v5, :cond_28

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_2a

    :cond_28
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :goto_2a
    iget v5, v2, Lcom/bumptech/glide/c/d;->i:I

    div-int/2addr v5, v7

    iget v8, v2, Lcom/bumptech/glide/c/d;->h:I

    div-int/2addr v8, v6

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v5

    if-nez v5, :cond_38

    const/4 v5, 0x0

    goto :goto_3c

    :cond_38
    invoke-static {v5}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v5

    :goto_3c
    const/4 v8, 0x1

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    const-string v9, "BufferGifDecoder"

    invoke-static {v9, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_87

    if-le v5, v8, :cond_87

    const-string v8, "BufferGifDecoder"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v13, "Downsampling GIF, sampleSize: "

    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", target dimens: ["

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "x"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "], actual dimens: ["

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/bumptech/glide/c/d;->h:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "x"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v2, Lcom/bumptech/glide/c/d;->i:I

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_87
    iget-object v8, v1, Lcom/bumptech/glide/load/d/e/a;->h:Lcom/bumptech/glide/load/d/e/b;

    new-instance v9, Lcom/bumptech/glide/c/g;

    move-object/from16 v13, p1

    invoke-direct {v9, v8, v2, v13, v5}, Lcom/bumptech/glide/c/g;-><init>(Lcom/bumptech/glide/c/b$a;Lcom/bumptech/glide/c/d;Ljava/nio/ByteBuffer;I)V

    invoke-interface {v9, v3}, Lcom/bumptech/glide/c/b;->a(Landroid/graphics/Bitmap$Config;)V

    invoke-interface {v9}, Lcom/bumptech/glide/c/b;->e()V

    invoke-interface {v9}, Lcom/bumptech/glide/c/b;->n()Landroid/graphics/Bitmap;

    move-result-object v8
    :try_end_9a
    .catchall {:try_start_a .. :try_end_9a} :catchall_110

    if-nez v8, :cond_bc

    const-string v2, "BufferGifDecoder"

    invoke-static {v2, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_bb

    const-string v2, "BufferGifDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Decoded GIF from stream in "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    return-object v4

    :cond_bc
    :try_start_bc
    invoke-static {}, Lcom/bumptech/glide/load/d/b;->a()Lcom/bumptech/glide/load/d/b;

    move-result-object v5

    new-instance v13, Lcom/bumptech/glide/load/d/e/c;

    iget-object v3, v1, Lcom/bumptech/glide/load/d/e/a;->d:Landroid/content/Context;

    const/4 v14, 0x0

    move-object v2, v13

    move-object v4, v9

    move v9, v14

    invoke-direct/range {v2 .. v9}, Lcom/bumptech/glide/load/d/e/c;-><init>(Landroid/content/Context;Lcom/bumptech/glide/c/b;Lcom/bumptech/glide/load/m;IILandroid/graphics/Bitmap;B)V

    new-instance v2, Lcom/bumptech/glide/load/d/e/e;

    invoke-direct {v2, v13}, Lcom/bumptech/glide/load/d/e/e;-><init>(Lcom/bumptech/glide/load/d/e/c;)V
    :try_end_d0
    .catchall {:try_start_bc .. :try_end_d0} :catchall_110

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_ef

    const-string v3, "BufferGifDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Decoded GIF from stream in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_ef
    return-object v2

    :cond_f0
    :goto_f0
    const-string v2, "BufferGifDecoder"

    invoke-static {v2, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_10f

    const-string v2, "BufferGifDecoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Decoded GIF from stream in "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10f
    return-object v4

    :catchall_110
    move-exception v0

    move-object v2, v0

    const-string v3, "BufferGifDecoder"

    invoke-static {v3, v12}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_131

    const-string v3, "BufferGifDecoder"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Decoded GIF from stream in "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10, v11}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_131
    throw v2
.end method

.method private a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/d/e/e;
    .registers 12
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/d/e/a;->f:Lcom/bumptech/glide/load/d/e/a$b;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/d/e/a$b;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/c/e;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    move-object v6, p4

    :try_start_c
    invoke-direct/range {v1 .. v6}, Lcom/bumptech/glide/load/d/e/a;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/c/e;Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/d/e/e;

    move-result-object p1
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_16

    iget-object p2, p0, Lcom/bumptech/glide/load/d/e/a;->f:Lcom/bumptech/glide/load/d/e/a$b;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/d/e/a$b;->a(Lcom/bumptech/glide/c/e;)V

    return-object p1

    :catchall_16
    move-exception p1

    iget-object p2, p0, Lcom/bumptech/glide/load/d/e/a;->f:Lcom/bumptech/glide/load/d/e/a$b;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/d/e/a$b;->a(Lcom/bumptech/glide/c/e;)V

    throw p1
.end method

.method private a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/j;)Z
    .registers 8
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/e/i;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_34

    iget-object p2, p0, Lcom/bumptech/glide/load/d/e/a;->e:Ljava/util/List;

    if-eqz p1, :cond_2c

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_18
    if-ge v2, v1, :cond_2c

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v3, v4, :cond_29

    goto :goto_2e

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2c
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_2e
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v3, p1, :cond_34

    const/4 p1, 0x1

    return p1

    :cond_34
    return v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 5
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/load/d/e/a;->a(Ljava/nio/ByteBuffer;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/d/e/e;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/load/j;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/nio/ByteBuffer;

    sget-object v0, Lcom/bumptech/glide/load/d/e/i;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_36

    iget-object p2, p0, Lcom/bumptech/glide/load/d/e/a;->e:Ljava/util/List;

    if-eqz p1, :cond_2e

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1a
    if-ge v2, v1, :cond_2e

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/ImageHeaderParser;

    invoke-interface {v3, p1}, Lcom/bumptech/glide/load/ImageHeaderParser;->a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object v3

    sget-object v4, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-eq v3, v4, :cond_2b

    goto :goto_30

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    sget-object v3, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_30
    sget-object p1, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    if-ne v3, p1, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    return v0
.end method
