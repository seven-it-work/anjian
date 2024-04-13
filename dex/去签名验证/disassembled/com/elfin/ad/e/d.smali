.class public final Lcom/elfin/ad/e/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field private static c:Lcom/elfin/ad/e/d;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()Lcom/elfin/ad/e/d;
    .registers 2

    const-class v0, Lcom/elfin/ad/e/d;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/elfin/ad/e/d;->c:Lcom/elfin/ad/e/d;

    if-nez v1, :cond_e

    new-instance v1, Lcom/elfin/ad/e/d;

    invoke-direct {v1}, Lcom/elfin/ad/e/d;-><init>()V

    sput-object v1, Lcom/elfin/ad/e/d;->c:Lcom/elfin/ad/e/d;

    :cond_e
    sget-object v1, Lcom/elfin/ad/e/d;->c:Lcom/elfin/ad/e/d;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/elfin/ad/b/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    :try_start_1
    new-array v0, v0, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "adPid ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lorg/litepal/f;->b([Ljava/lang/String;)Lorg/litepal/b;

    move-result-object p0

    const-class v0, Lcom/elfin/ad/b/a;

    invoke-virtual {p0, v0, v1}, Lorg/litepal/b;->a(Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;)I
    .registers 5

    :try_start_0
    const-class v0, Lcom/elfin/ad/b/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "adPid =?"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Lorg/litepal/f;->a(Ljava/lang/Class;[Ljava/lang/String;)I

    move-result p0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    return p0

    :catch_12
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method
