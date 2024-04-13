.class public final Lcom/b/a/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/b/a/e;

.field public static final b:Lcom/b/a/e;


# instance fields
.field c:Ljava/lang/String;

.field private final d:Z

.field private final e:Z

.field private final f:I

.field private final g:I

.field private final h:Z

.field private final i:Z

.field private final j:Z

.field private final k:I

.field private final l:I

.field private final m:Z

.field private final n:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/b/a/f;

    invoke-direct {v0}, Lcom/b/a/f;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/b/a/f;->a:Z

    invoke-virtual {v0}, Lcom/b/a/f;->a()Lcom/b/a/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/e;->a:Lcom/b/a/e;

    new-instance v0, Lcom/b/a/f;

    invoke-direct {v0}, Lcom/b/a/f;-><init>()V

    iput-boolean v1, v0, Lcom/b/a/f;->f:Z

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
    iput v1, v0, Lcom/b/a/f;->d:I

    invoke-virtual {v0}, Lcom/b/a/f;->a()Lcom/b/a/e;

    move-result-object v0

    sput-object v0, Lcom/b/a/e;->b:Lcom/b/a/e;

    return-void
.end method

.method constructor <init>(Lcom/b/a/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/b/a/f;->a:Z

    iput-boolean v0, p0, Lcom/b/a/e;->d:Z

    iget-boolean v0, p1, Lcom/b/a/f;->b:Z

    iput-boolean v0, p0, Lcom/b/a/e;->e:Z

    iget v0, p1, Lcom/b/a/f;->c:I

    iput v0, p0, Lcom/b/a/e;->f:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/b/a/e;->g:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/b/a/e;->h:Z

    iput-boolean v0, p0, Lcom/b/a/e;->i:Z

    iput-boolean v0, p0, Lcom/b/a/e;->j:Z

    iget v0, p1, Lcom/b/a/f;->d:I

    iput v0, p0, Lcom/b/a/e;->k:I

    iget v0, p1, Lcom/b/a/f;->e:I

    iput v0, p0, Lcom/b/a/e;->l:I

    iget-boolean v0, p1, Lcom/b/a/f;->f:Z

    iput-boolean v0, p0, Lcom/b/a/e;->m:Z

    iget-boolean p1, p1, Lcom/b/a/f;->g:Z

    iput-boolean p1, p0, Lcom/b/a/e;->n:Z

    return-void
.end method

.method private constructor <init>(ZZIIZZZIIZZLjava/lang/String;)V
    .registers 13

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/b/a/e;->d:Z

    iput-boolean p2, p0, Lcom/b/a/e;->e:Z

    iput p3, p0, Lcom/b/a/e;->f:I

    iput p4, p0, Lcom/b/a/e;->g:I

    iput-boolean p5, p0, Lcom/b/a/e;->h:Z

    iput-boolean p6, p0, Lcom/b/a/e;->i:Z

    iput-boolean p7, p0, Lcom/b/a/e;->j:Z

    iput p8, p0, Lcom/b/a/e;->k:I

    iput p9, p0, Lcom/b/a/e;->l:I

    iput-boolean p10, p0, Lcom/b/a/e;->m:Z

    iput-boolean p11, p0, Lcom/b/a/e;->n:Z

    iput-object p12, p0, Lcom/b/a/e;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/b/a/aa;)Lcom/b/a/e;
    .registers 24

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/b/a/aa;->a()I

    move-result v1

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

    :goto_19
    if-ge v6, v1, :cond_139

    invoke-virtual {v0, v6}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v6}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Cache-Control"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31

    if-eqz v8, :cond_2f

    :goto_2d
    const/4 v7, 0x0

    goto :goto_3a

    :cond_2f
    move-object v8, v2

    goto :goto_3a

    :cond_31
    const-string v4, "Pragma"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_132

    goto :goto_2d

    :goto_3a
    const/4 v4, 0x0

    :goto_3b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v4, v9, :cond_132

    const-string v9, "=,;"

    invoke-static {v2, v4, v9}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v9

    invoke-virtual {v2, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v9, v3, :cond_9c

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2c

    if-eq v3, v5, :cond_9c

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x3b

    if-ne v3, v5, :cond_66

    goto :goto_9c

    :cond_66
    add-int/lit8 v9, v9, 0x1

    invoke-static {v2, v9}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_8b

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v9, 0x22

    if-ne v5, v9, :cond_8b

    add-int/lit8 v3, v3, 0x1

    const-string v5, "\""

    invoke-static {v2, v3, v5}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v21, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_a2

    :cond_8b
    const/16 v21, 0x1

    const-string v5, ",;"

    invoke-static {v2, v3, v5}, Lcom/b/a/a/c/f;->a(Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    goto :goto_a2

    :cond_9c
    :goto_9c
    const/16 v21, 0x1

    add-int/lit8 v9, v9, 0x1

    move v5, v9

    const/4 v3, 0x0

    :goto_a2
    const-string v9, "no-cache"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ad

    move v4, v5

    const/4 v10, 0x1

    goto :goto_3b

    :cond_ad
    const-string v9, "no-store"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b8

    move v4, v5

    const/4 v11, 0x1

    goto :goto_3b

    :cond_b8
    const-string v9, "max-age"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c8

    const/4 v9, -0x1

    invoke-static {v3, v9}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v12

    :cond_c5
    :goto_c5
    move v4, v5

    goto/16 :goto_3b

    :cond_c8
    const-string v9, "s-maxage"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_d6

    const/4 v9, -0x1

    invoke-static {v3, v9}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v13

    goto :goto_c5

    :cond_d6
    const-string v9, "private"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_e2

    move v4, v5

    const/4 v14, 0x1

    goto/16 :goto_3b

    :cond_e2
    const-string v9, "public"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_ee

    move v4, v5

    const/4 v15, 0x1

    goto/16 :goto_3b

    :cond_ee
    const-string v9, "must-revalidate"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_fb

    move v4, v5

    const/16 v16, 0x1

    goto/16 :goto_3b

    :cond_fb
    const-string v9, "max-stale"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10b

    const v4, 0x7fffffff

    invoke-static {v3, v4}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v17

    goto :goto_c5

    :cond_10b
    const-string v9, "min-fresh"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_119

    const/4 v9, -0x1

    invoke-static {v3, v9}, Lcom/b/a/a/c/f;->b(Ljava/lang/String;I)I

    move-result v18

    goto :goto_c5

    :cond_119
    const/4 v9, -0x1

    const-string v3, "only-if-cached"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_127

    move v4, v5

    const/16 v19, 0x1

    goto/16 :goto_3b

    :cond_127
    const-string v3, "no-transform"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c5

    const/16 v20, 0x1

    goto :goto_c5

    :cond_132
    const/4 v9, -0x1

    const/16 v21, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_19

    :cond_139
    if-nez v7, :cond_13e

    const/16 v21, 0x0

    goto :goto_140

    :cond_13e
    move-object/from16 v21, v8

    :goto_140
    new-instance v0, Lcom/b/a/e;

    move-object v9, v0

    invoke-direct/range {v9 .. v21}, Lcom/b/a/e;-><init>(ZZIIZZZIIZZLjava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/e;->d:Z

    return v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/e;->e:Z

    return v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/b/a/e;->f:I

    return v0
.end method

.method public final d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/e;->h:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/e;->i:Z

    return v0
.end method

.method public final f()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/e;->j:Z

    return v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/b/a/e;->k:I

    return v0
.end method

.method public final h()I
    .registers 2

    iget v0, p0, Lcom/b/a/e;->l:I

    return v0
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/b/a/e;->m:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/b/a/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/b/a/e;->d:Z

    if-eqz v1, :cond_13

    const-string v1, "no-cache, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_13
    iget-boolean v1, p0, Lcom/b/a/e;->e:Z

    if-eqz v1, :cond_1c

    const-string v1, "no-store, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1c
    iget v1, p0, Lcom/b/a/e;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_30

    const-string v1, "max-age="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    iget v1, p0, Lcom/b/a/e;->g:I

    if-eq v1, v2, :cond_43

    const-string v1, "s-maxage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_43
    iget-boolean v1, p0, Lcom/b/a/e;->h:Z

    if-eqz v1, :cond_4c

    const-string v1, "private, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4c
    iget-boolean v1, p0, Lcom/b/a/e;->i:Z

    if-eqz v1, :cond_55

    const-string v1, "public, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_55
    iget-boolean v1, p0, Lcom/b/a/e;->j:Z

    if-eqz v1, :cond_5e

    const-string v1, "must-revalidate, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5e
    iget v1, p0, Lcom/b/a/e;->k:I

    if-eq v1, v2, :cond_71

    const-string v1, "max-stale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_71
    iget v1, p0, Lcom/b/a/e;->l:I

    if-eq v1, v2, :cond_84

    const-string v1, "min-fresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/e;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_84
    iget-boolean v1, p0, Lcom/b/a/e;->m:Z

    if-eqz v1, :cond_8d

    const-string v1, "only-if-cached, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8d
    iget-boolean v1, p0, Lcom/b/a/e;->n:Z

    if-eqz v1, :cond_96

    const-string v1, "no-transform, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_9f

    const-string v0, ""

    goto :goto_b0

    :cond_9f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b0
    iput-object v0, p0, Lcom/b/a/e;->c:Ljava/lang/String;

    return-object v0
.end method
