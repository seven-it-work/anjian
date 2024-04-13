.class public final Lcom/bumptech/glide/load/b/j$a;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/bumptech/glide/load/b/g$d;

.field public final b:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool<",
            "Lcom/bumptech/glide/load/b/g<",
            "*>;>;"
        }
    .end annotation
.end field

.field public c:I


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/g$d;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bumptech/glide/load/b/j$a$1;

    invoke-direct {v0, p0}, Lcom/bumptech/glide/load/b/j$a$1;-><init>(Lcom/bumptech/glide/load/b/j$a;)V

    invoke-static {v0}, Lcom/bumptech/glide/util/a/a;->a(Lcom/bumptech/glide/util/a/a$a;)Landroid/support/v4/util/Pools$Pool;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/load/b/j$a;->b:Landroid/support/v4/util/Pools$Pool;

    iput-object p1, p0, Lcom/bumptech/glide/load/b/j$a;->a:Lcom/bumptech/glide/load/b/g$d;

    return-void
.end method

.method private a(Lcom/bumptech/glide/h;Ljava/lang/Object;Lcom/bumptech/glide/load/b/m;Lcom/bumptech/glide/load/g;IILjava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/l;Lcom/bumptech/glide/load/b/i;Ljava/util/Map;ZZZLcom/bumptech/glide/load/j;Lcom/bumptech/glide/load/b/g$a;)Lcom/bumptech/glide/load/b/g;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/h;",
            "Ljava/lang/Object;",
            "Lcom/bumptech/glide/load/b/m;",
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
            "*>;>;ZZZ",
            "Lcom/bumptech/glide/load/j;",
            "Lcom/bumptech/glide/load/b/g$a<",
            "TR;>;)",
            "Lcom/bumptech/glide/load/b/g<",
            "TR;>;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p10

    move-object/from16 v8, p15

    iget-object v9, v0, Lcom/bumptech/glide/load/b/j$a;->b:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v9}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/load/b/g;

    const-string v10, "Argument must not be null"

    invoke-static {v9, v10}, Lcom/bumptech/glide/util/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/bumptech/glide/load/b/g;

    iget v10, v0, Lcom/bumptech/glide/load/b/j$a;->c:I

    add-int/lit8 v11, v10, 0x1

    iput v11, v0, Lcom/bumptech/glide/load/b/j$a;->c:I

    iget-object v11, v9, Lcom/bumptech/glide/load/b/g;->a:Lcom/bumptech/glide/load/b/f;

    iget-object v12, v9, Lcom/bumptech/glide/load/b/g;->b:Lcom/bumptech/glide/load/b/g$d;

    iput-object v1, v11, Lcom/bumptech/glide/load/b/f;->c:Lcom/bumptech/glide/h;

    iput-object v2, v11, Lcom/bumptech/glide/load/b/f;->d:Ljava/lang/Object;

    iput-object v3, v11, Lcom/bumptech/glide/load/b/f;->n:Lcom/bumptech/glide/load/g;

    iput v4, v11, Lcom/bumptech/glide/load/b/f;->e:I

    iput v5, v11, Lcom/bumptech/glide/load/b/f;->f:I

    iput-object v7, v11, Lcom/bumptech/glide/load/b/f;->p:Lcom/bumptech/glide/load/b/i;

    move-object/from16 v13, p7

    iput-object v13, v11, Lcom/bumptech/glide/load/b/f;->g:Ljava/lang/Class;

    iput-object v12, v11, Lcom/bumptech/glide/load/b/f;->h:Lcom/bumptech/glide/load/b/g$d;

    move-object/from16 v12, p8

    iput-object v12, v11, Lcom/bumptech/glide/load/b/f;->k:Ljava/lang/Class;

    iput-object v6, v11, Lcom/bumptech/glide/load/b/f;->o:Lcom/bumptech/glide/l;

    iput-object v8, v11, Lcom/bumptech/glide/load/b/f;->i:Lcom/bumptech/glide/load/j;

    move-object/from16 v12, p11

    iput-object v12, v11, Lcom/bumptech/glide/load/b/f;->j:Ljava/util/Map;

    move/from16 v12, p12

    iput-boolean v12, v11, Lcom/bumptech/glide/load/b/f;->q:Z

    move/from16 v12, p13

    iput-boolean v12, v11, Lcom/bumptech/glide/load/b/f;->r:Z

    iput-object v1, v9, Lcom/bumptech/glide/load/b/g;->e:Lcom/bumptech/glide/h;

    iput-object v3, v9, Lcom/bumptech/glide/load/b/g;->f:Lcom/bumptech/glide/load/g;

    iput-object v6, v9, Lcom/bumptech/glide/load/b/g;->g:Lcom/bumptech/glide/l;

    move-object/from16 v1, p3

    iput-object v1, v9, Lcom/bumptech/glide/load/b/g;->h:Lcom/bumptech/glide/load/b/m;

    iput v4, v9, Lcom/bumptech/glide/load/b/g;->i:I

    iput v5, v9, Lcom/bumptech/glide/load/b/g;->j:I

    iput-object v7, v9, Lcom/bumptech/glide/load/b/g;->k:Lcom/bumptech/glide/load/b/i;

    move/from16 v1, p14

    iput-boolean v1, v9, Lcom/bumptech/glide/load/b/g;->p:Z

    iput-object v8, v9, Lcom/bumptech/glide/load/b/g;->l:Lcom/bumptech/glide/load/j;

    move-object/from16 v1, p16

    iput-object v1, v9, Lcom/bumptech/glide/load/b/g;->m:Lcom/bumptech/glide/load/b/g$a;

    iput v10, v9, Lcom/bumptech/glide/load/b/g;->n:I

    sget-object v1, Lcom/bumptech/glide/load/b/g$f;->INITIALIZE:Lcom/bumptech/glide/load/b/g$f;

    iput-object v1, v9, Lcom/bumptech/glide/load/b/g;->o:Lcom/bumptech/glide/load/b/g$f;

    iput-object v2, v9, Lcom/bumptech/glide/load/b/g;->q:Ljava/lang/Object;

    return-object v9
.end method
