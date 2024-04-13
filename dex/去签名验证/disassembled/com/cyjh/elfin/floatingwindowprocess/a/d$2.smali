.class final Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/a/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/floatingwindowprocess/a/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/d/b;

.field final synthetic b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/floatingwindowprocess/a/d;Lcom/cyjh/common/d/b;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    iput-object p2, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->a:Lcom/cyjh/common/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->a:Lcom/cyjh/common/d/b;

    invoke-virtual {v0}, Lcom/cyjh/common/d/b;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u8bc6\u522b\u5e93\u5df2\u4e0b\u8f7d\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->a:Lcom/cyjh/common/d/b;

    invoke-virtual {v0}, Lcom/cyjh/common/d/b;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u8bc6\u522b\u5e93\u4e0b\u8f7d\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a(Lcom/cyjh/elfin/floatingwindowprocess/a/d;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    return-void
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->a:Lcom/cyjh/common/d/b;

    invoke-virtual {v0}, Lcom/cyjh/common/d/b;->dismiss()V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-virtual {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6587\u5b57\u8bc6\u522b\u5e93\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a(Lcom/cyjh/elfin/floatingwindowprocess/a/d;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    iget-object v0, p0, Lcom/cyjh/elfin/floatingwindowprocess/a/d$2;->b:Lcom/cyjh/elfin/floatingwindowprocess/a/d;

    invoke-static {v0}, Lcom/cyjh/elfin/floatingwindowprocess/a/d;->a(Lcom/cyjh/elfin/floatingwindowprocess/a/d;)Landroid/widget/Switch;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    return-void
.end method
