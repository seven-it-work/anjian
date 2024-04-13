.class final Lcom/bumptech/glide/load/a/a/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "ThumbStreamOpener"

.field private static final b:Lcom/bumptech/glide/load/a/a/a;


# instance fields
.field private final c:Lcom/bumptech/glide/load/a/a/a;

.field private final d:Lcom/bumptech/glide/load/a/a/d;

.field private final e:Lcom/bumptech/glide/load/b/a/b;

.field private final f:Landroid/content/ContentResolver;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/a/a/a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/a/a/a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/a/a/e;->b:Lcom/bumptech/glide/load/a/a/a;

    return-void
.end method

.method private constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/a/a/a;Lcom/bumptech/glide/load/a/a/d;Lcom/bumptech/glide/load/b/a/b;Landroid/content/ContentResolver;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/a/a/a;",
            "Lcom/bumptech/glide/load/a/a/d;",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/a/a/e;->c:Lcom/bumptech/glide/load/a/a/a;

    iput-object p3, p0, Lcom/bumptech/glide/load/a/a/e;->d:Lcom/bumptech/glide/load/a/a/d;

    iput-object p4, p0, Lcom/bumptech/glide/load/a/a/e;->e:Lcom/bumptech/glide/load/b/a/b;

    iput-object p5, p0, Lcom/bumptech/glide/load/a/a/e;->f:Landroid/content/ContentResolver;

    iput-object p1, p0, Lcom/bumptech/glide/load/a/a/e;->g:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Lcom/bumptech/glide/load/a/a/d;Lcom/bumptech/glide/load/b/a/b;Landroid/content/ContentResolver;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/bumptech/glide/load/a/a/d;",
            "Lcom/bumptech/glide/load/b/a/b;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    sget-object v2, Lcom/bumptech/glide/load/a/a/e;->b:Lcom/bumptech/glide/load/a/a/a;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/a/a/e;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/a/a/a;Lcom/bumptech/glide/load/a/a/d;Lcom/bumptech/glide/load/b/a/b;Landroid/content/ContentResolver;)V

    return-void
.end method

.method private static a(Ljava/io/File;)Z
    .registers 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    const-wide/16 v0, 0x0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private c(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/a/a/e;->d:Lcom/bumptech/glide/load/a/a/d;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/a/a/d;->a(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_20

    :try_start_8
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_19

    if-eqz p1, :cond_18

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_18
    return-object v0

    :catchall_19
    move-exception v0

    if-eqz p1, :cond_1f

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1f
    throw v0

    :cond_20
    if-eqz p1, :cond_25

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_25
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method final a(Landroid/net/Uri;)I
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bumptech/glide/load/a/a/e;->f:Landroid/content/ContentResolver;

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_7} :catch_1a
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_7} :catch_1a
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    :try_start_7
    iget-object v0, p0, Lcom/bumptech/glide/load/a/a/e;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/bumptech/glide/load/a/a/e;->e:Lcom/bumptech/glide/load/b/a/b;

    invoke-static {v0, v1, v2}, Lcom/bumptech/glide/load/f;->b(Ljava/util/List;Ljava/io/InputStream;Lcom/bumptech/glide/load/b/a/b;)I

    move-result v0
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_f} :catch_15
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_f} :catch_15
    .catchall {:try_start_7 .. :try_end_f} :catchall_41

    if-eqz v1, :cond_14

    :try_start_11
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    return v0

    :catch_15
    move-exception v0

    goto :goto_1e

    :catchall_17
    move-exception p1

    move-object v1, v0

    goto :goto_42

    :catch_1a
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_1e
    :try_start_1e
    const-string v2, "ThumbStreamOpener"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    const-string v2, "ThumbStreamOpener"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to open uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a
    .catchall {:try_start_1e .. :try_end_3a} :catchall_41

    :cond_3a
    if-eqz v1, :cond_3f

    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    const/4 p1, -0x1

    return p1

    :catchall_41
    move-exception p1

    :goto_42
    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_47

    :catch_47
    :cond_47
    throw p1
.end method

.method public final b(Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/a/a/e;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    return-object v2

    :cond_c
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_23

    const-wide/16 v3, 0x0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gez v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-nez v0, :cond_27

    return-object v2

    :cond_27
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    :try_start_2b
    iget-object v1, p0, Lcom/bumptech/glide/load/a/a/e;->f:Landroid/content/ContentResolver;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_2b .. :try_end_31} :catch_32

    return-object v1

    :catch_32
    move-exception v1

    new-instance v2, Ljava/io/FileNotFoundException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "NPE opening uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/io/FileNotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Ljava/io/FileNotFoundException;

    throw p1
.end method
