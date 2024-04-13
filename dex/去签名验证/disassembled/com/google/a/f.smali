.class public final Lcom/google/a/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method private constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_d

    if-gez p2, :cond_8

    goto :goto_d

    :cond_8
    iput p1, p0, Lcom/google/a/f;->a:I

    iput p2, p0, Lcom/google/a/f;->b:I

    return-void

    :cond_d
    :goto_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/f;->a:I

    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/f;->b:I

    return v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/a/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    check-cast p1, Lcom/google/a/f;

    iget v0, p0, Lcom/google/a/f;->a:I

    iget v2, p1, Lcom/google/a/f;->a:I

    if-ne v0, v2, :cond_15

    iget v0, p0, Lcom/google/a/f;->b:I

    iget p1, p1, Lcom/google/a/f;->b:I

    if-ne v0, p1, :cond_15

    const/4 p1, 0x1

    return p1

    :cond_15
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget v0, p0, Lcom/google/a/f;->a:I

    mul-int/lit16 v0, v0, 0x7fc9

    iget v1, p0, Lcom/google/a/f;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/a/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
