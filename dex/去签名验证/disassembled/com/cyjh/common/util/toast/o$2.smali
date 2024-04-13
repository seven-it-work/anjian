.class final Lcom/cyjh/common/util/toast/o$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/o;->c(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;JJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/ExecutorService;

.field final synthetic b:Lcom/cyjh/common/util/toast/o$d;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/cyjh/common/util/toast/o$d;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/common/util/toast/o$2;->a:Ljava/util/concurrent/ExecutorService;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/o$2;->b:Lcom/cyjh/common/util/toast/o$d;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/common/util/toast/o$2;->a:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/o$2;->b:Lcom/cyjh/common/util/toast/o$d;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
