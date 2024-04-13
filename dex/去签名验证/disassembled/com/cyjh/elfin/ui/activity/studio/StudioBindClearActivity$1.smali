.class final Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u89e3\u7ed1\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->a(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object p1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object p1

    new-instance v0, Lcom/elf/studio/a/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/elf/studio/a/b;-><init>(B)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->finish()V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->b(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/cyjh/elfin/ui/activity/studio/c;

    invoke-direct {v0, p0}, Lcom/cyjh/elfin/ui/activity/studio/c;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->a(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)Z

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f090194

    invoke-static {p1, v0}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;I)V

    return-void
.end method
