.class final Lb/a/a/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/d;->j()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lb/a/a/d$c;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lb/a/a/d$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Lb/a/a/d$c;

.field c:Lb/a/a/d$c;

.field final synthetic d:Lb/a/a/d;


# direct methods
.method constructor <init>(Lb/a/a/d;)V
    .registers 3

    iput-object p1, p0, Lb/a/a/d$3;->d:Lb/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lb/a/a/d$3;->d:Lb/a/a/d;

    iget-object v0, v0, Lb/a/a/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lb/a/a/d$3;->a:Ljava/util/Iterator;

    return-void
.end method

.method private a()Lb/a/a/d$c;
    .registers 2

    invoke-virtual {p0}, Lb/a/a/d$3;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/a/a/d$3;->b:Lb/a/a/d$c;

    iput-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/d$3;->b:Lb/a/a/d$c;

    iget-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    return-object v0
.end method


# virtual methods
.method public final hasNext()Z
    .registers 5

    iget-object v0, p0, Lb/a/a/d$3;->b:Lb/a/a/d$c;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    iget-object v0, p0, Lb/a/a/d$3;->d:Lb/a/a/d;

    monitor-enter v0

    :try_start_9
    iget-object v2, p0, Lb/a/a/d$3;->d:Lb/a/a/d;

    iget-boolean v2, v2, Lb/a/a/d;->p:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_12

    monitor-exit v0

    return v3

    :cond_12
    iget-object v2, p0, Lb/a/a/d$3;->a:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, p0, Lb/a/a/d$3;->a:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/d$b;

    invoke-virtual {v2}, Lb/a/a/d$b;->a()Lb/a/a/d$c;

    move-result-object v2

    if-eqz v2, :cond_12

    iput-object v2, p0, Lb/a/a/d$3;->b:Lb/a/a/d$c;

    monitor-exit v0

    return v1

    :cond_2c
    monitor-exit v0

    return v3

    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_9 .. :try_end_30} :catchall_2e

    throw v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lb/a/a/d$3;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_c
    iget-object v0, p0, Lb/a/a/d$3;->b:Lb/a/a/d$c;

    iput-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    const/4 v0, 0x0

    iput-object v0, p0, Lb/a/a/d$3;->b:Lb/a/a/d$c;

    iget-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    return-object v0
.end method

.method public final remove()V
    .registers 4

    iget-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    if-nez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() before next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    const/4 v0, 0x0

    :try_start_d
    iget-object v1, p0, Lb/a/a/d$3;->d:Lb/a/a/d;

    iget-object v2, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    invoke-static {v2}, Lb/a/a/d$c;->a(Lb/a/a/d$c;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/a/a/d;->b(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_18} :catch_1f
    .catchall {:try_start_d .. :try_end_18} :catchall_1b

    iput-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    return-void

    :catchall_1b
    move-exception v1

    iput-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    throw v1

    :catch_1f
    iput-object v0, p0, Lb/a/a/d$3;->c:Lb/a/a/d$c;

    return-void
.end method
