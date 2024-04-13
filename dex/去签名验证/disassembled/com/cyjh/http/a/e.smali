.class public Lcom/cyjh/http/a/e;
.super Ljava/lang/Object;


# static fields
.field private static b:Ljava/lang/String; = "e"

.field private static c:Lcom/cyjh/http/a/e;


# instance fields
.field public a:I


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

.method public static a()Lcom/cyjh/http/a/e;
    .registers 2

    sget-object v0, Lcom/cyjh/http/a/e;->c:Lcom/cyjh/http/a/e;

    if-nez v0, :cond_17

    const-class v0, Lcom/cyjh/http/a/e;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/cyjh/http/a/e;->c:Lcom/cyjh/http/a/e;

    if-nez v1, :cond_12

    new-instance v1, Lcom/cyjh/http/a/e;

    invoke-direct {v1}, Lcom/cyjh/http/a/e;-><init>()V

    sput-object v1, Lcom/cyjh/http/a/e;->c:Lcom/cyjh/http/a/e;

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
    sget-object v0, Lcom/cyjh/http/a/e;->c:Lcom/cyjh/http/a/e;

    return-object v0
.end method

.method private a(I)Lcom/cyjh/http/a/e;
    .registers 5

    sget-object v0, Lcom/cyjh/http/a/e;->b:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "init --> redFingerSwitch="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    iput p1, p0, Lcom/cyjh/http/a/e;->a:I

    return-object p0
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "com.redfinger.appstore"

    invoke-static {p1, v0}, Lcom/cyjh/http/e/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/cyjh/http/a/e;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    return v0

    :cond_e
    const/4 p1, 0x0

    return p1
.end method
