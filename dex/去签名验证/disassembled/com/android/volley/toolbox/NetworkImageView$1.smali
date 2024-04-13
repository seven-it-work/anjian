.class final Lcom/android/volley/toolbox/NetworkImageView$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/NetworkImageView;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/android/volley/toolbox/NetworkImageView;


# direct methods
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iput-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/s;)V
    .registers 3

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {v0}, Lcom/android/volley/toolbox/NetworkImageView;->a(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_13
    return-void
.end method

.method public final a(Lcom/android/volley/toolbox/k$c;Z)V
    .registers 4

    if-eqz p2, :cond_11

    iget-boolean p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->a:Z

    if-eqz p2, :cond_11

    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    new-instance v0, Lcom/android/volley/toolbox/NetworkImageView$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/volley/toolbox/NetworkImageView$1$1;-><init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/k$c;)V

    invoke-virtual {p2, v0}, Lcom/android/volley/toolbox/NetworkImageView;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_11
    iget-object p2, p1, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_1d

    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object p1, p1, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Lcom/android/volley/toolbox/NetworkImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_1d
    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p1}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    iget-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1;->b:Lcom/android/volley/toolbox/NetworkImageView;

    invoke-static {p2}, Lcom/android/volley/toolbox/NetworkImageView;->b(Lcom/android/volley/toolbox/NetworkImageView;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/volley/toolbox/NetworkImageView;->setImageResource(I)V

    :cond_30
    return-void
.end method
