.class public final Lcom/bumptech/glide/load/d/a/m;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/ImageHeaderParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/a/m$d;,
        Lcom/bumptech/glide/load/d/a/m$a;,
        Lcom/bumptech/glide/load/d/a/m$c;,
        Lcom/bumptech/glide/load/d/a/m$b;
    }
.end annotation


# static fields
.field static final b:I = 0xffd8

.field static final c:[B

.field static final d:I = 0xff

.field static final e:I = 0xe1

.field private static final f:Ljava/lang/String; = "DfltImageHeaderParser"

.field private static final g:I = 0x474946

.field private static final h:I = -0x76afb1b9

.field private static final i:I = 0x4d4d

.field private static final j:I = 0x4949

.field private static final k:Ljava/lang/String; = "Exif\u0000\u0000"

.field private static final l:I = 0xda

.field private static final m:I = 0xd9

.field private static final n:I = 0x112

.field private static final o:[I

.field private static final p:I = 0x52494646

.field private static final q:I = 0x57454250

.field private static final r:I = 0x56503800

.field private static final s:I = -0x100

.field private static final t:I = 0xff

.field private static final u:I = 0x58

.field private static final v:I = 0x4c

.field private static final w:I = 0x10

.field private static final x:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/m;->c:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_18

    sput-object v0, Lcom/bumptech/glide/load/d/a/m;->o:[I

    return-void

    :array_18
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .registers 2

    add-int/lit8 p0, p0, 0x2

    mul-int/lit8 p1, p1, 0xc

    add-int/2addr p0, p1

    return p0
.end method

.method private static a(Lcom/bumptech/glide/load/d/a/m$b;)I
    .registers 12

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/load/d/a/m$b;->b(I)S

    move-result v1

    const/16 v2, 0x4949

    const/4 v3, 0x3

    if-eq v1, v2, :cond_2c

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_29

    const-string v2, "DfltImageHeaderParser"

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v2, "DfltImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown endianness = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_2e

    :cond_2c
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_2e
    iget-object v2, p0, Lcom/bumptech/glide/load/d/a/m$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/d/a/m$b;->a(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/load/d/a/m$b;->b(I)S

    move-result v0

    const/4 v2, 0x0

    :goto_3f
    if-ge v2, v0, :cond_139

    add-int/lit8 v4, v1, 0x2

    mul-int/lit8 v5, v2, 0xc

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/d/a/m$b;->b(I)S

    move-result v5

    const/16 v6, 0x112

    if-ne v5, v6, :cond_135

    add-int/lit8 v6, v4, 0x2

    invoke-virtual {p0, v6}, Lcom/bumptech/glide/load/d/a/m$b;->b(I)S

    move-result v6

    if-lez v6, :cond_11a

    const/16 v7, 0xc

    if-le v6, v7, :cond_5c

    goto/16 :goto_11a

    :cond_5c
    add-int/lit8 v7, v4, 0x4

    invoke-virtual {p0, v7}, Lcom/bumptech/glide/load/d/a/m$b;->a(I)I

    move-result v7

    if-gez v7, :cond_72

    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_135

    const-string v4, "DfltImageHeaderParser"

    const-string v5, "Negative tiff component count"

    goto/16 :goto_132

    :cond_72
    const-string v8, "DfltImageHeaderParser"

    invoke-static {v8, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a5

    const-string v8, "DfltImageHeaderParser"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Got tagIndex="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " tagType="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " formatCode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " componentCount="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a5
    sget-object v8, Lcom/bumptech/glide/load/d/a/m;->o:[I

    aget v8, v8, v6

    add-int/2addr v7, v8

    const/4 v8, 0x4

    if-le v7, v8, :cond_bf

    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_135

    const-string v4, "DfltImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Got byte count > 4, not orientation, continuing, formatCode="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_12b

    :cond_bf
    add-int/lit8 v4, v4, 0x8

    if-ltz v4, :cond_f6

    iget-object v6, p0, Lcom/bumptech/glide/load/d/a/m$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v4, v6, :cond_cc

    goto :goto_f6

    :cond_cc
    if-ltz v7, :cond_dd

    add-int/2addr v7, v4

    iget-object v6, p0, Lcom/bumptech/glide/load/d/a/m$b;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v7, v6, :cond_d8

    goto :goto_dd

    :cond_d8
    invoke-virtual {p0, v4}, Lcom/bumptech/glide/load/d/a/m$b;->b(I)S

    move-result p0

    return p0

    :cond_dd
    :goto_dd
    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_135

    const-string v4, "DfltImageHeaderParser"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Illegal number of bytes for TI tag data tagType="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_132

    :cond_f6
    :goto_f6
    const-string v6, "DfltImageHeaderParser"

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_135

    const-string v6, "DfltImageHeaderParser"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Illegal tagValueOffset="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " tagType="

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    :cond_11a
    :goto_11a
    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_135

    const-string v4, "DfltImageHeaderParser"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Got invalid format code = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_12b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_132
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_135
    :goto_135
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3f

    :cond_139
    const/4 p0, -0x1

    return p0
.end method

.method private static a(Lcom/bumptech/glide/load/d/a/m$c;Lcom/bumptech/glide/load/b/a/b;)I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v0

    const v1, 0xffd8

    and-int v2, v0, v1

    if-eq v2, v1, :cond_16

    const/16 v1, 0x4d4d

    if-eq v0, v1, :cond_16

    const/16 v1, 0x4949

    if-ne v0, v1, :cond_14

    goto :goto_16

    :cond_14
    const/4 v1, 0x0

    goto :goto_17

    :cond_16
    :goto_16
    const/4 v1, 0x1

    :goto_17
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-nez v1, :cond_37

    const-string p0, "DfltImageHeaderParser"

    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_36

    const-string p0, "DfltImageHeaderParser"

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Parser doesn\'t handle magic number: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    return v3

    :cond_37
    invoke-static {p0}, Lcom/bumptech/glide/load/d/a/m;->b(Lcom/bumptech/glide/load/d/a/m$c;)I

    move-result v0

    if-ne v0, v3, :cond_4d

    const-string p0, "DfltImageHeaderParser"

    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4c

    const-string p0, "DfltImageHeaderParser"

    const-string p1, "Failed to parse exif segment length, or exif segment not found"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4c
    return v3

    :cond_4d
    const-class v1, [B

    invoke-interface {p1, v0, v1}, Lcom/bumptech/glide/load/b/a/b;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    :try_start_55
    invoke-interface {p0, v1, v0}, Lcom/bumptech/glide/load/d/a/m$c;->a([BI)I

    move-result p0

    if-eq p0, v0, :cond_7f

    const-string v4, "DfltImageHeaderParser"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_9e

    const-string v2, "DfltImageHeaderParser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unable to read exif segment data, length: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", actually read: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9e

    :cond_7f
    invoke-static {v1, v0}, Lcom/bumptech/glide/load/d/a/m;->a([BI)Z

    move-result p0

    if-eqz p0, :cond_8f

    new-instance p0, Lcom/bumptech/glide/load/d/a/m$b;

    invoke-direct {p0, v1, v0}, Lcom/bumptech/glide/load/d/a/m$b;-><init>([BI)V

    invoke-static {p0}, Lcom/bumptech/glide/load/d/a/m;->a(Lcom/bumptech/glide/load/d/a/m$b;)I

    move-result v3

    goto :goto_9e

    :cond_8f
    const-string p0, "DfltImageHeaderParser"

    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_9e

    const-string p0, "DfltImageHeaderParser"

    const-string v0, "Missing jpeg exif preamble"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9e
    .catchall {:try_start_55 .. :try_end_9e} :catchall_a2

    :cond_9e
    :goto_9e
    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    return v3

    :catchall_a2
    move-exception p0

    invoke-interface {p1, v1}, Lcom/bumptech/glide/load/b/a/b;->b(Ljava/lang/Object;)V

    throw p0
.end method

.method private static a(Lcom/bumptech/glide/load/d/a/m$c;[BI)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lcom/bumptech/glide/load/d/a/m$c;->a([BI)I

    move-result p0

    const/4 v0, -0x1

    const/4 v1, 0x3

    if-eq p0, p2, :cond_2c

    const-string p1, "DfltImageHeaderParser"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "DfltImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to read exif segment data, length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", actually read: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    return v0

    :cond_2c
    invoke-static {p1, p2}, Lcom/bumptech/glide/load/d/a/m;->a([BI)Z

    move-result p0

    if-eqz p0, :cond_3c

    new-instance p0, Lcom/bumptech/glide/load/d/a/m$b;

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/d/a/m$b;-><init>([BI)V

    invoke-static {p0}, Lcom/bumptech/glide/load/d/a/m;->a(Lcom/bumptech/glide/load/d/a/m$b;)I

    move-result p0

    return p0

    :cond_3c
    const-string p0, "DfltImageHeaderParser"

    invoke-static {p0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_4b

    const-string p0, "DfltImageHeaderParser"

    const-string p1, "Missing jpeg exif preamble"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    return v0
.end method

.method private static a(Lcom/bumptech/glide/load/d/a/m$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 7
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_c

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_c
    shl-int/lit8 v0, v0, 0x10

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v2

    const v3, 0xffff

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, -0x76afb1b9

    if-ne v0, v2, :cond_31

    const-wide/16 v0, 0x15

    invoke-interface {p0, v0, v1}, Lcom/bumptech/glide/load/d/a/m$c;->a(J)J

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->c()I

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_2e

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_2e
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_31
    shr-int/lit8 v2, v0, 0x8

    const v4, 0x474946

    if-ne v2, v4, :cond_3b

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_3b
    const v2, 0x52494646

    if-eq v0, v2, :cond_43

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_43
    const-wide/16 v4, 0x4

    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/load/d/a/m$c;->a(J)J

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v0, v2

    const v2, 0x57454250

    if-eq v0, v2, :cond_5d

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_5d
    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    and-int/2addr v0, v1

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v1

    and-int/2addr v1, v3

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, -0x100

    const v2, 0x56503800

    if-eq v1, v2, :cond_74

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_74
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x58

    if-ne v0, v1, :cond_8b

    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/load/d/a/m$c;->a(J)J

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->c()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_88

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_88
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_8b
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a0

    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/load/d/a/m$c;->a(J)J

    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->c()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_9d

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_9d
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_a0
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method private static a(I)Z
    .registers 3

    const v0, 0xffd8

    and-int v1, p0, v0

    if-eq v1, v0, :cond_12

    const/16 v0, 0x4d4d

    if-eq p0, v0, :cond_12

    const/16 v0, 0x4949

    if-ne p0, v0, :cond_10

    goto :goto_12

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x1

    return p0
.end method

.method private static a([BI)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_a

    sget-object v1, Lcom/bumptech/glide/load/d/a/m;->c:[B

    array-length v1, v1

    if-le p1, v1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    if-eqz p1, :cond_20

    const/4 v1, 0x0

    :goto_e
    sget-object v2, Lcom/bumptech/glide/load/d/a/m;->c:[B

    array-length v2, v2

    if-ge v1, v2, :cond_20

    aget-byte v2, p0, v1

    sget-object v3, Lcom/bumptech/glide/load/d/a/m;->c:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_1d

    const/4 p1, 0x0

    return p1

    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_20
    return p1
.end method

.method private static b(Lcom/bumptech/glide/load/d/a/m$c;)I
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->b()S

    move-result v0

    const/16 v1, 0xff

    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq v0, v1, :cond_26

    const-string p0, "DfltImageHeaderParser"

    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_25

    const-string p0, "DfltImageHeaderParser"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown segmentId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    return v3

    :cond_26
    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->b()S

    move-result v0

    const/16 v1, 0xda

    if-ne v0, v1, :cond_2f

    return v3

    :cond_2f
    const/16 v1, 0xd9

    if-ne v0, v1, :cond_43

    const-string p0, "DfltImageHeaderParser"

    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_42

    const-string p0, "DfltImageHeaderParser"

    const-string v0, "Found MARKER_EOI in exif segment"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_42
    return v3

    :cond_43
    invoke-interface {p0}, Lcom/bumptech/glide/load/d/a/m$c;->a()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/16 v4, 0xe1

    if-eq v0, v4, :cond_82

    int-to-long v4, v1

    invoke-interface {p0, v4, v5}, Lcom/bumptech/glide/load/d/a/m$c;->a(J)J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-eqz v8, :cond_0

    const-string p0, "DfltImageHeaderParser"

    invoke-static {p0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_81

    const-string p0, "DfltImageHeaderParser"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unable to skip enough data, type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", wanted to skip: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but actually skipped: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_81
    return v3

    :cond_82
    return v1
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)I
    .registers 5
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/m$d;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d/a/m$d;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/d/a/m;->a(Lcom/bumptech/glide/load/d/a/m$c;Lcom/bumptech/glide/load/b/a/b;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/nio/ByteBuffer;Lcom/bumptech/glide/load/b/a/b;)I
    .registers 5
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/m$a;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d/a/m$a;-><init>(Ljava/nio/ByteBuffer;)V

    const-string p1, "Argument must not be null"

    invoke-static {p2, p1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/d/a/m;->a(Lcom/bumptech/glide/load/d/a/m$c;Lcom/bumptech/glide/load/b/a/b;)I

    move-result p1

    return p1
.end method

.method public final a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .param p1    # Ljava/io/InputStream;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/m$d;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d/a/m$d;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/bumptech/glide/load/d/a/m;->a(Lcom/bumptech/glide/load/d/a/m$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .registers 4
    .param p1    # Ljava/nio/ByteBuffer;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/m$a;

    const-string v1, "Argument must not be null"

    invoke-static {p1, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/d/a/m$a;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Lcom/bumptech/glide/load/d/a/m;->a(Lcom/bumptech/glide/load/d/a/m$c;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method
