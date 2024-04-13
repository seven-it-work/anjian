.class abstract Lcom/google/a/g/a/a/a/h;
.super Lcom/google/a/g/a/a/a/j;


# static fields
.field static final a:I = 0x28


# direct methods
.method constructor <init>(Lcom/google/a/c/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/a/g/a/a/a/j;-><init>(Lcom/google/a/c/a;)V

    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0xd

    if-ge v1, v3, :cond_19

    add-int v3, v1, p1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x30

    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_15

    mul-int/lit8 v3, v3, 0x3

    :cond_15
    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_19
    const/16 p1, 0xa

    rem-int/2addr v2, p1

    rsub-int/lit8 v1, v2, 0xa

    if-ne v1, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/StringBuilder;II)V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    const/16 v3, 0x30

    const/16 v4, 0xa

    if-ge v1, v2, :cond_26

    iget-object v2, p0, Lcom/google/a/g/a/a/a/j;->c:Lcom/google/a/g/a/a/a/s;

    mul-int/lit8 v5, v1, 0xa

    add-int/2addr v5, p2

    invoke-virtual {v2, v5, v4}, Lcom/google/a/g/a/a/a/s;->a(II)I

    move-result v2

    div-int/lit8 v4, v2, 0x64

    if-nez v4, :cond_19

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_19
    div-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_20

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_20
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    const/4 p2, 0x0

    const/4 v1, 0x0

    :goto_28
    const/16 v2, 0xd

    if-ge p2, v2, :cond_3d

    add-int v2, p2, p3

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    sub-int/2addr v2, v3

    and-int/lit8 v5, p2, 0x1

    if-nez v5, :cond_39

    mul-int/lit8 v2, v2, 0x3

    :cond_39
    add-int/2addr v1, v2

    add-int/lit8 p2, p2, 0x1

    goto :goto_28

    :cond_3d
    rem-int/2addr v1, v4

    rsub-int/lit8 p2, v1, 0xa

    if-ne p2, v4, :cond_43

    const/4 p2, 0x0

    :cond_43
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    return-void
.end method

.method final b(Ljava/lang/StringBuilder;I)V
    .registers 5

    const-string v0, "(01)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v1, 0x39

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/a/g/a/a/a/h;->a(Ljava/lang/StringBuilder;II)V

    return-void
.end method
