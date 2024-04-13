.class final Lb/a/k/a$d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lb/a/k/a;


# direct methods
.method constructor <init>(Lb/a/k/a;)V
    .registers 2

    iput-object p1, p0, Lb/a/k/a$d;->a:Lb/a/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lb/a/k/a$d;->a:Lb/a/k/a;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, v0, Lb/a/k/a;->l:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, v0, Lb/a/k/a;->h:Lb/a/k/d;

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_1d

    :try_start_c
    sget-object v2, Lc/f;->EMPTY:Lc/f;

    monitor-enter v1
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_f} :catch_19

    const/16 v3, 0x9

    :try_start_11
    invoke-virtual {v1, v3, v2}, Lb/a/k/d;->a(ILc/f;)V

    monitor-exit v1

    return-void

    :catchall_16
    move-exception v2

    monitor-exit v1
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_16

    :try_start_18
    throw v2
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_19} :catch_19

    :catch_19
    invoke-virtual {v0}, Lb/a/k/a;->k()V

    return-void

    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw v1
.end method
