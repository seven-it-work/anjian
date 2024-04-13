.class public final Lb/a/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Lb/ac;

.field final c:Lb/ae;

.field d:Ljava/util/Date;

.field e:Ljava/lang/String;

.field f:Ljava/util/Date;

.field g:Ljava/lang/String;

.field h:Ljava/util/Date;

.field i:J

.field j:J

.field k:Ljava/lang/String;

.field l:I


# direct methods
.method public constructor <init>(JLb/ac;Lb/ae;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lb/a/a/c$a;->l:I

    iput-wide p1, p0, Lb/a/a/c$a;->a:J

    iput-object p3, p0, Lb/a/a/c$a;->b:Lb/ac;

    iput-object p4, p0, Lb/a/a/c$a;->c:Lb/ae;

    if-eqz p4, :cond_75

    iget-wide p1, p4, Lb/ae;->k:J

    iput-wide p1, p0, Lb/a/a/c$a;->i:J

    iget-wide p1, p4, Lb/ae;->l:J

    iput-wide p1, p0, Lb/a/a/c$a;->j:J

    iget-object p1, p4, Lb/ae;->f:Lb/u;

    const/4 p2, 0x0

    iget-object p3, p1, Lb/u;->a:[Ljava/lang/String;

    array-length p3, p3

    div-int/lit8 p3, p3, 0x2

    :goto_1e
    if-ge p2, p3, :cond_75

    invoke-virtual {p1, p2}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p2}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-static {v1}, Lb/a/d/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lb/a/a/c$a;->d:Ljava/util/Date;

    iput-object v1, p0, Lb/a/a/c$a;->e:Ljava/lang/String;

    goto :goto_72

    :cond_39
    const-string v2, "Expires"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-static {v1}, Lb/a/d/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lb/a/a/c$a;->h:Ljava/util/Date;

    goto :goto_72

    :cond_48
    const-string v2, "Last-Modified"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-static {v1}, Lb/a/d/d;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p4

    iput-object p4, p0, Lb/a/a/c$a;->f:Ljava/util/Date;

    iput-object v1, p0, Lb/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_72

    :cond_59
    const-string v2, "ETag"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_64

    iput-object v1, p0, Lb/a/a/c$a;->k:Ljava/lang/String;

    goto :goto_72

    :cond_64
    const-string v2, "Age"

    invoke-virtual {v2, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_72

    invoke-static {v1, v0}, Lb/a/d/e;->b(Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lb/a/a/c$a;->l:I

    :cond_72
    :goto_72
    add-int/lit8 p2, p2, 0x1

    goto :goto_1e

    :cond_75
    return-void
.end method

.method private a()Lb/a/a/c;
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    const/4 v2, 0x0

    if-nez v1, :cond_10

    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    goto/16 :goto_1dc

    :cond_10
    iget-object v1, v0, Lb/a/a/c$a;->b:Lb/ac;

    iget-object v1, v1, Lb/ac;->a:Lb/v;

    invoke-virtual {v1}, Lb/v;->b()Z

    move-result v1

    if-eqz v1, :cond_29

    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    iget-object v1, v1, Lb/ae;->e:Lb/t;

    if-nez v1, :cond_29

    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    goto/16 :goto_1dc

    :cond_29
    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-static {v1, v3}, Lb/a/a/c;->a(Lb/ae;Lb/ac;)Z

    move-result v1

    if-nez v1, :cond_3c

    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    goto/16 :goto_1dc

    :cond_3c
    iget-object v1, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-virtual {v1}, Lb/ac;->d()Lb/d;

    move-result-object v1

    iget-boolean v3, v1, Lb/d;->c:Z

    if-nez v3, :cond_1d5

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    const-string v4, "If-Modified-Since"

    invoke-virtual {v3, v4}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5b

    const-string v4, "If-None-Match"

    invoke-virtual {v3, v4}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v3, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v3, 0x1

    :goto_5c
    if-eqz v3, :cond_60

    goto/16 :goto_1d5

    :cond_60
    iget-object v3, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_75

    iget-wide v3, v0, Lb/a/a/c$a;->j:J

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v11, v3, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_76

    :cond_75
    move-wide v3, v7

    :goto_76
    iget v9, v0, Lb/a/a/c$a;->l:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_88

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v11, v0, Lb/a/a/c$a;->l:I

    int-to-long v11, v11

    invoke-virtual {v9, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_88
    iget-wide v11, v0, Lb/a/a/c$a;->j:J

    iget-wide v13, v0, Lb/a/a/c$a;->i:J

    sub-long v15, v11, v13

    iget-wide v11, v0, Lb/a/a/c$a;->a:J

    iget-wide v13, v0, Lb/a/a/c$a;->j:J

    sub-long v17, v11, v13

    add-long v11, v3, v15

    add-long v3, v11, v17

    iget-object v9, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v9}, Lb/ae;->f()Lb/d;

    move-result-object v9

    iget v11, v9, Lb/d;->e:I

    if-eq v11, v10, :cond_ac

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, v9, Lb/d;->e:I

    int-to-long v12, v9

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_10a

    :cond_ac
    iget-object v9, v0, Lb/a/a/c$a;->h:Ljava/util/Date;

    if-eqz v9, :cond_cb

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v9, :cond_bb

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    goto :goto_bd

    :cond_bb
    iget-wide v11, v0, Lb/a/a/c$a;->j:J

    :goto_bd
    iget-object v9, v0, Lb/a/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long v15, v13, v11

    cmp-long v9, v15, v7

    if-lez v9, :cond_109

    move-wide v11, v15

    goto :goto_10a

    :cond_cb
    iget-object v9, v0, Lb/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v9, :cond_109

    iget-object v9, v0, Lb/a/a/c$a;->c:Lb/ae;

    iget-object v9, v9, Lb/ae;->a:Lb/ac;

    iget-object v9, v9, Lb/ac;->a:Lb/v;

    iget-object v11, v9, Lb/v;->n:Ljava/util/List;

    if-nez v11, :cond_db

    move-object v9, v2

    goto :goto_e9

    :cond_db
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lb/v;->n:Ljava/util/List;

    invoke-static {v11, v9}, Lb/v;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_e9
    if-nez v9, :cond_109

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v9, :cond_f6

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    goto :goto_f8

    :cond_f6
    iget-wide v11, v0, Lb/a/a/c$a;->i:J

    :goto_f8
    iget-object v9, v0, Lb/a/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long v15, v11, v13

    cmp-long v9, v15, v7

    if-lez v9, :cond_109

    const-wide/16 v11, 0xa

    div-long v11, v15, v11

    goto :goto_10a

    :cond_109
    move-wide v11, v7

    :goto_10a
    iget v9, v1, Lb/d;->e:I

    if-eq v9, v10, :cond_11b

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v13, v1, Lb/d;->e:I

    int-to-long v13, v13

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_11b
    iget v9, v1, Lb/d;->j:I

    if-eq v9, v10, :cond_129

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v13, v1, Lb/d;->j:I

    int-to-long v13, v13

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    goto :goto_12a

    :cond_129
    move-wide v13, v7

    :goto_12a
    iget-object v9, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v9}, Lb/ae;->f()Lb/d;

    move-result-object v9

    iget-boolean v15, v9, Lb/d;->h:Z

    if-nez v15, :cond_141

    iget v15, v1, Lb/d;->i:I

    if-eq v15, v10, :cond_141

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, v1, Lb/d;->i:I

    int-to-long v5, v1

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    :cond_141
    iget-boolean v1, v9, Lb/d;->c:Z

    if-nez v1, :cond_18b

    add-long v5, v3, v13

    add-long v13, v11, v7

    cmp-long v1, v5, v13

    if-gez v1, :cond_18b

    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v1}, Lb/ae;->e()Lb/ae$a;

    move-result-object v1

    cmp-long v7, v5, v11

    if-ltz v7, :cond_15e

    const-string v5, "Warning"

    const-string v6, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v1, v5, v6}, Lb/ae$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ae$a;

    :cond_15e
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_181

    iget-object v3, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v3}, Lb/ae;->f()Lb/d;

    move-result-object v3

    iget v3, v3, Lb/d;->e:I

    if-ne v3, v10, :cond_176

    iget-object v3, v0, Lb/a/a/c$a;->h:Ljava/util/Date;

    if-nez v3, :cond_176

    const/16 v19, 0x1

    goto :goto_178

    :cond_176
    const/16 v19, 0x0

    :goto_178
    if-eqz v19, :cond_181

    const-string v3, "Warning"

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v1, v3, v4}, Lb/ae$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ae$a;

    :cond_181
    new-instance v3, Lb/a/a/c;

    invoke-virtual {v1}, Lb/ae$a;->a()Lb/ae;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    goto :goto_1cb

    :cond_18b
    iget-object v1, v0, Lb/a/a/c$a;->k:Ljava/lang/String;

    if-eqz v1, :cond_194

    const-string v1, "If-None-Match"

    iget-object v3, v0, Lb/a/a/c$a;->k:Ljava/lang/String;

    goto :goto_1a5

    :cond_194
    iget-object v1, v0, Lb/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v1, :cond_19d

    const-string v1, "If-Modified-Since"

    iget-object v3, v0, Lb/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_1a5

    :cond_19d
    iget-object v1, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v1, :cond_1cd

    const-string v1, "If-Modified-Since"

    iget-object v3, v0, Lb/a/a/c$a;->e:Ljava/lang/String;

    :goto_1a5
    iget-object v4, v0, Lb/a/a/c$a;->b:Lb/ac;

    iget-object v4, v4, Lb/ac;->c:Lb/u;

    invoke-virtual {v4}, Lb/u;->b()Lb/u$a;

    move-result-object v4

    sget-object v5, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v5, v4, v1, v3}, Lb/a/a;->a(Lb/u$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-virtual {v1}, Lb/ac;->c()Lb/ac$a;

    move-result-object v1

    invoke-virtual {v4}, Lb/u$a;->a()Lb/u;

    move-result-object v3

    invoke-virtual {v1, v3}, Lb/ac$a;->a(Lb/u;)Lb/ac$a;

    move-result-object v1

    invoke-virtual {v1}, Lb/ac$a;->d()Lb/ac;

    move-result-object v1

    new-instance v3, Lb/a/a/c;

    iget-object v4, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-direct {v3, v1, v4}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    :goto_1cb
    move-object v1, v3

    goto :goto_1dc

    :cond_1cd
    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    goto :goto_1dc

    :cond_1d5
    :goto_1d5
    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    :goto_1dc
    iget-object v3, v1, Lb/a/a/c;->a:Lb/ac;

    if-eqz v3, :cond_1ef

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-virtual {v3}, Lb/ac;->d()Lb/d;

    move-result-object v3

    iget-boolean v3, v3, Lb/d;->k:Z

    if-eqz v3, :cond_1ef

    new-instance v1, Lb/a/a/c;

    invoke-direct {v1, v2, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    :cond_1ef
    return-object v1
.end method

.method private static a(Lb/ac;)Z
    .registers 2

    const-string v0, "If-Modified-Since"

    invoke-virtual {p0, v0}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    const-string v0, "If-None-Match"

    invoke-virtual {p0, v0}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private b()Lb/a/a/c;
    .registers 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    const/4 v2, 0x0

    if-nez v1, :cond_f

    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    return-object v1

    :cond_f
    iget-object v1, v0, Lb/a/a/c$a;->b:Lb/ac;

    iget-object v1, v1, Lb/ac;->a:Lb/v;

    invoke-virtual {v1}, Lb/v;->b()Z

    move-result v1

    if-eqz v1, :cond_27

    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    iget-object v1, v1, Lb/ae;->e:Lb/t;

    if-nez v1, :cond_27

    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    return-object v1

    :cond_27
    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-static {v1, v3}, Lb/a/a/c;->a(Lb/ae;Lb/ac;)Z

    move-result v1

    if-nez v1, :cond_39

    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    return-object v1

    :cond_39
    iget-object v1, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-virtual {v1}, Lb/ac;->d()Lb/d;

    move-result-object v1

    iget-boolean v3, v1, Lb/d;->c:Z

    if-nez v3, :cond_1d1

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    const-string v4, "If-Modified-Since"

    invoke-virtual {v3, v4}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_58

    const-string v4, "If-None-Match"

    invoke-virtual {v3, v4}, Lb/ac;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_56

    goto :goto_58

    :cond_56
    const/4 v3, 0x0

    goto :goto_59

    :cond_58
    :goto_58
    const/4 v3, 0x1

    :goto_59
    if-eqz v3, :cond_5d

    goto/16 :goto_1d1

    :cond_5d
    iget-object v3, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    const-wide/16 v7, 0x0

    if-eqz v3, :cond_72

    iget-wide v3, v0, Lb/a/a/c$a;->j:J

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long v11, v3, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    goto :goto_73

    :cond_72
    move-wide v3, v7

    :goto_73
    iget v9, v0, Lb/a/a/c$a;->l:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_85

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v11, v0, Lb/a/a/c$a;->l:I

    int-to-long v11, v11

    invoke-virtual {v9, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    :cond_85
    iget-wide v11, v0, Lb/a/a/c$a;->j:J

    iget-wide v13, v0, Lb/a/a/c$a;->i:J

    sub-long v15, v11, v13

    iget-wide v11, v0, Lb/a/a/c$a;->a:J

    iget-wide v13, v0, Lb/a/a/c$a;->j:J

    sub-long v17, v11, v13

    add-long v11, v3, v15

    add-long v3, v11, v17

    iget-object v9, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v9}, Lb/ae;->f()Lb/d;

    move-result-object v9

    iget v11, v9, Lb/d;->e:I

    if-eq v11, v10, :cond_a9

    sget-object v11, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v9, v9, Lb/d;->e:I

    int-to-long v12, v9

    invoke-virtual {v11, v12, v13}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_107

    :cond_a9
    iget-object v9, v0, Lb/a/a/c$a;->h:Ljava/util/Date;

    if-eqz v9, :cond_c8

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v9, :cond_b8

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    goto :goto_ba

    :cond_b8
    iget-wide v11, v0, Lb/a/a/c$a;->j:J

    :goto_ba
    iget-object v9, v0, Lb/a/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long v15, v13, v11

    cmp-long v9, v15, v7

    if-lez v9, :cond_106

    move-wide v11, v15

    goto :goto_107

    :cond_c8
    iget-object v9, v0, Lb/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v9, :cond_106

    iget-object v9, v0, Lb/a/a/c$a;->c:Lb/ae;

    iget-object v9, v9, Lb/ae;->a:Lb/ac;

    iget-object v9, v9, Lb/ac;->a:Lb/v;

    iget-object v11, v9, Lb/v;->n:Ljava/util/List;

    if-nez v11, :cond_d8

    move-object v9, v2

    goto :goto_e6

    :cond_d8
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v9, Lb/v;->n:Ljava/util/List;

    invoke-static {v11, v9}, Lb/v;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_e6
    if-nez v9, :cond_106

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v9, :cond_f3

    iget-object v9, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v11

    goto :goto_f5

    :cond_f3
    iget-wide v11, v0, Lb/a/a/c$a;->i:J

    :goto_f5
    iget-object v9, v0, Lb/a/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v13

    sub-long v15, v11, v13

    cmp-long v9, v15, v7

    if-lez v9, :cond_106

    const-wide/16 v11, 0xa

    div-long v11, v15, v11

    goto :goto_107

    :cond_106
    move-wide v11, v7

    :goto_107
    iget v9, v1, Lb/d;->e:I

    if-eq v9, v10, :cond_118

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v13, v1, Lb/d;->e:I

    int-to-long v13, v13

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v11

    :cond_118
    iget v9, v1, Lb/d;->j:I

    if-eq v9, v10, :cond_126

    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v13, v1, Lb/d;->j:I

    int-to-long v13, v13

    invoke-virtual {v9, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    goto :goto_127

    :cond_126
    move-wide v13, v7

    :goto_127
    iget-object v9, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v9}, Lb/ae;->f()Lb/d;

    move-result-object v9

    iget-boolean v15, v9, Lb/d;->h:Z

    if-nez v15, :cond_13e

    iget v15, v1, Lb/d;->i:I

    if-eq v15, v10, :cond_13e

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, v1, Lb/d;->i:I

    int-to-long v5, v1

    invoke-virtual {v7, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    :cond_13e
    iget-boolean v1, v9, Lb/d;->c:Z

    if-nez v1, :cond_188

    add-long v5, v3, v13

    add-long v13, v11, v7

    cmp-long v1, v5, v13

    if-gez v1, :cond_188

    iget-object v1, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v1}, Lb/ae;->e()Lb/ae$a;

    move-result-object v1

    cmp-long v7, v5, v11

    if-ltz v7, :cond_15b

    const-string v5, "Warning"

    const-string v6, "110 HttpURLConnection \"Response is stale\""

    invoke-virtual {v1, v5, v6}, Lb/ae$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ae$a;

    :cond_15b
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_17e

    iget-object v3, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v3}, Lb/ae;->f()Lb/d;

    move-result-object v3

    iget v3, v3, Lb/d;->e:I

    if-ne v3, v10, :cond_173

    iget-object v3, v0, Lb/a/a/c$a;->h:Ljava/util/Date;

    if-nez v3, :cond_173

    const/16 v19, 0x1

    goto :goto_175

    :cond_173
    const/16 v19, 0x0

    :goto_175
    if-eqz v19, :cond_17e

    const-string v3, "Warning"

    const-string v4, "113 HttpURLConnection \"Heuristic expiration\""

    invoke-virtual {v1, v3, v4}, Lb/ae$a;->a(Ljava/lang/String;Ljava/lang/String;)Lb/ae$a;

    :cond_17e
    new-instance v3, Lb/a/a/c;

    invoke-virtual {v1}, Lb/ae$a;->a()Lb/ae;

    move-result-object v1

    invoke-direct {v3, v2, v1}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    return-object v3

    :cond_188
    iget-object v1, v0, Lb/a/a/c$a;->k:Ljava/lang/String;

    if-eqz v1, :cond_191

    const-string v1, "If-None-Match"

    iget-object v2, v0, Lb/a/a/c$a;->k:Ljava/lang/String;

    goto :goto_1a2

    :cond_191
    iget-object v1, v0, Lb/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v1, :cond_19a

    const-string v1, "If-Modified-Since"

    iget-object v2, v0, Lb/a/a/c$a;->g:Ljava/lang/String;

    goto :goto_1a2

    :cond_19a
    iget-object v1, v0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v1, :cond_1c9

    const-string v1, "If-Modified-Since"

    iget-object v2, v0, Lb/a/a/c$a;->e:Ljava/lang/String;

    :goto_1a2
    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    iget-object v3, v3, Lb/ac;->c:Lb/u;

    invoke-virtual {v3}, Lb/u;->b()Lb/u$a;

    move-result-object v3

    sget-object v4, Lb/a/a;->a:Lb/a/a;

    invoke-virtual {v4, v3, v1, v2}, Lb/a/a;->a(Lb/u$a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-virtual {v1}, Lb/ac;->c()Lb/ac$a;

    move-result-object v1

    invoke-virtual {v3}, Lb/u$a;->a()Lb/u;

    move-result-object v2

    invoke-virtual {v1, v2}, Lb/ac$a;->a(Lb/u;)Lb/ac$a;

    move-result-object v1

    invoke-virtual {v1}, Lb/ac$a;->d()Lb/ac;

    move-result-object v1

    new-instance v2, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-direct {v2, v1, v3}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    return-object v2

    :cond_1c9
    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    return-object v1

    :cond_1d1
    :goto_1d1
    new-instance v1, Lb/a/a/c;

    iget-object v3, v0, Lb/a/a/c$a;->b:Lb/ac;

    invoke-direct {v1, v3, v2}, Lb/a/a/c;-><init>(Lb/ac;Lb/ae;)V

    return-object v1
.end method

.method private c()J
    .registers 10

    iget-object v0, p0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v0}, Lb/ae;->f()Lb/d;

    move-result-object v0

    iget v1, v0, Lb/d;->e:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_15

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v0, v0, Lb/d;->e:I

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    :cond_15
    iget-object v0, p0, Lb/a/a/c$a;->h:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_28

    :cond_26
    iget-wide v3, p0, Lb/a/a/c$a;->j:J

    :goto_28
    iget-object v0, p0, Lb/a/a/c$a;->h:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v7, v5, v3

    cmp-long v0, v7, v1

    if-lez v0, :cond_35

    return-wide v7

    :cond_35
    return-wide v1

    :cond_36
    iget-object v0, p0, Lb/a/a/c$a;->f:Ljava/util/Date;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lb/a/a/c$a;->c:Lb/ae;

    iget-object v0, v0, Lb/ae;->a:Lb/ac;

    iget-object v0, v0, Lb/ac;->a:Lb/v;

    iget-object v3, v0, Lb/v;->n:Ljava/util/List;

    if-nez v3, :cond_46

    const/4 v0, 0x0

    goto :goto_54

    :cond_46
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lb/v;->n:Ljava/util/List;

    invoke-static {v3, v0}, Lb/v;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_54
    if-nez v0, :cond_73

    iget-object v0, p0, Lb/a/a/c$a;->d:Ljava/util/Date;

    if-eqz v0, :cond_61

    iget-object v0, p0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    goto :goto_63

    :cond_61
    iget-wide v3, p0, Lb/a/a/c$a;->i:J

    :goto_63
    iget-object v0, p0, Lb/a/a/c$a;->f:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v7, v3, v5

    cmp-long v0, v7, v1

    if-lez v0, :cond_73

    const-wide/16 v0, 0xa

    div-long/2addr v7, v0

    return-wide v7

    :cond_73
    return-wide v1
.end method

.method private d()J
    .registers 12

    iget-object v0, p0, Lb/a/a/c$a;->d:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_14

    iget-wide v3, p0, Lb/a/a/c$a;->j:J

    iget-object v0, p0, Lb/a/a/c$a;->d:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long v7, v3, v5

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_14
    iget v0, p0, Lb/a/a/c$a;->l:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_26

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v3, p0, Lb/a/a/c$a;->l:I

    int-to-long v3, v3

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_26
    iget-wide v3, p0, Lb/a/a/c$a;->j:J

    iget-wide v5, p0, Lb/a/a/c$a;->i:J

    sub-long v7, v3, v5

    iget-wide v3, p0, Lb/a/a/c$a;->a:J

    iget-wide v5, p0, Lb/a/a/c$a;->j:J

    sub-long v9, v3, v5

    add-long v3, v1, v7

    add-long v0, v3, v9

    return-wide v0
.end method

.method private e()Z
    .registers 3

    iget-object v0, p0, Lb/a/a/c$a;->c:Lb/ae;

    invoke-virtual {v0}, Lb/ae;->f()Lb/d;

    move-result-object v0

    iget v0, v0, Lb/d;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lb/a/a/c$a;->h:Ljava/util/Date;

    if-nez v0, :cond_11

    const/4 v0, 0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    return v0
.end method
