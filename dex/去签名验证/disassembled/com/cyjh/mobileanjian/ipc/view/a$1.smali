.class final Lcom/cyjh/mobileanjian/ipc/view/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/view/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/view/a;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/view/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/view/a$1;->a:Lcom/cyjh/mobileanjian/ipc/view/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/view/a$1;->a:Lcom/cyjh/mobileanjian/ipc/view/a;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/view/a;->a()V

    return-void
.end method
