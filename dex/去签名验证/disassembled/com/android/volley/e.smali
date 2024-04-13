.class public final Lcom/android/volley/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/o;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/volley/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/volley/e$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/e$1;-><init>(Lcom/android/volley/e;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/volley/e;->a:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/Executor;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/volley/e;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/l;Lcom/android/volley/n;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;",
            "Lcom/android/volley/n<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/volley/e;->a(Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;",
            "Lcom/android/volley/n<",
            "*>;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/volley/l;->i:Z

    const-string v0, "post-response"

    invoke-virtual {p1, v0}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/e$a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/volley/e$a;-><init>(Lcom/android/volley/e;Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lcom/android/volley/l;Lcom/android/volley/s;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/l<",
            "*>;",
            "Lcom/android/volley/s;",
            ")V"
        }
    .end annotation

    const-string v0, "post-error"

    invoke-virtual {p1, v0}, Lcom/android/volley/l;->a(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/volley/n;->a(Lcom/android/volley/s;)Lcom/android/volley/n;

    move-result-object p2

    iget-object v0, p0, Lcom/android/volley/e;->a:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/volley/e$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/volley/e$a;-><init>(Lcom/android/volley/e;Lcom/android/volley/l;Lcom/android/volley/n;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
