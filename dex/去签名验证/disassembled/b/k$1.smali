.class final Lb/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/k;


# direct methods
.method constructor <init>(Lb/k;)V
    .registers 2

    iput-object p1, p0, Lb/k$1;->a:Lb/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 9

    :cond_0
    :goto_0
    iget-object v0, p0, Lb/k$1;->a:Lb/k;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lb/k;->a(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    :cond_11
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide/32 v2, 0xf4240

    div-long v4, v0, v2

    mul-long v2, v2, v4

    sub-long v6, v0, v2

    iget-object v0, p0, Lb/k$1;->a:Lb/k;

    monitor-enter v0

    :try_start_23
    iget-object v1, p0, Lb/k$1;->a:Lb/k;

    long-to-int v2, v6

    invoke-virtual {v1, v4, v5, v2}, Ljava/lang/Object;->wait(JI)V
    :try_end_29
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_29} :catch_2c
    .catchall {:try_start_23 .. :try_end_29} :catchall_2a

    goto :goto_2c

    :catchall_2a
    move-exception v1

    goto :goto_2e

    :catch_2c
    :goto_2c
    :try_start_2c
    monitor-exit v0

    goto :goto_0

    :goto_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_2a

    throw v1
.end method
