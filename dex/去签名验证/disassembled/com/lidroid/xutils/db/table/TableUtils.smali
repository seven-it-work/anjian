.class public Lcom/lidroid/xutils/db/table/TableUtils;
.super Ljava/lang/Object;


# static fields
.field private static entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;>;"
        }
    .end annotation
.end field

.field private static entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Id;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    :try_start_9
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_f
    if-lt v2, v1, :cond_25

    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a2

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/lidroid/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void

    :cond_25
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-nez v4, :cond_96

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_96

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->isSupportColumnConverter(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_96

    new-instance v4, Lcom/lidroid/xutils/db/table/Column;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v3

    :goto_5e
    invoke-virtual {p2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_96

    :cond_62
    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isForeign(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_7c

    new-instance v4, Lcom/lidroid/xutils/db/table/Foreign;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Foreign;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Foreign;->getColumnName()Ljava/lang/String;

    move-result-object v3

    goto :goto_5e

    :cond_7c
    invoke-static {v3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isFinder(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_96

    new-instance v4, Lcom/lidroid/xutils/db/table/Finder;

    invoke-direct {v4, p0, v3}, Lcom/lidroid/xutils/db/table/Finder;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    invoke-virtual {v4}, Lcom/lidroid/xutils/db/table/Finder;->getColumnName()Ljava/lang/String;

    move-result-object v3
    :try_end_95
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_95} :catch_9a

    goto :goto_5e

    :cond_96
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_f

    :catch_9a
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a2
    return-void
.end method

.method static declared-synchronized getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/table/TableUtils;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_34

    monitor-exit v0

    return-object p0

    :cond_1d
    :try_start_1d
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v1}, Lcom/lidroid/xutils/db/table/TableUtils;->addColumns2Map(Ljava/lang/Class;Ljava/lang/String;Ljava/util/HashMap;)V

    sget-object v2, Lcom/lidroid/xutils/db/table/TableUtils;->entityColumnsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_1d .. :try_end_32} :catchall_34

    monitor-exit v0

    return-object v1

    :catchall_34
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/lidroid/xutils/db/table/Column;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object p0

    return-object p0

    :cond_f
    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/db/table/Column;

    return-object p0
.end method

.method public static getExecAfterTableCreated(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/db/annotation/Table;

    if-eqz p0, :cond_f

    invoke-interface {p0}, Lcom/lidroid/xutils/db/annotation/Table;->execAfterTableCreated()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method static declared-synchronized getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/lidroid/xutils/db/table/Id;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/table/TableUtils;

    monitor-enter v0

    :try_start_3
    const-class v1, Ljava/lang/Object;

    invoke-virtual {v1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    new-instance p0, Ljava/lang/RuntimeException;

    const-string v1, "field \'id\' not found"

    invoke-direct {p0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/lidroid/xutils/db/table/Id;
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_8a

    monitor-exit v0

    return-object p0

    :cond_2d
    const/4 v1, 0x0

    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    if-eqz v2, :cond_6e

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_37
    if-lt v5, v3, :cond_3a

    goto :goto_45

    :cond_3a
    aget-object v6, v2, v5

    const-class v7, Lcom/lidroid/xutils/db/annotation/Id;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v7

    if-eqz v7, :cond_6b

    move-object v1, v6

    :goto_45
    if-nez v1, :cond_6e

    array-length v3, v2

    :goto_48
    if-lt v4, v3, :cond_4b

    goto :goto_6e

    :cond_4b
    aget-object v5, v2, v4

    const-string v6, "id"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_69

    const-string v6, "_id"

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66

    goto :goto_69

    :cond_66
    add-int/lit8 v4, v4, 0x1

    goto :goto_48

    :cond_69
    :goto_69
    move-object v1, v5

    goto :goto_6e

    :cond_6b
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_6e
    :goto_6e
    if-nez v1, :cond_7a

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object p0
    :try_end_78
    .catchall {:try_start_2e .. :try_end_78} :catchall_8a

    monitor-exit v0

    return-object p0

    :cond_7a
    :try_start_7a
    new-instance v2, Lcom/lidroid/xutils/db/table/Id;

    invoke-direct {v2, p0, v1}, Lcom/lidroid/xutils/db/table/Id;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    sget-object v1, Lcom/lidroid/xutils/db/table/TableUtils;->entityIdMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_88
    .catchall {:try_start_7a .. :try_end_88} :catchall_8a

    monitor-exit v0

    return-object v2

    :catchall_8a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getPrimaryKeyColumnName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Id;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/annotation/Table;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/annotation/Table;

    if-eqz v0, :cond_1a

    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_1a

    :cond_15
    invoke-interface {v0}, Lcom/lidroid/xutils/db/annotation/Table;->name()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    :goto_1a
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
