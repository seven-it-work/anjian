.class final Lcom/cyjh/mobileanjian/ipc/ui/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/ipc/ui/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/cyjh/mobileanjian/ipc/ui/c$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/ipc/ui/c;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/ipc/ui/c;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/c;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/c;->c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/c;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/c;->c:Lcom/cyjh/mobileanjian/ipc/ui/c$a;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/c$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/c;

    iget-object v0, v0, Lcom/cyjh/mobileanjian/ipc/ui/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/cyjh/mobileanjian/ipc/ui/c$a;->a(Ljava/lang/String;)V

    :cond_19
    iget-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/c$1;->a:Lcom/cyjh/mobileanjian/ipc/ui/c;

    iget-object v0, p1, Lcom/cyjh/mobileanjian/ipc/ui/c;->d:Landroid/view/WindowManager;

    iget-object p1, p1, Lcom/cyjh/mobileanjian/ipc/ui/c;->a:Landroid/view/View;

    invoke-interface {v0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method
