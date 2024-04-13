.class public Lcom/bumptech/glide/load/d/a/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/d/a/ac$d;,
        Lcom/bumptech/glide/load/d/a/ac$a;,
        Lcom/bumptech/glide/load/d/a/ac$c;,
        Lcom/bumptech/glide/load/d/a/ac$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/k<",
        "TT;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:J = -0x1L

.field static final b:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final c:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/lang/String; = "VideoDecoder"

.field private static final f:Lcom/bumptech/glide/load/d/a/ac$b;


# instance fields
.field private final g:Lcom/bumptech/glide/load/d/a/ac$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/d/a/ac$c<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final h:Lcom/bumptech/glide/load/b/a/e;

.field private final i:Lcom/bumptech/glide/load/d/a/ac$b;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame"

    const-wide/16 v1, -0x1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/d/a/ac$1;

    invoke-direct {v2}, Lcom/bumptech/glide/load/d/a/ac$1;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/ac;->c:Lcom/bumptech/glide/load/i;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption"

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/bumptech/glide/load/d/a/ac$2;

    invoke-direct {v2}, Lcom/bumptech/glide/load/d/a/ac$2;-><init>()V

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/bumptech/glide/load/i$a;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/ac;->d:Lcom/bumptech/glide/load/i;

    new-instance v0, Lcom/bumptech/glide/load/d/a/ac$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/d/a/ac$b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/d/a/ac;->f:Lcom/bumptech/glide/load/d/a/ac$b;

    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/a/ac$c;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/d/a/ac$c<",
            "TT;>;)V"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/ac;->f:Lcom/bumptech/glide/load/d/a/ac$b;

    invoke-direct {p0, p1, p2, v0}, Lcom/bumptech/glide/load/d/a/ac;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/a/ac$c;Lcom/bumptech/glide/load/d/a/ac$b;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/a/ac$c;Lcom/bumptech/glide/load/d/a/ac$b;)V
    .registers 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            "Lcom/bumptech/glide/load/d/a/ac$c<",
            "TT;>;",
            "Lcom/bumptech/glide/load/d/a/ac$b;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/ac;->h:Lcom/bumptech/glide/load/b/a/e;

    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/ac;->g:Lcom/bumptech/glide/load/d/a/ac$c;

    iput-object p3, p0, Lcom/bumptech/glide/load/d/a/ac;->i:Lcom/bumptech/glide/load/d/a/ac$b;

    return-void
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;JI)Landroid/graphics/Bitmap;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/d/a/n;)Landroid/graphics/Bitmap;
    .registers 9
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_15

    const/high16 v0, -0x80000000

    if-eq p4, v0, :cond_15

    if-eq p5, v0, :cond_15

    sget-object v0, Lcom/bumptech/glide/load/d/a/n;->f:Lcom/bumptech/glide/load/d/a/n;

    if-eq p6, v0, :cond_15

    invoke-static/range {p0 .. p6}, Lcom/bumptech/glide/load/d/a/ac;->b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/d/a/n;)Landroid/graphics/Bitmap;

    move-result-object p4

    goto :goto_16

    :cond_15
    const/4 p4, 0x0

    :goto_16
    if-nez p4, :cond_1c

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_1c
    return-object p4
.end method

.method public static a(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/k;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            ")",
            "Lcom/bumptech/glide/load/k<",
            "Landroid/content/res/AssetFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/ac;

    new-instance v1, Lcom/bumptech/glide/load/d/a/ac$a;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/load/d/a/ac$a;-><init>(B)V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/d/a/ac;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/a/ac$c;)V

    return-object v0
.end method

.method private static b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/d/a/n;)Landroid/graphics/Bitmap;
    .registers 16
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1b
    .end annotation

    const/16 v0, 0x12

    :try_start_2
    invoke-virtual {p0, v0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x18

    invoke-virtual {p0, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_26

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_29

    :cond_26
    move v8, v1

    move v1, v0

    move v0, v8

    :cond_29
    invoke-virtual {p6, v0, v1, p4, p5}, Lcom/bumptech/glide/load/d/a/n;->a(IIII)F

    move-result p4

    int-to-float p5, v0

    mul-float p5, p5, p4

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result v6

    int-to-float p5, v1

    mul-float p4, p4, p5

    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result v7

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Landroid/media/MediaMetadataRetriever;->getScaledFrameAtTime(JIII)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_42} :catch_43

    return-object p0

    :catch_43
    move-exception p0

    const-string p1, "VideoDecoder"

    const/4 p2, 0x3

    invoke-static {p1, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_54

    const-string p1, "VideoDecoder"

    const-string p2, "Exception trying to decode frame on oreo+"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_54
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/k;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/a/e;",
            ")",
            "Lcom/bumptech/glide/load/k<",
            "Landroid/os/ParcelFileDescriptor;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bumptech/glide/load/d/a/ac;

    new-instance v1, Lcom/bumptech/glide/load/d/a/ac$d;

    invoke-direct {v1}, Lcom/bumptech/glide/load/d/a/ac$d;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/bumptech/glide/load/d/a/ac;-><init>(Lcom/bumptech/glide/load/b/a/e;Lcom/bumptech/glide/load/d/a/ac$c;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;IILcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/b/u;
    .registers 15
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II",
            "Lcom/bumptech/glide/load/j;",
            ")",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/d/a/ac;->c:Lcom/bumptech/glide/load/i;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmp-long v2, v8, v0

    if-gez v2, :cond_2c

    const-wide/16 v0, -0x1

    cmp-long v2, v8, v0

    if-eqz v2, :cond_2c

    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Requested frame must be non-negative, or DEFAULT_FRAME, given: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2c
    sget-object v0, Lcom/bumptech/glide/load/d/a/ac;->d:Lcom/bumptech/glide/load/i;

    invoke-virtual {p4, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_3b

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_3b
    sget-object v1, Lcom/bumptech/glide/load/d/a/n;->h:Lcom/bumptech/glide/load/i;

    invoke-virtual {p4, v1}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/bumptech/glide/load/d/a/n;

    if-nez p4, :cond_47

    sget-object p4, Lcom/bumptech/glide/load/d/a/n;->g:Lcom/bumptech/glide/load/d/a/n;

    :cond_47
    move-object v7, p4

    new-instance p4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {p4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    :try_start_4d
    iget-object v1, p0, Lcom/bumptech/glide/load/d/a/ac;->g:Lcom/bumptech/glide/load/d/a/ac$c;

    invoke-interface {v1, p4, p1}, Lcom/bumptech/glide/load/d/a/ac$c;->a(Landroid/media/MediaMetadataRetriever;Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_70

    const/high16 v1, -0x80000000

    if-eq p2, v1, :cond_70

    if-eq p3, v1, :cond_70

    sget-object v1, Lcom/bumptech/glide/load/d/a/n;->f:Lcom/bumptech/glide/load/d/a/n;

    if-eq v7, v1, :cond_70

    move-object v1, p4

    move-wide v2, v8

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-static/range {v1 .. v7}, Lcom/bumptech/glide/load/d/a/ac;->b(Landroid/media/MediaMetadataRetriever;JIIILcom/bumptech/glide/load/d/a/n;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_70
    if-nez v0, :cond_76

    invoke-virtual {p4, v8, v9, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(JI)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_76
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_76} :catch_82
    .catchall {:try_start_4d .. :try_end_76} :catchall_80

    :cond_76
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    iget-object p1, p0, Lcom/bumptech/glide/load/d/a/ac;->h:Lcom/bumptech/glide/load/b/a/e;

    invoke-static {v0, p1}, Lcom/bumptech/glide/load/d/a/f;->a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/b/a/e;)Lcom/bumptech/glide/load/d/a/f;

    move-result-object p1

    return-object p1

    :catchall_80
    move-exception p1

    goto :goto_89

    :catch_82
    move-exception p1

    :try_start_83
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_89
    .catchall {:try_start_83 .. :try_end_89} :catchall_80

    :goto_89
    invoke-virtual {p4}, Landroid/media/MediaMetadataRetriever;->release()V

    throw p1
.end method

.method public final a(Ljava/lang/Object;Lcom/bumptech/glide/load/j;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/load/j;",
            ")Z"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method
