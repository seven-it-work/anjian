.class final Lcom/google/a/d/c/n;
.super Lcom/google/a/d/c/c;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/d/c/c;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x3

    return v0
.end method

.method final a(CLjava/lang/StringBuilder;)I
    .registers 6

    const/16 v0, 0xd

    const/4 v1, 0x1

    if-eq p1, v0, :cond_36

    const/16 v0, 0x20

    if-eq p1, v0, :cond_34

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_30

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2e

    const/16 v0, 0x30

    if-lt p1, v0, :cond_1e

    const/16 v2, 0x39

    if-gt p1, v2, :cond_1e

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x4

    :goto_1c
    int-to-char p1, p1

    goto :goto_37

    :cond_1e
    const/16 v0, 0x41

    if-lt p1, v0, :cond_2a

    const/16 v2, 0x5a

    if-gt p1, v2, :cond_2a

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xe

    goto :goto_1c

    :cond_2a
    invoke-static {p1}, Lcom/google/a/d/c/j;->c(C)V

    return v1

    :cond_2e
    const/4 p1, 0x2

    goto :goto_37

    :cond_30
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_34
    const/4 p1, 0x3

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1
.end method

.method public final a(Lcom/google/a/d/c/h;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result v1

    iget v2, p1, Lcom/google/a/d/c/h;->f:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/google/a/d/c/n;->a(CLjava/lang/StringBuilder;)I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x3

    rem-int/2addr v1, v2

    if-nez v1, :cond_5

    invoke-static {p1, v0}, Lcom/google/a/d/c/n;->a(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V

    iget-object v1, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v3, p1, Lcom/google/a/d/c/h;->f:I

    invoke-static {v1, v3, v2}, Lcom/google/a/d/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    iput v1, p1, Lcom/google/a/d/c/h;->g:I

    :cond_30
    invoke-virtual {p0, p1, v0}, Lcom/google/a/d/c/n;->b(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method final b(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V
    .registers 5

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->d()V

    iget-object v0, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v0, v0, Lcom/google/a/d/c/k;->b:I

    iget-object v1, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    iget v1, p1, Lcom/google/a/d/c/h;->f:I

    sub-int/2addr v1, p2

    iput v1, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->c()I

    move-result p2

    const/4 v1, 0x1

    if-gt p2, v1, :cond_26

    if-gt v0, v1, :cond_26

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->c()I

    move-result p2

    if-eq p2, v0, :cond_2b

    :cond_26
    const/16 p2, 0xfe

    invoke-virtual {p1, p2}, Lcom/google/a/d/c/h;->a(C)V

    :cond_2b
    iget p2, p1, Lcom/google/a/d/c/h;->g:I

    if-gez p2, :cond_32

    const/4 p2, 0x0

    iput p2, p1, Lcom/google/a/d/c/h;->g:I

    :cond_32
    return-void
.end method
