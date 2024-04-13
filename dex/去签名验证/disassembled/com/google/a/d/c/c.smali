.class Lcom/google/a/d/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/d/c/g;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I
    .registers 6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int p4, v0, p4

    invoke-virtual {p2, p4, v0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    iget p2, p1, Lcom/google/a/d/c/h;->f:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result p2

    invoke-virtual {p0, p2, p3}, Lcom/google/a/d/c/c;->a(CLjava/lang/StringBuilder;)I

    move-result p2

    const/4 p3, 0x0

    iput-object p3, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    return p2
.end method

.method private static a(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    mul-int/lit16 v1, v1, 0x640

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v1, v3

    add-int/2addr v1, p0

    add-int/2addr v1, v2

    div-int/lit16 p0, v1, 0x100

    int-to-char p0, p0

    rem-int/lit16 v1, v1, 0x100

    int-to-char v1, v1

    new-instance v3, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char p0, v4, v0

    aput-char v1, v4, v2

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    return-object v3
.end method

.method static a(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V
    .registers 8

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    mul-int/lit16 v1, v1, 0x640

    mul-int/lit8 v3, v3, 0x28

    add-int/2addr v1, v3

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    div-int/lit16 v3, v1, 0x100

    int-to-char v3, v3

    rem-int/lit16 v1, v1, 0x100

    int-to-char v1, v1

    new-instance v5, Ljava/lang/String;

    new-array v4, v4, [C

    aput-char v3, v4, v0

    aput-char v1, v4, v2

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v5}, Lcom/google/a/d/c/h;->a(Ljava/lang/String;)V

    const/4 p0, 0x3

    invoke-virtual {p1, v0, p0}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method a(CLjava/lang/StringBuilder;)I
    .registers 7

    const/16 v0, 0x20

    const/4 v1, 0x1

    if-ne p1, v0, :cond_a

    const/4 p1, 0x3

    :goto_6
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v1

    :cond_a
    const/16 v2, 0x30

    if-lt p1, v2, :cond_17

    const/16 v3, 0x39

    if-gt p1, v3, :cond_17

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0x4

    :goto_15
    int-to-char p1, p1

    goto :goto_6

    :cond_17
    const/16 v2, 0x41

    if-lt p1, v2, :cond_23

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_23

    sub-int/2addr p1, v2

    add-int/lit8 p1, p1, 0xe

    goto :goto_15

    :cond_23
    const/4 v2, 0x2

    if-ge p1, v0, :cond_2e

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2a
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return v2

    :cond_2e
    const/16 v0, 0x21

    if-lt p1, v0, :cond_3c

    const/16 v3, 0x2f

    if-gt p1, v3, :cond_3c

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_39
    sub-int/2addr p1, v0

    :goto_3a
    int-to-char p1, p1

    goto :goto_2a

    :cond_3c
    const/16 v0, 0x3a

    if-lt p1, v0, :cond_4b

    const/16 v3, 0x40

    if-gt p1, v3, :cond_4b

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0xf

    goto :goto_3a

    :cond_4b
    const/16 v0, 0x5b

    if-lt p1, v0, :cond_5a

    const/16 v3, 0x5f

    if-gt p1, v3, :cond_5a

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x16

    goto :goto_3a

    :cond_5a
    const/16 v0, 0x60

    if-lt p1, v0, :cond_66

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_66

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_66
    const-string v0, "\u0001\u001e"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x80

    int-to-char p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/google/a/d/c/c;->a(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method

.method public a(Lcom/google/a/d/c/h;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :cond_5
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->a()C

    move-result v1

    iget v2, p1, Lcom/google/a/d/c/h;->f:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {p0, v1, v0}, Lcom/google/a/d/c/c;->a(CLjava/lang/StringBuilder;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v4, 0x3

    div-int/2addr v2, v4

    shl-int/2addr v2, v3

    iget-object v5, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {p1, v5}, Lcom/google/a/d/c/h;->a(I)V

    iget-object v2, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v2, v2, Lcom/google/a/d/c/k;->b:I

    sub-int/2addr v2, v5

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result v5

    if-nez v5, :cond_58

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4a

    if-lt v2, v7, :cond_46

    if-le v2, v7, :cond_4a

    :cond_46
    :goto_46
    invoke-direct {p0, p1, v0, v5, v1}, Lcom/google/a/d/c/c;->a(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;I)I

    move-result v1

    :cond_4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    rem-int/2addr v6, v4

    if-ne v6, v3, :cond_74

    if-gt v1, v4, :cond_55

    if-ne v2, v3, :cond_46

    :cond_55
    if-le v1, v4, :cond_74

    goto :goto_46

    :cond_58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    rem-int/2addr v1, v4

    if-nez v1, :cond_5

    iget-object v1, p1, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v2, p1, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {p0}, Lcom/google/a/d/c/c;->a()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/google/a/d/c/j;->a(Ljava/lang/CharSequence;II)I

    move-result v1

    invoke-virtual {p0}, Lcom/google/a/d/c/c;->a()I

    move-result v2

    if-eq v1, v2, :cond_5

    const/4 v1, 0x0

    iput v1, p1, Lcom/google/a/d/c/h;->g:I

    :cond_74
    invoke-virtual {p0, p1, v0}, Lcom/google/a/d/c/c;->b(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method b(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V
    .registers 10

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x3

    div-int/2addr v0, v1

    const/4 v2, 0x1

    shl-int/2addr v0, v2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    rem-int/2addr v3, v1

    iget-object v4, p1, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v4}, Lcom/google/a/d/c/h;->a(I)V

    iget-object v0, p1, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v0, v0, Lcom/google/a/d/c/k;->b:I

    sub-int/2addr v0, v4

    const/4 v4, 0x0

    const/16 v5, 0xfe

    const/4 v6, 0x2

    if-ne v3, v6, :cond_39

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_25
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_2f

    invoke-static {p1, p2}, Lcom/google/a/d/c/c;->a(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V

    goto :goto_25

    :cond_2f
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result p2

    if-eqz p2, :cond_6b

    :cond_35
    :goto_35
    invoke-virtual {p1, v5}, Lcom/google/a/d/c/h;->a(C)V

    goto :goto_6b

    :cond_39
    if-ne v0, v2, :cond_56

    if-ne v3, v2, :cond_56

    :goto_3d
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lt v0, v1, :cond_47

    invoke-static {p1, p2}, Lcom/google/a/d/c/c;->a(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V

    goto :goto_3d

    :cond_47
    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result p2

    if-eqz p2, :cond_50

    invoke-virtual {p1, v5}, Lcom/google/a/d/c/h;->a(C)V

    :cond_50
    iget p2, p1, Lcom/google/a/d/c/h;->f:I

    sub-int/2addr p2, v2

    iput p2, p1, Lcom/google/a/d/c/h;->f:I

    goto :goto_6b

    :cond_56
    if-nez v3, :cond_6e

    :goto_58
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lt v2, v1, :cond_62

    invoke-static {p1, p2}, Lcom/google/a/d/c/c;->a(Lcom/google/a/d/c/h;Ljava/lang/StringBuilder;)V

    goto :goto_58

    :cond_62
    if-gtz v0, :cond_35

    invoke-virtual {p1}, Lcom/google/a/d/c/h;->b()Z

    move-result p2

    if-eqz p2, :cond_6b

    goto :goto_35

    :cond_6b
    :goto_6b
    iput v4, p1, Lcom/google/a/d/c/h;->g:I

    return-void

    :cond_6e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unexpected case. Please report!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
