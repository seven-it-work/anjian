.class final Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .registers 3
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_f

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    return-void

    :cond_f
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_24

    :try_start_16
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Lcom/elfin/engin/b/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_10

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    return-void

    :cond_10
    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_25

    :try_start_17
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$2;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->g(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Lcom/elfin/engin/b/a/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/elfin/engin/b/a/a;->d()Ljava/lang/String;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_20} :catch_21

    return-void

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    return-void
.end method
