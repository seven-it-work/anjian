.class public final Lcom/bumptech/glide/load/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/b/b/j$a;
.implements Lcom/bumptech/glide/load/b/l;
.implements Lcom/bumptech/glide/load/b/o$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/load/b/j$b;,
        Lcom/bumptech/glide/load/b/j$a;,
        Lcom/bumptech/glide/load/b/j$c;,
        Lcom/bumptech/glide/load/b/j$d;
    }
.end annotation


# static fields
.field public static final a:Z

.field private static final h:Ljava/lang/String; = "Engine"

.field private static final i:I = 0x96


# instance fields
.field public final b:Lcom/bumptech/glide/load/b/r;

.field public final c:Lcom/bumptech/glide/load/b/b/j;

.field public final d:Lcom/bumptech/glide/load/b/j$b;

.field public final e:Lcom/bumptech/glide/load/b/j$c;

.field public final f:Lcom/bumptech/glide/load/b/j$a;

.field public final g:Lcom/bumptech/glide/load/b/a;

.field private final j:Lcom/bumptech/glide/load/b/n;

.field private final k:Lcom/bumptech/glide/load/b/x;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "Engine"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/bumptech/glide/load/b/j;->a:Z

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Z)V
    .registers 17

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Lcom/bumptech/glide/load/b/j;-><init>(Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;ZB)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/load/b/b/j;Lcom/bumptech/glide/load/b/b/a$a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;ZB)V
    .registers 15
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/load/b/j;->c:Lcom/bumptech/glide/load/b/b/j;

    new-instance p8, Lcom/bumptech/glide/load/b/j$c;

    invoke-direct {p8, p2}, Lcom/bumptech/glide/load/b/j$c;-><init>(Lcom/bumptech/glide/load/b/b/a$a;)V

    iput-object p8, p0, Lcom/bumptech/glide/load/b/j;->e:Lcom/bumptech/glide/load/b/j$c;

    new-instance p2, Lcom/bumptech/glide/load/b/a;

    invoke-direct {p2, p7}, Lcom/bumptech/glide/load/b/a;-><init>(Z)V

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    iput-object p0, p2, Lcom/bumptech/glide/load/b/a;->c:Lcom/bumptech/glide/load/b/o$a;

    new-instance p2, Lcom/bumptech/glide/load/b/n;

    invoke-direct {p2}, Lcom/bumptech/glide/load/b/n;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j;->j:Lcom/bumptech/glide/load/b/n;

    new-instance p2, Lcom/bumptech/glide/load/b/r;

    invoke-direct {p2}, Lcom/bumptech/glide/load/b/r;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j;->b:Lcom/bumptech/glide/load/b/r;

    new-instance p2, Lcom/bumptech/glide/load/b/j$b;

    move-object v0, p2

    move-object v1, p3

    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/j$b;-><init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/l;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j;->d:Lcom/bumptech/glide/load/b/j$b;

    new-instance p2, Lcom/bumptech/glide/load/b/j$a;

    iget-object p3, p0, Lcom/bumptech/glide/load/b/j;->e:Lcom/bumptech/glide/load/b/j$c;

    invoke-direct {p2, p3}, Lcom/bumptech/glide/load/b/j$a;-><init>(Lcom/bumptech/glide/load/b/g$d;)V

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j;->f:Lcom/bumptech/glide/load/b/j$a;

    new-instance p2, Lcom/bumptech/glide/load/b/x;

    invoke-direct {p2}, Lcom/bumptech/glide/load/b/x;-><init>()V

    iput-object p2, p0, Lcom/bumptech/glide/load/b/j;->k:Lcom/bumptech/glide/load/b/x;

    invoke-interface {p1, p0}, Lcom/bumptech/glide/load/b/b/j;->a(Lcom/bumptech/glide/load/b/b/j$a;)V

    return-void
.end method

.method private a(Lcom/bumptech/glide/h;Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/i;Ljava/util/Map;ZZLcom/bumptech/glide/load/j;ZZZZLcom/bumptech/glide/request/h;)Lcom/bumptech/glide/load/b/j$d;
    .registers 41
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/g;",
            "II",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/bumptech/glide/l;",
            "Lcom/bumptech/glide/load/b/i;",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/bumptech/glide/load/m<",
            "*>;>;ZZ",
            "Lcom/bumptech/glide/load/j;",
            "ZZZZ",
            "Lcom/bumptech/glide/request/h;",
            ")",
            "Lcom/bumptech/glide/load/b/j$d;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p8

    move-object/from16 v10, p9

    move-object/from16 v9, p13

    move/from16 v8, p14

    move/from16 v7, p17

    move-object/from16 v6, p18

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    sget-boolean v2, Lcom/bumptech/glide/load/b/j;->a:Z

    if-eqz v2, :cond_25

    invoke-static {}, Lcom/bumptech/glide/util/e;->a()J

    move-result-wide v2

    :goto_23
    move-wide v4, v2

    goto :goto_28

    :cond_25
    const-wide/16 v2, 0x0

    goto :goto_23

    :goto_28
    new-instance v3, Lcom/bumptech/glide/load/b/m;

    move-object v2, v3

    move-object v15, v3

    move-object v3, v11

    move-wide/from16 v16, v4

    move-object v4, v12

    move v5, v13

    move-object v13, v6

    move v6, v14

    move v14, v7

    move-object/from16 v7, p10

    move v12, v8

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p13

    invoke-direct/range {v2 .. v10}, Lcom/bumptech/glide/load/b/m;-><init>(Ljava/lang/Object;Lcom/bumptech/glide/load/g;IILjava/util/Map;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/j;)V

    const/4 v2, 0x0

    if-nez v12, :cond_45

    move-object v5, v2

    goto :goto_63

    :cond_45
    iget-object v3, v0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    iget-object v4, v3, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {v4, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bumptech/glide/load/b/a$b;

    if-nez v4, :cond_53

    move-object v5, v2

    goto :goto_5e

    :cond_53
    invoke-virtual {v4}, Lcom/bumptech/glide/load/b/a$b;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bumptech/glide/load/b/o;

    if-nez v5, :cond_5e

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/a$b;)V

    :cond_5e
    :goto_5e
    if-eqz v5, :cond_63

    invoke-virtual {v5}, Lcom/bumptech/glide/load/b/o;->e()V

    :cond_63
    :goto_63
    if-eqz v5, :cond_76

    sget-object v1, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    invoke-interface {v13, v5, v1}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/a;)V

    sget-boolean v1, Lcom/bumptech/glide/load/b/j;->a:Z

    if-eqz v1, :cond_75

    const-string v1, "Loaded resource from active resources"

    move-wide/from16 v3, v16

    invoke-static {v1, v3, v4, v15}, Lcom/bumptech/glide/load/b/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_75
    return-object v2

    :cond_76
    move-wide/from16 v3, v16

    const/4 v5, 0x1

    if-nez v12, :cond_7d

    move-object v6, v2

    goto :goto_9e

    :cond_7d
    iget-object v6, v0, Lcom/bumptech/glide/load/b/j;->c:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v6, v15}, Lcom/bumptech/glide/load/b/b/j;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/u;

    move-result-object v6

    if-nez v6, :cond_87

    move-object v6, v2

    goto :goto_94

    :cond_87
    instance-of v7, v6, Lcom/bumptech/glide/load/b/o;

    if-eqz v7, :cond_8e

    check-cast v6, Lcom/bumptech/glide/load/b/o;

    goto :goto_94

    :cond_8e
    new-instance v7, Lcom/bumptech/glide/load/b/o;

    invoke-direct {v7, v6, v5, v5}, Lcom/bumptech/glide/load/b/o;-><init>(Lcom/bumptech/glide/load/b/u;ZZ)V

    move-object v6, v7

    :goto_94
    if-eqz v6, :cond_9e

    invoke-virtual {v6}, Lcom/bumptech/glide/load/b/o;->e()V

    iget-object v7, v0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v7, v15, v6}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V

    :cond_9e
    :goto_9e
    if-eqz v6, :cond_af

    sget-object v1, Lcom/bumptech/glide/load/a;->MEMORY_CACHE:Lcom/bumptech/glide/load/a;

    invoke-interface {v13, v6, v1}, Lcom/bumptech/glide/request/h;->a(Lcom/bumptech/glide/load/b/u;Lcom/bumptech/glide/load/a;)V

    sget-boolean v1, Lcom/bumptech/glide/load/b/j;->a:Z

    if-eqz v1, :cond_ae

    const-string v1, "Loaded resource from cache"

    invoke-static {v1, v3, v4, v15}, Lcom/bumptech/glide/load/b/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_ae
    return-object v2

    :cond_af
    iget-object v2, v0, Lcom/bumptech/glide/load/b/j;->b:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v2, v14}, Lcom/bumptech/glide/load/b/r;->a(Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/k;

    if-eqz v2, :cond_cf

    invoke-virtual {v2, v13}, Lcom/bumptech/glide/load/b/k;->a(Lcom/bumptech/glide/request/h;)V

    sget-boolean v1, Lcom/bumptech/glide/load/b/j;->a:Z

    if-eqz v1, :cond_c9

    const-string v1, "Added to existing load"

    invoke-static {v1, v3, v4, v15}, Lcom/bumptech/glide/load/b/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_c9
    new-instance v1, Lcom/bumptech/glide/load/b/j$d;

    invoke-direct {v1, v13, v2}, Lcom/bumptech/glide/load/b/j$d;-><init>(Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/b/k;)V

    return-object v1

    :cond_cf
    iget-object v2, v0, Lcom/bumptech/glide/load/b/j;->d:Lcom/bumptech/glide/load/b/j$b;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/j$b;->f:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v2}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/k;

    const-string v6, "Argument must not be null"

    invoke-static {v2, v6}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bumptech/glide/load/b/k;

    iput-object v15, v2, Lcom/bumptech/glide/load/b/k;->e:Lcom/bumptech/glide/load/g;

    iput-boolean v12, v2, Lcom/bumptech/glide/load/b/k;->f:Z

    move/from16 v6, p15

    iput-boolean v6, v2, Lcom/bumptech/glide/load/b/k;->g:Z

    move/from16 v6, p16

    iput-boolean v6, v2, Lcom/bumptech/glide/load/b/k;->h:Z

    iput-boolean v14, v2, Lcom/bumptech/glide/load/b/k;->i:Z

    iget-object v6, v0, Lcom/bumptech/glide/load/b/j;->f:Lcom/bumptech/glide/load/b/j$a;

    iget-object v7, v6, Lcom/bumptech/glide/load/b/j$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v7}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/load/b/g;

    const-string v8, "Argument must not be null"

    invoke-static {v7, v8}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bumptech/glide/load/b/g;

    iget v8, v6, Lcom/bumptech/glide/load/b/j$a;->c:I

    add-int/lit8 v9, v8, 0x1

    iput v9, v6, Lcom/bumptech/glide/load/b/j$a;->c:I

    iget-object v6, v7, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/load/b/f;

    iget-object v9, v7, Lcom/bumptech/glide/load/b/g;->b:Lcom/bumptech/glide/load/b/g$d;

    iput-object v1, v6, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iput-object v11, v6, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    move-object/from16 v10, p3

    iput-object v10, v6, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    move/from16 v12, p4

    iput v12, v6, Lcom/bumptech/glide/load/b/f;->e:I

    move v5, v14

    move/from16 v14, p5

    iput v14, v6, Lcom/bumptech/glide/load/b/f;->f:I

    move-object/from16 v18, v15

    move-object/from16 v15, p9

    iput-object v15, v6, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/i;

    move-wide/from16 v19, v3

    move-object/from16 v3, p6

    iput-object v3, v6, Lcom/bumptech/glide/load/b/f;->g:Ljava/lang/Class;

    iput-object v9, v6, Lcom/bumptech/glide/load/b/f;->h:Lcom/bumptech/glide/load/b/g$d;

    move-object/from16 v3, p7

    iput-object v3, v6, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    move-object/from16 v4, v18

    move-object/from16 v3, p8

    iput-object v3, v6, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    move-object/from16 v9, p13

    iput-object v9, v6, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    move-object/from16 v13, p10

    iput-object v13, v6, Lcom/bumptech/glide/load/b/f;->j:Ljava/util/Map;

    move/from16 v13, p11

    iput-boolean v13, v6, Lcom/bumptech/glide/load/b/f;->q:Z

    move/from16 v13, p12

    iput-boolean v13, v6, Lcom/bumptech/glide/load/b/f;->r:Z

    iput-object v1, v7, Lcom/bumptech/glide/load/b/g;->e:Lcom/bumptech/glide/h;

    iput-object v10, v7, Lcom/bumptech/glide/load/b/g;->f:Lcom/bumptech/glide/load/g;

    iput-object v3, v7, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/l;

    iput-object v4, v7, Lcom/bumptech/glide/load/b/g;->h:Lcom/bumptech/glide/load/b/m;

    iput v12, v7, Lcom/bumptech/glide/load/b/g;->i:I

    iput v14, v7, Lcom/bumptech/glide/load/b/g;->j:I

    iput-object v15, v7, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/load/b/i;

    iput-boolean v5, v7, Lcom/bumptech/glide/load/b/g;->p:Z

    iput-object v9, v7, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/j;

    iput-object v2, v7, Lcom/bumptech/glide/load/b/g;->m:Lcom/bumptech/glide/load/b/g$a;

    iput v8, v7, Lcom/bumptech/glide/load/b/g;->n:I

    sget-object v1, Lcom/bumptech/glide/load/b/g$f;->INITIALIZE:Lcom/bumptech/glide/load/b/g$f;

    iput-object v1, v7, Lcom/bumptech/glide/load/b/g;->o:Lcom/bumptech/glide/load/b/g$f;

    iput-object v11, v7, Lcom/bumptech/glide/load/b/g;->q:Ljava/lang/Object;

    iget-object v1, v0, Lcom/bumptech/glide/load/b/j;->b:Lcom/bumptech/glide/load/b/r;

    iget-boolean v3, v2, Lcom/bumptech/glide/load/b/k;->i:Z

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/load/b/r;->a(Z)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, p18

    invoke-virtual {v2, v1}, Lcom/bumptech/glide/load/b/k;->a(Lcom/bumptech/glide/request/h;)V

    iput-object v7, v2, Lcom/bumptech/glide/load/b/k;->p:Lcom/bumptech/glide/load/b/g;

    sget-object v3, Lcom/bumptech/glide/load/b/g$g;->INITIALIZE:Lcom/bumptech/glide/load/b/g$g;

    invoke-virtual {v7, v3}, Lcom/bumptech/glide/load/b/g;->a(Lcom/bumptech/glide/load/b/g$g;)Lcom/bumptech/glide/load/b/g$g;

    move-result-object v3

    sget-object v5, Lcom/bumptech/glide/load/b/g$g;->RESOURCE_CACHE:Lcom/bumptech/glide/load/b/g$g;

    if-eq v3, v5, :cond_183

    sget-object v5, Lcom/bumptech/glide/load/b/g$g;->DATA_CACHE:Lcom/bumptech/glide/load/b/g$g;

    if-ne v3, v5, :cond_181

    goto :goto_183

    :cond_181
    const/4 v5, 0x0

    goto :goto_184

    :cond_183
    :goto_183
    const/4 v5, 0x1

    :goto_184
    if-eqz v5, :cond_189

    iget-object v3, v2, Lcom/bumptech/glide/load/b/k;->d:Lcom/bumptech/glide/load/b/c/a;

    goto :goto_18d

    :cond_189
    invoke-virtual {v2}, Lcom/bumptech/glide/load/b/k;->a()Lcom/bumptech/glide/load/b/c/a;

    move-result-object v3

    :goto_18d
    invoke-virtual {v3, v7}, Lcom/bumptech/glide/load/b/c/a;->execute(Ljava/lang/Runnable;)V

    sget-boolean v3, Lcom/bumptech/glide/load/b/j;->a:Z

    if-eqz v3, :cond_19b

    const-string v3, "Started new load"

    move-wide/from16 v5, v19

    invoke-static {v3, v5, v6, v4}, Lcom/bumptech/glide/load/b/j;->a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V

    :cond_19b
    new-instance v3, Lcom/bumptech/glide/load/b/j$d;

    invoke-direct {v3, v1, v2}, Lcom/bumptech/glide/load/b/j$d;-><init>(Lcom/bumptech/glide/request/h;Lcom/bumptech/glide/load/b/k;)V

    return-object v3
.end method

.method private a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/o;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            ")",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->c:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0, p1}, Lcom/bumptech/glide/load/b/b/j;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/u;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    return-object p1

    :cond_a
    instance-of v0, p1, Lcom/bumptech/glide/load/b/o;

    if-eqz v0, :cond_11

    check-cast p1, Lcom/bumptech/glide/load/b/o;

    return-object p1

    :cond_11
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1, v1}, Lcom/bumptech/glide/load/b/o;-><init>(Lcom/bumptech/glide/load/b/u;ZZ)V

    move-object p1, v0

    return-object p1
.end method

.method private a(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/b/o;
    .registers 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Z)",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    iget-object p2, p0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    iget-object v1, p2, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/load/b/a$b;

    if-nez p1, :cond_11

    goto :goto_1c

    :cond_11
    invoke-virtual {p1}, Lcom/bumptech/glide/load/b/a$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/o;

    if-nez v0, :cond_1c

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/b/a$b;)V

    :cond_1c
    :goto_1c
    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/o;->e()V

    :cond_21
    return-object v0
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->e:Lcom/bumptech/glide/load/b/j$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/j$c;->a()Lcom/bumptech/glide/load/b/b/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/bumptech/glide/load/b/b/a;->a()V

    return-void
.end method

.method public static a(Lcom/bumptech/glide/load/b/u;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    instance-of v0, p0, Lcom/bumptech/glide/load/b/o;

    if-eqz v0, :cond_d

    check-cast p0, Lcom/bumptech/glide/load/b/o;

    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/o;->f()V

    return-void

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;JLcom/bumptech/glide/load/g;)V
    .registers 6

    const-string v0, "Engine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/bumptech/glide/util/e;->a(J)D

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Lcom/bumptech/glide/load/g;Z)Lcom/bumptech/glide/load/b/o;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Z)",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_4

    return-object v0

    :cond_4
    iget-object p2, p0, Lcom/bumptech/glide/load/b/j;->c:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {p2, p1}, Lcom/bumptech/glide/load/b/b/j;->a(Lcom/bumptech/glide/load/g;)Lcom/bumptech/glide/load/b/u;

    move-result-object p2

    if-nez p2, :cond_d

    goto :goto_1b

    :cond_d
    instance-of v0, p2, Lcom/bumptech/glide/load/b/o;

    if-eqz v0, :cond_15

    move-object v0, p2

    check-cast v0, Lcom/bumptech/glide/load/b/o;

    goto :goto_1b

    :cond_15
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, v1}, Lcom/bumptech/glide/load/b/o;-><init>(Lcom/bumptech/glide/load/b/u;ZZ)V

    :goto_1b
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/o;->e()V

    iget-object p2, p0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {p2, p1, v0}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V

    :cond_25
    return-object v0
.end method

.method private b()V
    .registers 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->d:Lcom/bumptech/glide/load/b/j$b;

    iget-object v1, v0, Lcom/bumptech/glide/load/b/j$b;->a:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v1}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, v0, Lcom/bumptech/glide/load/b/j$b;->b:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v1}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v1, v0, Lcom/bumptech/glide/load/b/j$b;->c:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v1}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, v0, Lcom/bumptech/glide/load/b/j$b;->d:Lcom/bumptech/glide/load/b/c/a;

    invoke-static {v0}, Lcom/bumptech/glide/load/b/j$b;->a(Ljava/util/concurrent/ExecutorService;)V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->e:Lcom/bumptech/glide/load/b/j$c;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/j$c;->b()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/load/b/a;->f:Z

    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    if-eqz v1, :cond_4e

    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :try_start_29
    iget-object v1, v0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Thread;->join(J)V

    iget-object v0, v0, Lcom/bumptech/glide/load/b/a;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_46

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to join in time"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_46
    .catch Ljava/lang/InterruptedException; {:try_start_29 .. :try_end_46} :catch_47

    :cond_46
    return-void

    :catch_47
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4e
    return-void
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->b:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {v0, p2, p1}, Lcom/bumptech/glide/load/b/r;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/k;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/b/k;Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/k<",
            "*>;",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    if-eqz p3, :cond_11

    invoke-virtual {p3, p2, p0}, Lcom/bumptech/glide/load/b/o;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o$a;)V

    iget-boolean v0, p3, Lcom/bumptech/glide/load/b/o;->a:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    invoke-virtual {v0, p2, p3}, Lcom/bumptech/glide/load/b/a;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V

    :cond_11
    iget-object p3, p0, Lcom/bumptech/glide/load/b/j;->b:Lcom/bumptech/glide/load/b/r;

    invoke-virtual {p3, p2, p1}, Lcom/bumptech/glide/load/b/r;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/k;)V

    return-void
.end method

.method public final a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/o;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/g;",
            "Lcom/bumptech/glide/load/b/o<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->g:Lcom/bumptech/glide/load/b/a;

    iget-object v0, v0, Lcom/bumptech/glide/load/b/a;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/load/b/a$b;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/a$b;->a()V

    :cond_12
    iget-boolean v0, p2, Lcom/bumptech/glide/load/b/o;->a:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->c:Lcom/bumptech/glide/load/b/b/j;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/load/b/b/j;->a(Lcom/bumptech/glide/load/g;Lcom/bumptech/glide/load/b/u;)Lcom/bumptech/glide/load/b/u;

    return-void

    :cond_1c
    iget-object p1, p0, Lcom/bumptech/glide/load/b/j;->k:Lcom/bumptech/glide/load/b/x;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/load/b/x;->a(Lcom/bumptech/glide/load/b/u;)V

    return-void
.end method

.method public final b(Lcom/bumptech/glide/load/b/u;)V
    .registers 3
    .param p1    # Lcom/bumptech/glide/load/b/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/b/u<",
            "*>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/util/k;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/load/b/j;->k:Lcom/bumptech/glide/load/b/x;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/b/x;->a(Lcom/bumptech/glide/load/b/u;)V

    return-void
.end method
