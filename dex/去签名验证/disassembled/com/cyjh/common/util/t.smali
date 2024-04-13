.class public final Lcom/cyjh/common/util/t;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/common/util/t$a;
    }
.end annotation


# static fields
.field private static f:Lcom/cyjh/common/util/t; = null

.field private static final g:I = 0x1

.field private static final h:I


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/cyjh/common/util/t$a;

.field volatile c:Z

.field d:Ljava/lang/String;

.field e:Landroid/os/Handler;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/common/util/t$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/cyjh/common/util/t$1;-><init>(Lcom/cyjh/common/util/t;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/cyjh/common/util/t;->e:Landroid/os/Handler;

    iput-object p1, p0, Lcom/cyjh/common/util/t;->a:Landroid/content/Context;

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/common/util/t;)Lcom/cyjh/common/util/t$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/util/t;->b:Lcom/cyjh/common/util/t$a;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/cyjh/common/util/t;
    .registers 2

    sget-object v0, Lcom/cyjh/common/util/t;->f:Lcom/cyjh/common/util/t;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/common/util/t;

    invoke-direct {v0, p0}, Lcom/cyjh/common/util/t;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/cyjh/common/util/t;->f:Lcom/cyjh/common/util/t;

    :cond_b
    sget-object p0, Lcom/cyjh/common/util/t;->f:Lcom/cyjh/common/util/t;

    return-object p0
.end method

.method private a(Lcom/cyjh/common/util/t$a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/common/util/t;->b:Lcom/cyjh/common/util/t$a;

    return-void
.end method

.method private static synthetic a(Lcom/cyjh/common/util/t;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic b(Lcom/cyjh/common/util/t;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/util/t;->a:Landroid/content/Context;

    return-object p0
.end method

.method private static synthetic c(Lcom/cyjh/common/util/t;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/cyjh/common/util/t;->c:Z

    return p0
.end method

.method private static synthetic d(Lcom/cyjh/common/util/t;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/util/t;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private static synthetic e(Lcom/cyjh/common/util/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/common/util/t;->d:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/cyjh/common/util/t;
    .registers 5

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/cyjh/common/util/t$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/cyjh/common/util/t$2;-><init>(Lcom/cyjh/common/util/t;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-object p0
.end method

.method final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_72

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1e
    array-length v2, v1

    const/4 v3, 0x0

    :goto_20
    if-ge v3, v2, :cond_a0

    aget-object v4, v1, v3

    const-string v5, ""

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v5, v4}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6f

    :cond_58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, p1, v4, v5}, Lcom/cyjh/common/util/t;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_72
    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p3, 0x400

    new-array p3, p3, [B

    :goto_8c
    invoke-virtual {p1, p3}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_97

    invoke-virtual {p2, p3, v0, v1}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_8c

    :cond_97
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    :cond_a0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/cyjh/common/util/t;->c:Z
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a3} :catch_a4

    return-void

    :catch_a4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/common/util/t;->d:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/cyjh/common/util/t;->c:Z

    return-void
.end method
