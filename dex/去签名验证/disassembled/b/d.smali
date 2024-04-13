.class public final Lb/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/d$a;
    }
.end annotation


# static fields
.field public static final a:Lb/d;

.field public static final b:Lb/d;


# instance fields
.field public final c:Z

.field public final d:Z

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:I

.field public final k:Z

.field l:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final m:I

.field private final n:Z

.field private final o:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lb/d$a;

    invoke-direct {v0}, Lb/d$a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lb/d$a;->a:Z

    invoke-virtual {v0}, Lb/d$a;->a()Lb/d;

    move-result-object v0

    sput-object v0, Lb/d;->a:Lb/d;

    new-instance v0, Lb/d$a;

    invoke-direct {v0}, Lb/d$a;-><init>()V

    iput-boolean v1, v0, Lb/d$a;->f:Z

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v2, 0x7fffffff

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-lez v1, :cond_26

    const v1, 0x7fffffff

    goto :goto_27

    :cond_26
    long-to-int v1, v4

    :goto_27
    iput v1, v0, Lb/d$a;->d:I

    invoke-virtual {v0}, Lb/d$a;->a()Lb/d;

    move-result-object v0

    sput-object v0, Lb/d;->b:Lb/d;

    return-void
.end method

.method constructor <init>(Lb/d$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lb/d$a;->a:Z

    iput-boolean v0, p0, Lb/d;->c:Z

    iget-boolean v0, p1, Lb/d$a;->b:Z

    iput-boolean v0, p0, Lb/d;->d:Z

    iget v0, p1, Lb/d$a;->c:I

    iput v0, p0, Lb/d;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lb/d;->m:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lb/d;->f:Z

    iput-boolean v0, p0, Lb/d;->g:Z

    iput-boolean v0, p0, Lb/d;->h:Z

    iget v0, p1, Lb/d$a;->d:I

    iput v0, p0, Lb/d;->i:I

    iget v0, p1, Lb/d$a;->e:I

    iput v0, p0, Lb/d;->j:I

    iget-boolean v0, p1, Lb/d$a;->f:Z

    iput-boolean v0, p0, Lb/d;->k:Z

    iget-boolean v0, p1, Lb/d$a;->g:Z

    iput-boolean v0, p0, Lb/d;->n:Z

    iget-boolean p1, p1, Lb/d$a;->h:Z

    iput-boolean p1, p0, Lb/d;->o:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZZLjava/lang/String;)V
    .registers 14
    .param p13    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lb/d;->c:Z

    iput-boolean p2, p0, Lb/d;->d:Z

    iput p3, p0, Lb/d;->e:I

    iput p4, p0, Lb/d;->m:I

    iput-boolean p5, p0, Lb/d;->f:Z

    iput-boolean p6, p0, Lb/d;->g:Z

    iput-boolean p7, p0, Lb/d;->h:Z

    iput p8, p0, Lb/d;->i:I

    iput p9, p0, Lb/d;->j:I

    iput-boolean p10, p0, Lb/d;->k:Z

    iput-boolean p11, p0, Lb/d;->n:Z

    iput-boolean p12, p0, Lb/d;->o:Z

    iput-object p13, p0, Lb/d;->l:Ljava/lang/String;

    return-void
.end method

.method public static a(Lb/u;)Lb/d;
    .registers 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/u;->a:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, -0x1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    :goto_1c
    if-ge v6, v1, :cond_149

    invoke-virtual {v0, v6}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Cache-Control"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    if-eqz v8, :cond_32

    :goto_30
    const/4 v7, 0x0

    goto :goto_3d

    :cond_32
    move-object v8, v2

    goto :goto_3d

    :cond_34
    const-string v4, "Pragma"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_142

    goto :goto_30

    :goto_3d
    const/4 v4, 0x0

    :goto_3e
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_142

    const-string v9, "=,;"

    invoke-static {v2, v4, v9}, Lb/a/d/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v9, v3, :cond_9f

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-eq v3, v5, :cond_9f

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3b

    if-ne v3, v5, :cond_69

    goto :goto_9f

    :cond_69
    add-int/lit8 v9, v9, 0x1

    invoke-static {v2, v9}, Lb/a/d/e;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8e

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x22

    if-ne v5, v9, :cond_8e

    add-int/lit8 v3, v3, 0x1

    const-string v5, "\""

    invoke-static {v2, v3, v5}, Lb/a/d/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v22, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_a5

    :cond_8e
    const/16 v22, 0x1

    const-string v5, ",;"

    invoke-static {v2, v3, v5}, Lb/a/d/e;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_a5

    :cond_9f
    :goto_9f
    const/16 v22, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    const/4 v3, 0x0

    :goto_a5
    const-string v9, "no-cache"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b0

    move v4, v5

    const/4 v10, 0x1

    goto :goto_3e

    :cond_b0
    const-string v9, "no-store"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_bb

    move v4, v5

    const/4 v11, 0x1

    goto :goto_3e

    :cond_bb
    const-string v9, "max-age"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_cb

    const/4 v9, -0x1

    invoke-static {v3, v9}, Lb/a/d/e;->b(Ljava/lang/String;I)I

    move-result v12

    :cond_c8
    :goto_c8
    move v4, v5

    goto/16 :goto_3e

    :cond_cb
    const-string v9, "s-maxage"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d9

    const/4 v9, -0x1

    invoke-static {v3, v9}, Lb/a/d/e;->b(Ljava/lang/String;I)I

    move-result v13

    goto :goto_c8

    :cond_d9
    const-string v9, "private"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e5

    move v4, v5

    const/4 v14, 0x1

    goto/16 :goto_3e

    :cond_e5
    const-string v9, "public"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f1

    move v4, v5

    const/4 v15, 0x1

    goto/16 :goto_3e

    :cond_f1
    const-string v9, "must-revalidate"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_fe

    move v4, v5

    const/16 v16, 0x1

    goto/16 :goto_3e

    :cond_fe
    const-string v9, "max-stale"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10e

    const v4, 0x7fffffff

    invoke-static {v3, v4}, Lb/a/d/e;->b(Ljava/lang/String;I)I

    move-result v17

    goto :goto_c8

    :cond_10e
    const-string v9, "min-fresh"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11c

    const/4 v9, -0x1

    invoke-static {v3, v9}, Lb/a/d/e;->b(Ljava/lang/String;I)I

    move-result v18

    goto :goto_c8

    :cond_11c
    const/4 v9, -0x1

    const-string v3, "only-if-cached"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12a

    move v4, v5

    const/16 v19, 0x1

    goto/16 :goto_3e

    :cond_12a
    const-string v3, "no-transform"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_137

    move v4, v5

    const/16 v20, 0x1

    goto/16 :goto_3e

    :cond_137
    const-string v3, "immutable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c8

    const/16 v21, 0x1

    goto :goto_c8

    :cond_142
    const/4 v9, -0x1

    const/16 v22, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1c

    :cond_149
    if-nez v7, :cond_14e

    const/16 v22, 0x0

    goto :goto_150

    :cond_14e
    move-object/from16 v22, v8

    :goto_150
    new-instance v0, Lb/d;

    move-object v9, v0

    invoke-direct/range {v9 .. v22}, Lb/d;-><init>(ZZIIZZZIIZZZLjava/lang/String;)V

    return-object v0
.end method

.method private a()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->c:Z

    return v0
.end method

.method private b()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->d:Z

    return v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lb/d;->e:I

    return v0
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lb/d;->m:I

    return v0
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->f:Z

    return v0
.end method

.method private f()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->g:Z

    return v0
.end method

.method private g()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->h:Z

    return v0
.end method

.method private h()I
    .registers 2

    iget v0, p0, Lb/d;->i:I

    return v0
.end method

.method private i()I
    .registers 2

    iget v0, p0, Lb/d;->j:I

    return v0
.end method

.method private j()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->k:Z

    return v0
.end method

.method private k()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->n:Z

    return v0
.end method

.method private l()Z
    .registers 2

    iget-boolean v0, p0, Lb/d;->o:Z

    return v0
.end method

.method private m()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lb/d;->c:Z

    if-eqz v1, :cond_e

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-boolean v1, p0, Lb/d;->d:Z

    if-eqz v1, :cond_17

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget v1, p0, Lb/d;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2b

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    iget v1, p0, Lb/d;->m:I

    if-eq v1, v2, :cond_3e

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3e
    iget-boolean v1, p0, Lb/d;->f:Z

    if-eqz v1, :cond_47

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_47
    iget-boolean v1, p0, Lb/d;->g:Z

    if-eqz v1, :cond_50

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_50
    iget-boolean v1, p0, Lb/d;->h:Z

    if-eqz v1, :cond_59

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_59
    iget v1, p0, Lb/d;->i:I

    if-eq v1, v2, :cond_6c

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6c
    iget v1, p0, Lb/d;->j:I

    if-eq v1, v2, :cond_7f

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7f
    iget-boolean v1, p0, Lb/d;->k:Z

    if-eqz v1, :cond_88

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_88
    iget-boolean v1, p0, Lb/d;->n:Z

    if-eqz v1, :cond_91

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_91
    iget-boolean v1, p0, Lb/d;->o:Z

    if-eqz v1, :cond_9a

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a3

    const-string v0, ""

    return-object v0

    :cond_a3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/d;->l:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lb/d;->c:Z

    if-eqz v1, :cond_13

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-boolean v1, p0, Lb/d;->d:Z

    if-eqz v1, :cond_1c

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget v1, p0, Lb/d;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    iget v1, p0, Lb/d;->m:I

    if-eq v1, v2, :cond_43

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    iget-boolean v1, p0, Lb/d;->f:Z

    if-eqz v1, :cond_4c

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    iget-boolean v1, p0, Lb/d;->g:Z

    if-eqz v1, :cond_55

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    iget-boolean v1, p0, Lb/d;->h:Z

    if-eqz v1, :cond_5e

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    iget v1, p0, Lb/d;->i:I

    if-eq v1, v2, :cond_71

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    iget v1, p0, Lb/d;->j:I

    if-eq v1, v2, :cond_84

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lb/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    iget-boolean v1, p0, Lb/d;->k:Z

    if-eqz v1, :cond_8d

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8d
    iget-boolean v1, p0, Lb/d;->n:Z

    if-eqz v1, :cond_96

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_96
    iget-boolean v1, p0, Lb/d;->o:Z

    if-eqz v1, :cond_9f

    const-string v1, "immutable, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_a8

    const-string v0, ""

    goto :goto_b9

    :cond_a8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b9
    iput-object v0, p0, Lb/d;->l:Ljava/lang/String;

    return-object v0
.end method
