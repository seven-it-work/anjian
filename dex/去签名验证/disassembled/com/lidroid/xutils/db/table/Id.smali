.class public Lcom/lidroid/xutils/db/table/Id;
.super Lcom/lidroid/xutils/db/table/Column;


# static fields
.field private static final AUTO_INCREMENT_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INTEGER_TYPES:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private columnFieldClassName:Ljava/lang/String;

.field private isAutoIncrement:Z

.field private isAutoIncrementChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/db/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/lidroid/xutils/db/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    sget-object v0, Lcom/lidroid/xutils/db/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/db/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/db/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    sget-object v1, Lcom/lidroid/xutils/db/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    sget-object v0, Lcom/lidroid/xutils/db/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/lidroid/xutils/db/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    const-class v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

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

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrementChecked:Z

    iput-boolean p1, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement:Z

    iget-object p1, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/lidroid/xutils/db/table/Id;->columnFieldClassName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-super {p0, p1}, Lcom/lidroid/xutils/db/table/Column;->getColumnValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p0}, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement()Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    :cond_24
    return-object v0

    :cond_25
    return-object p1

    :cond_26
    return-object v0
.end method

.method public isAutoIncrement()Z
    .registers 4

    iget-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrementChecked:Z

    if-nez v0, :cond_1f

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrementChecked:Z

    iget-object v1, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    const-class v2, Lcom/lidroid/xutils/db/annotation/NoAutoIncrement;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-nez v1, :cond_1c

    sget-object v1, Lcom/lidroid/xutils/db/table/Id;->AUTO_INCREMENT_TYPES:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Id;->columnFieldClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    iput-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement:Z

    :cond_1f
    iget-boolean v0, p0, Lcom/lidroid/xutils/db/table/Id;->isAutoIncrement:Z

    return v0
.end method

.method public setAutoIncrementId(Ljava/lang/Object;J)V
    .registers 7

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sget-object v1, Lcom/lidroid/xutils/db/table/Id;->INTEGER_TYPES:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/lidroid/xutils/db/table/Id;->columnFieldClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_13
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->setMethod:Ljava/lang/reflect/Method;

    const/4 p3, 0x1

    if-eqz p2, :cond_2c

    :try_start_18
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->setMethod:Ljava/lang/reflect/Method;

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_22} :catch_23

    return-void

    :catch_23
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/lidroid/xutils/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2c
    :try_start_2c
    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p2, p0, Lcom/lidroid/xutils/db/table/Id;->columnField:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p1, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_36} :catch_23

    return-void
.end method
