.class final Lcom/cyjh/feedback/lib/e/c$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/e/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/feedback/lib/e/c;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/e/c;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/feedback/lib/e/c$3;->a:Lcom/cyjh/feedback/lib/e/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 5

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/cyjh/feedback/lib/e/c$a;

    iget-object v0, p1, Lcom/cyjh/feedback/lib/e/c$a;->c:Landroid/graphics/Bitmap;

    iget-object v1, p1, Lcom/cyjh/feedback/lib/e/c$a;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/cyjh/feedback/lib/e/c$a;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1b
    return-void
.end method
