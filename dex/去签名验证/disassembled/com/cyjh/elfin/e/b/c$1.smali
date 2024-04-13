.class final Lcom/cyjh/elfin/e/b/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/interfaces/OnScreenShotCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/b/c;->a()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/cyjh/elfin/e/b/c;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/e/b/c;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/cyjh/elfin/e/b/c$1;->b:Lcom/cyjh/elfin/e/b/c;

    iput-object p2, p0, Lcom/cyjh/elfin/e/b/c$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScreenShotDone(Ljava/lang/String;Lcom/google/protobuf/ByteString;)V
    .registers 7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0xffff

    and-int/2addr v0, p1

    shr-int/lit8 p1, p1, 0x10

    const-string v1, "MyAsyncTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScreenShotDone -->\u3000width="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/cyjh/common/util/ad;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0, p2}, Lcom/cyjh/elfin/e/c/o;->a(IILcom/google/protobuf/ByteString;)Landroid/graphics/Bitmap;

    move-result-object p1

    const/16 p2, 0x3eb

    const/4 v0, 0x6

    if-eqz p1, :cond_41

    iget-object v1, p0, Lcom/cyjh/elfin/e/b/c$1;->a:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/cyjh/common/util/n;->a(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    iget-object v1, p0, Lcom/cyjh/elfin/e/b/c$1;->a:Ljava/lang/String;

    :goto_3d
    invoke-virtual {p1, v0, p2, v1}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(IILjava/lang/String;)V

    return-void

    :cond_41
    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    const-string v1, ""

    goto :goto_3d
.end method

.method public final onScreenShotFailed(I)V
    .registers 5

    invoke-static {}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a()Lcom/cyjh/elfin/floatingwindowprocess/service/a;

    move-result-object p1

    const-string v0, ""

    const/4 v1, 0x6

    const/16 v2, 0x3eb

    invoke-virtual {p1, v1, v2, v0}, Lcom/cyjh/elfin/floatingwindowprocess/service/a;->a(IILjava/lang/String;)V

    return-void
.end method
