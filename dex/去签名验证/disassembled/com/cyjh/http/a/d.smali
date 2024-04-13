.class public Lcom/cyjh/http/a/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/a/d$c;,
        Lcom/cyjh/http/a/d$a;,
        Lcom/cyjh/http/a/d$b;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "d"

.field private static d:Lcom/cyjh/http/a/d;


# instance fields
.field public a:Landroid/content/Context;

.field b:Lcom/cyjh/http/e/b$a;

.field private e:Lcom/cyjh/http/a/d$c;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/cyjh/http/a/d$1;

    invoke-direct {v0, p0}, Lcom/cyjh/http/a/d$1;-><init>(Lcom/cyjh/http/a/d;)V

    iput-object v0, p0, Lcom/cyjh/http/a/d;->b:Lcom/cyjh/http/e/b$a;

    return-void
.end method

.method static synthetic a(Lcom/cyjh/http/a/d;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static a()Lcom/cyjh/http/a/d;
    .registers 2

    sget-object v0, Lcom/cyjh/http/a/d;->d:Lcom/cyjh/http/a/d;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/a/d;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/a/d;->d:Lcom/cyjh/http/a/d;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/a/d;

    invoke-direct {v1}, Lcom/cyjh/http/a/d;-><init>()V

    sput-object v1, Lcom/cyjh/http/a/d;->d:Lcom/cyjh/http/a/d;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cyjh/http/a/d;->d:Lcom/cyjh/http/a/d;

    return-object v0
.end method

.method private a(Landroid/content/Context;)Lcom/cyjh/http/a/d;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 7

    invoke-virtual {p0}, Lcom/cyjh/http/a/d;->b()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object p1, p0, Lcom/cyjh/http/a/d;->e:Lcom/cyjh/http/a/d$c;

    if-eqz p1, :cond_56

    iget-object p1, p0, Lcom/cyjh/http/a/d;->e:Lcom/cyjh/http/a/d$c;

    invoke-interface {p1}, Lcom/cyjh/http/a/d$c;->a()V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/cyjh/http/a/d;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "libraryDownloadTask --> path="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/cyjh/http/a/d$b;

    iget-object v2, p0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/cyjh/http/a/d$b;-><init>(Lcom/cyjh/http/a/d;Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    invoke-virtual {v1, v2, v3}, Lcom/cyjh/http/a/d$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_56
    return-void
.end method

.method static synthetic b(Lcom/cyjh/http/a/d;)Lcom/cyjh/http/a/d$c;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/http/a/d;->e:Lcom/cyjh/http/a/d$c;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/http/a/d;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/cyjh/http/a/d$c;)V
    .registers 7

    sget-object v0, Lcom/cyjh/http/a/d;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download --> url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/cyjh/http/a/d;->e:Lcom/cyjh/http/a/d$c;

    invoke-virtual {p0}, Lcom/cyjh/http/a/d;->b()Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p1, p0, Lcom/cyjh/http/a/d;->e:Lcom/cyjh/http/a/d$c;

    if-eqz p1, :cond_6b

    iget-object p1, p0, Lcom/cyjh/http/a/d;->e:Lcom/cyjh/http/a/d$c;

    invoke-interface {p1}, Lcom/cyjh/http/a/d$c;->a()V

    return-void

    :cond_25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "tessdata"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/cyjh/http/a/d;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "libraryDownloadTask --> path="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/cyjh/http/a/d$b;

    iget-object v1, p0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/cyjh/http/a/d$b;-><init>(Lcom/cyjh/http/a/d;Landroid/content/Context;)V

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/cyjh/http/a/d$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_6b
    return-void
.end method

.method public final b()Z
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/cyjh/http/a/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "tessdata"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    const-string v2, "chi_sim.traineddata"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "eng.traineddata"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_4a

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_4a

    const/4 v0, 0x1

    return v0

    :cond_4a
    const/4 v0, 0x0

    return v0
.end method
