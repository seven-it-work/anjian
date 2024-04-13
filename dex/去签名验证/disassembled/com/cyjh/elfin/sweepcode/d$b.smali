.class public final Lcom/cyjh/elfin/sweepcode/d$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/sweepcode/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field final synthetic b:Lcom/cyjh/elfin/sweepcode/d;

.field private final c:Lnet/sourceforge/zbar/Image;

.field private final d:Lcom/cyjh/elfin/sweepcode/d$a;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;Lcom/cyjh/elfin/sweepcode/d$a;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/d$b;->b:Lcom/cyjh/elfin/sweepcode/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/cyjh/elfin/sweepcode/d$b;->c:Lnet/sourceforge/zbar/Image;

    iput-object p3, p0, Lcom/cyjh/elfin/sweepcode/d$b;->d:Lcom/cyjh/elfin/sweepcode/d$a;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v0, p0, Lcom/cyjh/elfin/sweepcode/d$b;->a:Z

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d$b;->b:Lcom/cyjh/elfin/sweepcode/d;

    iget-object v2, p0, Lcom/cyjh/elfin/sweepcode/d$b;->c:Lnet/sourceforge/zbar/Image;

    iget-object v3, p0, Lcom/cyjh/elfin/sweepcode/d$b;->d:Lcom/cyjh/elfin/sweepcode/d$a;

    invoke-static {v0, v2, v3}, Lcom/cyjh/elfin/sweepcode/d;->a(Lcom/cyjh/elfin/sweepcode/d;Lnet/sourceforge/zbar/Image;Lcom/cyjh/elfin/sweepcode/d$a;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_15
    .catchall {:try_start_5 .. :try_end_10} :catchall_13

    iput-boolean v1, p0, Lcom/cyjh/elfin/sweepcode/d$b;->a:Z

    return-void

    :catchall_13
    move-exception v0

    goto :goto_25

    :catch_15
    move-exception v0

    :try_start_16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d$b;->d:Lcom/cyjh/elfin/sweepcode/d$a;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/d$b;->d:Lcom/cyjh/elfin/sweepcode/d$a;

    invoke-interface {v0}, Lcom/cyjh/elfin/sweepcode/d$a;->a()V
    :try_end_22
    .catchall {:try_start_16 .. :try_end_22} :catchall_13

    :cond_22
    iput-boolean v1, p0, Lcom/cyjh/elfin/sweepcode/d$b;->a:Z

    return-void

    :goto_25
    iput-boolean v1, p0, Lcom/cyjh/elfin/sweepcode/d$b;->a:Z

    throw v0
.end method
