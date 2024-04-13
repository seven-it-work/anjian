.class final Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$1;
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
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u7ed1\u5b9a\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
