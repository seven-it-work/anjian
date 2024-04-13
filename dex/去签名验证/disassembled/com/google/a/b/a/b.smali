.class public final Lcom/google/a/b/a/b;
.super Lcom/google/a/b/a/u;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    move-object v3, v0

    const/4 v2, 0x1

    :goto_4
    const/4 v4, 0x3

    if-gt v2, v4, :cond_30

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0xd

    invoke-static {v5, p1, v6, v1}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_30

    if-nez v3, :cond_2a

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    :cond_2a
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_30
    if-nez v3, :cond_33

    return-object v0

    :cond_33
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v3, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/d;
    .registers 24

    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/b;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    return-object v2

    :cond_16
    const-string v1, "NAME1:"

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-static {v1, v0, v4, v3}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v5, "NAME2:"

    invoke-static {v5, v0, v4, v3}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    const-string v5, "TEL"

    invoke-static {v5, v0}, Lcom/google/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v5, "MAIL"

    invoke-static {v5, v0}, Lcom/google/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v5, "MEMORY:"

    const/4 v6, 0x0

    invoke-static {v5, v0, v4, v6}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v15

    const-string v5, "ADD:"

    invoke-static {v5, v0, v4, v3}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    :goto_40
    move-object/from16 v16, v2

    goto :goto_48

    :cond_43
    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v6

    goto :goto_40

    :goto_48
    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v22}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_63
    return-object v2
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 25

    invoke-static/range {p1 .. p1}, Lcom/google/a/b/a/b;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MEMORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_63

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    return-object v2

    :cond_16
    const-string v1, "NAME1:"

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-static {v1, v0, v4, v3}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v1

    const-string v5, "NAME2:"

    invoke-static {v5, v0, v4, v3}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v9

    const-string v5, "TEL"

    invoke-static {v5, v0}, Lcom/google/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v5, "MAIL"

    invoke-static {v5, v0}, Lcom/google/a/b/a/b;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v5, "MEMORY:"

    const/4 v6, 0x0

    invoke-static {v5, v0, v4, v6}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v15

    const-string v5, "ADD:"

    invoke-static {v5, v0, v4, v3}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;Ljava/lang/String;CZ)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_43

    :goto_40
    move-object/from16 v16, v2

    goto :goto_48

    :cond_43
    new-array v2, v3, [Ljava/lang/String;

    aput-object v0, v2, v6

    goto :goto_40

    :goto_48
    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/b;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v22}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0

    :cond_63
    return-object v2
.end method
