.class final Lcom/cyjh/feedback/lib/e/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/feedback/lib/e/c;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/cyjh/feedback/lib/e/c;


# direct methods
.method constructor <init>(Lcom/cyjh/feedback/lib/e/c;Landroid/widget/ImageView;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/cyjh/feedback/lib/e/c$4;->c:Lcom/cyjh/feedback/lib/e/c;

    iput-object p2, p0, Lcom/cyjh/feedback/lib/e/c$4;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/cyjh/feedback/lib/e/c$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/feedback/lib/e/c$4;->c:Lcom/cyjh/feedback/lib/e/c;

    iget-object v1, p0, Lcom/cyjh/feedback/lib/e/c$4;->a:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/cyjh/feedback/lib/e/c;->a(Lcom/cyjh/feedback/lib/e/c;Landroid/widget/ImageView;)Lcom/cyjh/feedback/lib/e/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/e/c$4;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/cyjh/feedback/lib/e/c;->a(Ljava/lang/String;Lcom/cyjh/feedback/lib/e/c$b;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/cyjh/feedback/lib/e/c$4;->c:Lcom/cyjh/feedback/lib/e/c;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/e/c$4;->b:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/cyjh/feedback/lib/e/c;->a(Lcom/cyjh/feedback/lib/e/c;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/feedback/lib/e/c$4;->c:Lcom/cyjh/feedback/lib/e/c;

    iget-object v2, p0, Lcom/cyjh/feedback/lib/e/c$4;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/cyjh/feedback/lib/e/c$4;->a:Landroid/widget/ImageView;

    invoke-static {v1, v0, v2, v3}, Lcom/cyjh/feedback/lib/e/c;->a(Lcom/cyjh/feedback/lib/e/c;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/cyjh/feedback/lib/e/c$4;->c:Lcom/cyjh/feedback/lib/e/c;

    invoke-static {v0}, Lcom/cyjh/feedback/lib/e/c;->c(Lcom/cyjh/feedback/lib/e/c;)Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    return-void
.end method
