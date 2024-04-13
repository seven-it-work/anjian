.class public Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCreateTableSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p0

    iget-object p1, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ( "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\"  INTEGER PRIMARY KEY AUTOINCREMENT,"

    :goto_2e
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4d

    :cond_32
    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, " PRIMARY KEY,"

    goto :goto_2e

    :goto_4d
    iget-object p0, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_57
    :goto_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_75

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_75
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidroid/xutils/db/table/Column;

    instance-of v1, p1, Lcom/lidroid/xutils/db/table/Finder;

    if-nez v1, :cond_57

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\"  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isUnique(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_a6

    const-string v1, " UNIQUE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_a6
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/table/ColumnUtils;->isNotNull(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_b5

    const-string v1, " NOT NULL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_b5
    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnField()Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getCheck(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_cc

    const-string v1, " CHECK("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_cc
    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_57
.end method

.method private static buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/lidroid/xutils/db/sqlite/WhereBuilder;",
            ")",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_23

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result p0

    if-lez p0, :cond_23

    const-string p0, " WHERE "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_23
    new-instance p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/lidroid/xutils/db/sqlite/SqlInfo;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p0

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    if-nez p2, :cond_26

    new-instance p0, Lcom/lidroid/xutils/exception/DbException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "this entity["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]\'s id value is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_26
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " WHERE "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    invoke-static {p0, v1, p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildDeleteSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p0

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_32

    new-instance p0, Lcom/lidroid/xutils/exception/DbException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "this entity["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]\'s id value is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_32
    new-instance p1, Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-static {p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->buildDeleteSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, " WHERE "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "="

    invoke-static {p0, v1, v2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object v0
.end method

.method public static buildInsertSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "INSERT INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p1, ") VALUES ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 p0, 0x0

    :goto_48
    if-lt p0, v2, :cond_60

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object v0

    :cond_60
    const-string p1, "?,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_48

    :cond_68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/db/table/KeyValue;

    iget-object v3, v2, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_2f
.end method

.method public static buildReplaceSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return-object p0

    :cond_c
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "REPLACE INTO "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_68

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p1, ") VALUES ("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    const/4 p0, 0x0

    :goto_48
    if-lt p0, v2, :cond_60

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object v0

    :cond_60
    const-string p1, "?,"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, p0, 0x1

    goto :goto_48

    :cond_68
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lidroid/xutils/db/table/KeyValue;

    iget-object v3, v2, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, v2, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_2f
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;Lcom/lidroid/xutils/db/sqlite/WhereBuilder;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    if-eqz p3, :cond_1a

    array-length v0, p3

    if-lez v0, :cond_1a

    new-instance v1, Ljava/util/HashSet;

    array-length v0, p3

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/TableUtils;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {p3}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, "UPDATE "

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " SET "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3a
    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_65

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    if-eqz p2, :cond_5d

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->getWhereItemSize()I

    move-result p0

    if-lez p0, :cond_5d

    const-string p0, " WHERE "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5d
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object p3

    :cond_65
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidroid/xutils/db/table/KeyValue;

    if-eqz v1, :cond_75

    iget-object v2, p1, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_75
    iget-object v2, p1, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "=?,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p1, p1, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {p3, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_3a
.end method

.method public static varargs buildUpdateSqlInfo(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;[Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/SqlInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lidroid/xutils/exception/DbException;
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    return-object v2

    :cond_c
    if-eqz p2, :cond_1a

    array-length v1, p2

    if-lez v1, :cond_1a

    new-instance v2, Ljava/util/HashSet;

    array-length v1, p2

    invoke-direct {v2, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-static {v2, p2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :cond_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p0

    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {p2, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_47

    new-instance p0, Lcom/lidroid/xutils/exception/DbException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "this entity["

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]\'s id value is null"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/lidroid/xutils/exception/DbException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_47
    new-instance p1, Lcom/lidroid/xutils/db/sqlite/SqlInfo;

    invoke-direct {p1}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;-><init>()V

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "UPDATE "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/lidroid/xutils/db/table/Table;->tableName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " SET "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_61
    :goto_61
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8a

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p0, " WHERE "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object p0

    const-string p2, "="

    invoke-static {p0, p2, v1}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->setSql(Ljava/lang/String;)V

    return-object p1

    :cond_8a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lidroid/xutils/db/table/KeyValue;

    if-eqz v2, :cond_9a

    iget-object v4, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    :cond_9a
    iget-object v4, v0, Lcom/lidroid/xutils/db/table/KeyValue;->key:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "=?,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/KeyValue;->value:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgWithoutConverter(Ljava/lang/Object;)V

    goto :goto_61
.end method

.method private static column2KeyValue(Ljava/lang/Object;Lcom/lidroid/xutils/db/table/Column;)Lcom/lidroid/xutils/db/table/KeyValue;
    .registers 3

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {p1, p0}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_10

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/table/Column;->getDefaultValue()Ljava/lang/Object;

    move-result-object p0

    :cond_10
    new-instance p1, Lcom/lidroid/xutils/db/table/KeyValue;

    invoke-direct {p1, v0, p0}, Lcom/lidroid/xutils/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object p1

    :cond_16
    const/4 p1, 0x0

    return-object p1
.end method

.method public static entity2KeyValueList(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Object;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/lidroid/xutils/db/table/KeyValue;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p0

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v2

    if-nez v2, :cond_25

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/db/table/Id;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/lidroid/xutils/db/table/KeyValue;

    invoke-virtual {v1}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1, v2}, Lcom/lidroid/xutils/db/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    iget-object p0, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_36

    return-object v0

    :cond_36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/db/table/Column;

    instance-of v2, v1, Lcom/lidroid/xutils/db/table/Finder;

    if-nez v2, :cond_2f

    invoke-static {p1, v1}, Lcom/lidroid/xutils/db/sqlite/SqlInfoBuilder;->column2KeyValue(Ljava/lang/Object;Lcom/lidroid/xutils/db/table/Column;)Lcom/lidroid/xutils/db/table/KeyValue;

    move-result-object v1

    if-eqz v1, :cond_2f

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2f
.end method
