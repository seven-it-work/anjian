.class final Lcom/cyjh/mobileanjian/ipc/ui/j$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/j$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/j$1;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/j$1;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/j$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/j$1$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/j$1;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/j$1;->h:Ljava/lang/String;

    sget-object v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_TOUCH:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/ipc/ui/j;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void
.end method
