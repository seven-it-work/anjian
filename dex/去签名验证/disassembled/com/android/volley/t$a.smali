.class final Lcom/android/volley/t$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/volley/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/t$a$a;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static final b:J


# instance fields
.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/volley/t$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/android/volley/t;->b:Z

    sput-boolean v0, Lcom/android/volley/t$a;->a:Z

    return-void
.end method

.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/volley/t$a;->d:Z

    return-void
.end method

.method private a()J
    .registers 7

    iget-object v0, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_b
    iget-object v0, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/t$a$a;

    iget-wide v0, v0, Lcom/android/volley/t$a$a;->c:J

    iget-object v2, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/volley/t$a$a;

    iget-wide v2, v2, Lcom/android/volley/t$a$a;->c:J

    sub-long v4, v2, v0

    return-wide v4
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)V
    .registers 14

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/volley/t$a;->d:Z

    iget-object v1, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_11

    move-wide v9, v2

    goto :goto_2f

    :cond_11
    iget-object v1, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/t$a$a;

    iget-wide v5, v1, Lcom/android/volley/t$a$a;->c:J

    iget-object v1, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    iget-object v7, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/t$a$a;

    iget-wide v7, v1, Lcom/android/volley/t$a$a;->c:J
    :try_end_2c
    .catchall {:try_start_2 .. :try_end_2c} :catchall_84

    const/4 v1, 0x0

    sub-long v9, v7, v5

    :goto_2f
    cmp-long v1, v9, v2

    if-gtz v1, :cond_35

    monitor-exit p0

    return-void

    :cond_35
    :try_start_35
    iget-object v1, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/volley/t$a$a;

    iget-wide v1, v1, Lcom/android/volley/t$a$a;->c:J

    const-string v3, "(%-4d ms) %s"

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v4

    aput-object p1, v6, v0

    invoke-static {v3, v6}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_82

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/volley/t$a$a;

    iget-wide v6, v3, Lcom/android/volley/t$a$a;->c:J

    const-string v8, "(+%-4d) [%2d] %s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    sub-long v10, v6, v1

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v4

    iget-wide v1, v3, Lcom/android/volley/t$a$a;->b:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v9, v0

    iget-object v1, v3, Lcom/android/volley/t$a$a;->a:Ljava/lang/String;

    aput-object v1, v9, v5

    invoke-static {v8, v9}, Lcom/android/volley/t;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_80
    .catchall {:try_start_35 .. :try_end_80} :catchall_84

    move-wide v1, v6

    goto :goto_55

    :cond_82
    monitor-exit p0

    return-void

    :catchall_84
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/String;J)V
    .registers 12

    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/volley/t$a;->d:Z

    if-eqz v0, :cond_d

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Marker added to finished log"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iget-object v0, p0, Lcom/android/volley/t$a;->c:Ljava/util/List;

    new-instance v7, Lcom/android/volley/t$a$a;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v1, v7

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/volley/t$a$a;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected final finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/volley/t$a;->d:Z

    if-nez v0, :cond_11

    const-string v0, "Request on the loose"

    invoke-virtual {p0, v0}, Lcom/android/volley/t$a;->a(Ljava/lang/String;)V

    const-string v0, "Marker log finalized without finish() - uncaught exit point for request"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/volley/t;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_11
    return-void
.end method
