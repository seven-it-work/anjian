.class Lcom/umeng/analytics/pro/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/pro/e$a;
    }
.end annotation


# static fields
.field private static b:Landroid/database/sqlite/SQLiteOpenHelper;

.field private static d:Landroid/content/Context;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private c:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/pro/e$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/analytics/pro/e;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/umeng/analytics/pro/e;
    .registers 2

    sget-object v0, Lcom/umeng/analytics/pro/e;->d:Landroid/content/Context;

    if-nez v0, :cond_12

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/e;->d:Landroid/content/Context;

    invoke-static {p0}, Lcom/umeng/analytics/pro/d;->a(Landroid/content/Context;)Lcom/umeng/analytics/pro/d;

    move-result-object p0

    sput-object p0, Lcom/umeng/analytics/pro/e;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    :cond_12
    invoke-static {}, Lcom/umeng/analytics/pro/e$a;->a()Lcom/umeng/analytics/pro/e;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_12

    sget-object v0, Lcom/umeng/analytics/pro/e;->b:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/pro/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    :cond_12
    iget-object v0, p0, Lcom/umeng/analytics/pro/e;->c:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/umeng/analytics/pro/e;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/umeng/analytics/pro/e;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_e} :catch_13
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_13
    monitor-exit p0

    return-void
.end method
