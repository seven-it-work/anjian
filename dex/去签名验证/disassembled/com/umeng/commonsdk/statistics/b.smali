.class public Lcom/umeng/commonsdk/statistics/b;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "Android"

.field public static final b:Ljava/lang/String; = "Android"

.field public static final c:Ljava/lang/String; = "MobclickAgent"

.field public static d:Z = true

.field public static e:[Ljava/lang/String; = null

.field public static final f:Z

.field private static g:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->DEFAULT_URL:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/UMServerURL;->SECONDARY_URL:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/umeng/commonsdk/statistics/b;->e:[Ljava/lang/String;

    sget-boolean v0, Lcom/umeng/commonsdk/statistics/common/e;->a:Z

    sput-boolean v0, Lcom/umeng/commonsdk/statistics/b;->f:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()I
    .registers 2

    const-class v0, Lcom/umeng/commonsdk/statistics/b;

    monitor-enter v0

    :try_start_3
    sget v1, Lcom/umeng/commonsdk/statistics/b;->g:I
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_7

    monitor-exit v0

    return v1

    :catchall_7
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(I)V
    .registers 1

    sput p0, Lcom/umeng/commonsdk/statistics/b;->g:I

    return-void
.end method
