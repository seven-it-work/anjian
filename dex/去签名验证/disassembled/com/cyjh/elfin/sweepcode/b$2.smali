.class final Lcom/cyjh/elfin/sweepcode/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/b$2;->a:Lcom/cyjh/elfin/sweepcode/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b$2;->a:Lcom/cyjh/elfin/sweepcode/b;

    invoke-static {v0}, Lcom/cyjh/elfin/sweepcode/b;->c(Lcom/cyjh/elfin/sweepcode/b;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/cyjh/elfin/sweepcode/b$2;->a:Lcom/cyjh/elfin/sweepcode/b;

    invoke-static {v0}, Lcom/cyjh/elfin/sweepcode/b;->d(Lcom/cyjh/elfin/sweepcode/b;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/sweepcode/b$2;->a:Lcom/cyjh/elfin/sweepcode/b;

    iget-object v1, v1, Lcom/cyjh/elfin/sweepcode/b;->f:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    :cond_15
    return-void
.end method
