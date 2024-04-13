.class public Lcom/lidroid/xutils/db/table/Finder;
.super Lcom/lidroid/xutils/db/table/Column;


# instance fields
.field private final targetColumnName:Ljava/lang/String;

.field private final valueColumnName:Ljava/lang/String;


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

    const-class p1, Lcom/lidroid/xutils/db/annotation/Finder;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/lidroid/xutils/db/annotation/Finder;

    invoke-interface {p1}, Lcom/lidroid/xutils/db/annotation/Finder;->valueColumn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/lidroid/xutils/db/table/Finder;->valueColumnName:Ljava/lang/String;

    invoke-interface {p1}, Lcom/lidroid/xutils/db/annotation/Finder;->targetColumn()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Finder;->targetColumnName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnDbType()Lcom/lidroid/xutils/db/sqlite/ColumnDbType;
    .registers 2

    sget-object v0, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method

.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method public getDefaultValue()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetColumnName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Finder;->targetColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetEntityType()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/lidroid/xutils/db/table/ColumnUtils;->getFinderTargetEntityType(Lcom/lidroid/xutils/db/table/Finder;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    .registers 6

    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    iget-object v0, p0, Lcom/lidroid/xutils/db/table/Finder;->valueColumnName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/lidroid/xutils/db/table/TableUtils;->getColumnOrId(Ljava/lang/Class;Ljava/lang/String;)Lcom/lidroid/xutils/db/table/Column;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    const-class v0, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    new-instance p2, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {p2, p0, p3}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    goto :goto_48

    :cond_22
    const-class v0, Ljava/util/List;

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3d

    :try_start_2a
    new-instance p2, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {p2, p0, p3}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->getAllFromDb()Ljava/util/List;

    move-result-object p2
    :try_end_33
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_2a .. :try_end_33} :catch_34

    goto :goto_48

    :catch_34
    move-exception p2

    invoke-virtual {p2}, Lcom/lidroid/xutils/exception/DbException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_47

    :cond_3d
    :try_start_3d
    new-instance p2, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;

    invoke-direct {p2, p0, p3}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;-><init>(Lcom/lidroid/xutils/db/table/Finder;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/lidroid/xutils/db/sqlite/FinderLazyLoader;->getFirstFromDb()Ljava/lang/Object;

    move-result-object p2
    :try_end_46
    .catch Lcom/lidroid/xutils/exception/DbException; {:try_start_3d .. :try_end_46} :catch_34

    goto :goto_48

    :goto_47
    const/4 p2, 0x0

    :goto_48
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    if-eqz p3, :cond_61

    :try_start_4d
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->setMethod:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_57
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_57} :catch_58

    return-void

    :catch_58
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_61
    :try_start_61
    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Finder;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p3, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_6b
    .catch Ljava/lang/Throwable; {:try_start_61 .. :try_end_6b} :catch_58

    return-void
.end method
