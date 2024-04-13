.class public final Lcom/google/a/g/a/a/a/c;
.super Lcom/google/a/g/a/a/a/h;


# static fields
.field private static final d:I = 0x8

.field private static final e:I = 0x2


# direct methods
.method public constructor <init>(Lcom/google/a/c/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/h;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/h;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->b:Lcom/google/a/c/a;

    iget v0, v0, Lcom/google/a/c/a;->b:I

    const/16 v1, 0x30

    if-ge v0, v1, :cond_d

    invoke-static {}, Lcom/google/a/m;->getNotFoundInstance()Lcom/google/a/m;

    move-result-object v0

    throw v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8

    invoke-virtual {p0, v0, v2}, Lcom/google/a/g/a/a/a/c;->b(Ljava/lang/StringBuilder;I)V

    iget-object v2, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/4 v3, 0x2

    invoke-virtual {v2, v1, v3}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v1

    const-string v2, "(392"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    const/16 v2, 0x32

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/a/g/a/a/a/s;->a(ILjava/lang/String;)Lcom/google/a/g/a/a/a/o;

    move-result-object v1

    iget-object v1, v1, Lcom/google/a/g/a/a/a/o;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
