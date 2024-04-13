.class final Lcom/google/a/d/c/m;
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

    const/4 v0, 0x2

    return v0
.end method

.method final a(CLjava/lang/StringBuilder;)I
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
    const/16 v2, 0x61

    if-lt p1, v2, :cond_23

    const/16 v3, 0x7a

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

    if-ne p1, v0, :cond_62

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_62
    const/16 v0, 0x41

    if-lt p1, v0, :cond_70

    const/16 v3, 0x5a

    if-gt p1, v3, :cond_70

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/2addr p1, v1

    goto :goto_3a

    :cond_70
    const/16 v0, 0x7b

    if-lt p1, v0, :cond_7f

    const/16 v1, 0x7f

    if-gt p1, v1, :cond_7f

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x1b

    goto :goto_3a

    :cond_7f
    const-string v0, "\u0001\u001e"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, -0x80

    int-to-char p1, p1

    invoke-virtual {p0, p1, p2}, Lcom/google/a/d/c/m;->a(CLjava/lang/StringBuilder;)I

    move-result p1

    add-int/2addr p1, v2

    return p1
.end method
