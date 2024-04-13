.class public final Lcom/google/a/i/c/b;
.super Ljava/lang/Object;


# instance fields
.field final a:[[B

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {p2, p1}, [I

    move-result-object v0

    const-class v1, B

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    iput p1, p0, Lcom/google/a/i/c/b;->b:I

    iput p2, p0, Lcom/google/a/i/c/b;->c:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/c/b;->c:I

    return v0
.end method

.method private a(IIB)V
    .registers 5

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    aget-object p2, v0, p2

    aput-byte p3, p2, p1

    return-void
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/c/b;->b:I

    return v0
.end method

.method private c()[[B
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    return-object v0
.end method

.method private d()V
    .registers 6

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_f

    aget-object v3, v0, v2

    const/4 v4, -0x1

    invoke-static {v3, v4}, Ljava/util/Arrays;->fill([BB)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_f
    return-void
.end method


# virtual methods
.method public final a(II)B
    .registers 4

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    aget-object p2, v0, p2

    aget-byte p1, p2, p1

    return p1
.end method

.method public final a(III)V
    .registers 5

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public final a(IIZ)V
    .registers 5

    iget-object v0, p0, Lcom/google/a/i/c/b;->a:[[B

    aget-object p2, v0, p2

    int-to-byte p3, p3

    aput-byte p3, p2, p1

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/i/c/b;->b:I

    mul-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/google/a/i/c/b;->c:I

    mul-int v1, v1, v2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_11
    iget v3, p0, Lcom/google/a/i/c/b;->c:I

    if-ge v2, v3, :cond_3a

    iget-object v3, p0, Lcom/google/a/i/c/b;->a:[[B

    aget-object v3, v3, v2

    const/4 v4, 0x0

    :goto_1a
    iget v5, p0, Lcom/google/a/i/c/b;->b:I

    if-ge v4, v5, :cond_32

    aget-byte v5, v3, v4

    packed-switch v5, :pswitch_data_40

    const-string v5, "  "

    :goto_25
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2f

    :pswitch_29
    const-string v5, " 1"

    goto :goto_25

    :pswitch_2c
    const-string v5, " 0"

    goto :goto_25

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    :cond_32
    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method
