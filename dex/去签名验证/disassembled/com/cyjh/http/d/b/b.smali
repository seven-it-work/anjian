.class public abstract Lcom/cyjh/http/d/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/n$a;
.implements Lcom/android/volley/n$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/n$a;",
        "Lcom/android/volley/n$b<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/cyjh/http/d/a/a;)Lcom/cyjh/http/d/b/d;
    .registers 4

    new-instance v0, Lcom/cyjh/http/d/b/d;

    invoke-direct {v0, p1, p0, p0, p2}, Lcom/cyjh/http/d/b/d;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;Lcom/cyjh/http/d/a/a;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;Lcom/cyjh/http/d/a/a;)Lcom/cyjh/http/d/b/d;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cyjh/http/d/a/a;",
            ")",
            "Lcom/cyjh/http/d/b/d;"
        }
    .end annotation

    new-instance v6, Lcom/cyjh/http/d/b/d;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/http/d/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/n$b;Lcom/android/volley/n$a;Lcom/cyjh/http/d/a/a;)V

    return-object v6
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Lcom/cyjh/http/d/a/a;)V
    .registers 7

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v0

    new-instance v1, Lcom/cyjh/http/d/b/d;

    invoke-direct {v1, p3, p0, p0, p4}, Lcom/cyjh/http/d/b/d;-><init>(Ljava/lang/String;Lcom/android/volley/n$b;Lcom/android/volley/n$a;Lcom/cyjh/http/d/a/a;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/cyjh/http/d/b/c;->a(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/l;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;Lcom/cyjh/http/d/a/a;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/cyjh/http/d/a/a;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/cyjh/http/d/b/c;->a()Lcom/cyjh/http/d/b/c;

    move-result-object v0

    new-instance v7, Lcom/cyjh/http/d/b/d;

    move-object v1, v7

    move-object v2, p3

    move-object v3, p4

    move-object v4, p0

    move-object v5, p0

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/cyjh/http/d/b/d;-><init>(Ljava/lang/String;Ljava/util/Map;Lcom/android/volley/n$b;Lcom/android/volley/n$a;Lcom/cyjh/http/d/a/a;)V

    invoke-virtual {v0, p1, p2, v7}, Lcom/cyjh/http/d/b/c;->a(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/l;)V

    return-void
.end method
