.class final Lcom/cyjh/elfin/sweepcode/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/sweepcode/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/sweepcode/b;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/sweepcode/b;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/b$1;->a:Lcom/cyjh/elfin/sweepcode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 5

    iget-object p1, p0, Lcom/cyjh/elfin/sweepcode/b$1;->a:Lcom/cyjh/elfin/sweepcode/b;

    invoke-static {p1}, Lcom/cyjh/elfin/sweepcode/b;->b(Lcom/cyjh/elfin/sweepcode/b;)Landroid/os/Handler;

    move-result-object p1

    iget-object p2, p0, Lcom/cyjh/elfin/sweepcode/b$1;->a:Lcom/cyjh/elfin/sweepcode/b;

    invoke-static {p2}, Lcom/cyjh/elfin/sweepcode/b;->a(Lcom/cyjh/elfin/sweepcode/b;)Ljava/lang/Runnable;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
