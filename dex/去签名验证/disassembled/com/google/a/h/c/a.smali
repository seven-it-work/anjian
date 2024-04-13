.class public final Lcom/google/a/h/c/a;
.super Ljava/lang/Object;


# instance fields
.field a:I

.field private final b:[Lcom/google/a/h/c/b;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(II)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [Lcom/google/a/h/c/b;

    iput-object v0, p0, Lcom/google/a/h/c/a;->b:[Lcom/google/a/h/c/b;

    iget-object v0, p0, Lcom/google/a/h/c/a;->b:[Lcom/google/a/h/c/b;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_b
    if-ge v1, v0, :cond_1f

    iget-object v2, p0, Lcom/google/a/h/c/a;->b:[Lcom/google/a/h/c/b;

    new-instance v3, Lcom/google/a/h/c/b;

    add-int/lit8 v4, p2, 0x4

    mul-int/lit8 v4, v4, 0x11

    add-int/lit8 v4, v4, 0x1

    invoke-direct {v3, v4}, Lcom/google/a/h/c/b;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    :cond_1f
    mul-int/lit8 p2, p2, 0x11

    iput p2, p0, Lcom/google/a/h/c/a;->d:I

    iput p1, p0, Lcom/google/a/h/c/a;->c:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/a/h/c/a;->a:I

    return-void
.end method

.method private a(IIB)V
    .registers 5

    iget-object v0, p0, Lcom/google/a/h/c/a;->b:[Lcom/google/a/h/c/b;

    aget-object p2, v0, p2

    iget-object p2, p2, Lcom/google/a/h/c/b;->a:[B

    aput-byte p3, p2, p1

    return-void
.end method

.method private b()V
    .registers 2

    iget v0, p0, Lcom/google/a/h/c/a;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/h/c/a;->a:I

    return-void
.end method

.method private c()[[B
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/google/a/h/c/a;->a(II)[[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method final a()Lcom/google/a/h/c/b;
    .registers 3

    iget-object v0, p0, Lcom/google/a/h/c/a;->b:[Lcom/google/a/h/c/b;

    iget v1, p0, Lcom/google/a/h/c/a;->a:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public final a(II)[[B
    .registers 13

    iget v0, p0, Lcom/google/a/h/c/a;->c:I

    mul-int v0, v0, p2

    iget v1, p0, Lcom/google/a/h/c/a;->d:I

    mul-int v1, v1, p1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iget v1, p0, Lcom/google/a/h/c/a;->c:I

    mul-int v1, v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v1, :cond_41

    sub-int v4, v1, v3

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/google/a/h/c/a;->b:[Lcom/google/a/h/c/b;

    div-int v6, v3, p2

    aget-object v5, v5, v6

    iget-object v6, v5, Lcom/google/a/h/c/b;->a:[B

    array-length v6, v6

    mul-int v6, v6, p1

    new-array v6, v6, [B

    const/4 v7, 0x0

    :goto_2e
    array-length v8, v6

    if-ge v7, v8, :cond_3c

    iget-object v8, v5, Lcom/google/a/h/c/b;->a:[B

    div-int v9, v7, p1

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    :cond_3c
    aput-object v6, v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_41
    return-object v0
.end method
