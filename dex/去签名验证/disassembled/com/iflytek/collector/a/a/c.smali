.class Lcom/iflytek/collector/a/a/c;
.super Ljava/lang/Thread;


# instance fields
.field final synthetic a:Lcom/iflytek/collector/a/a/b;


# direct methods
.method constructor <init>(Lcom/iflytek/collector/a/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/iflytek/collector/a/a/c;->a:Lcom/iflytek/collector/a/a/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    new-instance v0, Lcom/iflytek/collector/a/a/i;

    iget-object v1, p0, Lcom/iflytek/collector/a/a/c;->a:Lcom/iflytek/collector/a/a/b;

    invoke-static {v1}, Lcom/iflytek/collector/a/a/b;->a(Lcom/iflytek/collector/a/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/iflytek/collector/a/a/i;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/iflytek/collector/a/a/i;->run()V

    return-void
.end method
