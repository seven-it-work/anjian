.class final Lb/a/a/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/d;


# direct methods
.method constructor <init>(Lb/a/a/d;)V
    .registers 2

    iput-object p1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    iget-boolean v1, v1, Lb/a/a/d;->o:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    iget-boolean v3, v3, Lb/a/a/d;->p:Z

    or-int/2addr v1, v3

    if-eqz v1, :cond_12

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_41

    return-void

    :cond_12
    :try_start_12
    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->g()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_18
    .catchall {:try_start_12 .. :try_end_17} :catchall_41

    goto :goto_1c

    :catch_18
    :try_start_18
    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    iput-boolean v2, v1, Lb/a/a/d;->q:Z
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_41

    :goto_1c
    :try_start_1c
    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->e()Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    invoke-virtual {v1}, Lb/a/a/d;->b()V

    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    const/4 v3, 0x0

    iput v3, v1, Lb/a/a/d;->m:I
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2e} :catch_2f
    .catchall {:try_start_1c .. :try_end_2e} :catchall_41

    goto :goto_3f

    :catch_2f
    :try_start_2f
    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    iput-boolean v2, v1, Lb/a/a/d;->r:Z

    iget-object v1, p0, Lb/a/a/d$1;->a:Lb/a/a/d;

    invoke-static {}, Lc/p;->a()Lc/x;

    move-result-object v2

    invoke-static {v2}, Lc/p;->a(Lc/x;)Lc/d;

    move-result-object v2

    iput-object v2, v1, Lb/a/a/d;->k:Lc/d;

    :cond_3f
    :goto_3f
    monitor-exit v0

    return-void

    :catchall_41
    move-exception v1

    monitor-exit v0
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_41

    throw v1
.end method
