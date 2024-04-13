.class public final Lcom/google/a/b/a/k;
.super Lcom/google/a/b/a/q;


# static fields
.field public static final a:Ljava/lang/String; = "KG"

.field public static final b:Ljava/lang/String; = "LB"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/util/Map;
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
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    sget v1, Lcom/google/a/b/a/r;->PRODUCT$3fc7421e:I

    invoke-direct {v0, v1}, Lcom/google/a/b/a/q;-><init>(I)V

    move-object v1, p1

    iput-object v1, v0, Lcom/google/a/b/a/k;->c:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/a/b/a/k;->d:Ljava/lang/String;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/a/b/a/k;->e:Ljava/lang/String;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/a/b/a/k;->g:Ljava/lang/String;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/a/b/a/k;->h:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/a/b/a/k;->i:Ljava/lang/String;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/a/b/a/k;->j:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/a/b/a/k;->k:Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/a/b/a/k;->l:Ljava/lang/String;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/a/b/a/k;->m:Ljava/lang/String;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/a/b/a/k;->n:Ljava/lang/String;

    move-object v1, p13

    iput-object v1, v0, Lcom/google/a/b/a/k;->o:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/a/b/a/k;->p:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/a/b/a/k;->q:Ljava/util/Map;

    return-void
.end method

.method private static a(Ljava/lang/Object;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->d:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->g:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->h:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->j:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->k:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->l:Ljava/lang/String;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->m:Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->n:Ljava/lang/String;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->o:Ljava/lang/String;

    return-object v0
.end method

.method private o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->p:Ljava/lang/String;

    return-object v0
.end method

.method private p()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/google/a/b/a/k;->q:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/k;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Lcom/google/a/b/a/k;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/google/a/b/a/k;

    iget-object v0, p0, Lcom/google/a/b/a/k;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->d:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->e:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->i:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->j:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->k:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->l:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->m:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->n:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->n:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->o:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->p:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/a/b/a/k;->p:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/google/a/b/a/k;->q:Ljava/util/Map;

    iget-object p1, p1, Lcom/google/a/b/a/k;->q:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8c

    const/4 p1, 0x1

    return p1

    :cond_8c
    return v1
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/google/a/b/a/k;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v0

    xor-int/lit8 v0, v0, 0x0

    iget-object v1, p0, Lcom/google/a/b/a/k;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->i:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->l:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->m:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->n:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->o:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->p:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lcom/google/a/b/a/k;->q:Ljava/util/Map;

    invoke-static {v1}, Lcom/google/a/b/a/k;->a(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
