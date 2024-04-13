.class public abstract Lcom/umeng/commonsdk/proguard/bn;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation
.end method

.method public a(I)V
    .registers 2

    return-void
.end method

.method public abstract a()Z
.end method

.method public abstract b()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation
.end method

.method public b([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/umeng/commonsdk/proguard/bn;->b([BII)V

    return-void
.end method

.method public abstract b([BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation
.end method

.method public abstract c()V
.end method

.method public d([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_30

    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Lcom/umeng/commonsdk/proguard/bn;->a([BII)I

    move-result v1

    if-gtz v1, :cond_2e

    new-instance p1, Lcom/umeng/commonsdk/proguard/bo;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Cannot read. Remote side has closed. Tried to read "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes, but only got "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/umeng/commonsdk/proguard/bo;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2e
    add-int/2addr v0, v1

    goto :goto_1

    :cond_30
    return v0
.end method

.method public d()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/commonsdk/proguard/bo;
        }
    .end annotation

    return-void
.end method

.method public f()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .registers 2

    const/4 v0, -0x1

    return v0
.end method

.method public i()Z
    .registers 2

    invoke-virtual {p0}, Lcom/umeng/commonsdk/proguard/bn;->a()Z

    move-result v0

    return v0
.end method
