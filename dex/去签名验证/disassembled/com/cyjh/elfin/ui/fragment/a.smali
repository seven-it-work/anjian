.class final synthetic Lcom/cyjh/elfin/ui/fragment/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/elfin/ui/a/e$a;


# instance fields
.field private final a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    const/16 v1, 0x65

    if-ne v1, p1, :cond_9

    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->b:Z

    :cond_9
    return-void
.end method
