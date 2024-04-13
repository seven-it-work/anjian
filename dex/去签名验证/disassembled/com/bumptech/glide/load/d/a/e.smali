.class public final Lcom/bumptech/glide/load/d/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/l<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/i<",
            "Landroid/graphics/Bitmap$CompressFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/lang/String; = "BitmapEncoder"


# instance fields
.field private final d:Lcom/bumptech/glide/load/b/a/b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality"

    const/16 v1, 0x5a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/e;->a:Lcom/bumptech/glide/load/i;

    const-string v0, "com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat"

    invoke-static {v0}, Lcom/bumptech/glide/load/i;->a(Ljava/lang/String;)Lcom/bumptech/glide/load/i;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/d/a/e;->b:Lcom/bumptech/glide/load/i;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/load/d/a/e;->d:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/a/b;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/b/a/b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/e;->d:Lcom/bumptech/glide/load/b/a/b;

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/j;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 3

    sget-object v0, Lcom/bumptech/glide/load/d/a/e;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap$CompressFormat;

    if-eqz p1, :cond_b

    return-object p1

    :cond_b
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p0

    if-eqz p0, :cond_14

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0

    :cond_14
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object p0
.end method

.method private a(Lcom/bumptech/glide/load/b/u;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z
    .registers 11
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/j;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/u;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    sget-object v0, Lcom/bumptech/glide/load/d/a/e;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap$CompressFormat;

    if-eqz v0, :cond_11

    goto :goto_1c

    :cond_11
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1c

    :cond_1a
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    :goto_1c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    :try_start_2a
    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v1

    sget-object v3, Lcom/bumptech/glide/load/d/a/e;->a:Lcom/bumptech/glide/load/i;

    invoke-virtual {p3, v3}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_cb

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_3c
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_41} :catch_62
    .catchall {:try_start_3c .. :try_end_41} :catchall_60

    :try_start_41
    iget-object p2, p0, Lcom/bumptech/glide/load/d/a/e;->d:Lcom/bumptech/glide/load/b/a/b;

    if-eqz p2, :cond_4e

    new-instance p2, Lcom/bumptech/glide/load/a/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/d/a/e;->d:Lcom/bumptech/glide/load/b/a/b;

    invoke-direct {p2, v6, v5}, Lcom/bumptech/glide/load/a/c;-><init>(Ljava/io/OutputStream;Lcom/bumptech/glide/load/b/a/b;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_4c} :catch_5d
    .catchall {:try_start_41 .. :try_end_4c} :catchall_5a

    move-object v5, p2

    goto :goto_4f

    :cond_4e
    move-object v5, v6

    :goto_4f
    :try_start_4f
    invoke-virtual {p1, v0, v3, v5}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_62
    .catchall {:try_start_4f .. :try_end_55} :catchall_60

    const/4 v4, 0x1

    :goto_56
    :try_start_56
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_59} :catch_76
    .catchall {:try_start_56 .. :try_end_59} :catchall_cb

    goto :goto_76

    :catchall_5a
    move-exception p1

    move-object v5, v6

    goto :goto_c5

    :catch_5d
    move-exception p2

    move-object v5, v6

    goto :goto_63

    :catchall_60
    move-exception p1

    goto :goto_c5

    :catch_62
    move-exception p2

    :goto_63
    :try_start_63
    const-string v3, "BitmapEncoder"

    const/4 v6, 0x3

    invoke-static {v3, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string v3, "BitmapEncoder"

    const-string v6, "Failed to encode Bitmap"

    invoke-static {v3, v6, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_73
    .catchall {:try_start_63 .. :try_end_73} :catchall_60

    :cond_73
    if-eqz v5, :cond_76

    goto :goto_56

    :catch_76
    :cond_76
    :goto_76
    :try_start_76
    const-string p2, "BitmapEncoder"

    const/4 v3, 0x2

    invoke-static {p2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_c4

    const-string p2, "BitmapEncoder"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Compressed with type: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " of size "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/bumptech/glide/util/k;->a(Landroid/graphics/Bitmap;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ", options format: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/bumptech/glide/load/d/a/e;->b:Lcom/bumptech/glide/load/i;

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/load/j;->a(Lcom/bumptech/glide/load/i;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", hasAlpha: "

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catchall {:try_start_76 .. :try_end_c4} :catchall_cb

    :cond_c4
    return v4

    :goto_c5
    if-eqz v5, :cond_ca

    :try_start_c7
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_ca
    .catch Ljava/io/IOException; {:try_start_c7 .. :try_end_ca} :catch_ca
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_cb

    :catch_ca
    :cond_ca
    :try_start_ca
    throw p1
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cb

    :catchall_cb
    move-exception p1

    throw p1
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/j;)Lcom/bumptech/glide/load/c;
    .registers 2
    .param p1    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object p1, Lcom/bumptech/glide/load/c;->TRANSFORMED:Lcom/bumptech/glide/load/c;

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/Object;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/File;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/load/j;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/bumptech/glide/load/b/u;

    invoke-direct {p0, p1, p2, p3}, Lcom/bumptech/glide/load/d/a/e;->a(Lcom/bumptech/glide/load/b/u;Ljava/io/File;Lcom/bumptech/glide/load/j;)Z

    move-result p1

    return p1
.end method
