.class final Lcom/google/a/h/a/a;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field final d:I

.field final e:I


# direct methods
.method constructor <init>(IIII)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/h/a/a;->a:I

    iput p4, p0, Lcom/google/a/h/a/a;->b:I

    iput p2, p0, Lcom/google/a/h/a/a;->c:I

    iput p3, p0, Lcom/google/a/h/a/a;->d:I

    add-int/2addr p2, p3

    iput p2, p0, Lcom/google/a/h/a/a;->e:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/a;->a:I

    return v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/a;->b:I

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/a;->e:I

    return v0
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/a;->c:I

    return v0
.end method

.method private e()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/a/a;->d:I

    return v0
.end method
