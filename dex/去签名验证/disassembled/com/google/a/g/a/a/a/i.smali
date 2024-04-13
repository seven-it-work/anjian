.class abstract Lcom/google/a/g/a/a/a/i;
.super Lcom/google/a/g/a/a/a/h;


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/h;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method


# virtual methods
.method protected abstract a(I)I
.end method

.method protected abstract a(Ljava/lang/StringBuilder;I)V
.end method

.method final b(Ljava/lang/StringBuilder;II)V
    .registers 6

    iget-object v0, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    invoke-virtual {v0, p2, p3}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/google/a/g/a/a/a/i;->a(Ljava/lang/StringBuilder;I)V

    invoke-virtual {p0, p2}, Lcom/google/a/g/a/a/a/i;->a(I)I

    move-result p2

    const p3, 0x186a0

    const/4 v0, 0x0

    :goto_11
    const/4 v1, 0x5

    if-ge v0, v1, :cond_22

    div-int v1, p2, p3

    if-nez v1, :cond_1d

    const/16 v1, 0x30

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1d
    div-int/lit8 p3, p3, 0xa

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method
