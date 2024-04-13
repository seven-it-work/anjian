.class public final Lcom/google/a/i/b/f;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/a/i/b/d;

.field public final b:Lcom/google/a/i/b/d;

.field public final c:Lcom/google/a/i/b/d;


# direct methods
.method public constructor <init>([Lcom/google/a/i/b/d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/a/i/b/f;->a:Lcom/google/a/i/b/d;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/google/a/i/b/f;->b:Lcom/google/a/i/b/d;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/google/a/i/b/f;->c:Lcom/google/a/i/b/d;

    return-void
.end method

.method private a()Lcom/google/a/i/b/d;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/b/f;->a:Lcom/google/a/i/b/d;

    return-object v0
.end method

.method private b()Lcom/google/a/i/b/d;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/b/f;->b:Lcom/google/a/i/b/d;

    return-object v0
.end method

.method private c()Lcom/google/a/i/b/d;
    .registers 2

    iget-object v0, p0, Lcom/google/a/i/b/f;->c:Lcom/google/a/i/b/d;

    return-object v0
.end method
