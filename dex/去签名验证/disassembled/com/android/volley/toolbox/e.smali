.class public final Lcom/android/volley/toolbox/e;
.super Lcom/android/volley/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/l<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Lcom/android/volley/b;

.field private final n:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>(Lcom/android/volley/b;Ljava/lang/Runnable;)V
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/android/volley/l;-><init>(ILjava/lang/String;Lcom/android/volley/n$a;)V

    iput-object p1, p0, Lcom/android/volley/toolbox/e;->m:Lcom/android/volley/b;

    iput-object p2, p0, Lcom/android/volley/toolbox/e;->n:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/volley/i;)Lcom/android/volley/n;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 2

    return-void
.end method

.method public final a()Z
    .registers 3

    iget-object v0, p0, Lcom/android/volley/toolbox/e;->m:Lcom/android/volley/b;

    invoke-interface {v0}, Lcom/android/volley/b;->b()V

    iget-object v0, p0, Lcom/android/volley/toolbox/e;->n:Ljava/lang/Runnable;

    if-eqz v0, :cond_17

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/android/volley/toolbox/e;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_17
    const/4 v0, 0x1

    return v0
.end method

.method public final h()Lcom/android/volley/l$b;
    .registers 2

    sget-object v0, Lcom/android/volley/l$b;->IMMEDIATE:Lcom/android/volley/l$b;

    return-object v0
.end method
