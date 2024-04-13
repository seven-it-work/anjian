.class public Lcom/cyjh/feedback/lib/d/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/cyjh/feedback/lib/d/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/cyjh/feedback/lib/d/a;
    .registers 2

    sget-object v0, Lcom/cyjh/feedback/lib/d/b;->a:Lcom/cyjh/feedback/lib/d/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/feedback/lib/d/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/feedback/lib/d/b;->a:Lcom/cyjh/feedback/lib/d/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/feedback/lib/d/a;

    invoke-direct {v1}, Lcom/cyjh/feedback/lib/d/a;-><init>()V

    sput-object v1, Lcom/cyjh/feedback/lib/d/b;->a:Lcom/cyjh/feedback/lib/d/a;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/cyjh/feedback/lib/d/b;->a:Lcom/cyjh/feedback/lib/d/a;

    return-object v0
.end method
