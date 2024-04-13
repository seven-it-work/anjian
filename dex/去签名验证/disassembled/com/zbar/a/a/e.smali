.class public final Lcom/zbar/a/a/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# static fields
.field private static final a:Ljava/lang/String; = "e"


# instance fields
.field private final b:Lcom/zbar/a/a/b;

.field private final c:Z

.field private d:Landroid/os/Handler;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>(Lcom/zbar/a/a/b;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/zbar/a/a/e;->b:Lcom/zbar/a/a/b;

    iput-boolean p2, p0, Lcom/zbar/a/a/e;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;I)V
    .registers 3

    iput-object p1, p0, Lcom/zbar/a/a/e;->d:Landroid/os/Handler;

    iput p2, p0, Lcom/zbar/a/a/e;->e:I

    return-void
.end method

.method public final onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    iget-object v0, p0, Lcom/zbar/a/a/e;->b:Lcom/zbar/a/a/b;

    iget-object v0, v0, Lcom/zbar/a/a/b;->d:Landroid/graphics/Point;

    iget-boolean v1, p0, Lcom/zbar/a/a/e;->c:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    invoke-virtual {p2, v2}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    :cond_c
    iget-object p2, p0, Lcom/zbar/a/a/e;->d:Landroid/os/Handler;

    if-eqz p2, :cond_21

    iget-object p2, p0, Lcom/zbar/a/a/e;->d:Landroid/os/Handler;

    iget v1, p0, Lcom/zbar/a/a/e;->e:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, v1, v3, v0, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iput-object v2, p0, Lcom/zbar/a/a/e;->d:Landroid/os/Handler;

    :cond_21
    return-void
.end method
