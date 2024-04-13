.class public Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;
.super Landroid/app/Activity;


# static fields
.field public static final a:I = 0x8080

.field private static final b:Ljava/lang/String; = "ForScreenShotActivity"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_19

    const-string v0, "media_projection"

    invoke-virtual {p0, v0}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x8080

    invoke-virtual {p0, v0, v1}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_19
    const-string v0, "ForScreenShotActivity"

    const-string v1, "The API version is too low,required is >= 21."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const v0, 0x8080

    if-eq p1, v0, :cond_9

    return-void

    :cond_9
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1c

    if-eqz p3, :cond_1c

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->setResult(I)V

    invoke-static {}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->getInstance()Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;

    move-result-object p1

    invoke-virtual {p1, p0, p3}, Lcom/cyjh/mobileanjian/screencap/ScreenShoterV3;->init(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->finish()V

    return-void

    :cond_1c
    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->a()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->setResult(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/screencap/ForScreenShotActivity;->a()V

    return-void
.end method
