.class final Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/ImageReader$OnImageAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;


# direct methods
.method constructor <init>(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onImageAvailable(Landroid/media/ImageReader;)V
    .registers 4

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/ImageReader;->acquireLatestImage()Landroid/media/Image;

    move-result-object p1

    if-eqz p1, :cond_46

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {v1, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/media/Image;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;)Lcom/cyjh/mobileanjian/screencap/ScreenShotImage;

    iget-object v0, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Landroid/media/Image;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->c(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Z

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    invoke-static {p1}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->b(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;)Landroid/media/ImageReader;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/ImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Landroid/os/Handler;)V

    return-void

    :cond_46
    iget-object p1, p0, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3$1;->a:Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->a(Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;Z)Z

    :cond_4c
    return-void
.end method
