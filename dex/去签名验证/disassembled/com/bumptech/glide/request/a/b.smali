.class public final Lcom/bumptech/glide/request/a/b;
.super Lcom/bumptech/glide/request/a/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/a/a<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/a/g;)V
    .registers 2
    .param p1    # Lcom/bumptech/glide/request/a/g;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/a/a;-><init>(Lcom/bumptech/glide/request/a/g;)V

    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 1
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    return-object p0
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method
