.class final Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$a;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity$a;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogDetailActivity;->finish()V

    return-void
.end method
