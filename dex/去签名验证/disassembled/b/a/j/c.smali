.class final Lb/a/j/c;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:[C


# direct methods
.method constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "RFC2253"

    invoke-virtual {p1, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    iget-object p1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lb/a/j/c;->b:I

    return-void
.end method

.method private a(I)I
    .registers 10

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lb/a/j/c;->b:I

    if-lt v0, v1, :cond_1c

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1c
    iget-object v1, p0, Lb/a/j/c;->g:[C

    aget-char p1, v1, p1

    const/16 v1, 0x46

    const/16 v2, 0x41

    const/16 v3, 0x66

    const/16 v4, 0x61

    const/16 v5, 0x39

    const/16 v6, 0x30

    if-lt p1, v6, :cond_32

    if-gt p1, v5, :cond_32

    sub-int/2addr p1, v6

    goto :goto_3f

    :cond_32
    if-lt p1, v4, :cond_39

    if-gt p1, v3, :cond_39

    add-int/lit8 p1, p1, -0x57

    goto :goto_3f

    :cond_39
    if-lt p1, v2, :cond_70

    if-gt p1, v1, :cond_70

    add-int/lit8 p1, p1, -0x37

    :goto_3f
    iget-object v7, p0, Lb/a/j/c;->g:[C

    aget-char v0, v7, v0

    if-lt v0, v6, :cond_49

    if-gt v0, v5, :cond_49

    sub-int/2addr v0, v6

    goto :goto_56

    :cond_49
    if-lt v0, v4, :cond_50

    if-gt v0, v3, :cond_50

    add-int/lit8 v0, v0, -0x57

    goto :goto_56

    :cond_50
    if-lt v0, v2, :cond_5a

    if-gt v0, v1, :cond_5a

    add-int/lit8 v0, v0, -0x37

    :goto_56
    shl-int/lit8 p1, p1, 0x4

    add-int/2addr p1, v0

    return p1

    :cond_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_70
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    iput v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->d:I

    iput v0, p0, Lb/a/j/c;->e:I

    iput v0, p0, Lb/a/j/c;->f:I

    iget-object v0, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lb/a/j/c;->g:[C

    invoke-virtual {p0}, Lb/a/j/c;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    const-string v2, ""

    iget v3, p0, Lb/a/j/c;->c:I

    iget v4, p0, Lb/a/j/c;->b:I

    if-ne v3, v4, :cond_22

    return-object v1

    :cond_22
    iget-object v3, p0, Lb/a/j/c;->g:[C

    iget v4, p0, Lb/a/j/c;->c:I

    aget-char v3, v3, v4

    sparse-switch v3, :sswitch_data_122

    invoke-virtual {p0}, Lb/a/j/c;->c()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bd

    :sswitch_31
    invoke-virtual {p0}, Lb/a/j/c;->b()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_bd

    :sswitch_37
    iget v2, p0, Lb/a/j/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/a/j/c;->c:I

    iget v2, p0, Lb/a/j/c;->c:I

    iput v2, p0, Lb/a/j/c;->d:I

    iget v2, p0, Lb/a/j/c;->d:I

    :goto_43
    iput v2, p0, Lb/a/j/c;->e:I

    iget v2, p0, Lb/a/j/c;->c:I

    iget v3, p0, Lb/a/j/c;->b:I

    if-ne v2, v3, :cond_61

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end of DN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_61
    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->c:I

    aget-char v2, v2, v3

    const/16 v3, 0x22

    if-ne v2, v3, :cond_91

    :goto_6b
    iget v2, p0, Lb/a/j/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/a/j/c;->c:I

    iget v2, p0, Lb/a/j/c;->c:I

    iget v3, p0, Lb/a/j/c;->b:I

    if-ge v2, v3, :cond_82

    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->c:I

    aget-char v2, v2, v3

    const/16 v3, 0x20

    if-ne v2, v3, :cond_82

    goto :goto_6b

    :cond_82
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lb/a/j/c;->g:[C

    iget v4, p0, Lb/a/j/c;->d:I

    iget v5, p0, Lb/a/j/c;->e:I

    iget v6, p0, Lb/a/j/c;->d:I

    sub-int/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Ljava/lang/String;-><init>([CII)V

    goto :goto_bd

    :cond_91
    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->c:I

    aget-char v2, v2, v3

    const/16 v3, 0x5c

    if-ne v2, v3, :cond_a6

    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->e:I

    invoke-virtual {p0}, Lb/a/j/c;->d()C

    move-result v4

    aput-char v4, v2, v3

    goto :goto_b2

    :cond_a6
    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->e:I

    iget-object v4, p0, Lb/a/j/c;->g:[C

    iget v5, p0, Lb/a/j/c;->c:I

    aget-char v4, v4, v5

    aput-char v4, v2, v3

    :goto_b2
    iget v2, p0, Lb/a/j/c;->c:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lb/a/j/c;->c:I

    iget v2, p0, Lb/a/j/c;->e:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    :goto_bd
    :sswitch_bd
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c4

    return-object v2

    :cond_c4
    iget v0, p0, Lb/a/j/c;->c:I

    iget v2, p0, Lb/a/j/c;->b:I

    if-lt v0, v2, :cond_cb

    return-object v1

    :cond_cb
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_ff

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x3b

    if-eq v0, v2, :cond_ff

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_ff

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ff
    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    invoke-virtual {p0}, Lb/a/j/c;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_19

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :sswitch_data_122
    .sparse-switch
        0x22 -> :sswitch_37
        0x23 -> :sswitch_31
        0x2b -> :sswitch_bd
        0x2c -> :sswitch_bd
        0x3b -> :sswitch_bd
    .end sparse-switch
.end method

.method private e()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->d:I

    iget v0, p0, Lb/a/j/c;->d:I

    :goto_c
    iput v0, p0, Lb/a/j/c;->e:I

    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-ne v0, v1, :cond_2a

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x22

    if-ne v0, v1, :cond_5a

    :goto_34
    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-ge v0, v1, :cond_4b

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_4b

    goto :goto_34

    :cond_4b
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    iget v3, p0, Lb/a/j/c;->e:I

    iget v4, p0, Lb/a/j/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_5a
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_6f

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->e:I

    invoke-virtual {p0}, Lb/a/j/c;->d()C

    move-result v2

    aput-char v2, v0, v1

    goto :goto_7b

    :cond_6f
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->e:I

    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    :goto_7b
    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_c
.end method

.method private f()C
    .registers 9

    iget v0, p0, Lb/a/j/c;->c:I

    invoke-direct {p0, v0}, Lb/a/j/c;->a(I)I

    move-result v0

    iget v1, p0, Lb/a/j/c;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lb/a/j/c;->c:I

    const/16 v1, 0x80

    if-ge v0, v1, :cond_12

    int-to-char v0, v0

    return v0

    :cond_12
    const/16 v3, 0xc0

    const/16 v4, 0x3f

    if-lt v0, v3, :cond_68

    const/16 v3, 0xf7

    if-gt v0, v3, :cond_68

    const/16 v3, 0xdf

    if-gt v0, v3, :cond_24

    and-int/lit8 v0, v0, 0x1f

    const/4 v3, 0x1

    goto :goto_2f

    :cond_24
    const/16 v3, 0xef

    if-gt v0, v3, :cond_2c

    const/4 v3, 0x2

    and-int/lit8 v0, v0, 0xf

    goto :goto_2f

    :cond_2c
    const/4 v3, 0x3

    and-int/lit8 v0, v0, 0x7

    :goto_2f
    const/4 v5, 0x0

    :goto_30
    if-ge v5, v3, :cond_66

    iget v6, p0, Lb/a/j/c;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Lb/a/j/c;->c:I

    iget v6, p0, Lb/a/j/c;->c:I

    iget v7, p0, Lb/a/j/c;->b:I

    if-eq v6, v7, :cond_65

    iget-object v6, p0, Lb/a/j/c;->g:[C

    iget v7, p0, Lb/a/j/c;->c:I

    aget-char v6, v6, v7

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_48

    return v4

    :cond_48
    iget v6, p0, Lb/a/j/c;->c:I

    add-int/2addr v6, v2

    iput v6, p0, Lb/a/j/c;->c:I

    iget v6, p0, Lb/a/j/c;->c:I

    invoke-direct {p0, v6}, Lb/a/j/c;->a(I)I

    move-result v6

    iget v7, p0, Lb/a/j/c;->c:I

    add-int/2addr v7, v2

    iput v7, p0, Lb/a/j/c;->c:I

    and-int/lit16 v7, v6, 0xc0

    if-eq v7, v1, :cond_5d

    return v4

    :cond_5d
    shl-int/lit8 v0, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    add-int/2addr v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    :cond_65
    return v4

    :cond_66
    int-to-char v0, v0

    return v0

    :cond_68
    return v4
.end method


# virtual methods
.method final a()Ljava/lang/String;
    .registers 6

    :goto_0
    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    const/16 v2, 0x20

    if-ge v0, v1, :cond_17

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_17

    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    goto :goto_0

    :cond_17
    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x0

    return-object v0

    :cond_1f
    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->d:I

    :goto_23
    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    const/16 v3, 0x3d

    if-ge v0, v1, :cond_42

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_42

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_42

    goto :goto_23

    :cond_42
    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-lt v0, v1, :cond_5e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5e
    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->e:I

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_ab

    :goto_6a
    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-ge v0, v1, :cond_87

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v3, :cond_87

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v2, :cond_87

    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    goto :goto_6a

    :cond_87
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-ne v0, v3, :cond_95

    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-ne v0, v1, :cond_ab

    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-ge v0, v1, :cond_bf

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    if-eq v0, v2, :cond_ab

    :cond_bf
    iget v0, p0, Lb/a/j/c;->e:I

    iget v1, p0, Lb/a/j/c;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x4

    if-le v0, v1, :cond_11c

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    add-int/lit8 v2, v2, 0x3

    aget-char v0, v0, v2

    const/16 v2, 0x2e

    if-ne v0, v2, :cond_11c

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    aget-char v0, v0, v2

    const/16 v2, 0x4f

    if-eq v0, v2, :cond_e7

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    aget-char v0, v0, v2

    const/16 v2, 0x6f

    if-ne v0, v2, :cond_11c

    :cond_e7
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-char v0, v0, v2

    const/16 v2, 0x49

    if-eq v0, v2, :cond_ff

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    add-int/lit8 v2, v2, 0x1

    aget-char v0, v0, v2

    const/16 v2, 0x69

    if-ne v0, v2, :cond_11c

    :cond_ff
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x44

    if-eq v0, v2, :cond_117

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    add-int/lit8 v2, v2, 0x2

    aget-char v0, v0, v2

    const/16 v2, 0x64

    if-ne v0, v2, :cond_11c

    :cond_117
    iget v0, p0, Lb/a/j/c;->d:I

    add-int/2addr v0, v1

    iput v0, p0, Lb/a/j/c;->d:I

    :cond_11c
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    iget v3, p0, Lb/a/j/c;->e:I

    iget v4, p0, Lb/a/j/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method final b()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lb/a/j/c;->b:I

    if-lt v0, v1, :cond_1e

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->d:I

    iget v0, p0, Lb/a/j/c;->c:I

    :goto_24
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-eq v0, v1, :cond_91

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_91

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_91

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    if-ne v0, v1, :cond_4d

    goto :goto_91

    :cond_4d
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_70

    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->e:I

    :goto_5b
    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->c:I

    iget v2, p0, Lb/a/j/c;->b:I

    if-ge v0, v2, :cond_95

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_95

    goto :goto_5b

    :cond_70
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x41

    if-lt v0, v2, :cond_8e

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x46

    if-gt v0, v2, :cond_8e

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v3, v0, v2

    add-int/2addr v3, v1

    int-to-char v1, v3

    aput-char v1, v0, v2

    :cond_8e
    iget v0, p0, Lb/a/j/c;->c:I

    goto :goto_24

    :cond_91
    :goto_91
    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->e:I

    :cond_95
    iget v0, p0, Lb/a/j/c;->e:I

    iget v1, p0, Lb/a/j/c;->d:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-lt v0, v1, :cond_c4

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_a2

    goto :goto_c4

    :cond_a2
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget v3, p0, Lb/a/j/c;->d:I

    add-int/lit8 v3, v3, 0x1

    :goto_ab
    array-length v4, v1

    if-ge v2, v4, :cond_ba

    invoke-direct {p0, v3}, Lb/a/j/c;->a(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_ab

    :cond_ba
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->d:I

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    :cond_c4
    :goto_c4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final c()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->d:I

    iget v0, p0, Lb/a/j/c;->c:I

    iput v0, p0, Lb/a/j/c;->e:I

    :cond_8
    :goto_8
    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-lt v0, v1, :cond_1d

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    iget v3, p0, Lb/a/j/c;->e:I

    iget v4, p0, Lb/a/j/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_1d
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x3b

    const/16 v2, 0x20

    if-eq v0, v2, :cond_67

    if-eq v0, v1, :cond_58

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_49

    packed-switch v0, :pswitch_data_cc

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/j/c;->e:I

    iget-object v2, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->c:I

    aget-char v2, v2, v3

    aput-char v2, v0, v1

    :goto_42
    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    goto :goto_8

    :cond_49
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lb/a/j/c;->e:I

    invoke-virtual {p0}, Lb/a/j/c;->d()C

    move-result v2

    aput-char v2, v0, v1

    goto :goto_42

    :cond_58
    :pswitch_58
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    iget v3, p0, Lb/a/j/c;->e:I

    iget v4, p0, Lb/a/j/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    :cond_67
    iget v0, p0, Lb/a/j/c;->e:I

    iput v0, p0, Lb/a/j/c;->f:I

    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lb/a/j/c;->e:I

    aput-char v2, v0, v3

    :goto_7b
    iget v0, p0, Lb/a/j/c;->c:I

    iget v3, p0, Lb/a/j/c;->b:I

    if-ge v0, v3, :cond_9a

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v3

    if-ne v0, v2, :cond_9a

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v3, p0, Lb/a/j/c;->e:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lb/a/j/c;->e:I

    aput-char v2, v0, v3

    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    goto :goto_7b

    :cond_9a
    iget v0, p0, Lb/a/j/c;->c:I

    iget v2, p0, Lb/a/j/c;->b:I

    if-eq v0, v2, :cond_bc

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_bc

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_bc

    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v2

    if-ne v0, v1, :cond_8

    :cond_bc
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lb/a/j/c;->g:[C

    iget v2, p0, Lb/a/j/c;->d:I

    iget v3, p0, Lb/a/j/c;->f:I

    iget v4, p0, Lb/a/j/c;->d:I

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0

    nop

    :pswitch_data_cc
    .packed-switch 0x2b
        :pswitch_58
        :pswitch_58
    .end packed-switch
.end method

.method final d()C
    .registers 4

    iget v0, p0, Lb/a/j/c;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lb/a/j/c;->c:I

    iget v0, p0, Lb/a/j/c;->c:I

    iget v1, p0, Lb/a/j/c;->b:I

    if-ne v0, v1, :cond_22

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected end of DN: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_22
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_46

    const/16 v1, 0x25

    if-eq v0, v1, :cond_46

    const/16 v1, 0x5c

    if-eq v0, v1, :cond_46

    const/16 v1, 0x5f

    if-eq v0, v1, :cond_46

    packed-switch v0, :pswitch_data_4e

    packed-switch v0, :pswitch_data_56

    packed-switch v0, :pswitch_data_60

    invoke-direct {p0}, Lb/a/j/c;->f()C

    move-result v0

    return v0

    :cond_46
    :pswitch_46
    iget-object v0, p0, Lb/a/j/c;->g:[C

    iget v1, p0, Lb/a/j/c;->c:I

    aget-char v0, v0, v1

    return v0

    nop

    :pswitch_data_4e
    .packed-switch 0x22
        :pswitch_46
        :pswitch_46
    .end packed-switch

    :pswitch_data_56
    .packed-switch 0x2a
        :pswitch_46
        :pswitch_46
        :pswitch_46
    .end packed-switch

    :pswitch_data_60
    .packed-switch 0x3b
        :pswitch_46
        :pswitch_46
        :pswitch_46
        :pswitch_46
    .end packed-switch
.end method
