.class final synthetic Lcom/cyjh/elfin/ui/activity/studio/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$a;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/a;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/a;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindActivity;->finish()V

    return-void
.end method
