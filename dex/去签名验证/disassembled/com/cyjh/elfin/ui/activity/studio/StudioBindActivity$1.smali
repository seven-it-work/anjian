.class final Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/http/c/c/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->a(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$1;

    invoke-direct {v1, p0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$1;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->post(Ljava/lang/Runnable;)Z

    invoke-static {}, Lcom/cyjh/elfin/base/AppContext;->a()Lcom/cyjh/elfin/base/AppContext;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->c(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/base/AppContext;->e:Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->d(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/cyjh/common/util/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/cyjh/common/util/ab;->a()Lcom/cyjh/common/util/ab;

    move-result-object v1

    const-string v2, "script_setting"

    invoke-virtual {v1, v2, v0}, Lcom/cyjh/common/util/ab;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMServerHost:Ljava/lang/String;

    iget v0, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMServerPort:I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->e(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Z

    move-result v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$2;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$2;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_66

    :cond_56
    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/elf/studio/a/b;

    const/16 v2, 0x2711

    iget-object p1, p1, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMToken:Ljava/lang/String;

    invoke-direct {v1, v2, p1}, Lcom/elf/studio/a/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    :goto_66
    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-virtual {p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->finish()V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/cyjh/http/c/c/h;->a()Lcom/cyjh/http/c/c/h;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/cyjh/http/c/c/h;->b:Lcom/cyjh/http/c/c/h$a;

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->a(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Z

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->b(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)Lcom/cyjh/elfin/ui/view/customview/TitleView;

    move-result-object v0

    new-instance v1, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$3;

    invoke-direct {v1, p0, p1}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$3;-><init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
