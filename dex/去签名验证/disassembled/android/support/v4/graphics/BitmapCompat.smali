.class public final Landroid/support/v4/graphics/BitmapCompat;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi19Impl;,
        Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;,
        Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_e

    new-instance v0, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi19Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi19Impl;-><init>()V

    :goto_b
    sput-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    return-void

    :cond_e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1a

    new-instance v0, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatApi18Impl;-><init>()V

    goto :goto_b

    :cond_1a
    new-instance v0, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;-><init>()V

    goto :goto_b
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllocationByteCount(Landroid/graphics/Bitmap;)I
    .registers 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;->getAllocationByteCount(Landroid/graphics/Bitmap;)I

    move-result p0

    return p0
.end method

.method public static hasMipMap(Landroid/graphics/Bitmap;)Z
    .registers 2
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-virtual {v0, p0}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;->hasMipMap(Landroid/graphics/Bitmap;)Z

    move-result p0

    return p0
.end method

.method public static setHasMipMap(Landroid/graphics/Bitmap;Z)V
    .registers 3
    .param p0    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Landroid/support/v4/graphics/BitmapCompat;->IMPL:Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/graphics/BitmapCompat$BitmapCompatBaseImpl;->setHasMipMap(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
