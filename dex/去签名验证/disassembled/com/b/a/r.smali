.class public final Lcom/b/a/r;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;

.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;


# instance fields
.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Z

.field private final k:Z

.field private final l:Z

.field private final m:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "(\\d{2,4})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/r;->a:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/r;->b:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/r;->c:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/b/a/r;->d:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/b/a/r;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/b/a/r;->f:Ljava/lang/String;

    iput-wide p3, p0, Lcom/b/a/r;->g:J

    iput-object p5, p0, Lcom/b/a/r;->h:Ljava/lang/String;

    iput-object p6, p0, Lcom/b/a/r;->i:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/b/a/r;->j:Z

    iput-boolean p8, p0, Lcom/b/a/r;->k:Z

    iput-boolean p9, p0, Lcom/b/a/r;->m:Z

    iput-boolean p10, p0, Lcom/b/a/r;->l:Z

    return-void
.end method

.method private static a(Ljava/lang/String;IIZ)I
    .registers 7

    :goto_0
    if-ge p1, p2, :cond_3b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    const/4 v2, 0x1

    if-ge v0, v1, :cond_f

    const/16 v1, 0x9

    if-ne v0, v1, :cond_32

    :cond_f
    const/16 v1, 0x7f

    if-ge v0, v1, :cond_32

    const/16 v1, 0x30

    if-lt v0, v1, :cond_1b

    const/16 v1, 0x39

    if-le v0, v1, :cond_32

    :cond_1b
    const/16 v1, 0x61

    if-lt v0, v1, :cond_23

    const/16 v1, 0x7a

    if-le v0, v1, :cond_32

    :cond_23
    const/16 v1, 0x41

    if-lt v0, v1, :cond_2b

    const/16 v1, 0x5a

    if-le v0, v1, :cond_32

    :cond_2b
    const/16 v1, 0x3a

    if-ne v0, v1, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    xor-int/lit8 v1, p3, 0x1

    if-ne v0, v1, :cond_38

    return p1

    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3b
    return p2
.end method

.method private static a(Ljava/lang/String;)J
    .registers 7

    const-wide/high16 v0, -0x8000000000000000L

    :try_start_2
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_e

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_d

    return-wide v0

    :cond_d
    return-wide v2

    :catch_e
    move-exception v2

    const-string v3, "-?\\d+"

    invoke-virtual {p0, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_26

    const-string v2, "-"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    return-wide v0

    :cond_20
    const-wide v0, 0x7fffffffffffffffL

    return-wide v0

    :cond_26
    throw v2
.end method

.method private static a(JLcom/b/a/ac;Ljava/lang/String;)Lcom/b/a/r;
    .registers 37

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x3b

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v7

    const/16 v8, 0x3d

    invoke-static {v3, v6, v7, v8}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v9

    const/4 v10, 0x0

    if-ne v9, v7, :cond_19

    return-object v10

    :cond_19
    invoke-static {v3, v6, v9}, Lcom/b/a/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_2f8

    invoke-static {v12}, Lcom/b/a/a/c;->b(Ljava/lang/String;)I

    move-result v11

    const/4 v13, -0x1

    if-eq v11, v13, :cond_2c

    goto/16 :goto_2f8

    :cond_2c
    const/4 v11, 0x1

    add-int/2addr v9, v11

    invoke-static {v3, v9, v7}, Lcom/b/a/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/b/a/a/c;->b(Ljava/lang/String;)I

    move-result v14

    if-eq v14, v13, :cond_39

    return-object v10

    :cond_39
    add-int/2addr v7, v11

    const-wide v16, 0xe677d21fdbffL

    move-object/from16 v22, v10

    move-wide/from16 v20, v16

    const-wide/16 v18, -0x1

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x1

    const/16 v26, 0x0

    :goto_4d
    if-ge v7, v4, :cond_258

    invoke-static {v3, v7, v4, v5}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v14

    invoke-static {v3, v7, v14, v8}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v15

    invoke-static {v3, v7, v15}, Lcom/b/a/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v7

    if-ge v15, v14, :cond_64

    add-int/lit8 v15, v15, 0x1

    invoke-static {v3, v15, v14}, Lcom/b/a/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v15

    goto :goto_66

    :cond_64
    const-string v15, ""

    :goto_66
    const-string v8, "expires"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1e1

    :try_start_6e
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v15, v6, v7, v6}, Lcom/b/a/r;->a(Ljava/lang/String;IIZ)I

    move-result v8

    sget-object v5, Lcom/b/a/r;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v15}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v6, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    const/16 v30, -0x1

    :goto_85
    if-ge v8, v7, :cond_13f

    add-int/lit8 v11, v8, 0x1

    const/4 v3, 0x1

    invoke-static {v15, v11, v7, v3}, Lcom/b/a/r;->a(Ljava/lang/String;IIZ)I

    move-result v11

    invoke-virtual {v5, v8, v11}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v3, -0x1

    if-ne v13, v3, :cond_c4

    sget-object v3, Lcom/b/a/r;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_c4

    const/4 v3, 0x1

    invoke-virtual {v5, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v13, 0x3

    invoke-virtual {v5, v13}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move/from16 v31, v4

    move/from16 v29, v8

    move/from16 v30, v13

    move v13, v3

    goto/16 :goto_132

    :cond_c4
    move/from16 v3, v28

    const/4 v8, -0x1

    if-ne v3, v8, :cond_e3

    sget-object v8, Lcom/b/a/r;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_e3

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_de
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6e .. :try_end_de} :catch_1db

    move/from16 v28, v3

    move/from16 v31, v4

    goto :goto_132

    :cond_e3
    move/from16 v31, v4

    move/from16 v8, v27

    const/4 v4, -0x1

    if-ne v8, v4, :cond_113

    :try_start_ea
    sget-object v4, Lcom/b/a/r;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_112

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v8, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    sget-object v8, Lcom/b/a/r;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v8}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    div-int/lit8 v4, v4, 0x4

    move/from16 v28, v3

    move/from16 v27, v4

    goto :goto_132

    :cond_112
    const/4 v4, -0x1

    :cond_113
    if-ne v6, v4, :cond_12e

    sget-object v4, Lcom/b/a/r;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_12e

    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    move/from16 v28, v3

    move v6, v4

    goto :goto_130

    :cond_12e
    move/from16 v28, v3

    :goto_130
    move/from16 v27, v8

    :goto_132
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    invoke-static {v15, v11, v7, v3}, Lcom/b/a/r;->a(Ljava/lang/String;IIZ)I

    move-result v8

    move/from16 v4, v31

    move-object/from16 v3, p3

    goto/16 :goto_85

    :cond_13f
    move/from16 v31, v4

    move/from16 v8, v27

    move/from16 v3, v28

    const/16 v4, 0x46

    if-lt v6, v4, :cond_14f

    const/16 v4, 0x63

    if-gt v6, v4, :cond_14f

    add-int/lit16 v6, v6, 0x76c

    :cond_14f
    if-ltz v6, :cond_157

    const/16 v4, 0x45

    if-gt v6, v4, :cond_157

    add-int/lit16 v6, v6, 0x7d0

    :cond_157
    const/16 v4, 0x641

    if-ge v6, v4, :cond_161

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_161
    const/4 v4, -0x1

    if-ne v8, v4, :cond_16a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_16a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_ea .. :try_end_16a} :catch_1dd

    :cond_16a
    if-lez v3, :cond_1d3

    const/16 v5, 0x1f

    if-le v3, v5, :cond_171

    goto :goto_1d3

    :cond_171
    if-ltz v13, :cond_1cb

    const/16 v5, 0x17

    if-le v13, v5, :cond_178

    goto :goto_1cb

    :cond_178
    move/from16 v5, v29

    if-ltz v5, :cond_1c3

    const/16 v11, 0x3b

    if-le v5, v11, :cond_181

    goto :goto_1c5

    :cond_181
    move/from16 v7, v30

    if-ltz v7, :cond_1bd

    if-le v7, v11, :cond_188

    goto :goto_1bd

    :cond_188
    :try_start_188
    new-instance v15, Ljava/util/GregorianCalendar;

    sget-object v4, Lcom/b/a/a/c;->f:Ljava/util/TimeZone;

    invoke-direct {v15, v4}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v4, 0x1

    invoke-virtual {v15, v4, v6}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v4, v8, -0x1

    const/4 v6, 0x2

    invoke-virtual {v15, v6, v4}, Ljava/util/Calendar;->set(II)V

    const/4 v4, 0x5

    invoke-virtual {v15, v4, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xb

    invoke-virtual {v15, v3, v13}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xc

    invoke-virtual {v15, v3, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xd

    invoke-virtual {v15, v3, v7}, Ljava/util/Calendar;->set(II)V

    const/16 v3, 0xe

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v15}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    move-wide/from16 v20, v3

    goto :goto_1f3

    :cond_1bd
    :goto_1bd
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1c3
    const/16 v11, 0x3b

    :goto_1c5
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1cb
    :goto_1cb
    const/16 v11, 0x3b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_1d3
    :goto_1d3
    const/16 v11, 0x3b

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_1db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_188 .. :try_end_1db} :catch_249

    :catch_1db
    move/from16 v31, v4

    :catch_1dd
    const/16 v11, 0x3b

    goto/16 :goto_249

    :cond_1e1
    move/from16 v31, v4

    const/16 v11, 0x3b

    const-string v3, "max-age"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1f6

    :try_start_1ed
    invoke-static {v15}, Lcom/b/a/r;->a(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_1f1
    .catch Ljava/lang/NumberFormatException; {:try_start_1ed .. :try_end_1f1} :catch_249

    move-wide/from16 v18, v3

    :goto_1f3
    const/16 v26, 0x1

    goto :goto_249

    :cond_1f6
    const-string v3, "domain"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_229

    :try_start_1fe
    const-string v3, "."

    invoke-virtual {v15, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20c

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :cond_20c
    const-string v3, "."

    invoke-virtual {v15, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_219

    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    :cond_219
    invoke-static {v15}, Lcom/b/a/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_225

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3
    :try_end_225
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1fe .. :try_end_225} :catch_249

    :cond_225
    move-object v10, v3

    const/16 v25, 0x0

    goto :goto_249

    :cond_229
    const-string v3, "path"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_234

    move-object/from16 v22, v15

    goto :goto_249

    :cond_234
    const-string v3, "secure"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23f

    const/16 v23, 0x1

    goto :goto_249

    :cond_23f
    const-string v3, "httponly"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_249

    const/16 v24, 0x1

    :catch_249
    :cond_249
    :goto_249
    add-int/lit8 v7, v14, 0x1

    move/from16 v4, v31

    move-object/from16 v3, p3

    const/16 v5, 0x3b

    const/4 v6, 0x0

    const/16 v8, 0x3d

    const/4 v11, 0x1

    const/4 v13, -0x1

    goto/16 :goto_4d

    :cond_258
    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v18, v3

    if-nez v5, :cond_260

    :cond_25e
    move-wide v14, v3

    goto :goto_289

    :cond_260
    const-wide/16 v3, -0x1

    cmp-long v5, v18, v3

    if-eqz v5, :cond_287

    const-wide v3, 0x20c49ba5e353f7L

    cmp-long v5, v18, v3

    if-gtz v5, :cond_274

    const-wide/16 v3, 0x3e8

    mul-long v18, v18, v3

    goto :goto_279

    :cond_274
    const-wide v18, 0x7fffffffffffffffL

    :goto_279
    const/4 v3, 0x0

    add-long v3, p0, v18

    cmp-long v5, v3, p0

    if-ltz v5, :cond_284

    cmp-long v0, v3, v16

    if-lez v0, :cond_25e

    :cond_284
    move-wide/from16 v14, v16

    goto :goto_289

    :cond_287
    move-wide/from16 v14, v20

    :goto_289
    if-nez v10, :cond_292

    iget-object v0, v2, Lcom/b/a/ac;->b:Ljava/lang/String;

    move-object/from16 v16, v0

    :goto_28f
    move-object/from16 v10, v22

    goto :goto_2c4

    :cond_292
    iget-object v0, v2, Lcom/b/a/ac;->b:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    const/4 v3, 0x1

    goto :goto_2bd

    :cond_29c
    invoke-virtual {v0, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2bc

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v1, v3

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2e

    if-ne v1, v4, :cond_2bc

    invoke-static {v0}, Lcom/b/a/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2bc

    goto :goto_2bd

    :cond_2bc
    const/4 v3, 0x0

    :goto_2bd
    if-nez v3, :cond_2c1

    const/4 v0, 0x0

    return-object v0

    :cond_2c1
    move-object/from16 v16, v10

    goto :goto_28f

    :goto_2c4
    if-eqz v10, :cond_2d2

    const-string v0, "/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2cf

    goto :goto_2d2

    :cond_2cf
    move-object/from16 v17, v10

    goto :goto_2e8

    :cond_2d2
    :goto_2d2
    invoke-virtual/range {p2 .. p2}, Lcom/b/a/ac;->h()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eqz v1, :cond_2e4

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2e6

    :cond_2e4
    const-string v0, "/"

    :goto_2e6
    move-object/from16 v17, v0

    :goto_2e8
    new-instance v0, Lcom/b/a/r;

    move-object v11, v0

    move-object v13, v9

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    move/from16 v21, v26

    invoke-direct/range {v11 .. v21}, Lcom/b/a/r;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v0

    :cond_2f8
    :goto_2f8
    move-object v0, v10

    return-object v0
.end method

.method public static a(Lcom/b/a/ac;Lcom/b/a/aa;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/ac;",
            "Lcom/b/a/aa;",
            ")",
            "Ljava/util/List<",
            "Lcom/b/a/r;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1}, Lcom/b/a/aa;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v3

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v1, :cond_28

    invoke-virtual {p1, v4}, Lcom/b/a/aa;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_25

    if-nez v5, :cond_1e

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    :cond_1e
    invoke-virtual {p1, v4}, Lcom/b/a/aa;->b(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_28
    if-eqz v5, :cond_2f

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    goto :goto_33

    :cond_2f
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    :goto_33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    :goto_37
    if-ge v2, v0, :cond_56

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p0, v1}, Lcom/b/a/r;->a(JLcom/b/a/ac;Ljava/lang/String;)Lcom/b/a/r;

    move-result-object v1

    if-eqz v1, :cond_53

    if-nez v3, :cond_50

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_50
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    :cond_56
    if-eqz v3, :cond_5d

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_5d
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/r;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/r;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 8

    instance-of v0, p1, Lcom/b/a/r;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/b/a/r;

    iget-object v0, p1, Lcom/b/a/r;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/b/a/r;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/r;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/b/a/r;->h:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lcom/b/a/r;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/r;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-wide v2, p1, Lcom/b/a/r;->g:J

    iget-wide v4, p0, Lcom/b/a/r;->g:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_52

    iget-boolean v0, p1, Lcom/b/a/r;->j:Z

    iget-boolean v2, p0, Lcom/b/a/r;->j:Z

    if-ne v0, v2, :cond_52

    iget-boolean v0, p1, Lcom/b/a/r;->k:Z

    iget-boolean v2, p0, Lcom/b/a/r;->k:Z

    if-ne v0, v2, :cond_52

    iget-boolean v0, p1, Lcom/b/a/r;->l:Z

    iget-boolean v2, p0, Lcom/b/a/r;->l:Z

    if-ne v0, v2, :cond_52

    iget-boolean p1, p1, Lcom/b/a/r;->m:Z

    iget-boolean v0, p0, Lcom/b/a/r;->m:Z

    if-ne p1, v0, :cond_52

    const/4 p1, 0x1

    return p1

    :cond_52
    return v1
.end method

.method public final hashCode()I
    .registers 8

    iget-object v0, p0, Lcom/b/a/r;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/r;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/r;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/b/a/r;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/b/a/r;->g:J

    iget-wide v3, p0, Lcom/b/a/r;->g:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/b/a/r;->j:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/b/a/r;->k:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/b/a/r;->l:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/b/a/r;->m:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/b/a/r;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/r;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/b/a/r;->l:Z

    if-eqz v1, :cond_37

    iget-wide v1, p0, Lcom/b/a/r;->g:J

    const-wide/high16 v3, -0x8000000000000000L

    cmp-long v5, v1, v3

    if-nez v5, :cond_26

    const-string v1, "; max-age=0"

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    :cond_26
    const-string v1, "; expires="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/b/a/r;->g:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lcom/b/a/a/c/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_37
    :goto_37
    iget-boolean v1, p0, Lcom/b/a/r;->m:Z

    if-nez v1, :cond_45

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/r;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/b/a/r;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/b/a/r;->j:Z

    if-eqz v1, :cond_58

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    iget-boolean v1, p0, Lcom/b/a/r;->k:Z

    if-eqz v1, :cond_61

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
