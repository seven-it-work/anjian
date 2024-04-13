.class public Lcom/cyjh/http/a/b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/a/b$a;,
        Lcom/cyjh/http/a/b$b;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = "b"

.field public static final e:I = 0x3e8

.field public static final f:I = 0x2bf20

.field public static final g:I = 0x6ddd00

.field private static h:Lcom/cyjh/http/a/b;


# instance fields
.field public b:Lcom/cyjh/http/a/b$a;

.field public c:Ljava/util/Timer;

.field public d:Lcom/cyjh/http/a/b$b;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/cyjh/http/a/b;)Lcom/cyjh/http/a/b$a;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/http/a/b;->b:Lcom/cyjh/http/a/b$a;

    return-object p0
.end method

.method public static a()Lcom/cyjh/http/a/b;
    .registers 2

    sget-object v0, Lcom/cyjh/http/a/b;->h:Lcom/cyjh/http/a/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/a/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/a/b;->h:Lcom/cyjh/http/a/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/a/b;

    invoke-direct {v1}, Lcom/cyjh/http/a/b;-><init>()V

    sput-object v1, Lcom/cyjh/http/a/b;->h:Lcom/cyjh/http/a/b;

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
    sget-object v0, Lcom/cyjh/http/a/b;->h:Lcom/cyjh/http/a/b;

    return-object v0
.end method

.method private a(Lcom/cyjh/http/a/b$a;)Lcom/cyjh/http/a/b;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/a/b;->b:Lcom/cyjh/http/a/b$a;

    return-object p0
.end method

.method private c()V
    .registers 9

    sget-object v0, Lcom/cyjh/http/a/b;->a:Ljava/lang/String;

    const-string v1, "startTimer --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    new-instance v0, Lcom/cyjh/http/a/b$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/cyjh/http/a/b$b;-><init>(Lcom/cyjh/http/a/b;B)V

    iput-object v0, p0, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    :cond_1a
    iget-object v2, p0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    iget-object v3, p0, Lcom/cyjh/http/a/b;->d:Lcom/cyjh/http/a/b$b;

    const-wide/32 v4, 0x2bf20

    const-wide/32 v6, 0x6ddd00

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    sget-object v0, Lcom/cyjh/http/a/b;->a:Ljava/lang/String;

    const-string v1, "stopTimer --> "

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cyjh/http/a/b;->c:Ljava/util/Timer;

    :cond_13
    return-void
.end method
