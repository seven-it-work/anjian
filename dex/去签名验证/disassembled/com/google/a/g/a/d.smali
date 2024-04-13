.class final Lcom/google/a/g/a/d;
.super Lcom/google/a/g/a/b;


# instance fields
.field final c:Lcom/google/a/g/a/c;

.field d:I


# direct methods
.method constructor <init>(IILcom/google/a/g/a/c;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/a/g/a/b;-><init>(II)V

    iput-object p3, p0, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    return-void
.end method

.method private a()Lcom/google/a/g/a/c;
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/d;->c:Lcom/google/a/g/a/c;

    return-object v0
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/google/a/g/a/d;->d:I

    return v0
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/google/a/g/a/d;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/a/g/a/d;->d:I

    return-void
.end method
