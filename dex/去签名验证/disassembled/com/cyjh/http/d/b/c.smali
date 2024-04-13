.class public final Lcom/cyjh/http/d/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "VollerHttpManager"

.field private static c:Lcom/cyjh/http/d/b/c;


# instance fields
.field public b:Lcom/android/volley/m;

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/Context;",
            "Ljava/util/HashSet<",
            "Lcom/android/volley/l;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/cyjh/http/d/b/c;->d:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/cyjh/http/d/b/c;
    .registers 1

    sget-object v0, Lcom/cyjh/http/d/b/c;->c:Lcom/cyjh/http/d/b/c;

    if-nez v0, :cond_b

    new-instance v0, Lcom/cyjh/http/d/b/c;

    invoke-direct {v0}, Lcom/cyjh/http/d/b/c;-><init>()V

    sput-object v0, Lcom/cyjh/http/d/b/c;->c:Lcom/cyjh/http/d/b/c;

    :cond_b
    sget-object v0, Lcom/cyjh/http/d/b/c;->c:Lcom/cyjh/http/d/b/c;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    if-nez v0, :cond_a

    invoke-static {p1}, Lcom/android/volley/toolbox/t;->a(Landroid/content/Context;)Lcom/android/volley/m;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    :cond_a
    return-void
.end method

.method private a(Ljava/lang/Object;Lcom/android/volley/l;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    if-eqz v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    iput-object p1, p2, Lcom/android/volley/l;->l:Ljava/lang/Object;

    iget-object p1, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    invoke-virtual {p1, p2}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    iget-object p1, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    invoke-virtual {p1}, Lcom/android/volley/m;->a()V

    return-void

    :cond_14
    const-string p1, "VollerHttpManager"

    const-string p2, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/volley/l;

    iget-object v1, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    iget-object v0, v0, Lcom/android/volley/l;->l:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/android/volley/m;->a(Ljava/lang/Object;)V

    goto :goto_12

    :cond_26
    return-void

    :cond_27
    const-string p1, "VollerHttpManager"

    const-string v0, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/Object;Lcom/android/volley/l;)V
    .registers 5

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    if-eqz v0, :cond_23

    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    if-nez p1, :cond_15

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_15
    invoke-virtual {p1, p3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_18
    invoke-virtual {p0, p2}, Lcom/cyjh/http/d/b/c;->a(Ljava/lang/Object;)V

    iput-object p2, p3, Lcom/android/volley/l;->l:Ljava/lang/Object;

    iget-object p1, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    invoke-virtual {p1, p3}, Lcom/android/volley/m;->a(Lcom/android/volley/l;)Lcom/android/volley/l;

    return-void

    :cond_23
    const-string p1, "VollerHttpManager"

    const-string p2, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/cyjh/http/d/b/c;->b:Lcom/android/volley/m;

    invoke-virtual {v0, p1}, Lcom/android/volley/m;->a(Ljava/lang/Object;)V

    return-void

    :cond_a
    const-string p1, "VollerHttpManager"

    const-string v0, "\u4f60\u5e94\u8be5\u5728 application\u4e2d\u521d\u59cb\u5316\u961f\u5217"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
