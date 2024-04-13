.class final Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;
.super Lcom/cyjh/common/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    const/16 p1, 0xa

    invoke-direct {p0, p1}, Lcom/cyjh/common/c/a;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;-><init>(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .registers 8

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-virtual {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->h(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    const-string p1, "\u70b9\u51fb\u5173\u95ed"

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v4, "#ff7900"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x11

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    const-string v3, "#999999"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, v2, v3, p1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_69

    iget-object p1, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->c(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_69
    return-void
.end method

.method public final onFinish()V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->i(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)I

    iget-object v0, p0, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment$a;->a:Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;

    invoke-static {v0}, Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;->d(Lcom/cyjh/elfin/ui/fragment/ScriptUipSetFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
