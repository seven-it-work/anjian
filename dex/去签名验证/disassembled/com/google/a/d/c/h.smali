.class final Lcom/google/a/d/c/h;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/google/a/d/c/l;

.field c:Lcom/google/a/f;

.field d:Lcom/google/a/f;

.field final e:Ljava/lang/StringBuilder;

.field f:I

.field g:I

.field h:Lcom/google/a/d/c/k;

.field i:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v2, v0

    const/4 v3, 0x0

    :goto_11
    if-ge v3, v2, :cond_30

    aget-byte v4, v0, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v5, :cond_2a

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Message contains characters outside ISO-8859-1 encoding."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2a
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/a/d/c/l;->FORCE_NONE:Lcom/google/a/d/c/l;

    iput-object v0, p0, Lcom/google/a/d/c/h;->b:Lcom/google/a/d/c/l;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/a/d/c/h;->g:I

    return-void
.end method

.method private a(Lcom/google/a/d/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/d/c/h;->b:Lcom/google/a/d/c/l;

    return-void
.end method

.method private a(Lcom/google/a/f;Lcom/google/a/f;)V
    .registers 3

    iput-object p1, p0, Lcom/google/a/d/c/h;->c:Lcom/google/a/f;

    iput-object p2, p0, Lcom/google/a/d/c/h;->d:Lcom/google/a/f;

    return-void
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/google/a/d/c/h;->g:I

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .registers 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/a/d/c/h;->i:I

    return-void
.end method

.method private g()C
    .registers 3

    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private h()Ljava/lang/StringBuilder;
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    return-object v0
.end method

.method private i()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method private j()I
    .registers 2

    iget v0, p0, Lcom/google/a/d/c/h;->g:I

    return v0
.end method

.method private k()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/d/c/h;->g:I

    return-void
.end method

.method private l()I
    .registers 3

    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/google/a/d/c/h;->i:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private m()Lcom/google/a/d/c/k;
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    return-object v0
.end method

.method private n()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    return-void
.end method


# virtual methods
.method public final a()C
    .registers 3

    iget-object v0, p0, Lcom/google/a/d/c/h;->a:Ljava/lang/String;

    iget v1, p0, Lcom/google/a/d/c/h;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method public final a(C)V
    .registers 3

    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(I)V
    .registers 6

    iget-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    iget v0, v0, Lcom/google/a/d/c/k;->b:I

    if-le p1, v0, :cond_17

    :cond_a
    iget-object v0, p0, Lcom/google/a/d/c/h;->b:Lcom/google/a/d/c/l;

    iget-object v1, p0, Lcom/google/a/d/c/h;->c:Lcom/google/a/f;

    iget-object v2, p0, Lcom/google/a/d/c/h;->d:Lcom/google/a/f;

    const/4 v3, 0x1

    invoke-static {p1, v0, v1, v2, v3}, Lcom/google/a/d/c/k;->a(ILcom/google/a/d/c/l;Lcom/google/a/f;Lcom/google/a/f;Z)Lcom/google/a/d/c/k;

    move-result-object p1

    iput-object p1, p0, Lcom/google/a/d/c/h;->h:Lcom/google/a/d/c/k;

    :cond_17
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public final b()Z
    .registers 3

    iget v0, p0, Lcom/google/a/d/c/h;->f:I

    invoke-direct {p0}, Lcom/google/a/d/c/h;->l()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final c()I
    .registers 3

    invoke-direct {p0}, Lcom/google/a/d/c/h;->l()I

    move-result v0

    iget v1, p0, Lcom/google/a/d/c/h;->f:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final d()V
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/c/h;->e:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/a/d/c/h;->a(I)V

    return-void
.end method
