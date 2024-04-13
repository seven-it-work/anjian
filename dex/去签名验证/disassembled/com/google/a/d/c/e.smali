.class public final Lcom/google/a/d/c/e;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[B

.field private final c:Ljava/lang/CharSequence;

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;II)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/d/c/e;->c:Ljava/lang/CharSequence;

    iput p2, p0, Lcom/google/a/d/c/e;->a:I

    iput p3, p0, Lcom/google/a/d/c/e;->d:I

    mul-int p2, p2, p3

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/a/d/c/e;->b:[B

    iget-object p1, p0, Lcom/google/a/d/c/e;->b:[B

    const/4 p2, -0x1

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V

    return-void
.end method

.method private a(I)V
    .registers 8

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v0, v1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, p1, v3}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v0, v1

    const/4 v4, 0x3

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v3

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v1

    const/16 v1, 0x8

    invoke-direct {p0, v4, v0, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    return-void
.end method

.method private a(III)V
    .registers 8

    add-int/lit8 v0, p1, -0x2

    add-int/lit8 v1, p2, -0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p3, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    add-int/lit8 v2, p2, -0x1

    const/4 v3, 0x2

    invoke-direct {p0, v0, v2, p3, v3}, Lcom/google/a/d/c/e;->a(IIII)V

    add-int/lit8 v0, p1, -0x1

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, p3, v3}, Lcom/google/a/d/c/e;->a(IIII)V

    const/4 v3, 0x4

    invoke-direct {p0, v0, v2, p3, v3}, Lcom/google/a/d/c/e;->a(IIII)V

    const/4 v3, 0x5

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/google/a/d/c/e;->a(IIII)V

    const/4 v0, 0x6

    invoke-direct {p0, p1, v1, p3, v0}, Lcom/google/a/d/c/e;->a(IIII)V

    const/4 v0, 0x7

    invoke-direct {p0, p1, v2, p3, v0}, Lcom/google/a/d/c/e;->a(IIII)V

    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/a/d/c/e;->a(IIII)V

    return-void
.end method

.method private a(IIII)V
    .registers 6

    if-gez p1, :cond_e

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    add-int/2addr p1, v0

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p2, v0

    :cond_e
    if-gez p2, :cond_1c

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    add-int/2addr p2, v0

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    add-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x4

    add-int/2addr p1, v0

    :cond_1c
    iget-object v0, p0, Lcom/google/a/d/c/e;->c:Ljava/lang/CharSequence;

    invoke-interface {v0, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    rsub-int/lit8 p4, p4, 0x8

    const/4 v0, 0x1

    shl-int p4, v0, p4

    and-int/2addr p3, p4

    if-eqz p3, :cond_2b

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    invoke-direct {p0, p2, p1, v0}, Lcom/google/a/d/c/e;->a(IIZ)V

    return-void
.end method

.method private a(IIZ)V
    .registers 6

    iget-object v0, p0, Lcom/google/a/d/c/e;->b:[B

    iget v1, p0, Lcom/google/a/d/c/e;->a:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    int-to-byte p1, p3

    aput-byte p1, v0, p2

    return-void
.end method

.method private a(II)Z
    .registers 5

    iget-object v0, p0, Lcom/google/a/d/c/e;->b:[B

    iget v1, p0, Lcom/google/a/d/c/e;->a:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    const/4 p2, 0x1

    if-ne p1, p2, :cond_d

    return p2

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    return v0
.end method

.method private b(I)V
    .registers 8

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v0, v2

    invoke-direct {p0, v0, v3, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    const/4 v5, 0x4

    sub-int/2addr v0, v5

    invoke-direct {p0, v3, v0, p1, v5}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v4

    const/4 v1, 0x6

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v2

    const/4 v1, 0x7

    invoke-direct {p0, v3, v0, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v2

    const/16 v1, 0x8

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    return-void
.end method

.method private b(II)Z
    .registers 5

    iget-object v0, p0, Lcom/google/a/d/c/e;->b:[B

    iget v1, p0, Lcom/google/a/d/c/e;->a:I

    mul-int p2, p2, v1

    add-int/2addr p2, p1

    aget-byte p1, v0, p2

    if-ltz p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    return v0
.end method

.method private c(I)V
    .registers 8

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    const/4 v1, 0x3

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-direct {p0, v0, v2, p1, v4}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v0, v3

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v3

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-direct {p0, v3, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v3

    const/4 v2, 0x7

    invoke-direct {p0, v4, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v3

    const/16 v2, 0x8

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    return-void
.end method

.method private d(I)V
    .registers 8

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1, v1}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v0, v1

    iget v3, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v3, v1

    const/4 v4, 0x2

    invoke-direct {p0, v0, v3, p1, v4}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    const/4 v3, 0x3

    sub-int/2addr v0, v3

    invoke-direct {p0, v2, v0, p1, v3}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v4

    const/4 v5, 0x4

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v1

    const/4 v5, 0x5

    invoke-direct {p0, v2, v0, p1, v5}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v3

    const/4 v2, 0x6

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v4

    const/4 v2, 0x7

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    invoke-direct {p0, v1, v0, p1, v2}, Lcom/google/a/d/c/e;->a(IIII)V

    return-void
.end method

.method private d()[B
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/c/e;->b:[B

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 16

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_5
    iget v5, p0, Lcom/google/a/d/c/e;->d:I

    const/4 v6, 0x7

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/16 v9, 0x8

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v2, v5, :cond_46

    if-nez v3, :cond_46

    add-int/lit8 v5, v4, 0x1

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v13, v1, v4, v12}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v13, v12, v4, v11}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v13, v11, v4, v10}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v11

    invoke-direct {p0, v1, v13, v4, v0}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v1, v13, v4, v8}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v12, v13, v4, v7}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v11, v13, v4, v6}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v10, v13, v4, v9}, Lcom/google/a/d/c/e;->a(IIII)V

    move v4, v5

    :cond_46
    iget v5, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v5, v11

    if-ne v2, v5, :cond_85

    if-nez v3, :cond_85

    iget v5, p0, Lcom/google/a/d/c/e;->a:I

    rem-int/2addr v5, v0

    if-eqz v5, :cond_85

    add-int/lit8 v5, v4, 0x1

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v10

    invoke-direct {p0, v13, v1, v4, v12}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v11

    invoke-direct {p0, v13, v1, v4, v11}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v13, v1, v4, v10}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v0

    invoke-direct {p0, v1, v13, v4, v0}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v10

    invoke-direct {p0, v1, v13, v4, v8}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v11

    invoke-direct {p0, v1, v13, v4, v7}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v1, v13, v4, v6}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v12, v13, v4, v9}, Lcom/google/a/d/c/e;->a(IIII)V

    move v4, v5

    :cond_85
    iget v5, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v5, v11

    if-ne v2, v5, :cond_c4

    if-nez v3, :cond_c4

    iget v5, p0, Lcom/google/a/d/c/e;->a:I

    rem-int/2addr v5, v9

    if-ne v5, v0, :cond_c4

    add-int/lit8 v5, v4, 0x1

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v10

    invoke-direct {p0, v13, v1, v4, v12}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v11

    invoke-direct {p0, v13, v1, v4, v11}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v13, v1, v4, v10}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v11

    invoke-direct {p0, v1, v13, v4, v0}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v1, v13, v4, v8}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v12, v13, v4, v7}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v11, v13, v4, v6}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v10, v13, v4, v9}, Lcom/google/a/d/c/e;->a(IIII)V

    move v4, v5

    :cond_c4
    iget v5, p0, Lcom/google/a/d/c/e;->d:I

    add-int/2addr v5, v0

    if-ne v2, v5, :cond_106

    if-ne v3, v11, :cond_106

    iget v5, p0, Lcom/google/a/d/c/e;->a:I

    rem-int/2addr v5, v9

    if-nez v5, :cond_106

    add-int/lit8 v5, v4, 0x1

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v13, v1, v4, v12}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v13, v12

    iget v14, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v14, v12

    invoke-direct {p0, v13, v14, v4, v11}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v10

    invoke-direct {p0, v1, v13, v4, v10}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v11

    invoke-direct {p0, v1, v13, v4, v0}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v13, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v13, v12

    invoke-direct {p0, v1, v13, v4, v8}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v8, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v8, v10

    invoke-direct {p0, v12, v8, v4, v7}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v7, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v7, v11

    invoke-direct {p0, v12, v7, v4, v6}, Lcom/google/a/d/c/e;->a(IIII)V

    iget v6, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v6, v12

    invoke-direct {p0, v12, v6, v4, v9}, Lcom/google/a/d/c/e;->a(IIII)V

    move v4, v5

    :cond_106
    iget v5, p0, Lcom/google/a/d/c/e;->d:I

    if-ge v2, v5, :cond_118

    if-ltz v3, :cond_118

    invoke-direct {p0, v3, v2}, Lcom/google/a/d/c/e;->b(II)Z

    move-result v5

    if-nez v5, :cond_118

    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/google/a/d/c/e;->a(III)V

    move v4, v5

    :cond_118
    add-int/lit8 v2, v2, -0x2

    add-int/lit8 v3, v3, 0x2

    if-ltz v2, :cond_122

    iget v5, p0, Lcom/google/a/d/c/e;->a:I

    if-lt v3, v5, :cond_106

    :cond_122
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x3

    :cond_126
    if-ltz v2, :cond_138

    iget v5, p0, Lcom/google/a/d/c/e;->a:I

    if-ge v3, v5, :cond_138

    invoke-direct {p0, v3, v2}, Lcom/google/a/d/c/e;->b(II)Z

    move-result v5

    if-nez v5, :cond_138

    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/google/a/d/c/e;->a(III)V

    move v4, v5

    :cond_138
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, -0x2

    iget v5, p0, Lcom/google/a/d/c/e;->d:I

    if-ge v2, v5, :cond_142

    if-gez v3, :cond_126

    :cond_142
    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v3, 0x1

    iget v5, p0, Lcom/google/a/d/c/e;->d:I

    if-lt v2, v5, :cond_5

    iget v5, p0, Lcom/google/a/d/c/e;->a:I

    if-lt v3, v5, :cond_5

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v12

    iget v1, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v1, v12

    invoke-direct {p0, v0, v1}, Lcom/google/a/d/c/e;->b(II)Z

    move-result v0

    if-nez v0, :cond_16c

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v12

    iget v1, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v1, v12

    invoke-direct {p0, v0, v1, v12}, Lcom/google/a/d/c/e;->a(IIZ)V

    iget v0, p0, Lcom/google/a/d/c/e;->a:I

    sub-int/2addr v0, v11

    iget v1, p0, Lcom/google/a/d/c/e;->d:I

    sub-int/2addr v1, v11

    invoke-direct {p0, v0, v1, v12}, Lcom/google/a/d/c/e;->a(IIZ)V

    :cond_16c
    return-void
.end method
