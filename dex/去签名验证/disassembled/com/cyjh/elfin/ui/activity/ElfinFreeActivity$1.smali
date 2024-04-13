.class final Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3f1

    if-ne v0, p1, :cond_b

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$1;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->a(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    :cond_b
    return-void
.end method
