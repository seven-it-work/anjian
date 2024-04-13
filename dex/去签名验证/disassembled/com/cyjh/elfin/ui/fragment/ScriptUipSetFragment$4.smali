.class final Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->onReceiveScriptUIEvent(Lcom/cyjh/common/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$4;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/cyjh/elfin/services/a;->a()Lcom/cyjh/elfin/services/a;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/services/a;->a(I)V

    return-void
.end method
