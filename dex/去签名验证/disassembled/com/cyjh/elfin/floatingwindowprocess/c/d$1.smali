.class final Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/c/d;->a(Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Vibrator;

.field final synthetic b:Lcom/cyjh/elfin/floatingwindowprocess/b/a;

.field final synthetic c:Lcom/cyjh/elfin/floatingwindowprocess/c/d;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/c/d;Landroid/os/Vibrator;Lcom/cyjh/elfin/floatingwindowprocess/b/a;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;->c:Lcom/cyjh/elfin/floatingwindowprocess/c/d;

    iput-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;->a:Landroid/os/Vibrator;

    iput-object p3, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;->b:Lcom/cyjh/elfin/floatingwindowprocess/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;->a:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/c/d$1;->b:Lcom/cyjh/elfin/floatingwindowprocess/b/a;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/b/a;->a()V

    return-void
.end method
