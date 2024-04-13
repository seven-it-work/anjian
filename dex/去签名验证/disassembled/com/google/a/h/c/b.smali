.class final Lcom/google/a/h/c/b;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field private b:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/a/h/c/b;->a:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/a/h/c/b;->b:I

    return-void
.end method

.method private a(IB)V
    .registers 4

    iget-object v0, p0, Lcom/google/a/h/c/b;->a:[B

    aput-byte p2, v0, p1

    return-void
.end method

.method private a(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/google/a/h/c/b;->a:[B

    int-to-byte p2, p2

    aput-byte p2, v0, p1

    return-void
.end method

.method private a(I)[B
    .registers 6

    iget-object v0, p0, Lcom/google/a/h/c/b;->a:[B

    array-length v0, v0

    mul-int v0, v0, p1

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_16

    iget-object v2, p0, Lcom/google/a/h/c/b;->a:[B

    div-int v3, v1, p1

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_16
    return-object v0
.end method


# virtual methods
.method final a(ZI)V
    .registers 7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_11

    iget v1, p0, Lcom/google/a/h/c/b;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/a/h/c/b;->b:I

    iget-object v2, p0, Lcom/google/a/h/c/b;->a:[B

    int-to-byte v3, p1

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_11
    return-void
.end method
