.class public final Lcom/bumptech/glide/load/b/j$c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/b/a$a;

.field private volatile b:Lcom/bumptech/glide/load/b/b/a;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/b/a$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/j$c;->a:Lcom/bumptech/glide/load/b/b/a$a;

    return-void
.end method


# virtual methods
.method public final a()Lcom/bumptech/glide/load/b/b/a;
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;

    if-nez v0, :cond_21

    monitor-enter p0

    :try_start_5
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->a:Lcom/bumptech/glide/load/b/b/a$a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/a$a;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;

    :cond_11
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;

    if-nez v0, :cond_1c

    new-instance v0, Lcom/bumptech/glide/load/b/b/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/b/b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;

    :cond_1c
    monitor-exit p0

    goto :goto_21

    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_5 .. :try_end_20} :catchall_1e

    throw v0

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;

    return-object v0
.end method

.method public final declared-synchronized b()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    iget-object v0, p0, Lcom/bumptech/glide/load/b/j$c;->b:Lcom/bumptech/glide/load/b/b/a;

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/a;->a()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method
