.class public final Lcom/google/a/b/a/d;
.super Lcom/google/a/b/a/q;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:[Ljava/lang/String;

.field private final f:[Ljava/lang/String;

.field private final g:[Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private final k:[Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:[Ljava/lang/String;

.field private final p:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 26

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p10

    move-object/from16 v6, p11

    sget v7, Lcom/google/a/b/a/r;->ADDRESSBOOK$3fc7421e:I

    invoke-direct {v0, v7}, Lcom/google/a/b/a/q;-><init>(I)V

    if-eqz v1, :cond_1f

    if-eqz v2, :cond_1f

    array-length v7, v1

    array-length v8, v2

    if-eq v7, v8, :cond_1f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Phone numbers and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1f
    if-eqz v3, :cond_2f

    if-eqz v4, :cond_2f

    array-length v7, v3

    array-length v8, v4

    if-eq v7, v8, :cond_2f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Emails and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2f
    if-eqz v5, :cond_3f

    if-eqz v6, :cond_3f

    array-length v7, v5

    array-length v8, v6

    if-eq v7, v8, :cond_3f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Addresses and types lengths differ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3f
    move-object v7, p1

    iput-object v7, v0, Lcom/google/a/b/a/d;->a:[Ljava/lang/String;

    move-object v7, p2

    iput-object v7, v0, Lcom/google/a/b/a/d;->b:[Ljava/lang/String;

    move-object v7, p3

    iput-object v7, v0, Lcom/google/a/b/a/d;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/a/b/a/d;->d:[Ljava/lang/String;

    iput-object v2, v0, Lcom/google/a/b/a/d;->e:[Ljava/lang/String;

    iput-object v3, v0, Lcom/google/a/b/a/d;->f:[Ljava/lang/String;

    iput-object v4, v0, Lcom/google/a/b/a/d;->g:[Ljava/lang/String;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/google/a/b/a/d;->h:Ljava/lang/String;

    move-object/from16 v1, p9

    iput-object v1, v0, Lcom/google/a/b/a/d;->i:Ljava/lang/String;

    iput-object v5, v0, Lcom/google/a/b/a/d;->j:[Ljava/lang/String;

    iput-object v6, v0, Lcom/google/a/b/a/d;->k:[Ljava/lang/String;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/google/a/b/a/d;->l:Ljava/lang/String;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/a/b/a/d;->m:Ljava/lang/String;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/a/b/a/d;->n:Ljava/lang/String;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/a/b/a/d;->o:[Ljava/lang/String;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/a/b/a/d;->p:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 25

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v0 .. v16}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private b()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->a:[Ljava/lang/String;

    return-object v0
.end method

.method private c()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->b:[Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method private e()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->d:[Ljava/lang/String;

    return-object v0
.end method

.method private f()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->e:[Ljava/lang/String;

    return-object v0
.end method

.method private g()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->f:[Ljava/lang/String;

    return-object v0
.end method

.method private h()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->g:[Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method private k()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->j:[Ljava/lang/String;

    return-object v0
.end method

.method private l()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->k:[Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->n:Ljava/lang/String;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->l:Ljava/lang/String;

    return-object v0
.end method

.method private o()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->o:[Ljava/lang/String;

    return-object v0
.end method

.method private p()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->m:Ljava/lang/String;

    return-object v0
.end method

.method private q()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/d;->p:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->n:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->j:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->d:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->f:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->h:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->o:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->m:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->p:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/d;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/d;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
