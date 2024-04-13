.class public Lcom/umeng/commonsdk/amap/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ContentValues"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "new UMAmapLocation"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_18

    const-string p1, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/MLog;->e(Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/amap/a;->a:Landroid/content/Context;

    :try_start_1e
    const-string p1, "com.amap.api.netlocation.AMapNetworkLocationClient"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    iget-object p1, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    if-eqz p1, :cond_42

    iget-object p1, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    new-array v0, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/umeng/commonsdk/amap/a;->a:Landroid/content/Context;

    aput-object v2, v0, v4

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/umeng/commonsdk/amap/a;->c:Ljava/lang/Object;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_42} :catch_43

    :cond_42
    return-void

    :catch_43
    move-exception p1

    const-string v0, "ContentValues"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new UMAmapLocation e is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public declared-synchronized b()[B
    .registers 8

    monitor-enter p0

    :try_start_1
    const-string v0, "ContentValues"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UMAmapLocation getNetworkLocationParameter"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_49

    const/4 v0, 0x0

    :try_start_f
    iget-object v2, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/umeng/commonsdk/amap/a;->c:Ljava/lang/Object;

    if-eqz v2, :cond_47

    iget-object v2, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    const-string v3, "getNetworkLocationParameter"

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_47

    iget-object v3, p0, Lcom/umeng/commonsdk/amap/a;->c:Ljava/lang/Object;

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_2d} :catch_2f
    .catchall {:try_start_f .. :try_end_2d} :catchall_49

    move-object v0, v2

    goto :goto_47

    :catch_2f
    move-exception v2

    :try_start_30
    const-string v3, "ContentValues"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "getNetworkLocationParameter e is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v3, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_47
    .catchall {:try_start_30 .. :try_end_47} :catchall_49

    :cond_47
    :goto_47
    monitor-exit p0

    return-object v0

    :catchall_49
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized c()V
    .registers 7

    monitor-enter p0

    :try_start_1
    const-string v0, "ContentValues"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "UMAmapLocation destory"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_45

    :try_start_e
    iget-object v0, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/umeng/commonsdk/amap/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/umeng/commonsdk/amap/a;->b:Ljava/lang/Class;

    const-string v2, "destroy"

    new-array v3, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_29

    iget-object v2, p0, Lcom/umeng/commonsdk/amap/a;->c:Ljava/lang/Object;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_29} :catch_2b
    .catchall {:try_start_e .. :try_end_29} :catchall_45

    :cond_29
    monitor-exit p0

    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    const-string v2, "ContentValues"

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "UMAmapLocation destory e is "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/statistics/common/e;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_43
    .catchall {:try_start_2c .. :try_end_43} :catchall_45

    monitor-exit p0

    return-void

    :catchall_45
    move-exception v0

    monitor-exit p0

    throw v0
.end method
