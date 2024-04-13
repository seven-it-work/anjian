.class public final Lcom/cyjh/http/d/b/d;
.super Lcom/android/volley/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/l<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final n:I = 0xc350


# instance fields
.field private m:Lcom/cyjh/http/d/a/a;

.field private o:Lcom/android/volley/n$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/n$b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/n$b<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/volley/n$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p5}, Lcom/android/volley/l;-><init>(ILjava/lang/String;Lcom/android/volley/n$a;)V

    iput-object p4, p0, Lcom/cyjh/http/d/b/d;->o:Lcom/android/volley/n$b;

    iput-object p3, p0, Lcom/cyjh/http/d/b/d;->p:Ljava/util/Map;

    new-instance p1, Lcom/android/volley/d;

    const/4 p2, 0x0

    const p3, 0xc350

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p2, p4}, Lcom/android/volley/d;-><init>(IIF)V

    iput-object p1, p0, Lcom/android/volley/l;->j:Lcom/android/volley/p;

    iput-boolean p2, p0, Lcom/android/volley/l;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;Lcom/cyjh/http/d/a/a;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/n$b<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/volley/n$a;",
            "Lcom/cyjh/http/d/a/a;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/http/d/b/d;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    iput-object p4, p0, Lcom/cyjh/http/d/b/d;->m:Lcom/cyjh/http/d/a/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/n$b;Lcom/android/volley/n$a;Lcom/cyjh/http/d/a/a;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/volley/n$b<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/volley/n$a;",
            "Lcom/cyjh/http/d/a/a;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/http/d/b/d;-><init>(ILjava/lang/String;Ljava/util/Map;Lcom/android/volley/n$b;Lcom/android/volley/n$a;)V

    iput-object p5, p0, Lcom/cyjh/http/d/b/d;->m:Lcom/cyjh/http/d/a/a;

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
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/android/volley/i;->b:[B

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/http/d/b/d;->m:Lcom/cyjh/http/d/a/a;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/cyjh/http/d/b/d;->m:Lcom/cyjh/http/d/a/a;

    invoke-interface {v1, v0}, Lcom/cyjh/http/d/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Lcom/android/volley/toolbox/h;->a(Lcom/android/volley/i;)Lcom/android/volley/b$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/volley/n;->a(Ljava/lang/Object;Lcom/android/volley/b$a;)Lcom/android/volley/n;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1e

    return-object p1

    :cond_1c
    const/4 p1, 0x0

    return-object p1

    :catch_1e
    move-exception p1

    new-instance v0, Lcom/android/volley/k;

    invoke-direct {v0, p1}, Lcom/android/volley/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lcom/android/volley/n;->a(Lcom/android/volley/s;)Lcom/android/volley/n;

    move-result-object p1

    return-object p1
.end method

.method protected final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/d/b/d;->o:Lcom/android/volley/n$b;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/cyjh/http/d/b/d;->o:Lcom/android/volley/n$b;

    invoke-interface {v0, p1}, Lcom/android/volley/n$b;->a(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method protected final e()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/volley/a;
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/http/d/b/d;->p:Ljava/util/Map;

    return-object v0
.end method

.method public final h()Lcom/android/volley/l$b;
    .registers 2

    sget-object v0, Lcom/android/volley/l$b;->HIGH:Lcom/android/volley/l$b;

    return-object v0
.end method
