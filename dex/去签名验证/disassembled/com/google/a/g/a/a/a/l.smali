.class final Lcom/google/a/g/a/a/a/l;
.super Ljava/lang/Object;


# instance fields
.field final a:Lcom/google/a/g/a/a/a/o;

.field final b:Z


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/a/g/a/a/a/l;-><init>(Lcom/google/a/g/a/a/a/o;Z)V

    return-void
.end method

.method constructor <init>(Lcom/google/a/g/a/a/a/o;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, p0, Lcom/google/a/g/a/a/a/l;->b:Z

    iput-object p1, p0, Lcom/google/a/g/a/a/a/l;->a:Lcom/google/a/g/a/a/a/o;

    return-void
.end method

.method private a()Lcom/google/a/g/a/a/a/o;
    .registers 2

    iget-object v0, p0, Lcom/google/a/g/a/a/a/l;->a:Lcom/google/a/g/a/a/a/o;

    return-object v0
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/g/a/a/a/l;->b:Z

    return v0
.end method
