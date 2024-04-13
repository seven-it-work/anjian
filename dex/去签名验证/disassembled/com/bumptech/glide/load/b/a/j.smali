.class public final Lcom/bumptech/glide/load/b/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/a/j$a;,
        Lcom/bumptech/glide/load/b/a/j$b;
    }
.end annotation


# static fields
.field static final b:I = 0x8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final c:I = 0x400000

.field private static final d:I = 0x2


# instance fields
.field private final e:Lcom/bumptech/glide/load/b/a/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/a/h<",
            "Lcom/bumptech/glide/load/b/a/j$a;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bumptech/glide/load/b/a/j$b;

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/b/a/a<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final i:I

.field private j:I


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->e:Lcom/bumptech/glide/load/b/a/h;

    new-instance v0, Lcom/bumptech/glide/load/b/a/j$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/j$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->f:Lcom/bumptech/glide/load/b/a/j$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->h:Ljava/util/Map;

    const/high16 v0, 0x400000

    iput v0, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/a/h;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/h;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->e:Lcom/bumptech/glide/load/b/a/h;

    new-instance v0, Lcom/bumptech/glide/load/b/a/j$b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/j$b;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->f:Lcom/bumptech/glide/load/b/a/j$b;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->g:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->h:Ljava/util/Map;

    iput p1, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    return-void
.end method

.method private a(Lcom/bumptech/glide/load/b/a/j$a;)Ljava/lang/Object;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/a/j$a;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->e:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/a/j$a;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/b/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j;->e:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_22

    iget v2, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/a;->b()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    invoke-interface {v0, v1}, Lcom/bumptech/glide/load/b/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-direct {p0, v2, p2}, Lcom/bumptech/glide/load/b/a/j;->b(ILjava/lang/Class;)V

    :cond_22
    if-nez v1, :cond_51

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/a;->a()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x2

    invoke-static {p2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_4b

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/a/a;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allocated "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4b
    iget p1, p1, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/a/a;->a(I)Ljava/lang/Object;

    move-result-object v1

    :cond_51
    return-object v1
.end method

.method private a(ILjava/lang/Integer;)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p2, :cond_1f

    iget v1, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    const/4 v2, 0x1

    if-eqz v1, :cond_13

    iget v1, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    iget v3, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    div-int/2addr v1, v3

    const/4 v3, 0x2

    if-lt v1, v3, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    :goto_14
    if-nez v1, :cond_1e

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p1, p1, 0x8

    if-gt p2, p1, :cond_1f

    :cond_1e
    return v2

    :cond_1f
    return v0
.end method

.method private b(Ljava/lang/Class;)Ljava/util/NavigableMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->g:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    if-nez v0, :cond_14

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j;->g:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_14
    return-object v0
.end method

.method private b(ILjava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/b/a/j;->b(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2c

    new-instance p2, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tried to decrement empty size, size: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", this: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/NavigableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3b
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b()Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    iget v1, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    div-int/2addr v0, v1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_f
    :goto_f
    const/4 v0, 0x1

    return v0
.end method

.method private b(I)Z
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    div-int/lit8 v0, v0, 0x2

    if-gt p1, v0, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/bumptech/glide/load/b/a/a<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a/a;

    if-nez v0, :cond_43

    const-class v0, [I

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/bumptech/glide/load/b/a/i;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/i;-><init>()V

    goto :goto_25

    :cond_18
    const-class v0, [B

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/bumptech/glide/load/b/a/g;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/a/g;-><init>()V

    :goto_25
    iget-object v1, p0, Lcom/bumptech/glide/load/b/a/j;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No array pool found for: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_43
    return-object v0
.end method

.method private c(Ljava/lang/Object;)Lcom/bumptech/glide/load/b/a/a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/bumptech/glide/load/b/a/a<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/a/a;

    move-result-object p1

    return-object p1
.end method

.method private c()V
    .registers 2

    iget v0, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/a/j;->c(I)V

    return-void
.end method

.method private c(I)V
    .registers 7

    :cond_0
    :goto_0
    iget v0, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    if-le v0, p1, :cond_56

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->e:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a/h;->a()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Argument must not be null"

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/bumptech/glide/load/b/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/a/a;

    move-result-object v1

    iget v2, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/a/a;->a(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/a/a;->b()I

    move-result v4

    mul-int v3, v3, v4

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/bumptech/glide/load/b/a/j;->b(ILjava/lang/Class;)V

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/a/a;->a()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "evicted: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/bumptech/glide/load/b/a/a;->a(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_56
    return-void
.end method

.method private d()I
    .registers 9

    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/j;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/NavigableMap;

    invoke-interface {v3}, Ljava/util/NavigableMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-direct {p0, v2}, Lcom/bumptech/glide/load/b/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/a/a;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/bumptech/glide/load/b/a/j;->g:Ljava/util/Map;

    invoke-interface {v7, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/NavigableMap;

    invoke-interface {v7, v4}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int v6, v6, v4

    invoke-interface {v5}, Lcom/bumptech/glide/load/b/a/a;->b()I

    move-result v4

    mul-int v6, v6, v4

    add-int/2addr v1, v6

    goto :goto_27

    :cond_57
    return v1
.end method


# virtual methods
.method public final declared-synchronized a(ILjava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/bumptech/glide/load/b/a/j;->b(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    iget v3, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    if-eqz v3, :cond_22

    iget v3, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    iget v4, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    div-int/2addr v3, v4

    const/4 v4, 0x2

    if-lt v3, v4, :cond_20

    goto :goto_22

    :cond_20
    const/4 v3, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 v3, 0x1

    :goto_23
    if-nez v3, :cond_2f

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    mul-int/lit8 v4, p1, 0x8

    if-gt v3, v4, :cond_2e

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :cond_2f
    :goto_2f
    if-eqz v1, :cond_3c

    iget-object p1, p0, Lcom/bumptech/glide/load/b/a/j;->f:Lcom/bumptech/glide/load/b/a/j$b;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/bumptech/glide/load/b/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/b/a/j$a;

    move-result-object p1

    goto :goto_42

    :cond_3c
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->f:Lcom/bumptech/glide/load/b/a/j$b;

    invoke-virtual {v0, p1, p2}, Lcom/bumptech/glide/load/b/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/b/a/j$a;

    move-result-object p1

    :goto_42
    invoke-direct {p0, p1, p2}, Lcom/bumptech/glide/load/b/a/j;->a(Lcom/bumptech/glide/load/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_48

    monitor-exit p0

    return-object p1

    :catchall_48
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/bumptech/glide/load/b/a/j;->f:Lcom/bumptech/glide/load/b/a/j$b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/b/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/b/a/j$a;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/load/b/a/j;->a(Lcom/bumptech/glide/load/b/a/j$a;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized a()V
    .registers 2

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/a/j;->c(I)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .registers 3

    monitor-enter p0

    const/16 v0, 0x28

    if-lt p1, v0, :cond_c

    :try_start_5
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/a/j;->a()V
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-void

    :catchall_a
    move-exception p1

    goto :goto_1d

    :cond_c
    const/16 v0, 0x14

    if-ge p1, v0, :cond_14

    const/16 v0, 0xf

    if-ne p1, v0, :cond_1b

    :cond_14
    :try_start_14
    iget p1, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    div-int/lit8 p1, p1, 0x2

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/a/j;->c(I)V
    :try_end_1b
    .catchall {:try_start_14 .. :try_end_1b} :catchall_a

    :cond_1b
    monitor-exit p0

    return-void

    :goto_1d
    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/bumptech/glide/load/b/a/j;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized b(Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/a/j;->c(Ljava/lang/Class;)Lcom/bumptech/glide/load/b/a/a;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/bumptech/glide/load/b/a/a;->a(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {v1}, Lcom/bumptech/glide/load/b/a/a;->b()I

    move-result v1

    mul-int v1, v1, v2

    iget v3, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    div-int/lit8 v3, v3, 0x2
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_5d

    const/4 v4, 0x1

    if-gt v1, v3, :cond_1c

    const/4 v3, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v3, 0x0

    :goto_1d
    if-nez v3, :cond_21

    monitor-exit p0

    return-void

    :cond_21
    :try_start_21
    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/j;->f:Lcom/bumptech/glide/load/b/a/j$b;

    invoke-virtual {v3, v2, v0}, Lcom/bumptech/glide/load/b/a/j$b;->a(ILjava/lang/Class;)Lcom/bumptech/glide/load/b/a/j$a;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/load/b/a/j;->e:Lcom/bumptech/glide/load/b/a/h;

    invoke-virtual {v3, v2, p1}, Lcom/bumptech/glide/load/b/a/h;->a(Lcom/bumptech/glide/load/b/a/m;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/bumptech/glide/load/b/a/j;->b(Ljava/lang/Class;)Ljava/util/NavigableMap;

    move-result-object p1

    iget v0, v2, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget v2, v2, Lcom/bumptech/glide/load/b/a/j$a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-nez v0, :cond_45

    goto :goto_4a

    :cond_45
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v4, v0

    :goto_4a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p1, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/bumptech/glide/load/b/a/j;->j:I

    iget p1, p0, Lcom/bumptech/glide/load/b/a/j;->i:I

    invoke-direct {p0, p1}, Lcom/bumptech/glide/load/b/a/j;->c(I)V
    :try_end_5b
    .catchall {:try_start_21 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-void

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method
