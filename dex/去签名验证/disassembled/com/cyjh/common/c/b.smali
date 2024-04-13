.class public abstract Lcom/cyjh/common/c/b;
.super Landroid/os/CountDownTimer;


# instance fields
.field private final a:I

.field private b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(I)V
    .registers 6

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    const-wide/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/cyjh/common/c/b;->b:Landroid/os/Handler;

    const/4 p1, 0x1

    iput p1, p0, Lcom/cyjh/common/c/b;->a:I

    return-void
.end method

.method static synthetic a(Lcom/cyjh/common/c/b;)I
    .registers 1

    iget p0, p0, Lcom/cyjh/common/c/b;->a:I

    return p0
.end method


# virtual methods
.method protected abstract a(I)V
.end method

.method public onTick(J)V
    .registers 6

    long-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget p2, p0, Lcom/cyjh/common/c/b;->a:I

    mul-int/lit8 p2, p2, 0x2

    if-ne p1, p2, :cond_21

    iget-object p2, p0, Lcom/cyjh/common/c/b;->b:Landroid/os/Handler;

    new-instance v0, Lcom/cyjh/common/c/b$1;

    invoke-direct {v0, p0}, Lcom/cyjh/common/c/b$1;-><init>(Lcom/cyjh/common/c/b;)V

    iget v1, p0, Lcom/cyjh/common/c/b;->a:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_21
    invoke-virtual {p0, p1}, Lcom/cyjh/common/c/b;->a(I)V

    return-void
.end method
