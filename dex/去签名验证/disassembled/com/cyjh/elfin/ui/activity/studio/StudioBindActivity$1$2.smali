.class final Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a(Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/http/bean/response/ProjectNumberInfo;

.field final synthetic b:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;Lcom/cyjh/http/bean/response/ProjectNumberInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$2;->b:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;

    iput-object p2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$2;->a:Lcom/cyjh/http/bean/response/ProjectNumberInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    invoke-static {}, Lorg/greenrobot/eventbus/c;->a()Lorg/greenrobot/eventbus/c;

    move-result-object v0

    new-instance v1, Lcom/elf/studio/a/b;

    iget-object v2, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$2;->a:Lcom/cyjh/http/bean/response/ProjectNumberInfo;

    iget-object v2, v2, Lcom/cyjh/http/bean/response/ProjectNumberInfo;->IMToken:Ljava/lang/String;

    const/16 v3, 0x2712

    invoke-direct {v1, v3, v2}, Lcom/elf/studio/a/b;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/c;->c(Ljava/lang/Object;)V

    return-void
.end method
