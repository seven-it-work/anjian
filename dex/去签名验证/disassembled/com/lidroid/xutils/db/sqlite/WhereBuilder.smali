.class public Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final whereItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    return-void
.end method

.method private appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!="

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    const-string p3, "<>"

    goto :goto_45

    :cond_3b
    const-string p1, "=="

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    const-string p3, "="

    :cond_45
    :goto_45
    if-nez p4, :cond_75

    const-string p1, "="

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_56

    const-string p1, " IS NULL"

    :goto_51
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_243

    :cond_56
    const-string p1, "<>"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_61

    const-string p1, " IS NOT NULL"

    goto :goto_51

    :cond_61
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " NULL"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_51

    :cond_75
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "IN"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v3, 0x27

    if-eqz p1, :cond_13a

    instance-of p1, p4, Ljava/lang/Iterable;

    if-eqz p1, :cond_a0

    move-object v1, p4

    check-cast v1, Ljava/lang/Iterable;

    goto :goto_c1

    :cond_a0
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_c1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    :goto_b3
    if-lt p2, p3, :cond_b7

    move-object v1, p1

    goto :goto_c1

    :cond_b7
    invoke-static {p4, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_b3

    :cond_c1
    :goto_c1
    if-eqz v1, :cond_132

    new-instance p1, Ljava/lang/StringBuffer;

    const-string p2, "("

    invoke-direct {p1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_ce
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_e8

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_51

    :cond_e8
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    invoke-static {p3}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object p4, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_129

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    if-eq p4, v2, :cond_112

    const-string p4, "\'"

    const-string v1, "\'\'"

    invoke-virtual {p3, p4, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    :cond_112
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_12c

    :cond_129
    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    :goto_12c
    const-string p3, ","

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_ce

    :cond_132
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value must be an Array or an Iterable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13a
    const-string p1, "BETWEEN"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_205

    instance-of p1, p4, Ljava/lang/Iterable;

    if-eqz p1, :cond_14a

    move-object v1, p4

    check-cast v1, Ljava/lang/Iterable;

    goto :goto_16b

    :cond_14a
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_16b

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result p3

    :goto_15d
    if-lt p2, p3, :cond_161

    move-object v1, p1

    goto :goto_16b

    :cond_161
    invoke-static {p4, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_15d

    :cond_16b
    :goto_16b
    if-eqz v1, :cond_1fd

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_17f

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value must have tow items."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17f
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_191

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value must have tow items."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_191
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p3, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-static {p4}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object p4

    invoke-virtual {p3, p4}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1f4

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-eq p3, v2, :cond_1bf

    const-string p3, "\'"

    const-string p4, "\'\'"

    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    :cond_1bf
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p3

    if-eq p3, v2, :cond_1d1

    const-string p3, "\'"

    const-string p4, "\'\'"

    invoke-virtual {p1, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1d1
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "\'"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_232

    :cond_1f4
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " AND "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_240

    :cond_1fd
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "value must be an Array or an Iterable."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_205
    invoke-static {p4}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->TEXT:Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-static {p3}, Lcom/lidroid/xutils/db/converter/ColumnConverterFactory;->getDbColumnType(Ljava/lang/Class;)Lcom/lidroid/xutils/db/sqlite/ColumnDbType;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/lidroid/xutils/db/sqlite/ColumnDbType;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_240

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-eq p2, v2, :cond_22b

    const-string p2, "\'"

    const-string p3, "\'\'"

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_22b
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_232
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_51

    :cond_240
    :goto_240
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_243
    iget-object p1, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static b()Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .registers 1

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;-><init>()V

    return-object v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .registers 5

    new-instance v0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;

    invoke-direct {v0}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    const-string v0, "AND"

    :goto_c
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public expr(Ljava/lang/String;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public expr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public getWhereItemSize()I
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public or(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/lidroid/xutils/db/sqlite/WhereBuilder;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_c

    :cond_a
    const-string v0, "OR"

    :goto_c
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->appendCondition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/lidroid/xutils/db/sqlite/WhereBuilder;->whereItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16
.end method
