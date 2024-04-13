.class public final Lcom/google/a/b/a/s;
.super Lcom/google/a/b/a/q;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1, p1}, Lcom/google/a/b/a/s;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    sget v0, Lcom/google/a/b/a/r;->PRODUCT$3fc7421e:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    iput-object p1, p0, Lcom/google/a/b/a/s;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/a/b/a/s;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/s;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/s;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/s;->a:Ljava/lang/String;

    return-object v0
.end method
