.class final Lb/ab$a;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/ab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/ab;

.field private final c:Lb/f;


# direct methods
.method constructor <init>(Lb/ab;Lb/f;)V
    .registers 6

    iput-object p1, p0, Lb/ab$a;->a:Lb/ab;

    const-string v0, "OkHttp %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1}, Lb/ab;->g()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p2, p0, Lb/ab$a;->c:Lb/f;

    return-void
.end method

.method private c()Lb/ac;
    .registers 2

    iget-object v0, p0, Lb/ab$a;->a:Lb/ab;

    iget-object v0, v0, Lb/ab;->d:Lb/ac;

    return-object v0
.end method

.method private d()Lb/ab;
    .registers 2

    iget-object v0, p0, Lb/ab$a;->a:Lb/ab;

    return-object v0
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/ab$a;->a:Lb/ab;

    iget-object v0, v0, Lb/ab;->d:Lb/ac;

    iget-object v0, v0, Lb/ac;->a:Lb/v;

    iget-object v0, v0, Lb/v;->l:Ljava/lang/String;

    return-object v0
.end method

.method protected final b()V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    iget-object v2, p0, Lb/ab$a;->a:Lb/ab;

    invoke-virtual {v2}, Lb/ab;->h()Lb/ae;

    move-result-object v2

    iget-object v3, p0, Lb/ab$a;->a:Lb/ab;

    iget-object v3, v3, Lb/ab;->b:Lb/a/d/j;

    iget-boolean v3, v3, Lb/a/d/j;->c:Z
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_32
    .catchall {:try_start_2 .. :try_end_e} :catchall_30

    if-eqz v3, :cond_1f

    :try_start_10
    iget-object v1, p0, Lb/ab$a;->c:Lb/f;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lb/f;->a(Ljava/io/IOException;)V

    goto :goto_26

    :catch_1d
    move-exception v1

    goto :goto_35

    :cond_1f
    iget-object v1, p0, Lb/ab$a;->c:Lb/f;

    iget-object v3, p0, Lb/ab$a;->a:Lb/ab;

    invoke-interface {v1, v3, v2}, Lb/f;->a(Lb/e;Lb/ae;)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_26} :catch_1d
    .catchall {:try_start_10 .. :try_end_26} :catchall_30

    :goto_26
    iget-object v0, p0, Lb/ab$a;->a:Lb/ab;

    iget-object v0, v0, Lb/ab;->a:Lb/z;

    iget-object v0, v0, Lb/z;->c:Lb/p;

    invoke-virtual {v0, p0}, Lb/p;->b(Lb/ab$a;)V

    return-void

    :catchall_30
    move-exception v0

    goto :goto_85

    :catch_32
    move-exception v0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_35
    if-eqz v0, :cond_7f

    :try_start_37
    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v0

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Callback failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lb/ab$a;->a:Lb/ab;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lb/ab;->b:Lb/a/d/j;

    iget-boolean v6, v6, Lb/a/d/j;->c:Z

    if-eqz v6, :cond_53

    const-string v6, "canceled "

    goto :goto_55

    :cond_53
    const-string v6, ""

    :goto_55
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, v4, Lb/ab;->e:Z

    if-eqz v6, :cond_5f

    const-string v6, "web socket"

    goto :goto_61

    :cond_5f
    const-string v6, "call"

    :goto_61
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lb/ab;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Lb/a/h/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_26

    :cond_7f
    iget-object v0, p0, Lb/ab$a;->c:Lb/f;

    invoke-interface {v0, v1}, Lb/f;->a(Ljava/io/IOException;)V
    :try_end_84
    .catchall {:try_start_37 .. :try_end_84} :catchall_30

    goto :goto_26

    :goto_85
    iget-object v1, p0, Lb/ab$a;->a:Lb/ab;

    iget-object v1, v1, Lb/ab;->a:Lb/z;

    iget-object v1, v1, Lb/z;->c:Lb/p;

    invoke-virtual {v1, p0}, Lb/p;->b(Lb/ab$a;)V

    throw v0
.end method
