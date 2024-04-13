.class public final Lcom/zbar/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/Camera$AutoFocusCallback;


# static fields
.field private static final a:Ljava/lang/String; = "a"

.field private static final b:J = 0x5dcL


# instance fields
.field private c:Landroid/os/Handler;

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/os/Handler;I)V
    .registers 3

    iput-object p1, p0, Lcom/zbar/a/a/a;->c:Landroid/os/Handler;

    iput p2, p0, Lcom/zbar/a/a/a;->d:I

    return-void
.end method

.method public final onAutoFocus(ZLandroid/hardware/Camera;)V
    .registers 5

    iget-object p2, p0, Lcom/zbar/a/a/a;->c:Landroid/os/Handler;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/zbar/a/a/a;->c:Landroid/os/Handler;

    iget v0, p0, Lcom/zbar/a/a/a;->d:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p2, p0, Lcom/zbar/a/a/a;->c:Landroid/os/Handler;

    const-wide/16 v0, 0x5dc

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/zbar/a/a/a;->c:Landroid/os/Handler;

    :cond_1a
    return-void
.end method
