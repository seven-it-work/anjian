.class final Lcom/cyjh/common/util/toast/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/common/util/toast/p;->a(Landroid/view/View;Ljava/lang/CharSequence;ILcom/cyjh/common/util/toast/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/common/util/toast/p;

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:I


# direct methods
.method constructor <init>(Lcom/cyjh/common/util/toast/p;Landroid/view/View;Ljava/lang/CharSequence;I)V
    .registers 5

    iput-object p1, p0, Lcom/cyjh/common/util/toast/p$2;->a:Lcom/cyjh/common/util/toast/p;

    iput-object p2, p0, Lcom/cyjh/common/util/toast/p$2;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/cyjh/common/util/toast/p$2;->c:Ljava/lang/CharSequence;

    iput p4, p0, Lcom/cyjh/common/util/toast/p$2;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    invoke-static {}, Lcom/cyjh/common/util/toast/p;->a()V

    iget-object v0, p0, Lcom/cyjh/common/util/toast/p$2;->a:Lcom/cyjh/common/util/toast/p;

    invoke-static {v0}, Lcom/cyjh/common/util/toast/p;->a(Lcom/cyjh/common/util/toast/p;)Lcom/cyjh/common/util/toast/p$c;

    move-result-object v0

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/cyjh/common/util/toast/p;->a(Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$2;->b:Landroid/view/View;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$2;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/cyjh/common/util/toast/p$c;->a(Landroid/view/View;)V

    goto :goto_20

    :cond_1b
    iget-object v1, p0, Lcom/cyjh/common/util/toast/p$2;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Lcom/cyjh/common/util/toast/p$c;->a(Ljava/lang/CharSequence;)V

    :goto_20
    iget v1, p0, Lcom/cyjh/common/util/toast/p$2;->d:I

    invoke-interface {v0, v1}, Lcom/cyjh/common/util/toast/p$c;->b(I)V

    return-void
.end method
