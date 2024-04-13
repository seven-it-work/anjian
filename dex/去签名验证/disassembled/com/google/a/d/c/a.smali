.class final Lcom/google/a/d/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/d/c/g;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CC)C
    .registers 5

    invoke-static {p0}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {p1}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v0

    if-eqz v0, :cond_17

    add-int/lit8 p0, p0, -0x30

    mul-int/lit8 p0, p0, 0xa

    add-int/lit8 p1, p1, -0x30

    add-int/2addr p0, p1

    add-int/lit16 p0, p0, 0x82

    int-to-char p0, p0

    return p0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not digits: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/a/d/c/h;)V
    .registers 9

    iget-object v0, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v1, p1, Lcom/google/a/d/c/h;->f:I

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_23

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/4 v5, 0x0

    :cond_10
    :goto_10
    invoke-static {v4}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v6

    if-eqz v6, :cond_24

    if-ge v1, v2, :cond_24

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_10

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    goto :goto_10

    :cond_23
    const/4 v5, 0x0

    :cond_24
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-lt v5, v0, :cond_6f

    iget-object v2, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v3, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iget-object v3, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v4, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v2}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v3

    if-eqz v3, :cond_58

    invoke-static {v1}, Lcom/google/a/d/c/j;->a(C)Z

    move-result v3

    if-eqz v3, :cond_58

    add-int/lit8 v2, v2, -0x30

    mul-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, -0x30

    add-int/2addr v2, v1

    add-int/lit16 v2, v2, 0x82

    int-to-char v1, v2

    invoke-virtual {p1, v1}, Lcom/google/a/d/c/h;->a(C)V

    iget v1, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v1, v0

    iput v1, p1, Lcom/google/a/d/c/h;->f:I

    return-void

    :cond_58
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "not digits: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result v2

    iget-object v4, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v5, p1, Lcom/google/a/d/c/h;->f:I

    invoke-static {v4, v5, v3}, Lcom/google/a/d/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v3

    if-eqz v3, :cond_bb

    packed-switch v3, :pswitch_data_de

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Illegal mode: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_90
    const/16 v0, 0xe7

    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    const/4 v0, 0x5

    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_99
    const/16 v0, 0xf0

    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    const/4 v0, 0x4

    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_a2
    const/16 v0, 0xee

    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    const/4 v0, 0x3

    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_ab
    const/16 v1, 0xef

    invoke-virtual {p1, v1}, Lcom/google/a/d/c/h;->a(C)V

    iput v0, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :pswitch_b3
    const/16 v0, 0xe6

    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    iput v1, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :cond_bb
    invoke-static {v2}, Lcom/google/a/d/c/j;->b(C)Z

    move-result v0

    if-eqz v0, :cond_d3

    const/16 v0, 0xeb

    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    add-int/lit8 v2, v2, -0x80

    add-int/2addr v2, v1

    int-to-char v0, v2

    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    iget v0, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/a/d/c/h;->f:I

    return-void

    :cond_d3
    add-int/2addr v2, v1

    int-to-char v0, v2

    invoke-virtual {p1, v0}, Lcom/google/a/d/c/h;->a(C)V

    iget v0, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v0, v1

    iput v0, p1, Lcom/google/a/d/c/h;->f:I

    return-void

    :pswitch_data_de
    .packed-switch 0x1
        :pswitch_b3
        :pswitch_ab
        :pswitch_a2
        :pswitch_99
        :pswitch_90
    .end packed-switch
.end method
