.class public Lcom/umeng/commonsdk/statistics/idtracking/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/idtracking/e$a;
    }
.end annotation


# static fields
.field public static final a:J = 0x5265c00L

.field public static b:Lcom/umeng/commonsdk/statistics/idtracking/e;

.field private static j:Ljava/lang/Object;


# instance fields
.field private final c:Ljava/lang/String;

.field private d:Ljava/io/File;

.field private e:Lcom/umeng/commonsdk/statistics/proto/c;

.field private f:J

.field private g:J

.field private h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/umeng/commonsdk/statistics/idtracking/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "umeng_it.cache"

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "umeng_it.cache"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    const-wide/32 v0, 0x5265c00

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-direct {v0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/e;
    .registers 5

    const-class v0, Lcom/umeng/commonsdk/statistics/idtracking/e;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    if-nez v1, :cond_ce

    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/f;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/f;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/b;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/b;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/s;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/s;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/d;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/d;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/c;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/c;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/h;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/h;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/k;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/idtracking/k;-><init>()V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/t;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/t;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/r;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/r;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/r;->f()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_70

    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    :cond_70
    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/j;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/j;->g()Z

    move-result v2

    if-eqz v2, :cond_8d

    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-direct {v2, v1}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v3, Lcom/umeng/commonsdk/statistics/idtracking/i;

    invoke-direct {v3, p0}, Lcom/umeng/commonsdk/statistics/idtracking/i;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v3}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/idtracking/j;->i()V

    :cond_8d
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/q;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/q;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/n;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/n;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/p;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/p;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/o;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/o;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/m;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/m;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    new-instance v2, Lcom/umeng/commonsdk/statistics/idtracking/l;

    invoke-direct {v2, p0}, Lcom/umeng/commonsdk/statistics/idtracking/l;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z

    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->e()V

    :cond_ce
    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->b:Lcom/umeng/commonsdk/statistics/idtracking/e;
    :try_end_d0
    .catchall {:try_start_3 .. :try_end_d0} :catchall_d2

    monitor-exit v0

    return-object p0

    :catchall_d2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 4

    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_21

    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_6} :catch_1d
    .catchall {:try_start_5 .. :try_end_6} :catchall_1b

    :try_start_6
    new-instance v1, Lcom/umeng/commonsdk/proguard/aj;

    invoke-direct {v1}, Lcom/umeng/commonsdk/proguard/aj;-><init>()V

    invoke-virtual {v1, p1}, Lcom/umeng/commonsdk/proguard/aj;->a(Lcom/umeng/commonsdk/proguard/aa;)[B

    move-result-object p1

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_18

    if-eqz p1, :cond_21

    :try_start_12
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->writeFile(Ljava/io/File;[B)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_1d
    .catchall {:try_start_12 .. :try_end_17} :catchall_1b

    goto :goto_21

    :catchall_18
    move-exception p1

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    throw p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1d
    .catchall {:try_start_1a .. :try_end_1b} :catchall_1b

    :catchall_1b
    move-exception p1

    goto :goto_23

    :catch_1d
    move-exception p1

    :try_start_1e
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    :goto_21
    monitor-exit v0

    return-void

    :goto_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1e .. :try_end_24} :catchall_1b

    throw p1
.end method

.method private a(Lcom/umeng/commonsdk/statistics/idtracking/a;)Z
    .registers 4

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_13
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invalid domain: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->w(Ljava/lang/String;)V

    :cond_2c
    const/4 p1, 0x0

    return p1
.end method

.method private declared-synchronized g()V
    .registers 8

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_16
    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/idtracking/a;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->d()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_16

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_16

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_16

    :cond_51
    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/List;)Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c;->a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/c;

    monitor-enter p0
    :try_end_58
    .catchall {:try_start_1 .. :try_end_58} :catchall_60

    :try_start_58
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    monitor-exit p0
    :try_end_5b
    .catchall {:try_start_58 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-void

    :catchall_5d
    move-exception v0

    :try_start_5e
    monitor-exit p0
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_60

    :catchall_60
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 8

    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/e;->j:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_41

    return-object v2

    :cond_e
    :try_start_e
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->d:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_32
    .catchall {:try_start_e .. :try_end_15} :catchall_2d

    :try_start_15
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v3

    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v4}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    new-instance v5, Lcom/umeng/commonsdk/proguard/ad;

    invoke-direct {v5}, Lcom/umeng/commonsdk/proguard/ad;-><init>()V

    invoke-virtual {v5, v4, v3}, Lcom/umeng/commonsdk/proguard/ad;->a(Lcom/umeng/commonsdk/proguard/aa;[B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_26} :catch_2b
    .catchall {:try_start_15 .. :try_end_26} :catchall_3c

    :try_start_26
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_41

    return-object v4

    :catch_2b
    move-exception v3

    goto :goto_34

    :catchall_2d
    move-exception v1

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_3d

    :catch_32
    move-exception v3

    move-object v1, v2

    :goto_34
    :try_start_34
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3c

    :try_start_37
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    monitor-exit v0

    return-object v2

    :catchall_3c
    move-exception v2

    :goto_3d
    invoke-static {v1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v2

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_41

    throw v1
.end method


# virtual methods
.method public declared-synchronized a()V
    .registers 8

    monitor-enter p0

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->f:J

    const/4 v4, 0x0

    sub-long v4, v0, v2

    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    cmp-long v6, v4, v2

    if-ltz v6, :cond_4f

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_17
    :goto_17
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/umeng/commonsdk/statistics/idtracking/a;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a()Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v2, 0x1

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v5

    if-nez v5, :cond_17

    iget-object v5, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {v4}, Lcom/umeng/commonsdk/statistics/idtracking/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->b(Ljava/lang/String;)V

    goto :goto_17

    :cond_40
    if-eqz v2, :cond_4d

    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->g()V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->i:Lcom/umeng/commonsdk/statistics/idtracking/e$a;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/e$a;->a()V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->f()V

    :cond_4d
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->f:J
    :try_end_4f
    .catchall {:try_start_1 .. :try_end_4f} :catchall_51

    :cond_4f
    monitor-exit p0

    return-void

    :catchall_51
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->g:J

    return-void
.end method

.method public declared-synchronized b()Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized d()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/idtracking/a;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_9

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->e()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a(Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_9

    :cond_31
    if-eqz v2, :cond_3b

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/proto/c;->b(Z)V

    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->f()V
    :try_end_3b
    .catchall {:try_start_1 .. :try_end_3b} :catchall_3d

    :cond_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized e()V
    .registers 5

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->h()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_57

    if-nez v0, :cond_9

    monitor-exit p0

    return-void

    :cond_9
    :try_start_9
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    monitor-enter p0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_57

    :try_start_15
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1d
    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/idtracking/a;

    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-virtual {v2, v3}, Lcom/umeng/commonsdk/statistics/idtracking/a;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/idtracking/a;->c()Z

    move-result v3

    if-nez v3, :cond_1d

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_38
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/umeng/commonsdk/statistics/idtracking/a;

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->h:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_3c

    :cond_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_15 .. :try_end_4f} :catchall_54

    :try_start_4f
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->g()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_57

    monitor-exit p0

    return-void

    :catchall_54
    move-exception v0

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized f()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/e;->e:Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/e;->a(Lcom/umeng/commonsdk/statistics/proto/c;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method
