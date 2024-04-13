.class public final Lcom/cyjh/http/a/b$b;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/http/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/a/b;


# direct methods
.method private constructor <init>(Lcom/cyjh/http/a/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/a/b$b;->a:Lcom/cyjh/http/a/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/cyjh/http/a/b;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/http/a/b$b;-><init>(Lcom/cyjh/http/a/b;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/cyjh/http/a/b$b;->a:Lcom/cyjh/http/a/b;

    invoke-static {v1}, Lcom/cyjh/http/a/b;->a(Lcom/cyjh/http/a/b;)Lcom/cyjh/http/a/b$a;

    move-result-object v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/cyjh/http/a/b$b;->a:Lcom/cyjh/http/a/b;

    invoke-static {v1}, Lcom/cyjh/http/a/b;->a(Lcom/cyjh/http/a/b;)Lcom/cyjh/http/a/b$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/cyjh/http/a/b$a;->a(Landroid/os/Message;)V

    :cond_1a
    return-void
.end method
