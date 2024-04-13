.class public Lcom/lidroid/xutils/DbUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/DbUtils$DaoConfig;,
        Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;,
        Lcom/lidroid/xutils/DbUtils$FindTempCache;
    }
.end annotation


# static fields
.field private static daoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/DbUtils;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private allowTransaction:Z

.field private daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

.field private database:Landroid/database/sqlite/SQLiteDatabase;

.field private debug:Z

.field private final findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

.field private writeLock:Ljava/util/concurrent/locks/Lock;

.field private volatile writeLocked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/lidroid/xutils/DbUtils$DaoConfig;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->debug:Z

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/lidroid/xutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    new-instance v0, Lcom/lidroid/xutils/DbUtils$FindTempCache;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;-><init>(Lcom/lidroid/xutils/DbUtils;Lcom/lidroid/xutils/DbUtils$FindTempCache;)V

    iput-object v0, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    if-nez p1, :cond_23

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "daoConfig may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_23
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->createDatabase(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p1, p0, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    return-void
.end method

.method private beginTransaction()V
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void

    :cond_a
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/lidroid/xutils/DbUtils;
    .registers 2

    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;)Lcom/lidroid/xutils/DbUtils;
    .registers 3

    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;
    .registers 5

    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbVersion(I)V

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbUpgradeListener(Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;)V

    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/lidroid/xutils/DbUtils;
    .registers 4

    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbDir(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/lidroid/xutils/DbUtils$DbUpgradeListener;)Lcom/lidroid/xutils/DbUtils;
    .registers 6

    new-instance v0, Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-direct {v0, p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbDir(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbName(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbVersion(I)V

    invoke-virtual {v0, p4}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->setDbUpgradeListener(Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;)V

    invoke-static {v0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p0

    return-object p0
.end method

.method public static create(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;
    .registers 1

    invoke-static {p0}, Lcom/lidroid/xutils/DbUtils;->getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;

    move-result-object p0

    return-object p0
.end method

.method private createDatabase(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Landroid/database/sqlite/SQLiteDatabase;
    .registers 6

    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbDir()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2a

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_37

    :cond_1c
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/io/File;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    return-object v2

    :cond_2a
    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    :cond_37
    return-object v2
.end method

.method private debugSql(Ljava/lang/String;)V
    .registers 3

    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->debug:Z

    if-eqz v0, :cond_7

    invoke-static {p1}, Lcom/lidroid/xutils/util/LogUtils;->d(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private endTransaction()V
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_9
    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->writeLocked:Z

    :cond_15
    return-void
.end method

.method private static declared-synchronized getInstance(Lcom/lidroid/xutils/DbUtils$DaoConfig;)Lcom/lidroid/xutils/DbUtils;
    .registers 6

    const-class v0, Lcom/lidroid/xutils/DbUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/DbUtils;

    if-nez v1, :cond_20

    new-instance v1, Lcom/lidroid/xutils/DbUtils;

    invoke-direct {v1, p0}, Lcom/lidroid/xutils/DbUtils;-><init>(Lcom/lidroid/xutils/DbUtils$DaoConfig;)V

    sget-object v2, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_22

    :cond_20
    iput-object p0, v1, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    :goto_22
    iget-object v2, v1, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->getVersion()I

    move-result v3

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbVersion()I

    move-result v4

    if-eq v3, v4, :cond_49

    if-eqz v3, :cond_46

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbUpgradeListener()Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;

    move-result-object p0

    if-eqz p0, :cond_3a

    invoke-interface {p0, v1, v3, v4}, Lcom/lidroid/xutils/DbUtils$DbUpgradeListener;->onUpgrade(Lcom/lidroid/xutils/DbUtils;II)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_4b

    goto :goto_46

    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Lcom/lidroid/xutils/DbUtils;->dropDb()V
    :try_end_3d
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_3a .. :try_end_3d} :catch_3e
    .catchall {:try_start_3a .. :try_end_3d} :catchall_4b

    goto :goto_46

    :catch_3e
    move-exception p0

    :try_start_3f
    invoke-virtual {p0}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_46
    :goto_46
    invoke-virtual {v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->setVersion(I)V
    :try_end_49
    .catchall {:try_start_3f .. :try_end_49} :catchall_4b

    :cond_49
    monitor-exit v0

    return-object v1

    :catchall_4b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getLastAutoIncrementId(Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT seq FROM sqlite_sequence WHERE name=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const-wide/16 v0, -0x1

    if-eqz p1, :cond_37

    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_26} :catch_2c
    .catchall {:try_start_1b .. :try_end_26} :catchall_2a

    :cond_26
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-wide v0

    :catchall_2a
    move-exception v0

    goto :goto_33

    :catch_2c
    move-exception v0

    :try_start_2d
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_2a

    :goto_33
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_37
    return-wide v0
.end method

.method private saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    iget-object v1, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2a

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/DbUtils;->getLastAutoIncrementId(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-nez v0, :cond_26

    const/4 p1, 0x0

    return p1

    :cond_26
    invoke-virtual {v1, p1, v4, v5}, Lcom/lidroid/xutils/db/table/Id;->setAutoIncrementId(Ljava/lang/Object;J)V

    return v3

    :cond_2a
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    return v3
.end method

.method private saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    :goto_1d
    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    return-void

    :cond_21
    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    return-void

    :cond_25
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    goto :goto_1d
.end method

.method private setTransactionSuccessful()V
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    :cond_9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    invoke-virtual {v0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    sget-object v1, Lcom/lidroid/xutils/DbUtils;->daoMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_18
    return-void
.end method

.method public configAllowTransaction(Z)Lcom/lidroid/xutils/DbUtils;
    .registers 2

    iput-boolean p1, p0, Lcom/lidroid/xutils/DbUtils;->allowTransaction:Z

    return-object p0
.end method

.method public configDebug(Z)Lcom/lidroid/xutils/DbUtils;
    .registers 2

    iput-boolean p1, p0, Lcom/lidroid/xutils/DbUtils;->debug:Z

    return-object p0
.end method

.method public count(Lcom/lidroid/xutils/db/sqlite/Selector;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_d

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_d
    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "count("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") as count"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p1, v1}, Lcom/lidroid/xutils/db/sqlite/Selector;->select([Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->findDbModelFirst(Lcom/lidroid/xutils/db/sqlite/DbModelSelector;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object p1

    const-string v0, "count"

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/db/table/DbModel;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public count(Ljava/lang/Class;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)J"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->count(Lcom/lidroid/xutils/db/sqlite/Selector;)J

    move-result-wide v0

    return-wide v0
.end method

.method public createTableIfNotExist(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildCreateTableSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/TableUtils;->getExecAfterTableCreated(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method public delete(Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/lidroid/xutils/db/sqlite/WhereBuilder;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_18
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public delete(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_1c
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public deleteAll(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/lidroid/xutils/DbUtils;->delete(Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)V

    return-void
.end method

.method public deleteAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_38

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :cond_2c
    :try_start_2c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_38

    goto :goto_1f

    :catchall_38
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1

    :cond_3d
    return-void
.end method

.method public deleteById(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_7 .. :try_end_14} :catchall_18

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_18
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public dropDb()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    const-string v0, "SELECT name FROM sqlite_master WHERE type=\'table\' AND name<>\'sqlite_sequence\'"

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_42

    :goto_8
    :try_start_8
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_c} :catch_37
    .catchall {:try_start_8 .. :try_end_c} :catchall_35

    if-nez v1, :cond_12

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-void

    :cond_12
    const/4 v1, 0x0

    :try_start_13
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DROP TABLE "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/table/Table;->remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_2b} :catch_2c
    .catchall {:try_start_13 .. :try_end_2b} :catchall_35

    goto :goto_8

    :catch_2c
    move-exception v1

    :try_start_2d
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_34} :catch_37
    .catchall {:try_start_2d .. :try_end_34} :catchall_35

    goto :goto_8

    :catchall_35
    move-exception v1

    goto :goto_3e

    :catch_37
    move-exception v1

    :try_start_38
    new-instance v2, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v2, v1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_35

    :goto_3e
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v1

    :cond_42
    return-void
.end method

.method public dropTable(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-static {p1}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DROP TABLE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V

    return-void
.end method

.method public execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getBindArgs()Ljava/util/LinkedList;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getBindArgsAsArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1b
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p1

    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execNonQuery(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_8} :catch_9

    return-void

    :catch_9
    move-exception p1

    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    :try_start_7
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getSql()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->getBindArgsAsStrArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_15} :catch_16

    return-object p1

    :catch_16
    move-exception p1

    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public execQuery(Ljava/lang/String;)Landroid/database/Cursor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->debugSql(Ljava/lang/String;)V

    :try_start_3
    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_a} :catch_b

    return-object p1

    :catch_b
    move-exception p1

    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/db/sqlite/Selector;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v1

    iget-object v3, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v3, v1, v2}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->setSeq(J)V

    iget-object v3, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v3, v0}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_24

    check-cast v3, Ljava/util/List;

    return-object v3

    :cond_24
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_57

    :goto_2f
    :try_start_2f
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_3e

    iget-object p1, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {p1, v0, v3}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_3a} :catch_4c
    .catchall {:try_start_2f .. :try_end_3a} :catchall_4a

    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v3

    :cond_3e
    :try_start_3e
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p0, v4, v5, v1, v2}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_49} :catch_4c
    .catchall {:try_start_3e .. :try_end_49} :catchall_4a

    goto :goto_2f

    :catchall_4a
    move-exception p1

    goto :goto_53

    :catch_4c
    move-exception p1

    :try_start_4d
    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_53
    .catchall {:try_start_4d .. :try_end_53} :catchall_4a

    :goto_53
    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw p1

    :cond_57
    return-object v3
.end method

.method public findAll(Ljava/lang/Class;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->findAll(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public findById(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v2

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v2, v0, v3, p2}, Lcom/lidroid/xutils/db/sqlite/Selector;->where(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->limit(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v2

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v0, v2, v3}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->setSeq(J)V

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v0, p2}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_37

    return-object v0

    :cond_37
    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_61

    :try_start_3d
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-static {p0, v0, p1, v2, v3}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v1, p2, p1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4c
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_4c} :catch_56
    .catchall {:try_start_3d .. :try_end_4c} :catchall_54

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object p1

    :cond_50
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v1

    :catchall_54
    move-exception p1

    goto :goto_5d

    :catch_56
    move-exception p1

    :try_start_57
    new-instance p2, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {p2, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_54

    :goto_5d
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw p1

    :cond_61
    return-object v1
.end method

.method public findDbModelAll(Lcom/lidroid/xutils/db/sqlite/DbModelSelector;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/db/sqlite/DbModelSelector;",
            ")",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3a

    :goto_1b
    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1f} :catch_2f
    .catchall {:try_start_1b .. :try_end_1f} :catchall_2d

    if-nez v1, :cond_25

    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    :cond_25
    :try_start_25
    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_2c} :catch_2f
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2d

    goto :goto_1b

    :catchall_2d
    move-exception v0

    goto :goto_36

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2d

    :goto_36
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_3a
    return-object v0
.end method

.method public findDbModelAll(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;",
            ")",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/db/table/DbModel;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_2a

    :goto_b
    :try_start_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_f} :catch_1f
    .catchall {:try_start_b .. :try_end_f} :catchall_1d

    if-nez v1, :cond_15

    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    :cond_15
    :try_start_15
    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1c} :catch_1f
    .catchall {:try_start_15 .. :try_end_1c} :catchall_1d

    goto :goto_b

    :catchall_1d
    move-exception v0

    goto :goto_26

    :catch_1f
    move-exception v0

    :try_start_20
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_1d

    :goto_26
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_2a
    return-object v0
.end method

.method public findDbModelFirst(Lcom/lidroid/xutils/db/sqlite/DbModelSelector;)Lcom/lidroid/xutils/db/table/DbModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->limit(I)Lcom/lidroid/xutils/db/sqlite/DbModelSelector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/DbModelSelector;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3a

    :try_start_1b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_25} :catch_2f
    .catchall {:try_start_1b .. :try_end_25} :catchall_2d

    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    :cond_29
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v1

    :catchall_2d
    move-exception v0

    goto :goto_36

    :catch_2f
    move-exception v0

    :try_start_30
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_2d

    :goto_36
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_3a
    return-object v1
.end method

.method public findDbModelFirst(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Lcom/lidroid/xutils/db/table/DbModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_25

    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;

    move-result-object v0
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_10} :catch_1a
    .catchall {:try_start_6 .. :try_end_10} :catchall_18

    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v0

    :cond_14
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    goto :goto_25

    :catchall_18
    move-exception v0

    goto :goto_21

    :catch_1a
    move-exception v0

    :try_start_1b
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_18

    :goto_21
    invoke-static {p1}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw v0

    :cond_25
    :goto_25
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/db/sqlite/Selector;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->limit(I)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/Selector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;->getSeq()J

    move-result-wide v2

    iget-object v4, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v4, v2, v3}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->setSeq(J)V

    iget-object v4, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v4, v0}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_27

    return-object v4

    :cond_27
    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    if-eqz v4, :cond_55

    :try_start_2d
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_44

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->getEntityType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p0, v4, p1, v2, v3}, Lcom/lidroid/xutils/db/sqlite/CursorUtils;->getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p1

    iget-object v1, p0, Lcom/lidroid/xutils/DbUtils;->findTempCache:Lcom/lidroid/xutils/DbUtils$FindTempCache;

    invoke-virtual {v1, v0, p1}, Lcom/lidroid/xutils/DbUtils$FindTempCache;->put(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_40} :catch_4a
    .catchall {:try_start_2d .. :try_end_40} :catchall_48

    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object p1

    :cond_44
    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return-object v1

    :catchall_48
    move-exception p1

    goto :goto_51

    :catch_4a
    move-exception p1

    :try_start_4b
    new-instance v0, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_51
    .catchall {:try_start_4b .. :try_end_51} :catchall_48

    :goto_51
    invoke-static {v4}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw p1

    :cond_55
    return-object v1
.end method

.method public findFirst(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p1}, Lcom/lidroid/xutils/db/sqlite/Selector;->from(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/Selector;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->findFirst(Lcom/lidroid/xutils/db/sqlite/Selector;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->daoConfig:Lcom/lidroid/xutils/DbUtils$DaoConfig;

    return-object v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/DbUtils;->database:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public replace(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_18

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_18
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public replaceAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_35

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :cond_29
    :try_start_29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    goto :goto_1c

    :catchall_35
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1

    :cond_3a
    return-void
.end method

.method public save(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_18

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_18
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public saveAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_35

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :cond_29
    :try_start_29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_34
    .catchall {:try_start_29 .. :try_end_34} :catchall_35

    goto :goto_1c

    :catchall_35
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1

    :cond_3a
    return-void
.end method

.method public saveBindingId(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    move-result p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_15

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return p1

    :catchall_15
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public saveBindingIdAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_3b

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :cond_29
    :try_start_29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/DbUtils;->saveBindingIdWithoutTransaction(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    new-instance p1, Lcom/lidroid/xutils/exception/DbException;

    const-string v0, "saveBindingId error, transaction will not commit!"

    invoke-direct {p1, v0}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3b
    .catchall {:try_start_29 .. :try_end_3b} :catchall_3b

    :catchall_3b
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1

    :cond_40
    return-void
.end method

.method public saveOrUpdate(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_10
    .catchall {:try_start_0 .. :try_end_10} :catchall_14

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_14
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public saveOrUpdateAll(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    if-eqz p1, :cond_36

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->createTableIfNotExist(Ljava/lang/Class;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_31

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :cond_29
    :try_start_29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdateWithoutTransaction(Ljava/lang/Object;)V
    :try_end_30
    .catchall {:try_start_29 .. :try_end_30} :catchall_31

    goto :goto_1c

    :catchall_31
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1

    :cond_36
    return-void
.end method

.method public tableIsExist(Ljava/lang/Class;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p1

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Table;->isCheckedDatabase()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "SELECT COUNT(*) AS c FROM sqlite_master WHERE type=\'table\' AND name=\'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execQuery(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4c

    :try_start_28
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-lez v3, :cond_3b

    invoke-virtual {p1, v1}, Lcom/lidroid/xutils/db/table/Table;->setCheckedDatabase(Z)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_37} :catch_41
    .catchall {:try_start_28 .. :try_end_37} :catchall_3f

    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return v1

    :cond_3b
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    return v2

    :catchall_3f
    move-exception p1

    goto :goto_48

    :catch_41
    move-exception p1

    :try_start_42
    new-instance v1, Lcom/lidroid/xutils/exception/DbException;

    invoke-direct {v1, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_48
    .catchall {:try_start_42 .. :try_end_48} :catchall_3f

    :goto_48
    invoke-static {v0}, Lcom/lidroid/xutils/util/IOUtils;->closeQuietly(Landroid/database/Cursor;)V

    throw p1

    :cond_4c
    return v2
.end method

.method public varargs update(Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-static {p0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_1c
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public varargs update(Ljava/lang/Object;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_1c

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :catchall_1c
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1
.end method

.method public varargs updateAll(Ljava/util/List;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Lcom/lidroid/xutils/db/sqlite/WhereBuilder;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_38

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :cond_2c
    :try_start_2c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, p2, p3}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_38

    goto :goto_1f

    :catchall_38
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1

    :cond_3d
    return-void
.end method

.method public varargs updateAll(Ljava/util/List;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    if-eqz p1, :cond_3d

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->tableIsExist(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    :try_start_18
    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->beginTransaction()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->setTransactionSuccessful()V
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_38

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    return-void

    :cond_2c
    :try_start_2c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lidroid/xutils/DbUtils;->execNonQuery(Lcom/lidroid/xutils/db/sqlite/SqlInfo;)V
    :try_end_37
    .catchall {:try_start_2c .. :try_end_37} :catchall_38

    goto :goto_1f

    :catchall_38
    move-exception p1

    invoke-direct {p0}, Lcom/lidroid/xutils/DbUtils;->endTransaction()V

    throw p1

    :cond_3d
    return-void
.end method
