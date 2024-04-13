.class public final Lcom/google/a/i;
.super Lcom/google/a/j;


# instance fields
.field private final c:Lcom/google/a/j;


# direct methods
.method public constructor <init>(Lcom/google/a/j;)V
    .registers 4

    iget v0, p1, Lcom/google/a/j;->a:I

    iget v1, p1, Lcom/google/a/j;->b:I

    invoke-direct {p0, v0, v1}, Lcom/google/a/j;-><init>(II)V

    iput-object p1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    return-void
.end method


# virtual methods
.method public final a(IIII)Lcom/google/a/j;
    .registers 7

    new-instance v0, Lcom/google/a/i;

    iget-object v1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/google/a/j;->a(IIII)Lcom/google/a/j;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/a/i;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method

.method public final a()[B
    .registers 6

    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->a()[B

    move-result-object v0

    iget v1, p0, Lcom/google/a/j;->a:I

    iget v2, p0, Lcom/google/a/j;->b:I

    mul-int v1, v1, v2

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v1, :cond_1d

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    rsub-int v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_1d
    return-object v2
.end method

.method public final a(I[B)[B
    .registers 5

    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/j;->a(I[B)[B

    move-result-object p1

    iget p2, p0, Lcom/google/a/j;->a:I

    const/4 v0, 0x0

    :goto_9
    if-ge v0, p2, :cond_17

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_17
    return-object p1
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->b()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Lcom/google/a/j;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    return-object v0
.end method

.method public final e()Lcom/google/a/j;
    .registers 3

    new-instance v0, Lcom/google/a/i;

    iget-object v1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v1}, Lcom/google/a/j;->e()Lcom/google/a/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/i;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method

.method public final f()Lcom/google/a/j;
    .registers 3

    new-instance v0, Lcom/google/a/i;

    iget-object v1, p0, Lcom/google/a/i;->c:Lcom/google/a/j;

    invoke-virtual {v1}, Lcom/google/a/j;->f()Lcom/google/a/j;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/a/i;-><init>(Lcom/google/a/j;)V

    return-object v0
.end method
