.class final Lcom/b/b/t;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field b:I

.field c:I

.field d:Z

.field e:Z

.field f:Lcom/b/b/t;

.field g:Lcom/b/b/t;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/b/b/t;->a:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/b/t;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/b/t;->d:Z

    return-void
.end method

.method constructor <init>(Lcom/b/b/t;)V
    .registers 5

    iget-object v0, p1, Lcom/b/b/t;->a:[B

    iget v1, p1, Lcom/b/b/t;->b:I

    iget v2, p1, Lcom/b/b/t;->c:I

    invoke-direct {p0, v0, v1, v2}, Lcom/b/b/t;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/b/b/t;->d:Z

    return-void
.end method

.method constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/b/t;->a:[B

    iput p2, p0, Lcom/b/b/t;->b:I

    iput p3, p0, Lcom/b/b/t;->c:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/b/b/t;->e:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/b/b/t;->d:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/b/t;
    .registers 5

    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_8

    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    iget-object v2, p0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget-object v3, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v3, v2, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v2, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v3, p0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v3, v2, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object v1, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v1, p0, Lcom/b/b/t;->g:Lcom/b/b/t;

    return-object v0
.end method

.method public final a(Lcom/b/b/t;)Lcom/b/b/t;
    .registers 3

    iput-object p0, p1, Lcom/b/b/t;->g:Lcom/b/b/t;

    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object v0, p1, Lcom/b/b/t;->f:Lcom/b/b/t;

    iget-object v0, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    iput-object p1, v0, Lcom/b/b/t;->g:Lcom/b/b/t;

    iput-object p1, p0, Lcom/b/b/t;->f:Lcom/b/b/t;

    return-object p1
.end method

.method public final a(Lcom/b/b/t;I)V
    .registers 8

    iget-boolean v0, p1, Lcom/b/b/t;->e:Z

    if-nez v0, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_a
    iget v0, p1, Lcom/b/b/t;->c:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_41

    iget-boolean v0, p1, Lcom/b/b/t;->d:Z

    if-eqz v0, :cond_1b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1b
    iget v0, p1, Lcom/b/b/t;->c:I

    add-int/2addr v0, p2

    iget v2, p1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_29

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_29
    iget-object v0, p1, Lcom/b/b/t;->a:[B

    iget v1, p1, Lcom/b/b/t;->b:I

    iget-object v2, p1, Lcom/b/b/t;->a:[B

    iget v3, p1, Lcom/b/b/t;->c:I

    iget v4, p1, Lcom/b/b/t;->b:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/b/b/t;->c:I

    iget v1, p1, Lcom/b/b/t;->b:I

    sub-int/2addr v0, v1

    iput v0, p1, Lcom/b/b/t;->c:I

    iput v4, p1, Lcom/b/b/t;->b:I

    :cond_41
    iget-object v0, p0, Lcom/b/b/t;->a:[B

    iget v1, p0, Lcom/b/b/t;->b:I

    iget-object v2, p1, Lcom/b/b/t;->a:[B

    iget v3, p1, Lcom/b/b/t;->c:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lcom/b/b/t;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Lcom/b/b/t;->c:I

    iget p1, p0, Lcom/b/b/t;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/b/b/t;->b:I

    return-void
.end method
