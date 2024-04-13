.class Lcom/umeng/commonsdk/stateless/d$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/stateless/d;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/stateless/d;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/stateless/d;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/umeng/commonsdk/stateless/d$2;->a:Lcom/umeng/commonsdk/stateless/d;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x111

    if-eq p1, v0, :cond_f

    const/16 v0, 0x200

    if-eq p1, v0, :cond_b

    return-void

    :cond_b
    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->d()V

    return-void

    :cond_f
    invoke-static {}, Lcom/umeng/commonsdk/stateless/d;->c()V

    return-void
.end method
