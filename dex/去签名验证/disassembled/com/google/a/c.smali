.class public final Lcom/google/a/c;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/a/b;

.field private b:Lcom/google/a/c/b;


# direct methods
.method public constructor <init>(Lcom/google/a/b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Binarizer must be non-null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    iput-object p1, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    return-void
.end method

.method private a(ILcom/google/a/c/a;)Lcom/google/a/c/a;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {v0, p1, p2}, Lcom/google/a/b;->a(ILcom/google/a/c/a;)Lcom/google/a/c/a;

    move-result-object p1

    return-object p1
.end method

.method private d()Z
    .registers 2

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->b()Z

    move-result v0

    return v0
.end method

.method private e()Z
    .registers 2

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->c()Z

    move-result v0

    return v0
.end method

.method private f()Lcom/google/a/c;
    .registers 4

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->e()Lcom/google/a/j;

    move-result-object v0

    new-instance v1, Lcom/google/a/c;

    iget-object v2, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {v2, v0}, Lcom/google/a/b;->a(Lcom/google/a/j;)Lcom/google/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/c;-><init>(Lcom/google/a/b;)V

    return-object v1
.end method

.method private g()Lcom/google/a/c;
    .registers 4

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    invoke-virtual {v0}, Lcom/google/a/j;->f()Lcom/google/a/j;

    move-result-object v0

    new-instance v1, Lcom/google/a/c;

    iget-object v2, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {v2, v0}, Lcom/google/a/b;->a(Lcom/google/a/j;)Lcom/google/a/b;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/a/c;-><init>(Lcom/google/a/b;)V

    return-object v1
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    iget v0, v0, Lcom/google/a/j;->a:I

    return v0
.end method

.method public final a(IIII)Lcom/google/a/c;
    .registers 6

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/a/j;->a(IIII)Lcom/google/a/j;

    move-result-object p1

    new-instance p2, Lcom/google/a/c;

    iget-object p3, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {p3, p1}, Lcom/google/a/b;->a(Lcom/google/a/j;)Lcom/google/a/b;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/a/c;-><init>(Lcom/google/a/b;)V

    return-object p2
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    iget-object v0, v0, Lcom/google/a/b;->a:Lcom/google/a/j;

    iget v0, v0, Lcom/google/a/j;->b:I

    return v0
.end method

.method public final c()Lcom/google/a/c/b;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/a/c;->b:Lcom/google/a/c/b;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/google/a/c;->a:Lcom/google/a/b;

    invoke-virtual {v0}, Lcom/google/a/b;->a()Lcom/google/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/google/a/c;->b:Lcom/google/a/c/b;

    :cond_c
    iget-object v0, p0, Lcom/google/a/c;->b:Lcom/google/a/c/b;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/a/c;->c()Lcom/google/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/a/c/b;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catch Lcom/google/a/m; {:try_start_0 .. :try_end_8} :catch_9

    return-object v0

    :catch_9
    const-string v0, ""

    return-object v0
.end method
