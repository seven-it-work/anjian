.class public Lcom/lidroid/xutils/db/sqlite/SqlInfo;
.super Ljava/lang/Object;


# instance fields
.field private bindArgs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private sql:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArgs([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addBindArg(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-static {p1}, Lcom/lidroid/xutils/db/table/ColumnUtils;->convert2DbColumnValueIfNeeded(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addBindArgWithoutConverter(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    :cond_b
    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs addBindArgs([Ljava/lang/Object;)V
    .registers 5

    if-eqz p1, :cond_f

    array-length v0, p1

    const/4 v1, 0x0

    :goto_4
    if-lt v1, v0, :cond_7

    return-void

    :cond_7
    aget-object v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->addBindArg(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method

.method public getBindArgs()Ljava/util/LinkedList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getBindArgsAsArray()[Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBindArgsAsStrArray()[Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_e
    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-lt v2, v3, :cond_17

    return-object v0

    :cond_17
    iget-object v3, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->bindArgs:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_21

    move-object v3, v1

    goto :goto_25

    :cond_21
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_25
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2a
    return-object v1
.end method

.method public getSql()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-object v0
.end method

.method public setSql(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/lidroid/xutils/db/sqlite/SqlInfo;->sql:Ljava/lang/String;

    return-void
.end method
