.class final Lcom/android/volley/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/c;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/volley/l;

.field final synthetic b:Lcom/android/volley/c;


# direct methods
.method constructor <init>(Lcom/android/volley/c;Lcom/android/volley/l;)V
    .registers 3

    iput-object p1, p0, Lcom/android/volley/c$1;->b:Lcom/android/volley/c;

    iput-object p2, p0, Lcom/android/volley/c$1;->a:Lcom/android/volley/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/volley/c$1;->b:Lcom/android/volley/c;

    invoke-static {v0}, Lcom/android/volley/c;->a(Lcom/android/volley/c;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    iget-object v1, p0, Lcom/android/volley/c$1;->a:Lcom/android/volley/l;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
