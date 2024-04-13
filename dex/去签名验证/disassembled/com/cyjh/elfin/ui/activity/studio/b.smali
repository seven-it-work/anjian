.class final synthetic Lcom/cyjh/elfin/ui/activity/studio/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$a;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/studio/b;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/studio/b;->a:Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/studio/StudioBindClearActivity;->finish()V

    return-void
.end method
