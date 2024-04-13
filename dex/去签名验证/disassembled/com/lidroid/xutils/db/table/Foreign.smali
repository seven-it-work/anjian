.class public Lcom/lidroid/xutils/db/table/Foreign;
.super Lcom/lidroid/xutils/db/table/Column;


# instance fields
.field private final foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

.field private final foreignColumnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/lidroid/xutils/db/table/Column;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignColumnNameByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getForeignEntityType()Ljava/lang/Class;

    move-result-object p1

    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object p1

    iget-object p1, p1, Lcom/lidroid/xutils/db/table/Column;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getColumnConverter(Ljava/lang/Class;)Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v0

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    invoke-virtual {p0, p1}, Lcom/lidroid/xutils/db/table/Foreign;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_9c

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    check-cast p1, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {p1}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getColumnValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1c
    const-class v2, Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_79

    :try_start_24
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9c

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_3f} :catch_70

    :try_start_3f
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    if-eqz v0, :cond_64

    instance-of v4, v1, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v4, :cond_64

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4d
    :goto_4d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_54

    goto :goto_64

    :cond_54
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4d

    iget-object v6, v0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v6, v5}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    goto :goto_4d

    :cond_64
    :goto_64
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_6c} :catch_6d

    return-object v0

    :catch_6d
    move-exception p1

    move-object v0, v3

    goto :goto_71

    :catch_70
    move-exception p1

    :goto_71
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0

    :cond_79
    :try_start_79
    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_83
    .catch Ljava/lang/Throwable; {:try_start_79 .. :try_end_83} :catch_70

    :try_start_83
    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Foreign;->getTable()Lcom/lidroid/xutils/db/table/Table;

    move-result-object v0

    if-eqz v0, :cond_94

    if-nez v2, :cond_94

    instance-of v3, v1, Lcom/lidroid/xutils/db/table/Id;

    if-eqz v3, :cond_94

    iget-object v0, v0, Lcom/lidroid/xutils/db/table/Table;->db:Lcom/lidroid/xutils/DbUtils;

    invoke-virtual {v0, p1}, Lcom/lidroid/xutils/DbUtils;->saveOrUpdate(Ljava/lang/Object;)V

    :cond_94
    invoke-virtual {v1, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_98
    .catch Ljava/lang/Throwable; {:try_start_83 .. :try_end_98} :catch_99

    return-object v0

    :catch_99
    move-exception p1

    move-object v0, v2

    goto :goto_71

    :cond_9c
    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getForeignColumnName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getForeignEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getForeignEntityType(Lcom/lidroid/xutils/db/table/Foreign;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 6

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->foreignColumnConverter:Lcom/lidroid/xutils/db/converter/ColumnConverter;

    invoke-interface {v0, p2, p3}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_9

    return-void

    :cond_9
    const/4 p3, 0x0

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    new-instance p3, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {p3, p0, p2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    :goto_1d
    move-object p2, p3

    goto :goto_43

    :cond_1f
    const-class v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    :try_start_27
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v0, p0, p2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getAllFromDb()Ljava/util/List;

    move-result-object p2
    :try_end_30
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_27 .. :try_end_30} :catch_31

    goto :goto_43

    :catch_31
    move-exception p2

    invoke-virtual {p2}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_3a
    :try_start_3a
    new-instance v0, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;

    invoke-direct {v0, p0, p2}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Foreign;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/lidroid/xutils/db/sqlite/ForeignLazyLoader;->getFirstFromDb()Ljava/lang/Object;

    move-result-object p2
    :try_end_43
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_3a .. :try_end_43} :catch_31

    :goto_43
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    if-eqz p3, :cond_5c

    :try_start_48
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Foreign;->setMethod:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5c
    :try_start_5c
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Foreign;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_66
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_66} :catch_53

    return-void
.end method
