.class public final Lcom/google/a/i/a/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/i/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:I

.field final b:[Lcom/google/a/i/a/j$a;


# direct methods
.method varargs constructor <init>(I[Lcom/google/a/i/a/j$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/a/i/a/j$b;->a:I

    iput-object p2, p0, Lcom/google/a/i/a/j$b;->b:[Lcom/google/a/i/a/j$a;

    return-void
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/a/j$b;->a:I

    return v0
.end method

.method private d()[Lcom/google/a/i/a/j$a;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/a/j$b;->b:[Lcom/google/a/i/a/j$a;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .registers 6

    iget-object v0, p0, Lcom/google/a/i/a/j$b;->b:[Lcom/google/a/i/a/j$a;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v1, :cond_f

    aget-object v4, v0, v2

    iget v4, v4, Lcom/google/a/i/a/j$a;->a:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_f
    return v3
.end method

.method public final b()I
    .registers 3

    iget v0, p0, Lcom/google/a/i/a/j$b;->a:I

    invoke-virtual {p0}, Lcom/google/a/i/a/j$b;->a()I

    move-result v1

    mul-int v0, v0, v1

    return v0
.end method
