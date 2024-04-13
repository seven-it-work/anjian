.class public final Lcom/google/a/g/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/a/v;


# instance fields
.field private final a:Lcom/google/a/g/j;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/a/g/j;

    invoke-direct {v0}, Lcom/google/a/g/j;-><init>()V

    iput-object v0, p0, Lcom/google/a/g/u;->a:Lcom/google/a/g/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;II)Lcom/google/a/c/b;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/g/u;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    sget-object v0, Lcom/google/a/a;->UPC_A:Lcom/google/a/a;

    if-eq p2, v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode UPC-A, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    iget-object v0, p0, Lcom/google/a/g/u;->a:Lcom/google/a/g/j;

    const-string p2, "0"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/google/a/a;->EAN_13:Lcom/google/a/a;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/a/g/j;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method
