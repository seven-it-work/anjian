.class public final Lcom/hlzn/socketclient/f/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/Object;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/f/b;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()J
    .registers 7

    sget-object v0, Lcom/hlzn/socketclient/f/b;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-wide v1, Lcom/hlzn/socketclient/f/b;->b:J

    const-wide/16 v3, 0x1

    add-long v5, v1, v3

    sput-wide v5, Lcom/hlzn/socketclient/f/b;->b:J

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_f

    sget-wide v0, Lcom/hlzn/socketclient/f/b;->b:J

    return-wide v0

    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v1
.end method
