.class final Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/view/customview/TitleView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;-><init>(Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity$a;->a:Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/activity/ScriptLogActivity;->finish()V

    return-void
.end method
