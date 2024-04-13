.class final Lcom/cyjh/mobileanjian/ipc/ui/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/mobileanjian/ipc/ui/h;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/h;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h$1;->b:Lcom/cyjh/mobileanjian/ipc/ui/h;

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/ui/h$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/h$1;->a:Ljava/lang/String;

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;->ON_CLICK:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/h;->a(Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$ControlEvent$Event_Type;)V

    return-void
.end method
