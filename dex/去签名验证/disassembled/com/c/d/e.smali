.class public final Lcom/c/d/e;
.super Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final toByteArray()[B
    .registers 3

    iget v0, p0, Lcom/c/d/e;->count:I

    iget-object v1, p0, Lcom/c/d/e;->buf:[B

    array-length v1, v1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/c/d/e;->buf:[B

    return-object v0

    :cond_a
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
