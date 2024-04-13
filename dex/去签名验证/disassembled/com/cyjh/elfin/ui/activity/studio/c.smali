.class final synthetic Lcom/cyjh/elfin/ui/activity/studio/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/c;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/c;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;

    iget-object v0, v0, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity$1;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u89e3\u7ed1\u6210\u529f\uff01"

    invoke-static {v0, v1}, Lcom/cyjh/common/util/ag;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
