.class final Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/elfin/ad/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/elfin/ad/c/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->a(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    invoke-static {v0, p1, v1, v2}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    goto :goto_33

    :cond_27
    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    invoke-static {v0, p1, v1, v2}, Lcom/cyjh/common/util/q;->b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    :goto_33
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->b(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4b
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 6

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4d

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {v1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->a(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/ImageView;

    move-result-object v1

    const-string v2, ".gif"

    invoke-virtual {p1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/b/i;->c:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    invoke-static {v0, p1, v1, v2}, Lcom/cyjh/common/util/q;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    goto :goto_35

    :cond_29
    invoke-static {}, Lcom/cyjh/common/util/q;->a()Lcom/bumptech/glide/request/g;

    move-result-object v2

    sget-object v3, Lcom/bumptech/glide/load/b/i;->b:Lcom/bumptech/glide/load/b/i;

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/g;->b(Lcom/bumptech/glide/load/b/i;)Lcom/bumptech/glide/request/g;

    invoke-static {v0, p1, v1, v2}, Lcom/cyjh/common/util/q;->b(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bumptech/glide/request/g;)V

    :goto_35
    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->b(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_4d
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final b()V
    .registers 1

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->e(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    const v2, 0x7f09004d

    invoke-virtual {v1, v2}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$1;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->e(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2b
    return-void
.end method
