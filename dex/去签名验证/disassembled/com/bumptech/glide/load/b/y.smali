.class final Lcom/bumptech/glide/load/b/y;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/a/d$a;
.implements Lcom/bumptech/glide/load/b/e;
.implements Lcom/bumptech/glide/load/b/e$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/a/d$a<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/bumptech/glide/load/b/e;",
        "Lcom/bumptech/glide/load/b/e$a;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "SourceGenerator"


# instance fields
.field private final b:Lcom/bumptech/glide/load/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/f<",
            "*>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bumptech/glide/load/b/e$a;

.field private d:I

.field private e:Lcom/bumptech/glide/load/b/b;

.field private f:Ljava/lang/Object;

.field private volatile g:Lcom/bumptech/glide/load/c/n$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/n$a<",
            "*>;"
        }
    .end annotation
.end field

.field private h:Lcom/bumptech/glide/load/b/c;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/f;Lcom/bumptech/glide/load/b/e$a;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/f<",
            "*>;",
            "Lcom/bumptech/glide/load/b/e$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iput-object p2, p0, Lcom/bumptech/glide/load/b/y;->c:Lcom/bumptech/glide/load/b/e$a;

    return-void
.end method

.method private b(Ljava/lang/Object;)V
    .registers 9

    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v0

    :try_start_4
    iget-object v2, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v2, v2, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v2, v2, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/e/a;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v2

    if-eqz v2, :cond_8c

    new-instance v3, Lcom/bumptech/glide/load/b/d;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v4, v4, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    invoke-direct {v3, v2, p1, v4}, Lcom/bumptech/glide/load/b/d;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/j;)V

    new-instance v4, Lcom/bumptech/glide/load/b/c;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v5, v5, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v6, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v6, v6, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    invoke-direct {v4, v5, v6}, Lcom/bumptech/glide/load/b/c;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    iput-object v4, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/f;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    invoke-interface {v4, v5, v3}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/b/a$b;)V

    const-string v3, "SourceGenerator"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_73

    const-string v3, "SourceGenerator"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Finished encoding source to cache, key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", encoder: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", duration: "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v0

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_73
    .catchall {:try_start_4 .. :try_end_73} :catchall_96

    :cond_73
    iget-object p1, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object p1, p1, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p1}, Lcom/bumptech/glide/load/a/d;->b()V

    new-instance p1, Lcom/bumptech/glide/load/b/b;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    invoke-direct {p1, v0, v1, p0}, Lcom/bumptech/glide/load/b/b;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/b/f;Lcom/bumptech/glide/load/b/e$a;)V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/y;->e:Lcom/bumptech/glide/load/b/b;

    return-void

    :cond_8c
    :try_start_8c
    new-instance v0, Lcom/bumptech/glide/m$e;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/bumptech/glide/m$e;-><init>(Ljava/lang/Class;)V

    throw v0
    :try_end_96
    .catchall {:try_start_8c .. :try_end_96} :catchall_96

    :catchall_96
    move-exception p1

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->b()V

    throw p1
.end method

.method private d()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/y;->d:I

    iget-object v1, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v1}, Lcom/bumptech/glide/load/b/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Exception;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lcom/bumptech/glide/load/b/y;->c:Lcom/bumptech/glide/load/b/e$a;

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v0

    invoke-interface {p4, p1, p2, p3, v0}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/a/d<",
            "*>;",
            "Lcom/bumptech/glide/load/a;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->c:Lcom/bumptech/glide/load/b/e$a;

    iget-object p4, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object p4, p4, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {p4}, Lcom/bumptech/glide/load/a/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method public final a(Ljava/lang/Exception;)V
    .registers 6
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->c:Lcom/bumptech/glide/load/b/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v3, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v3}, Lcom/bumptech/glide/load/a/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v3

    invoke-interface {v0, v1, p1, v2, v3}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Exception;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v0, v0, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/i;

    if-eqz p1, :cond_1c

    iget-object v1, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/b/i;->a(Lcom/bumptech/glide/load/a;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iput-object p1, p0, Lcom/bumptech/glide/load/b/y;->f:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bumptech/glide/load/b/y;->c:Lcom/bumptech/glide/load/b/e$a;

    invoke-interface {p1}, Lcom/bumptech/glide/load/b/e$a;->c()V

    return-void

    :cond_1c
    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->c:Lcom/bumptech/glide/load/b/e$a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, v2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v2}, Lcom/bumptech/glide/load/a/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    move-object v2, p1

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/load/b/e$a;->a(Lcom/bumptech/glide/load/g;Ljava/lang/Object;Lcom/bumptech/glide/load/a/d;Lcom/bumptech/glide/load/a;Lcom/bumptech/glide/load/g;)V

    return-void
.end method

.method public final a()Z
    .registers 10

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_a8

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->f:Ljava/lang/Object;

    iput-object v1, p0, Lcom/bumptech/glide/load/b/y;->f:Ljava/lang/Object;

    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v2

    :try_start_d
    iget-object v4, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v4, v4, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iget-object v4, v4, Lcom/bumptech/glide/h;->d:Lcom/bumptech/glide/m;

    iget-object v4, v4, Lcom/bumptech/glide/m;->d:Lcom/bumptech/glide/e/a;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bumptech/glide/e/a;->a(Ljava/lang/Class;)Lcom/bumptech/glide/load/d;

    move-result-object v4

    if-eqz v4, :cond_95

    new-instance v5, Lcom/bumptech/glide/load/b/d;

    iget-object v6, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v6, v6, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    invoke-direct {v5, v4, v0, v6}, Lcom/bumptech/glide/load/b/d;-><init>(Lcom/bumptech/glide/load/d;Ljava/lang/Object;Lcom/bumptech/glide/load/j;)V

    new-instance v6, Lcom/bumptech/glide/load/b/c;

    iget-object v7, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v7, v7, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    iget-object v8, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v8, v8, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    invoke-direct {v6, v7, v8}, Lcom/bumptech/glide/load/b/c;-><init>(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/g;)V

    iput-object v6, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    iget-object v6, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v6}, Lcom/bumptech/glide/load/b/f;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    invoke-interface {v6, v7, v5}, Lcom/bumptech/glide/load/b/b/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/b/a$b;)V

    const-string v5, "SourceGenerator"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_7c

    const-string v5, "SourceGenerator"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Finished encoding source to cache, key: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/bumptech/glide/load/b/y;->h:Lcom/bumptech/glide/load/b/c;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", data: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", encoder: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", duration: "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7c
    .catchall {:try_start_d .. :try_end_7c} :catchall_9f

    :cond_7c
    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->b()V

    new-instance v0, Lcom/bumptech/glide/load/b/b;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v2, v2, Lcom/bumptech/glide/load/c/n$a;->a:Lcom/bumptech/glide/load/g;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    invoke-direct {v0, v2, v3, p0}, Lcom/bumptech/glide/load/b/b;-><init>(Ljava/util/List;Lcom/bumptech/glide/load/b/f;Lcom/bumptech/glide/load/b/e$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/y;->e:Lcom/bumptech/glide/load/b/b;

    goto :goto_a8

    :cond_95
    :try_start_95
    new-instance v1, Lcom/bumptech/glide/m$e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bumptech/glide/m$e;-><init>(Ljava/lang/Class;)V

    throw v1
    :try_end_9f
    .catchall {:try_start_95 .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v1}, Lcom/bumptech/glide/load/a/d;->b()V

    throw v0

    :cond_a8
    :goto_a8
    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->e:Lcom/bumptech/glide/load/b/b;

    const/4 v2, 0x1

    if-eqz v0, :cond_b6

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->e:Lcom/bumptech/glide/load/b/b;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b;->a()Z

    move-result v0

    if-eqz v0, :cond_b6

    return v2

    :cond_b6
    iput-object v1, p0, Lcom/bumptech/glide/load/b/y;->e:Lcom/bumptech/glide/load/b/b;

    iput-object v1, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_bc
    :goto_bc
    if-nez v1, :cond_118

    iget v3, p0, Lcom/bumptech/glide/load/b/y;->d:I

    iget-object v4, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/f;->b()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_ce

    const/4 v3, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v3, 0x0

    :goto_cf
    if-eqz v3, :cond_118

    iget-object v3, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    invoke-virtual {v3}, Lcom/bumptech/glide/load/b/f;->b()Ljava/util/List;

    move-result-object v3

    iget v4, p0, Lcom/bumptech/glide/load/b/y;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/bumptech/glide/load/b/y;->d:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bumptech/glide/load/c/n$a;

    iput-object v3, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v3, :cond_bc

    iget-object v3, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v3, v3, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/i;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v4, v4, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v4}, Lcom/bumptech/glide/load/a/d;->d()Lcom/bumptech/glide/load/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/i;->a(Lcom/bumptech/glide/load/a;)Z

    move-result v3

    if-nez v3, :cond_10b

    iget-object v3, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v4, v4, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v4}, Lcom/bumptech/glide/load/a/d;->a()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/f;->a(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_bc

    :cond_10b
    iget-object v1, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    iget-object v1, v1, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/y;->b:Lcom/bumptech/glide/load/b/f;

    iget-object v3, v3, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    invoke-interface {v1, v3, p0}, Lcom/bumptech/glide/load/a/d;->a(Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/a/d$a;)V

    const/4 v1, 0x1

    goto :goto_bc

    :cond_118
    return v1
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/y;->g:Lcom/bumptech/glide/load/c/n$a;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/bumptech/glide/load/c/n$a;->c:Lcom/bumptech/glide/load/a/d;

    invoke-interface {v0}, Lcom/bumptech/glide/load/a/d;->c()V

    :cond_9
    return-void
.end method

.method public final c()V
    .registers 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
