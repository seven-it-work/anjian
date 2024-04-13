.class public final Lcom/google/a/c/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "SJIS"

.field public static final b:Ljava/lang/String; = "GB2312"

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String; = "EUC_JP"

.field private static final e:Ljava/lang/String; = "UTF8"

.field private static final f:Ljava/lang/String; = "ISO8859_1"

.field private static final g:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/a/c/l;->c:Ljava/lang/String;

    const-string v0, "SJIS"

    sget-object v1, Lcom/google/a/c/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "EUC_JP"

    sget-object v1, Lcom/google/a/c/l;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    sput-boolean v0, Lcom/google/a/c/l;->g:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([BLjava/util/Map;)Ljava/lang/String;
    .registers 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Lcom/google/a/e;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_19

    sget-object v2, Lcom/google/a/e;->CHARACTER_SET:Lcom/google/a/e;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v0, Lcom/google/a/e;->CHARACTER_SET:Lcom/google/a/e;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    array-length v1, v0

    array-length v2, v0

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-le v2, v4, :cond_35

    aget-byte v2, v0, v6

    const/16 v7, -0x11

    if-ne v2, v7, :cond_35

    aget-byte v2, v0, v5

    const/16 v7, -0x45

    if-ne v2, v7, :cond_35

    aget-byte v2, v0, v3

    const/16 v7, -0x41

    if-ne v2, v7, :cond_35

    const/4 v2, 0x1

    goto :goto_36

    :cond_35
    const/4 v2, 0x0

    :goto_36
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    :goto_47
    if-ge v5, v1, :cond_f7

    if-nez v7, :cond_4f

    if-nez v8, :cond_4f

    if-eqz v9, :cond_f7

    :cond_4f
    aget-byte v4, v0, v5

    and-int/lit16 v4, v4, 0xff

    if-eqz v9, :cond_82

    if-lez v10, :cond_5e

    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_81

    add-int/lit8 v10, v10, -0x1

    goto :goto_82

    :cond_5e
    and-int/lit16 v0, v4, 0x80

    if-eqz v0, :cond_82

    and-int/lit8 v0, v4, 0x40

    if-eqz v0, :cond_81

    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x20

    if-nez v0, :cond_6f

    add-int/lit8 v12, v12, 0x1

    goto :goto_82

    :cond_6f
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x10

    if-nez v0, :cond_78

    add-int/lit8 v13, v13, 0x1

    goto :goto_82

    :cond_78
    add-int/lit8 v10, v10, 0x1

    and-int/lit8 v0, v4, 0x8

    if-nez v0, :cond_81

    add-int/lit8 v14, v14, 0x1

    goto :goto_82

    :cond_81
    const/4 v9, 0x0

    :cond_82
    :goto_82
    const/16 v0, 0x7f

    if-eqz v7, :cond_a0

    if-le v4, v0, :cond_8e

    const/16 v0, 0xa0

    if-ge v4, v0, :cond_8e

    const/4 v7, 0x0

    goto :goto_a0

    :cond_8e
    const/16 v0, 0x9f

    if-le v4, v0, :cond_a0

    const/16 v0, 0xc0

    if-lt v4, v0, :cond_9e

    const/16 v0, 0xd7

    if-eq v4, v0, :cond_9e

    const/16 v0, 0xf7

    if-ne v4, v0, :cond_a0

    :cond_9e
    add-int/lit8 v17, v17, 0x1

    :cond_a0
    :goto_a0
    if-eqz v8, :cond_f0

    if-lez v11, :cond_b6

    const/16 v0, 0x40

    if-lt v4, v0, :cond_b4

    const/16 v0, 0x7f

    if-eq v4, v0, :cond_b4

    const/16 v0, 0xfc

    if-le v4, v0, :cond_b1

    goto :goto_b4

    :cond_b1
    add-int/lit8 v11, v11, -0x1

    goto :goto_f0

    :cond_b4
    :goto_b4
    const/4 v8, 0x0

    goto :goto_f0

    :cond_b6
    const/16 v0, 0x80

    if-eq v4, v0, :cond_b4

    const/16 v0, 0xa0

    if-eq v4, v0, :cond_b4

    const/16 v0, 0xef

    if-le v4, v0, :cond_c3

    goto :goto_b4

    :cond_c3
    const/16 v0, 0xa0

    if-le v4, v0, :cond_da

    const/16 v0, 0xe0

    if-ge v4, v0, :cond_da

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v18, 0x1

    if-le v0, v15, :cond_d5

    move v15, v0

    move/from16 v18, v15

    goto :goto_d7

    :cond_d5
    move/from16 v18, v0

    :goto_d7
    const/16 v19, 0x0

    goto :goto_f0

    :cond_da
    const/16 v0, 0x7f

    if-le v4, v0, :cond_ed

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v0, v19, 0x1

    if-le v0, v6, :cond_e8

    move v6, v0

    move/from16 v19, v6

    goto :goto_ea

    :cond_e8
    move/from16 v19, v0

    :goto_ea
    const/16 v18, 0x0

    goto :goto_f0

    :cond_ed
    const/16 v18, 0x0

    goto :goto_d7

    :cond_f0
    :goto_f0
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    const/4 v4, 0x3

    goto/16 :goto_47

    :cond_f7
    if-eqz v9, :cond_fc

    if-lez v10, :cond_fc

    const/4 v9, 0x0

    :cond_fc
    if-eqz v8, :cond_103

    if-lez v11, :cond_103

    const/16 v16, 0x0

    goto :goto_105

    :cond_103
    move/from16 v16, v8

    :goto_105
    if-eqz v9, :cond_110

    if-nez v2, :cond_10d

    add-int/2addr v12, v13

    add-int/2addr v12, v14

    if-lez v12, :cond_110

    :cond_10d
    const-string v0, "UTF8"

    return-object v0

    :cond_110
    if-eqz v16, :cond_11e

    sget-boolean v0, Lcom/google/a/c/l;->g:Z

    if-nez v0, :cond_11b

    const/4 v0, 0x3

    if-ge v15, v0, :cond_11b

    if-lt v6, v0, :cond_11e

    :cond_11b
    const-string v0, "SJIS"

    return-object v0

    :cond_11e
    if-eqz v7, :cond_131

    if-eqz v16, :cond_131

    const/4 v0, 0x2

    if-ne v15, v0, :cond_127

    if-eq v3, v0, :cond_12b

    :cond_127
    mul-int/lit8 v0, v17, 0xa

    if-lt v0, v1, :cond_12e

    :cond_12b
    const-string v0, "SJIS"

    return-object v0

    :cond_12e
    const-string v0, "ISO8859_1"

    return-object v0

    :cond_131
    if-eqz v7, :cond_136

    const-string v0, "ISO8859_1"

    return-object v0

    :cond_136
    if-eqz v16, :cond_13b

    const-string v0, "SJIS"

    return-object v0

    :cond_13b
    if-eqz v9, :cond_140

    const-string v0, "UTF8"

    return-object v0

    :cond_140
    sget-object v0, Lcom/google/a/c/l;->c:Ljava/lang/String;

    return-object v0
.end method
