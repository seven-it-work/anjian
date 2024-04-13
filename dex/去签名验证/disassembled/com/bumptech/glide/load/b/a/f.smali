.class public Lcom/bumptech/glide/load/b/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/e;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final a(F)V
    .registers 2

    return-void
.end method

.method public final a(I)V
    .registers 2

    return-void
.end method

.method public a(Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method public final b(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    .registers 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public final b()V
    .registers 1

    return-void
.end method
