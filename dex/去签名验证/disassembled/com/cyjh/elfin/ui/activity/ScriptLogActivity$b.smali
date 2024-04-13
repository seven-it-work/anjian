.class final Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->a(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->a(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;Z)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->a(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->d(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    const v2, 0x7f0200e2

    :goto_31
    invoke-virtual {v0, v2}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->setRightImage(I)V

    goto :goto_53

    :cond_35
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->b(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->c(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->d(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    const v2, 0x7f0200ea

    goto :goto_31

    :goto_53
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->e(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/cyjh/elfin/entity/ScriptLog;

    invoke-virtual {v2, v1}, Lcom/cyjh/elfin/entity/ScriptLog;->setSelect(Z)V

    goto :goto_5d

    :cond_6d
    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lcom/cyjh/elfin/ui/adpter/a;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->a(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/cyjh/elfin/ui/adpter/a;->a:Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$b;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->f(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)Lcom/cyjh/elfin/ui/adpter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/adpter/a;->notifyDataSetChanged()V

    return-void
.end method
