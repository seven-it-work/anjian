.class final Lcom/google/a/a/c/b;
.super Lcom/google/a/a/c/g;


# instance fields
.field private final c:S

.field private final d:S


# direct methods
.method constructor <init>(Lcom/google/a/a/c/g;II)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/google/a/a/c/g;-><init>(Lcom/google/a/a/c/g;)V

    int-to-short p1, p2

    iput-short p1, p0, Lcom/google/a/a/c/b;->c:S

    int-to-short p1, p3

    iput-short p1, p0, Lcom/google/a/a/c/b;->d:S

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/c/a;[B)V
    .registers 8

    const/4 v0, 0x0

    :goto_1
    iget-short v1, p0, Lcom/google/a/a/c/b;->d:S

    if-ge v0, v1, :cond_3f

    const/16 v1, 0x3e

    const/16 v2, 0x1f

    if-eqz v0, :cond_11

    if-ne v0, v2, :cond_32

    iget-short v3, p0, Lcom/google/a/a/c/b;->d:S

    if-gt v3, v1, :cond_32

    :cond_11
    const/4 v3, 0x5

    invoke-virtual {p1, v2, v3}, Lcom/google/a/c/a;->b(II)V

    iget-short v4, p0, Lcom/google/a/a/c/b;->d:S

    if-le v4, v1, :cond_22

    iget-short v1, p0, Lcom/google/a/a/c/b;->d:S

    sub-int/2addr v1, v2

    const/16 v2, 0x10

    invoke-virtual {p1, v1, v2}, Lcom/google/a/c/a;->b(II)V

    goto :goto_32

    :cond_22
    if-nez v0, :cond_2e

    iget-short v1, p0, Lcom/google/a/a/c/b;->d:S

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_2a
    invoke-virtual {p1, v1, v3}, Lcom/google/a/c/a;->b(II)V

    goto :goto_32

    :cond_2e
    iget-short v1, p0, Lcom/google/a/a/c/b;->d:S

    sub-int/2addr v1, v2

    goto :goto_2a

    :cond_32
    :goto_32
    iget-short v1, p0, Lcom/google/a/a/c/b;->c:S

    add-int/2addr v1, v0

    aget-byte v1, p2, v1

    const/16 v2, 0x8

    invoke-virtual {p1, v1, v2}, Lcom/google/a/c/a;->b(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3f
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v1, p0, Lcom/google/a/a/c/b;->c:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v1, p0, Lcom/google/a/a/c/b;->c:S

    iget-short v2, p0, Lcom/google/a/a/c/b;->d:S

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
