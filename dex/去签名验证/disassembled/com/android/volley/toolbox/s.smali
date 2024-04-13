.class public Lcom/android/volley/toolbox/s;
.super Lcom/android/volley/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/l<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final m:Lcom/android/volley/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/n$b<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/l;-><init>(ILjava/lang/String;Lcom/android/volley/n$a;)V

    iput-object p2, p0, Lcom/android/volley/toolbox/s;->m:Lcom/android/volley/n$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;B)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/n$a;",
            "B)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/android/volley/toolbox/s;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/android/volley/toolbox/s;->m:Lcom/android/volley/n$b;

    invoke-interface {v0, p1}, Lcom/android/volley/n$b;->a(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/android/volley/i;)Lcom/android/volley/n;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/i;",
            ")",
            "Lcom/android/volley/n<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/i;->b:[B

    iget-object v2, p1, Lcom/android/volley/i;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/android/volley/toolbox/h;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_d
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_15

    :catch_e
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/i;->b:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :goto_15
    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/i;)Lcom/android/volley/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/n;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/n;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic a(Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/android/volley/toolbox/s;->m:Lcom/android/volley/n$b;

    invoke-interface {v0, p1}, Lcom/android/volley/n$b;->a(Ljava/lang/Object;)V

    return-void
.end method
