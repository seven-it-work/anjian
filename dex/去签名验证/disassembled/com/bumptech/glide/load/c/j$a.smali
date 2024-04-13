.class public final Lcom/bumptech/glide/load/c/j$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "User-Agent"

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field a:Z

.field b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_3a

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_36

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_29

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2e

    :cond_29
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_2e

    goto :goto_30

    :cond_2e
    const/16 v4, 0x3f

    :goto_30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3a
    sput-object v0, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sget-object v1, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "User-Agent"

    new-instance v2, Lcom/bumptech/glide/load/c/j$b;

    sget-object v3, Lcom/bumptech/glide/load/c/j$a;->d:Ljava/lang/String;

    invoke-direct {v2, v3}, Lcom/bumptech/glide/load/c/j$b;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/j$a;->e:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->a:Z

    sget-object v1, Lcom/bumptech/glide/load/c/j$a;->e:Ljava/util/Map;

    iput-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->f:Z

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;
    .registers 4

    iget-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->f:Z

    if-eqz v0, :cond_11

    const-string v0, "User-Agent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/c/j$a;->b(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;

    move-result-object p1

    return-object p1

    :cond_11
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/j$a;->a()V

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/c/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/c/j$a;
    .registers 4

    new-instance v0, Lcom/bumptech/glide/load/c/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/c/j$b;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/bumptech/glide/load/c/j$a;->f:Z

    if-eqz p2, :cond_16

    const-string p2, "User-Agent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_16

    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/load/c/j$a;->b(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;

    move-result-object p1

    return-object p1

    :cond_16
    invoke-direct {p0}, Lcom/bumptech/glide/load/c/j$a;->a()V

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/c/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private a()V
    .registers 6

    iget-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->a:Z

    if-eqz v0, :cond_3d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->a:Z

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_3b
    iput-object v0, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    :cond_3d
    return-void
.end method

.method private b(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;
    .registers 4

    invoke-direct {p0}, Lcom/bumptech/glide/load/c/j$a;->a()V

    if-nez p2, :cond_b

    iget-object p2, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_b
    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/c/j$a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    iget-boolean p2, p0, Lcom/bumptech/glide/load/c/j$a;->f:Z

    if-eqz p2, :cond_24

    const-string p2, "User-Agent"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bumptech/glide/load/c/j$a;->f:Z

    :cond_24
    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lcom/bumptech/glide/load/c/j$a;
    .registers 4

    if-nez p2, :cond_4

    const/4 p2, 0x0

    goto :goto_a

    :cond_4
    new-instance v0, Lcom/bumptech/glide/load/c/j$b;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/c/j$b;-><init>(Ljava/lang/String;)V

    move-object p2, v0

    :goto_a
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/c/j$a;->b(Ljava/lang/String;Lcom/bumptech/glide/load/c/i;)Lcom/bumptech/glide/load/c/j$a;

    move-result-object p1

    return-object p1
.end method

.method private b()Lcom/bumptech/glide/load/c/j;
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/load/c/j$a;->a:Z

    new-instance v0, Lcom/bumptech/glide/load/c/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/c/j;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method private c()Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/c/i;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_34
    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    return-object v0

    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_36

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_29

    const/16 v5, 0x9

    if-ne v4, v5, :cond_2e

    :cond_29
    const/16 v5, 0x7f

    if-ge v4, v5, :cond_2e

    goto :goto_30

    :cond_2e
    const/16 v4, 0x3f

    :goto_30
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_36
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
