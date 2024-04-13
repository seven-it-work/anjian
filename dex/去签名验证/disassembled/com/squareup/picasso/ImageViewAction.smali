.class Lcom/squareup/picasso/ImageViewAction;
.super Lcom/squareup/picasso/Action;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/picasso/Action<",
        "Landroid/widget/ImageView;",
        ">;"
    }
.end annotation


# instance fields
.field callback:Lcom/squareup/picasso/Callback;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/Callback;Z)V
    .registers 23

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lcom/squareup/picasso/Action;-><init>(Lcom/squareup/picasso/Picasso;Ljava/lang/Object;Lcom/squareup/picasso/Request;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    return-void
.end method


# virtual methods
.method cancel()V
    .registers 2

    invoke-super {p0}, Lcom/squareup/picasso/Action;->cancel()V

    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    :cond_a
    return-void
.end method

.method public complete(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;)V
    .registers 10

    if-nez p1, :cond_14

    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Attempted to complete action with no result!\n%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_14
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    if-nez v1, :cond_20

    return-void

    :cond_20
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->picasso:Lcom/squareup/picasso/Picasso;

    iget-object v2, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v6, v0, Lcom/squareup/picasso/Picasso;->indicatorsEnabled:Z

    iget-boolean v5, p0, Lcom/squareup/picasso/ImageViewAction;->noFade:Z

    move-object v3, p1

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/squareup/picasso/PicassoDrawable;->setBitmap(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$LoadedFrom;ZZ)V

    iget-object p1, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    if-eqz p1, :cond_38

    iget-object p1, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    invoke-interface {p1}, Lcom/squareup/picasso/Callback;->onSuccess()V

    :cond_38
    return-void
.end method

.method public error()V
    .registers 3

    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->target:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorResId:I

    if-eqz v1, :cond_15

    iget v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1e

    :cond_15
    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/squareup/picasso/ImageViewAction;->errorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/squareup/picasso/ImageViewAction;->callback:Lcom/squareup/picasso/Callback;

    invoke-interface {v0}, Lcom/squareup/picasso/Callback;->onError()V

    :cond_27
    return-void
.end method
