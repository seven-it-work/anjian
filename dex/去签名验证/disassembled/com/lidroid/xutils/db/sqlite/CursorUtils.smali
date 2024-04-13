.class public Lcom/lidroid/xutils/db/sqlite/CursorUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;,
        Lcom/lidroid/xutils/db/sqlite/CursorUtils$FindCacheSequence;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/lidroid/xutils/db/table/DbModel;
    .registers 6

    if-eqz p0, :cond_1d

    new-instance v0, Lcom/lidroid/xutils/db/table/DbModel;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/table/DbModel;-><init>()V

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_c
    if-lt v2, v1, :cond_f

    return-object v0

    :cond_f
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/lidroid/xutils/db/table/DbModel;->add(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_1d
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getEntity(Lcom/lidroid/xutils/DbUtils;Landroid/database/Cursor;Ljava/lang/Class;J)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/lidroid/xutils/DbUtils;",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class<",
            "TT;>;J)TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_75

    if-nez p1, :cond_6

    return-object v0

    :cond_6
    invoke-static {p3, p4}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->setSeq(J)V

    :try_start_9
    invoke-static {p0, p2}, Lcom/lidroid/xutils/db/table/Table;->get(Lcom/lidroid/xutils/DbUtils;Ljava/lang/Class;)Lcom/lidroid/xutils/db/table/Table;

    move-result-object p0

    iget-object p3, p0, Lcom/lidroid/xutils/db/table/Table;->id:Lcom/lidroid/xutils/db/table/Id;

    invoke-virtual {p3}, Lcom/lidroid/xutils/db/table/Id;->getColumnName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Lcom/lidroid/xutils/db/table/Id;->getIndex()I

    move-result v1

    if-gez v1, :cond_1d

    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    :cond_1d
    invoke-virtual {p3}, Lcom/lidroid/xutils/db/table/Id;->getColumnConverter()Lcom/lidroid/xutils/db/converter/ColumnConverter;

    move-result-object p4

    invoke-interface {p4, p1, v1}, Lcom/lidroid/xutils/db/converter/ColumnConverter;->getFieldValue(Landroid/database/Cursor;I)Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->get(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_6c

    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2, p1, v1}, Lcom/lidroid/xutils/db/table/Id;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    invoke-static {p2, p4, v2}, Lcom/lidroid/xutils/db/sqlite/CursorUtils$EntityTempCache;->put(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result p2

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_3b
    if-lt p4, p2, :cond_58

    iget-object p0, p0, Lcom/lidroid/xutils/db/table/Table;->finderMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_47
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4e

    return-object v2

    :cond_4e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/lidroid/xutils/db/table/Finder;

    invoke-virtual {p1, v2, v0, p3}, Lcom/lidroid/xutils/db/table/Finder;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V

    goto :goto_47

    :cond_58
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/lidroid/xutils/db/table/Table;->columnMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lidroid/xutils/db/table/Column;

    if-eqz v1, :cond_69

    invoke-virtual {v1, v2, p1, p4}, Lcom/lidroid/xutils/db/table/Column;->setValue2Entity(Ljava/lang/Object;Landroid/database/Cursor;I)V
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_69} :catch_6d

    :cond_69
    add-int/lit8 p4, p4, 0x1

    goto :goto_3b

    :cond_6c
    return-object v2

    :catch_6d
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_75
    return-object v0
.end method
