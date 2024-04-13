.class final Lcom/google/a/h/a/d;
.super Ljava/lang/Object;


# static fields
.field private static final f:I = -0x1


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field e:I


# direct methods
.method constructor <init>(IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/h/a/d;->e:I

    iput p1, p0, Lcom/google/a/h/a/d;->a:I

    iput p2, p0, Lcom/google/a/h/a/d;->b:I

    iput p3, p0, Lcom/google/a/h/a/d;->c:I

    iput p4, p0, Lcom/google/a/h/a/d;->d:I

    return-void
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/google/a/h/a/d;->e:I

    return-void
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/d;->a:I

    return v0
.end method

.method private e()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/d;->b:I

    return v0
.end method

.method private f()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/d;->c:I

    return v0
.end method

.method private g()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/d;->d:I

    return v0
.end method

.method private h()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/d;->e:I

    return v0
.end method


# virtual methods
.method final a()Z
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/d;->e:I

    invoke-virtual {p0, v0}, Lcom/google/a/h/a/d;->a(I)Z

    move-result v0

    return v0
.end method

.method final a(I)Z
    .registers 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_d

    iget v0, p0, Lcom/google/a/h/a/d;->c:I

    rem-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x3

    if-ne v0, p1, :cond_d

    const/4 p1, 0x1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method

.method final b()V
    .registers 3

    iget v0, p0, Lcom/google/a/h/a/d;->d:I

    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lcom/google/a/h/a/d;->c:I

    div-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/a/h/a/d;->e:I

    return-void
.end method

.method final c()I
    .registers 3

    iget v0, p0, Lcom/google/a/h/a/d;->b:I

    iget v1, p0, Lcom/google/a/h/a/d;->a:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/google/a/h/a/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/h/a/d;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
