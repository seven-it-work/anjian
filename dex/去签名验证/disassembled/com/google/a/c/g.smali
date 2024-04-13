.class public Lcom/google/a/c/g;
.super Ljava/lang/Object;


# instance fields
.field public final d:Lcom/google/a/c/b;

.field public final e:[Lcom/google/a/t;


# direct methods
.method public constructor <init>(Lcom/google/a/c/b;[Lcom/google/a/t;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    iput-object p2, p0, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    return-void
.end method

.method private a()Lcom/google/a/c/b;
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/g;->d:Lcom/google/a/c/b;

    return-object v0
.end method

.method private b()[Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/c/g;->e:[Lcom/google/a/t;

    return-object v0
.end method
