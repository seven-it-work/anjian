.class public Lcom/lidroid/xutils/db/table/Table;
.super Ljava/lang/Object;


# static fields
.field private static final tableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Table;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private checkedDatabase:Z

.field public final columnMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Column;",
            ">;"
        }
    .end annotation
.end field

.field public final db:Lcom/lidroid/xutils/DbUtils;

.field public final finderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/lidroid/xutils/db/table/Finder;",
            ">;"
        }
    .end annotation
.end field

.field public final id:Lcom/lidroid/xutils/db/table/Id;

.field public final tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getId(Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Id;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-static {p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnMap(Ljava/lang/Class;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_28
    :goto_28
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_2f

    return-void

    :cond_2f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/lidroid/xutils/db/table/Column;

    invoke-virtual {p2, p0}, Lcom/lidroid/xutils/db/table/Column;->setTable(Lcom/lidroid/xutils/db/table/Table;)V

    instance-of v0, p2, Lcom/lidroid/xutils/db/table/Finder;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v1

    check-cast p2, Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28
.end method

.method public static declared-synchronized get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/lidroid/xutils/db/table/Table;"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/db/table/Table;

    if-nez v2, :cond_38

    new-instance v2, Lcom/lidroid/xutils/db/table/Table;

    invoke-direct {v2, p0, p1}, Lcom/lidroid/xutils/db/table/Table;-><init>(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V

    sget-object p0, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    :cond_38
    monitor-exit v0

    return-object v2

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-class v0, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object p0

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "#"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized remove(Lcom/lidroid/xutils/DbUtils;Ljava/lang/String;)V
    .registers 7

    const-class v0, Lcom/lidroid/xutils/db/table/Table;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_65

    const/4 v1, 0x0

    sget-object v2, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_16
    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_5a

    :cond_1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/lidroid/xutils/db/table/Table;

    if-eqz v4, :cond_16

    iget-object v4, v4, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/lidroid/xutils/DbUtils;->getDaoConfig()Lcom/lidroid/xutils/DbUtils$DaoConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lidroid/xutils/DbUtils$DaoConfig;->getDbName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5a

    goto :goto_16

    :cond_5a
    :goto_5a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_65

    sget-object p0, Lcom/lidroid/xutils/db/table/Table;->tableMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catchall {:try_start_3 .. :try_end_65} :catchall_67

    :cond_65
    monitor-exit v0

    return-void

    :catchall_67
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public isCheckedDatabase()Z
    .registers 2

    iget-boolean v0, p0, Lcom/lidroid/xutils/db/table/Table;->checkedDatabase:Z

    return v0
.end method

.method public setCheckedDatabase(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/lidroid/xutils/db/table/Table;->checkedDatabase:Z

    return-void
.end method
