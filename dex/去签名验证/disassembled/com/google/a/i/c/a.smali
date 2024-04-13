.class final Lcom/google/a/i/c/a;
.super Ljava/lang/Object;


# instance fields
.field final a:[B

.field final b:[B


# direct methods
.method constructor <init>([B[B)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/i/c/a;->a:[B

    iput-object p2, p0, Lcom/google/a/i/c/a;->b:[B

    return-void
.end method

.method private a()[B
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/c/a;->a:[B

    return-object v0
.end method

.method private b()[B
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/c/a;->b:[B

    return-object v0
.end method
