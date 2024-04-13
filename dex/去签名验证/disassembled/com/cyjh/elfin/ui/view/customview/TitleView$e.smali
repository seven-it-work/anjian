.class final Lcom/cyjh/elfin/ui/view/customview/TitleView$e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/ui/view/customview/TitleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/ui/view/customview/TitleView;


# direct methods
.method private constructor <init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;->a:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;-><init>(Lcom/cyjh/elfin/ui/view/customview/TitleView;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;->a:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$a;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/cyjh/elfin/ui/view/customview/TitleView$e;->a:Lcom/cyjh/elfin/ui/view/customview/TitleView;

    invoke-static {p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView;->a(Lcom/cyjh/elfin/ui/view/customview/TitleView;)Lcom/cyjh/elfin/ui/view/customview/TitleView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/cyjh/elfin/ui/view/customview/TitleView$a;->a()V

    :cond_11
    return-void
.end method
