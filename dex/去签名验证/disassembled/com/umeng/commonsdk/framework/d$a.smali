.class Lcom/umeng/commonsdk/framework/d$a;
.super Landroid/os/FileObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/framework/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 4

    const/16 v0, 0x8

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_6

    return-void

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--->>> envelope file created >>> "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/e;->b(Ljava/lang/String;)V

    const/16 p1, 0x111

    invoke-static {p1}, Lcom/umeng/commonsdk/framework/d;->a(I)V

    return-void
.end method
