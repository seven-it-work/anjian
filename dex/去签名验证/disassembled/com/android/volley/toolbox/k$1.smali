.class final Lcom/android/volley/toolbox/k$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/toolbox/k$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/toolbox/k;->a(Landroid/widget/ImageView;II)Lcom/android/volley/toolbox/k$d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:I


# direct methods
.method constructor <init>(ILandroid/widget/ImageView;I)V
    .registers 4

    iput p1, p0, Lcom/android/volley/toolbox/k$1;->a:I

    iput-object p2, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    iput p3, p0, Lcom/android/volley/toolbox/k$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/volley/s;)V
    .registers 3

    iget p1, p0, Lcom/android/volley/toolbox/k$1;->a:I

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/volley/toolbox/k$1;->a:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_b
    return-void
.end method

.method public final a(Lcom/android/volley/toolbox/k$c;Z)V
    .registers 3

    iget-object p2, p1, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/android/volley/toolbox/k$c;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :cond_c
    iget p1, p0, Lcom/android/volley/toolbox/k$1;->c:I

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcom/android/volley/toolbox/k$1;->b:Landroid/widget/ImageView;

    iget p2, p0, Lcom/android/volley/toolbox/k$1;->c:I

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_17
    return-void
.end method
