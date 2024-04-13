.class final Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/a/c;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/floatingwindowprocess/a/c;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;->a:Lcom/cyjh/elfin/floatingwindowprocess/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1$1;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/floatingwindowprocess/a/c$1$1;-><init>(Lcom/cyjh/elfin/floatingwindowprocess/a/c$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
