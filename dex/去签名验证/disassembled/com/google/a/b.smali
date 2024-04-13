.class public abstract Lcom/google/a/b;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/a/j;


# direct methods
.method protected constructor <init>(Lcom/google/a/j;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/b;->a:Lcom/google/a/j;

    return-void
.end method

.method private b()Lcom/google/a/j;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b;->a:Lcom/google/a/j;

    return-object v0
.end method

.method private c()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/b;->a:Lcom/google/a/j;

    iget v0, v0, Lcom/google/a/j;->a:I

    return v0
.end method

.method private d()I
    .registers 2

    iget-object v0, p0, Lcom/google/a/b;->a:Lcom/google/a/j;

    iget v0, v0, Lcom/google/a/j;->b:I

    return v0
.end method


# virtual methods
.method public abstract a(Lcom/google/a/j;)Lcom/google/a/b;
.end method

.method public abstract a(ILcom/google/a/c/a;)Lcom/google/a/c/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation
.end method

.method public abstract a()Lcom/google/a/c/b;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;
        }
    .end annotation
.end method
