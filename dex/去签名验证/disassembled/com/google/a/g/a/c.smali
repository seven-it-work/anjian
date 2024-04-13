.class public final Lcom/google/a/g/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lcom/google/a/t;


# direct methods
.method public constructor <init>(I[IIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/g/a/c;->a:I

    iput-object p2, p0, Lcom/google/a/g/a/c;->b:[I

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/a/t;

    new-instance p2, Lcom/google/a/t;

    int-to-float p3, p3

    int-to-float p5, p5

    invoke-direct {p2, p3, p5}, Lcom/google/a/t;-><init>(FF)V

    const/4 p3, 0x0

    aput-object p2, p1, p3

    new-instance p2, Lcom/google/a/t;

    int-to-float p3, p4

    invoke-direct {p2, p3, p5}, Lcom/google/a/t;-><init>(FF)V

    const/4 p3, 0x1

    aput-object p2, p1, p3

    iput-object p1, p0, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/g/a/c;->a:I

    return v0
.end method

.method private b()[I
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/c;->b:[I

    return-object v0
.end method

.method private c()[Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/c;->c:[Lcom/google/a/t;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 4

    instance-of v0, p1, Lcom/google/a/g/a/c;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/a/g/a/c;

    iget v0, p0, Lcom/google/a/g/a/c;->a:I

    iget p1, p1, Lcom/google/a/g/a/c;->a:I

    if-ne v0, p1, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    return v1
.end method

.method public final hashCode()I
    .registers 2

    iget v0, p0, Lcom/google/a/g/a/c;->a:I

    return v0
.end method
