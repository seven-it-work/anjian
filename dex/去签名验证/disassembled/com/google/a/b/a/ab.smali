.class public final Lcom/google/a/b/a/ab;
.super Lcom/google/a/b/a/q;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget v0, Lcom/google/a/b/a/r;->TEXT$3fc7421e:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    iput-object p1, p0, Lcom/google/a/b/a/ab;->a:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/a/b/a/ab;->b:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/ab;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/ab;->a:Ljava/lang/String;

    return-object v0
.end method
