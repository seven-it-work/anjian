.class public Lcom/cyjh/http/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "a"

.field private static b:Lcom/cyjh/http/a/a;


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

.method public static a()Lcom/cyjh/http/a/a;
    .registers 2

    sget-object v0, Lcom/cyjh/http/a/a;->b:Lcom/cyjh/http/a/a;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/a/a;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/a/a;->b:Lcom/cyjh/http/a/a;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/a/a;

    invoke-direct {v1}, Lcom/cyjh/http/a/a;-><init>()V

    sput-object v1, Lcom/cyjh/http/a/a;->b:Lcom/cyjh/http/a/a;

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
    sget-object v0, Lcom/cyjh/http/a/a;->b:Lcom/cyjh/http/a/a;

    return-object v0
.end method

.method public static b()Z
    .registers 3

    const-string v0, "getprop phone.id"

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/cyjh/common/util/ac;->a(Ljava/lang/String;ZI)Lcom/cyjh/common/util/ac$a;

    move-result-object v0

    iget-object v2, v0, Lcom/cyjh/common/util/ac$a;->b:Ljava/lang/String;

    if-eqz v2, :cond_17

    iget-object v0, v0, Lcom/cyjh/common/util/ac$a;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    const/4 v0, 0x1

    return v0

    :cond_17
    return v1
.end method
