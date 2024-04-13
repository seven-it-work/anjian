.class final Lc/u;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x2000

.field static final b:I = 0x400


# instance fields
.field final c:[B

.field d:I

.field e:I

.field f:Z

.field g:Z

.field h:Lc/u;

.field i:Lc/u;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lc/u;->c:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/u;->g:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/u;->f:Z

    return-void
.end method

.method constructor <init>(Lc/u;)V
    .registers 5

    iget-object v0, p1, Lc/u;->c:[B

    iget v1, p1, Lc/u;->d:I

    iget v2, p1, Lc/u;->e:I

    invoke-direct {p0, v0, v1, v2}, Lc/u;-><init>([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lc/u;->f:Z

    return-void
.end method

.method constructor <init>([BII)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc/u;->c:[B

    iput p2, p0, Lc/u;->d:I

    iput p3, p0, Lc/u;->e:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc/u;->g:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc/u;->f:Z

    return-void
.end method

.method private a(I)Lc/u;
    .registers 7

    if-lez p1, :cond_32

    iget v0, p0, Lc/u;->e:I

    iget v1, p0, Lc/u;->d:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_a

    goto :goto_32

    :cond_a
    const/16 v0, 0x400

    if-lt p1, v0, :cond_14

    new-instance v0, Lc/u;

    invoke-direct {v0, p0}, Lc/u;-><init>(Lc/u;)V

    goto :goto_22

    :cond_14
    invoke-static {}, Lc/v;->a()Lc/u;

    move-result-object v0

    iget-object v1, p0, Lc/u;->c:[B

    iget v2, p0, Lc/u;->d:I

    iget-object v3, v0, Lc/u;->c:[B

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_22
    iget v1, v0, Lc/u;->d:I

    add-int/2addr v1, p1

    iput v1, v0, Lc/u;->e:I

    iget v1, p0, Lc/u;->d:I

    add-int/2addr v1, p1

    iput v1, p0, Lc/u;->d:I

    iget-object p1, p0, Lc/u;->i:Lc/u;

    invoke-virtual {p1, v0}, Lc/u;->a(Lc/u;)Lc/u;

    return-object v0

    :cond_32
    :goto_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private b()V
    .registers 4

    iget-object v0, p0, Lc/u;->i:Lc/u;

    if-ne v0, p0, :cond_a

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_a
    iget-object v0, p0, Lc/u;->i:Lc/u;

    iget-boolean v0, v0, Lc/u;->g:Z

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget v0, p0, Lc/u;->e:I

    iget v1, p0, Lc/u;->d:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lc/u;->i:Lc/u;

    iget v1, v1, Lc/u;->e:I

    rsub-int v1, v1, 0x2000

    iget-object v2, p0, Lc/u;->i:Lc/u;

    iget-boolean v2, v2, Lc/u;->f:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x0

    goto :goto_28

    :cond_24
    iget-object v2, p0, Lc/u;->i:Lc/u;

    iget v2, v2, Lc/u;->d:I

    :goto_28
    add-int/2addr v1, v2

    if-le v0, v1, :cond_2c

    return-void

    :cond_2c
    iget-object v1, p0, Lc/u;->i:Lc/u;

    invoke-virtual {p0, v1, v0}, Lc/u;->a(Lc/u;I)V

    invoke-virtual {p0}, Lc/u;->a()Lc/u;

    invoke-static {p0}, Lc/v;->a(Lc/u;)V

    return-void
.end method


# virtual methods
.method public final a()Lc/u;
    .registers 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lc/u;->h:Lc/u;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_8

    iget-object v0, p0, Lc/u;->h:Lc/u;

    goto :goto_9

    :cond_8
    move-object v0, v1

    :goto_9
    iget-object v2, p0, Lc/u;->i:Lc/u;

    iget-object v3, p0, Lc/u;->h:Lc/u;

    iput-object v3, v2, Lc/u;->h:Lc/u;

    iget-object v2, p0, Lc/u;->h:Lc/u;

    iget-object v3, p0, Lc/u;->i:Lc/u;

    iput-object v3, v2, Lc/u;->i:Lc/u;

    iput-object v1, p0, Lc/u;->h:Lc/u;

    iput-object v1, p0, Lc/u;->i:Lc/u;

    return-object v0
.end method

.method public final a(Lc/u;)Lc/u;
    .registers 3

    iput-object p0, p1, Lc/u;->i:Lc/u;

    iget-object v0, p0, Lc/u;->h:Lc/u;

    iput-object v0, p1, Lc/u;->h:Lc/u;

    iget-object v0, p0, Lc/u;->h:Lc/u;

    iput-object p1, v0, Lc/u;->i:Lc/u;

    iput-object p1, p0, Lc/u;->h:Lc/u;

    return-object p1
.end method

.method public final a(Lc/u;I)V
    .registers 8

    iget-boolean v0, p1, Lc/u;->g:Z

    if-nez v0, :cond_a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_a
    iget v0, p1, Lc/u;->e:I

    add-int/2addr v0, p2

    const/16 v1, 0x2000

    if-le v0, v1, :cond_41

    iget-boolean v0, p1, Lc/u;->f:Z

    if-eqz v0, :cond_1b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1b
    iget v0, p1, Lc/u;->e:I

    add-int/2addr v0, p2

    iget v2, p1, Lc/u;->d:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_29

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_29
    iget-object v0, p1, Lc/u;->c:[B

    iget v1, p1, Lc/u;->d:I

    iget-object v2, p1, Lc/u;->c:[B

    iget v3, p1, Lc/u;->e:I

    iget v4, p1, Lc/u;->d:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lc/u;->e:I

    iget v1, p1, Lc/u;->d:I

    sub-int/2addr v0, v1

    iput v0, p1, Lc/u;->e:I

    iput v4, p1, Lc/u;->d:I

    :cond_41
    iget-object v0, p0, Lc/u;->c:[B

    iget v1, p0, Lc/u;->d:I

    iget-object v2, p1, Lc/u;->c:[B

    iget v3, p1, Lc/u;->e:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lc/u;->e:I

    add-int/2addr v0, p2

    iput v0, p1, Lc/u;->e:I

    iget p1, p0, Lc/u;->d:I

    add-int/2addr p1, p2

    iput p1, p0, Lc/u;->d:I

    return-void
.end method
