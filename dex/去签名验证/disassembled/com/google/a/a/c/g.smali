.class abstract Lcom/google/a/a/c/g;
.super Ljava/lang/Object;


# static fields
.field static final a:Lcom/google/a/a/c/g;


# instance fields
.field final b:Lcom/google/a/a/c/g;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/a/a/c/e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v1}, Lcom/google/a/a/c/e;-><init>(Lcom/google/a/a/c/g;II)V

    sput-object v0, Lcom/google/a/a/c/g;->a:Lcom/google/a/a/c/g;

    return-void
.end method

.method constructor <init>(Lcom/google/a/a/c/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/a/c/g;->b:Lcom/google/a/a/c/g;

    return-void
.end method

.method private a()Lcom/google/a/a/c/g;
    .registers 2

    iget-object v0, p0, Lcom/google/a/a/c/g;->b:Lcom/google/a/a/c/g;

    return-object v0
.end method

.method private b(II)Lcom/google/a/a/c/g;
    .registers 4

    new-instance v0, Lcom/google/a/a/c/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/a/c/b;-><init>(Lcom/google/a/a/c/g;II)V

    return-object v0
.end method


# virtual methods
.method final a(II)Lcom/google/a/a/c/g;
    .registers 4

    new-instance v0, Lcom/google/a/a/c/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/a/a/c/e;-><init>(Lcom/google/a/a/c/g;II)V

    return-object v0
.end method

.method abstract a(Lcom/google/a/c/a;[B)V
.end method
