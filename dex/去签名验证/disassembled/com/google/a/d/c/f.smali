.class final Lcom/google/a/d/c/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/d/c/g;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 9

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    sub-int/2addr v0, v1

    if-nez v0, :cond_10

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "StringBuilder must not be empty"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_10
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1d

    const/4 v4, 0x1

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_1e

    :cond_1d
    const/4 v4, 0x0

    :goto_1e
    const/4 v5, 0x3

    if-lt v0, v5, :cond_26

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    goto :goto_27

    :cond_26
    const/4 v6, 0x0

    :goto_27
    const/4 v7, 0x4

    if-lt v0, v7, :cond_2e

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :cond_2e
    shl-int/lit8 p0, v2, 0x12

    shl-int/lit8 v2, v4, 0xc

    add-int/2addr p0, v2

    shl-int/lit8 v2, v6, 0x6

    add-int/2addr p0, v2

    add-int/2addr p0, v1

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    and-int/lit16 p0, p0, 0xff

    int-to-char p0, p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lt v0, v3, :cond_51

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_51
    if-lt v0, v5, :cond_56

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_56
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(CLjava/lang/StringBuilder;)V
    .registers 4

    const/16 v0, 0x20

    if-lt p0, v0, :cond_c

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_c

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_c
    const/16 v0, 0x40

    if-lt p0, v0, :cond_1a

    const/16 v1, 0x5e

    if-gt p0, v1, :cond_1a

    sub-int/2addr p0, v0

    int-to-char p0, p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    :cond_1a
    invoke-static {p0}, Lcom/google/a/d/c/j;->c(C)V

    return-void
.end method

.method private static a(Lcom/google/a/d/c/h;Ljava/lang/CharSequence;)V
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_93

    if-nez v1, :cond_a

    iput v0, p0, Lcom/google/a/d/c/h;->g:I

    return-void

    :cond_a
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_3e

    :try_start_e
    invoke-virtual {p0}, Lcom/google/a/d/c/h;->d()V

    iget-object v4, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v4, v4, Lcom/google/a/d/c/k;->b:I

    iget-object v5, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/google/a/d/c/h;->c()I

    move-result v5

    if-le v5, v4, :cond_37

    iget-object v4, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {p0, v4}, Lcom/google/a/d/c/h;->a(I)V

    iget-object v4, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v4, v4, Lcom/google/a/d/c/k;->b:I

    iget-object v6, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6
    :try_end_36
    .catchall {:try_start_e .. :try_end_36} :catchall_93

    sub-int/2addr v4, v6

    :cond_37
    if-gt v5, v4, :cond_3e

    if-gt v4, v2, :cond_3e

    iput v0, p0, Lcom/google/a/d/c/h;->g:I

    return-void

    :cond_3e
    const/4 v4, 0x4

    if-le v1, v4, :cond_49

    :try_start_41
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Count must not exceed 4"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_49
    sub-int/2addr v1, v3

    invoke-static {p1}, Lcom/google/a/d/c/f;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/a/d/c/h;->b()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_58

    if-gt v1, v2, :cond_58

    goto :goto_59

    :cond_58
    const/4 v3, 0x0

    :goto_59
    if-gt v1, v2, :cond_82

    iget-object v2, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Lcom/google/a/d/c/h;->a(I)V

    iget-object v2, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v2, v2, Lcom/google/a/d/c/k;->b:I

    iget-object v4, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    sub-int/2addr v2, v4

    const/4 v4, 0x3

    if-lt v2, v4, :cond_82

    iget-object v2, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/google/a/d/c/h;->a(I)V

    const/4 v3, 0x0

    :cond_82
    if-eqz v3, :cond_8d

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget p1, p0, Lcom/google/a/d/c/h;->f:I

    sub-int/2addr p1, v1

    iput p1, p0, Lcom/google/a/d/c/h;->f:I

    goto :goto_90

    :cond_8d
    invoke-virtual {p0, p1}, Lcom/google/a/d/c/h;->a(Ljava/lang/String;)V
    :try_end_90
    .catchall {:try_start_41 .. :try_end_90} :catchall_93

    :goto_90
    iput v0, p0, Lcom/google/a/d/c/h;->g:I

    return-void

    :catchall_93
    move-exception p1

    iput v0, p0, Lcom/google/a/d/c/h;->g:I

    throw p1
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x4

    return v0
.end method

.method public final a(Lcom/google/a/d/c/h;)V
    .registers 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_4e

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result v1

    const/16 v5, 0x20

    if-lt v1, v5, :cond_1e

    const/16 v5, 0x3f

    if-gt v1, v5, :cond_1e

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d

    :cond_1e
    const/16 v5, 0x40

    if-lt v1, v5, :cond_2a

    const/16 v5, 0x5e

    if-gt v1, v5, :cond_2a

    add-int/lit8 v1, v1, -0x40

    int-to-char v1, v1

    goto :goto_1a

    :cond_2a
    invoke-static {v1}, Lcom/google/a/d/c/j;->c(C)V

    :goto_2d
    iget v1, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v1, v3

    iput v1, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lt v1, v2, :cond_5

    invoke-static {v0}, Lcom/google/a/d/c/f;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/a/d/c/h;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v5, p1, Lcom/google/a/d/c/h;->f:I

    invoke-static {v1, v5, v2}, Lcom/google/a/d/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    if-eq v1, v2, :cond_5

    iput v4, p1, Lcom/google/a/d/c/h;->g:I

    :cond_4e
    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :try_start_53
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1
    :try_end_57
    .catchall {:try_start_53 .. :try_end_57} :catchall_e3

    if-nez v1, :cond_5c

    iput v4, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :cond_5c
    const/4 v5, 0x2

    if-ne v1, v3, :cond_8f

    :try_start_5f
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->d()V

    iget-object v6, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v6, v6, Lcom/google/a/d/c/k;->b:I

    iget-object v7, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->c()I

    move-result v7

    if-le v7, v6, :cond_88

    iget-object v6, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {p1, v6}, Lcom/google/a/d/c/h;->a(I)V

    iget-object v6, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v6, v6, Lcom/google/a/d/c/k;->b:I

    iget-object v8, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8
    :try_end_87
    .catchall {:try_start_5f .. :try_end_87} :catchall_e3

    sub-int/2addr v6, v8

    :cond_88
    if-gt v7, v6, :cond_8f

    if-gt v6, v5, :cond_8f

    iput v4, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :cond_8f
    if-le v1, v2, :cond_99

    :try_start_91
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Count must not exceed 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_99
    sub-int/2addr v1, v3

    invoke-static {v0}, Lcom/google/a/d/c/f;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v2

    xor-int/2addr v2, v3

    if-eqz v2, :cond_a8

    if-gt v1, v5, :cond_a8

    goto :goto_a9

    :cond_a8
    const/4 v3, 0x0

    :goto_a9
    if-gt v1, v5, :cond_d2

    iget-object v2, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/google/a/d/c/h;->a(I)V

    iget-object v2, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v2, v2, Lcom/google/a/d/c/k;->b:I

    iget-object v5, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    sub-int/2addr v2, v5

    const/4 v5, 0x3

    if-lt v2, v5, :cond_d2

    iget-object v2, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lcom/google/a/d/c/h;->a(I)V

    const/4 v3, 0x0

    :cond_d2
    if-eqz v3, :cond_dd

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v0, p1, Lcom/google/a/d/c/h;->f:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/google/a/d/c/h;->f:I

    goto :goto_e0

    :cond_dd
    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(Ljava/lang/String;)V
    :try_end_e0
    .catchall {:try_start_91 .. :try_end_e0} :catchall_e3

    :goto_e0
    iput v4, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :catchall_e3
    move-exception v0

    iput v4, p1, Lcom/google/a/d/c/h;->g:I

    throw v0
.end method
