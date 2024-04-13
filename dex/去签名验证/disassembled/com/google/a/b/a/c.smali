.class public final Lcom/google/a/b/a/c;
.super Lcom/google/a/b/a/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/a;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/16 v0, 0x2c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_27
    return-object p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/d;
    .registers 24

    invoke-static/range {p0 .. p0}, Lcom/google/a/b/a/c;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "N:"

    invoke-static {v1, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    return-object v2

    :cond_17
    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_40
    const-string v4, "SOUND:"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v4, "TEL:"

    invoke-static {v4, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v4, "EMAIL:"

    invoke-static {v4, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v4, "NOTE:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    const-string v3, "ADR:"

    invoke-static {v3, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const-string v3, "BDAY:"

    invoke-static {v3, v0, v5}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/google/a/b/a/c;->a(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_70

    move-object/from16 v19, v2

    goto :goto_72

    :cond_70
    move-object/from16 v19, v3

    :goto_72
    const-string v2, "URL:"

    invoke-static {v2, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const-string v2, "ORG:"

    invoke-static {v2, v0, v5}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/c;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v22}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 25

    invoke-static/range {p1 .. p1}, Lcom/google/a/b/a/c;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MECARD:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    const-string v1, "N:"

    invoke-static {v1, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_17

    return-object v2

    :cond_17
    const/4 v3, 0x0

    aget-object v1, v1, v3

    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_40

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_40
    const-string v4, "SOUND:"

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v9

    const-string v4, "TEL:"

    invoke-static {v4, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const-string v4, "EMAIL:"

    invoke-static {v4, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    const-string v4, "NOTE:"

    invoke-static {v4, v0, v3}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v15

    const-string v3, "ADR:"

    invoke-static {v3, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const-string v3, "BDAY:"

    invoke-static {v3, v0, v5}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x8

    invoke-static {v3, v4}, Lcom/google/a/b/a/c;->a(Ljava/lang/CharSequence;I)Z

    move-result v4

    if-nez v4, :cond_70

    move-object/from16 v19, v2

    goto :goto_72

    :cond_70
    move-object/from16 v19, v3

    :goto_72
    const-string v2, "URL:"

    invoke-static {v2, v0}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    const-string v2, "ORG:"

    invoke-static {v2, v0, v5}, Lcom/google/a/b/a/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v18

    new-instance v0, Lcom/google/a/b/a/d;

    invoke-static {v1}, Lcom/google/a/b/a/c;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object v6, v0

    invoke-direct/range {v6 .. v22}, Lcom/google/a/b/a/d;-><init>([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v0
.end method
