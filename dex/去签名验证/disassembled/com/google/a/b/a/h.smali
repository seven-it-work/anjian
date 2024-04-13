.class public final Lcom/google/a/b/a/h;
.super Lcom/google/a/b/a/q;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/a/b/a/h;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    sget v0, Lcom/google/a/b/a/r;->EMAIL_ADDRESS$3fc7421e:I

    invoke-direct {p0, v0}, Lcom/google/a/b/a/q;-><init>(I)V

    iput-object p1, p0, Lcom/google/a/b/a/h;->a:[Ljava/lang/String;

    iput-object p2, p0, Lcom/google/a/b/a/h;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/a/b/a/h;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/google/a/b/a/h;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/a/b/a/h;->e:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/a/b/a/h;->a:[Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/a/b/a/h;->a:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_a

    goto :goto_10

    :cond_a
    iget-object v0, p0, Lcom/google/a/b/a/h;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_10
    :goto_10
    const/4 v0, 0x0

    return-object v0
.end method

.method private c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/h;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private d()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/h;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private e()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/h;->c:[Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method private static h()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "mailto:"

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/a/b/a/h;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/h;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/h;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/h;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/h;->c:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/h;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/h;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/h;->e:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/h;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
