.class final Lcom/google/a/d/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/d/c/g;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(CI)C
    .registers 3

    mul-int/lit16 p1, p1, 0x95

    const/16 v0, 0xff

    rem-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, p1

    if-gt p0, v0, :cond_c

    int-to-char p0, p0

    return p0

    :cond_c
    add-int/lit16 p0, p0, -0x100

    int-to-char p0, p0

    return p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    const/4 v0, 0x5

    return v0
.end method

.method public final a(Lcom/google/a/d/c/h;)V
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_29

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/google/a/d/c/h;->f:I

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/a/d/c/h;->f:I

    iget-object v2, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v4, p1, Lcom/google/a/d/c/h;->f:I

    const/4 v5, 0x5

    invoke-static {v2, v4, v5}, Lcom/google/a/d/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v2

    if-eq v2, v5, :cond_9

    iput v1, p1, Lcom/google/a/d/c/h;->g:I

    :cond_29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v3

    iget-object v4, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    invoke-virtual {p1, v4}, Lcom/google/a/d/c/h;->a(I)V

    iget-object v5, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v5, v5, Lcom/google/a/d/c/k;->b:I

    sub-int/2addr v5, v4

    if-lez v5, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    const/4 v4, 0x0

    :goto_43
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v5

    if-nez v5, :cond_4b

    if-eqz v4, :cond_65

    :cond_4b
    const/16 v4, 0xf9

    if-gt v2, v4, :cond_54

    int-to-char v2, v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    goto :goto_65

    :cond_54
    const/16 v5, 0x613

    if-gt v2, v5, :cond_8b

    div-int/lit16 v5, v2, 0xfa

    add-int/2addr v5, v4

    int-to-char v4, v5

    invoke-virtual {v0, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    rem-int/lit16 v2, v2, 0xfa

    int-to-char v2, v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_65
    :goto_65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    :goto_69
    if-ge v1, v2, :cond_8a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    iget-object v5, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x95

    const/16 v6, 0xff

    rem-int/2addr v5, v6

    add-int/2addr v5, v3

    add-int/2addr v4, v5

    if-gt v4, v6, :cond_81

    :goto_7f
    int-to-char v4, v4

    goto :goto_84

    :cond_81
    add-int/lit16 v4, v4, -0x100

    goto :goto_7f

    :goto_84
    invoke-virtual {p1, v4}, Lcom/google/a/d/c/h;->a(C)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_8a
    return-void

    :cond_8b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Message length not in valid ranges: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
