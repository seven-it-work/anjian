.class final Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->c()V
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
.field final synthetic a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/Integer;)V
    .registers 4
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3ee

    if-ne v1, v0, :cond_1b

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->i(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lcom/cyjh/elfin/ui/model/RegCodeModel;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Ljava/lang/String;I)V

    return-void

    :cond_1b
    const/16 v0, 0x3ef

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_29

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->a(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    return-void

    :cond_29
    const/16 v0, 0x3f0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_3c

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lcom/cyjh/http/c/c/k;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {p1, v0}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public final synthetic onChanged(Ljava/lang/Object;)V
    .registers 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x3ee

    if-ne v1, v0, :cond_1d

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->i(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lcom/cyjh/elfin/ui/model/RegCodeModel;

    move-result-object p1

    invoke-static {}, Lcom/cyjh/elfin/d/c;->a()Lcom/cyjh/elfin/d/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/elfin/d/c;->b()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/cyjh/elfin/ui/model/RegCodeModel;->a(Ljava/lang/String;I)V

    return-void

    :cond_1d
    const/16 v0, 0x3ef

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2b

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->a(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)V

    return-void

    :cond_2b
    const/16 v0, 0x3f0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_3e

    iget-object p1, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;->j(Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;)Lcom/cyjh/http/c/c/k;

    move-result-object p1

    iget-object v0, p0, Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity$6;->a:Lcom/cyjh/elfin/ui/activity/ElfinFreeActivity;

    invoke-virtual {p1, v0}, Lcom/cyjh/http/c/c/k;->a(Landroid/content/Context;)V

    :cond_3e
    return-void
.end method
