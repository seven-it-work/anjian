.class public final Lcom/google/a/f/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/p;


# instance fields
.field private final a:Lcom/google/a/p;


# direct methods
.method private constructor <init>(Lcom/google/a/p;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/f/a;->a:Lcom/google/a/p;

    return-void
.end method

.method private static a([Lcom/google/a/t;II)V
    .registers 8

    if-eqz p0, :cond_1a

    const/4 v0, 0x0

    :goto_3
    array-length v1, p0

    if-ge v0, v1, :cond_1a

    aget-object v1, p0, v0

    new-instance v2, Lcom/google/a/t;

    iget v3, v1, Lcom/google/a/t;->a:F

    int-to-float v4, p1

    add-float/2addr v3, v4

    iget v1, v1, Lcom/google/a/t;->b:F

    int-to-float v4, p2

    add-float/2addr v1, v4

    invoke-direct {v2, v3, v1}, Lcom/google/a/t;-><init>(FF)V

    aput-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1a
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/a/c;)Lcom/google/a/r;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/a/f/a;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/a/c;",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Lcom/google/a/r;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/m;,
            Lcom/google/a/d;,
            Lcom/google/a/h;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/a/c;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/a/c;->b()I

    move-result v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    :try_start_d
    iget-object v3, p0, Lcom/google/a/f/a;->a:Lcom/google/a/p;

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v3
    :try_end_17
    .catch Lcom/google/a/m; {:try_start_d .. :try_end_17} :catch_18

    return-object v3

    :catch_18
    :try_start_18
    iget-object v3, p0, Lcom/google/a/f/a;->a:Lcom/google/a/p;

    invoke-virtual {p1, v0, v2, v0, v1}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v3

    iget-object v4, v3, Lcom/google/a/r;->d:[Lcom/google/a/t;

    invoke-static {v4, v0, v2}, Lcom/google/a/f/a;->a([Lcom/google/a/t;II)V
    :try_end_27
    .catch Lcom/google/a/m; {:try_start_18 .. :try_end_27} :catch_28

    return-object v3

    :catch_28
    :try_start_28
    iget-object v3, p0, Lcom/google/a/f/a;->a:Lcom/google/a/p;

    invoke-virtual {p1, v2, v1, v0, v1}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v4

    invoke-interface {v3, v4, p2}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v3

    iget-object v4, v3, Lcom/google/a/r;->d:[Lcom/google/a/t;

    invoke-static {v4, v2, v1}, Lcom/google/a/f/a;->a([Lcom/google/a/t;II)V
    :try_end_37
    .catch Lcom/google/a/m; {:try_start_28 .. :try_end_37} :catch_38

    return-object v3

    :catch_38
    :try_start_38
    iget-object v2, p0, Lcom/google/a/f/a;->a:Lcom/google/a/p;

    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object v2

    iget-object v3, v2, Lcom/google/a/r;->d:[Lcom/google/a/t;

    invoke-static {v3, v0, v1}, Lcom/google/a/f/a;->a([Lcom/google/a/t;II)V
    :try_end_47
    .catch Lcom/google/a/m; {:try_start_38 .. :try_end_47} :catch_48

    return-object v2

    :catch_48
    div-int/lit8 v2, v0, 0x2

    div-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/google/a/c;->a(IIII)Lcom/google/a/c;

    move-result-object p1

    iget-object v0, p0, Lcom/google/a/f/a;->a:Lcom/google/a/p;

    invoke-interface {v0, p1, p2}, Lcom/google/a/p;->a(Lcom/google/a/c;Ljava/util/Map;)Lcom/google/a/r;

    move-result-object p1

    iget-object p2, p1, Lcom/google/a/r;->d:[Lcom/google/a/t;

    invoke-static {p2, v2, v3}, Lcom/google/a/f/a;->a([Lcom/google/a/t;II)V

    return-object p1
.end method

.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/google/a/f/a;->a:Lcom/google/a/p;

    invoke-interface {v0}, Lcom/google/a/p;->a()V

    return-void
.end method
