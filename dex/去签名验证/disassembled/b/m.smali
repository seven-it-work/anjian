.class public final Lb/m;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/m$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/regex/Pattern;

.field private static final d:Ljava/util/regex/Pattern;

.field private static final e:Ljava/util/regex/Pattern;

.field private static final f:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

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

    sput-object v0, Lb/m;->c:Ljava/util/regex/Pattern;

    const-string v0, "(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/m;->d:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/m;->e:Ljava/util/regex/Pattern;

    const-string v0, "(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lb/m;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Lb/m$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/m$a;->a:Ljava/lang/String;

    if-nez v0, :cond_f

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "builder.name == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    iget-object v0, p1, Lb/m$a;->b:Ljava/lang/String;

    if-nez v0, :cond_1b

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "builder.value == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1b
    iget-object v0, p1, Lb/m$a;->d:Ljava/lang/String;

    if-nez v0, :cond_27

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "builder.domain == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_27
    iget-object v0, p1, Lb/m$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lb/m;->a:Ljava/lang/String;

    iget-object v0, p1, Lb/m$a;->b:Ljava/lang/String;

    iput-object v0, p0, Lb/m;->b:Ljava/lang/String;

    iget-wide v0, p1, Lb/m$a;->c:J

    iput-wide v0, p0, Lb/m;->g:J

    iget-object v0, p1, Lb/m$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/m;->h:Ljava/lang/String;

    iget-object v0, p1, Lb/m$a;->e:Ljava/lang/String;

    iput-object v0, p0, Lb/m;->i:Ljava/lang/String;

    iget-boolean v0, p1, Lb/m$a;->f:Z

    iput-boolean v0, p0, Lb/m;->j:Z

    iget-boolean v0, p1, Lb/m$a;->g:Z

    iput-boolean v0, p0, Lb/m;->k:Z

    iget-boolean v0, p1, Lb/m$a;->h:Z

    iput-boolean v0, p0, Lb/m;->l:Z

    iget-boolean p1, p1, Lb/m$a;->i:Z

    iput-boolean p1, p0, Lb/m;->m:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/m;->a:Ljava/lang/String;

    iput-object p2, p0, Lb/m;->b:Ljava/lang/String;

    iput-wide p3, p0, Lb/m;->g:J

    iput-object p5, p0, Lb/m;->h:Ljava/lang/String;

    iput-object p6, p0, Lb/m;->i:Ljava/lang/String;

    iput-boolean p7, p0, Lb/m;->j:Z

    iput-boolean p8, p0, Lb/m;->k:Z

    iput-boolean p9, p0, Lb/m;->m:Z

    iput-boolean p10, p0, Lb/m;->l:Z

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

.method private static a(Ljava/lang/String;I)J
    .registers 15

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lb/m;->a(Ljava/lang/String;IIZ)I

    move-result v1

    sget-object v2, Lb/m;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    :goto_12
    const/4 v10, 0x2

    const/4 v11, 0x1

    if-ge v1, p1, :cond_a7

    add-int/lit8 v12, v1, 0x1

    invoke-static {p0, v12, p1, v11}, Lb/m;->a(Ljava/lang/String;IIZ)I

    move-result v12

    invoke-virtual {v2, v1, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    if-ne v4, v3, :cond_4a

    sget-object v1, Lb/m;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v2, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v8, 0x3

    invoke-virtual {v2, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    move v9, v8

    move v8, v4

    move v4, v1

    goto :goto_9f

    :cond_4a
    if-ne v6, v3, :cond_62

    sget-object v1, Lb/m;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_62

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v6, v1

    goto :goto_9f

    :cond_62
    if-ne v7, v3, :cond_88

    sget-object v1, Lb/m;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_88

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lb/m;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    div-int/lit8 v1, v1, 0x4

    move v7, v1

    goto :goto_9f

    :cond_88
    if-ne v5, v3, :cond_9f

    sget-object v1, Lb/m;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_9f

    invoke-virtual {v2, v11}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    move v5, v1

    :cond_9f
    :goto_9f
    add-int/lit8 v12, v12, 0x1

    invoke-static {p0, v12, p1, v0}, Lb/m;->a(Ljava/lang/String;IIZ)I

    move-result v1

    goto/16 :goto_12

    :cond_a7
    const/16 p0, 0x46

    if-lt v5, p0, :cond_b1

    const/16 p0, 0x63

    if-gt v5, p0, :cond_b1

    add-int/lit16 v5, v5, 0x76c

    :cond_b1
    if-ltz v5, :cond_b9

    const/16 p0, 0x45

    if-gt v5, p0, :cond_b9

    add-int/lit16 v5, v5, 0x7d0

    :cond_b9
    const/16 p0, 0x641

    if-ge v5, p0, :cond_c3

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_c3
    if-ne v7, v3, :cond_cb

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_cb
    if-lez v6, :cond_125

    const/16 p0, 0x1f

    if-le v6, p0, :cond_d2

    goto :goto_125

    :cond_d2
    if-ltz v4, :cond_11f

    const/16 p0, 0x17

    if-le v4, p0, :cond_d9

    goto :goto_11f

    :cond_d9
    if-ltz v8, :cond_119

    const/16 p0, 0x3b

    if-le v8, p0, :cond_e0

    goto :goto_119

    :cond_e0
    if-ltz v9, :cond_113

    if-le v9, p0, :cond_e5

    goto :goto_113

    :cond_e5
    new-instance p0, Ljava/util/GregorianCalendar;

    sget-object p1, Lb/a/c;->f:Ljava/util/TimeZone;

    invoke-direct {p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    invoke-virtual {p0, v11, v5}, Ljava/util/Calendar;->set(II)V

    sub-int/2addr v7, v11

    invoke-virtual {p0, v10, v7}, Ljava/util/Calendar;->set(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v6}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v8}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v9}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_113
    :goto_113
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_119
    :goto_119
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_11f
    :goto_11f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_125
    :goto_125
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static a(JLb/v;Ljava/lang/String;)Lb/m;
    .registers 35
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    move-object/from16 v2, p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    invoke-static {v2, v5, v3, v4}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v6

    const/16 v7, 0x3d

    invoke-static {v2, v5, v6, v7}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v8

    const/4 v9, 0x0

    if-ne v8, v6, :cond_17

    return-object v9

    :cond_17
    invoke-static {v2, v5, v8}, Lb/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_2e3

    invoke-static {v11}, Lb/a/c;->b(Ljava/lang/String;)I

    move-result v10

    const/4 v12, -0x1

    if-eq v10, v12, :cond_2a

    goto/16 :goto_2e3

    :cond_2a
    const/4 v10, 0x1

    add-int/2addr v8, v10

    invoke-static {v2, v8, v6}, Lb/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lb/a/c;->b(Ljava/lang/String;)I

    move-result v13

    if-eq v13, v12, :cond_37

    return-object v9

    :cond_37
    add-int/2addr v6, v10

    move-object/from16 v21, v9

    const-wide/16 v17, -0x1

    const-wide v19, 0xe677d21fdbffL

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    :goto_49
    if-ge v6, v3, :cond_246

    invoke-static {v2, v6, v3, v4}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v15

    invoke-static {v2, v6, v15, v7}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v13

    invoke-static {v2, v6, v13}, Lb/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    if-ge v13, v15, :cond_60

    add-int/lit8 v13, v13, 0x1

    invoke-static {v2, v13, v15}, Lb/a/c;->c(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v13

    goto :goto_62

    :cond_60
    const-string v13, ""

    :goto_62
    const-string v14, "expires"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1cd

    :try_start_6a
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v13, v5, v6, v5}, Lb/m;->a(Ljava/lang/String;IIZ)I

    move-result v14

    sget-object v7, Lb/m;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v13}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, -0x1

    const/16 v29, -0x1

    :goto_82
    if-ge v14, v6, :cond_130

    add-int/lit8 v12, v14, 0x1

    invoke-static {v13, v12, v6, v10}, Lb/m;->a(Ljava/lang/String;IIZ)I

    move-result v12

    invoke-virtual {v7, v14, v12}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    const/4 v14, -0x1

    if-ne v5, v14, :cond_c0

    sget-object v14, Lb/m;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_bc

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/4 v14, 0x2

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    const/4 v10, 0x3

    invoke-virtual {v7, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    move/from16 v29, v10

    move/from16 v28, v14

    goto/16 :goto_124

    :cond_bc
    move/from16 v10, v27

    const/4 v14, -0x1

    goto :goto_c2

    :cond_c0
    move/from16 v10, v27

    :goto_c2
    if-ne v10, v14, :cond_dc

    sget-object v14, Lb/m;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/regex/Matcher;->matches()Z

    move-result v14

    if-eqz v14, :cond_dc

    const/4 v14, 0x1

    invoke-virtual {v7, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    :goto_d9
    move/from16 v27, v10

    goto :goto_124

    :cond_dc
    move/from16 v14, v26

    const/4 v2, -0x1

    if-ne v14, v2, :cond_108

    sget-object v2, Lb/m;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_107

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v14, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    sget-object v14, Lb/m;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v14}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    move/from16 v26, v2

    goto :goto_d9

    :cond_107
    const/4 v2, -0x1

    :cond_108
    if-ne v4, v2, :cond_120

    sget-object v2, Lb/m;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->usePattern(Ljava/util/regex/Pattern;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_120

    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v4, v2

    :cond_120
    move/from16 v27, v10

    move/from16 v26, v14

    :goto_124
    add-int/lit8 v12, v12, 0x1

    const/4 v2, 0x0

    invoke-static {v13, v12, v6, v2}, Lb/m;->a(Ljava/lang/String;IIZ)I

    move-result v14

    move-object/from16 v2, p3

    const/4 v10, 0x1

    goto/16 :goto_82

    :cond_130
    move/from16 v14, v26

    move/from16 v10, v27

    const/16 v2, 0x46

    if-lt v4, v2, :cond_13e

    const/16 v2, 0x63

    if-gt v4, v2, :cond_13e

    add-int/lit16 v4, v4, 0x76c

    :cond_13e
    if-ltz v4, :cond_146

    const/16 v2, 0x45

    if-gt v4, v2, :cond_146

    add-int/lit16 v4, v4, 0x7d0

    :cond_146
    const/16 v2, 0x641

    if-ge v4, v2, :cond_150

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_150
    const/4 v2, -0x1

    if-ne v14, v2, :cond_159

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
    :try_end_159
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6a .. :try_end_159} :catch_1ca

    :cond_159
    if-lez v10, :cond_1c2

    const/16 v6, 0x1f

    if-le v10, v6, :cond_160

    goto :goto_1c2

    :cond_160
    if-ltz v5, :cond_1ba

    const/16 v6, 0x17

    if-le v5, v6, :cond_167

    goto :goto_1ba

    :cond_167
    move/from16 v12, v28

    if-ltz v12, :cond_1b2

    const/16 v7, 0x3b

    if-le v12, v7, :cond_170

    goto :goto_1b4

    :cond_170
    move/from16 v6, v29

    if-ltz v6, :cond_1ac

    if-le v6, v7, :cond_177

    goto :goto_1ac

    :cond_177
    :try_start_177
    new-instance v13, Ljava/util/GregorianCalendar;

    sget-object v2, Lb/a/c;->f:Ljava/util/TimeZone;

    invoke-direct {v13, v2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Ljava/util/Calendar;->setLenient(Z)V

    const/4 v2, 0x1

    invoke-virtual {v13, v2, v4}, Ljava/util/Calendar;->set(II)V

    add-int/lit8 v2, v14, -0x1

    const/4 v4, 0x2

    invoke-virtual {v13, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x5

    invoke-virtual {v13, v2, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    invoke-virtual {v13, v2, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    invoke-virtual {v13, v2, v12}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    invoke-virtual {v13, v2, v6}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    const/4 v4, 0x0

    invoke-virtual {v13, v2, v4}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v13}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-wide/from16 v19, v4

    goto :goto_1dd

    :cond_1ac
    :goto_1ac
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1b2
    const/16 v7, 0x3b

    :goto_1b4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1ba
    :goto_1ba
    const/16 v7, 0x3b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1c2
    :goto_1c2
    const/16 v7, 0x3b

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_1ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_177 .. :try_end_1ca} :catch_216

    :catch_1ca
    const/16 v7, 0x3b

    goto :goto_216

    :cond_1cd
    const/16 v7, 0x3b

    const-string v2, "max-age"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e1

    :try_start_1d7
    invoke-static {v13}, Lb/m;->a(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_1db
    .catch Ljava/lang/NumberFormatException; {:try_start_1d7 .. :try_end_1db} :catch_216

    move-wide/from16 v17, v4

    :goto_1dd
    const/4 v2, 0x1

    const/16 v25, 0x1

    goto :goto_239

    :cond_1e1
    const-string v2, "domain"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_218

    :try_start_1e9
    const-string v2, "."

    invoke-virtual {v13, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    :cond_1f7
    const-string v2, "."

    invoke-virtual {v13, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_1fd
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e9 .. :try_end_1fd} :catch_216

    if-eqz v2, :cond_205

    const/4 v2, 0x1

    :try_start_200
    invoke-virtual {v13, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    goto :goto_206

    :cond_205
    const/4 v2, 0x1

    :goto_206
    invoke-static {v13}, Lb/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_212

    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
    :try_end_212
    .catch Ljava/lang/IllegalArgumentException; {:try_start_200 .. :try_end_212} :catch_239

    :cond_212
    move-object v9, v4

    const/16 v24, 0x0

    goto :goto_239

    :catch_216
    :goto_216
    const/4 v2, 0x1

    goto :goto_239

    :cond_218
    const/4 v2, 0x1

    const-string v4, "path"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_224

    move-object/from16 v21, v13

    goto :goto_239

    :cond_224
    const-string v4, "secure"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22f

    const/16 v22, 0x1

    goto :goto_239

    :cond_22f
    const-string v4, "httponly"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_239

    const/16 v23, 0x1

    :catch_239
    :cond_239
    :goto_239
    add-int/lit8 v6, v15, 0x1

    move-object/from16 v2, p3

    const/16 v4, 0x3b

    const/4 v5, 0x0

    const/16 v7, 0x3d

    const/4 v10, 0x1

    const/4 v12, -0x1

    goto/16 :goto_49

    :cond_246
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v17, v2

    if-nez v4, :cond_250

    :cond_24c
    move-object/from16 v0, p2

    move-wide v13, v2

    goto :goto_287

    :cond_250
    const-wide/16 v2, -0x1

    cmp-long v4, v17, v2

    if-eqz v4, :cond_283

    const-wide v2, 0x20c49ba5e353f7L

    cmp-long v4, v17, v2

    if-gtz v4, :cond_264

    const-wide/16 v2, 0x3e8

    mul-long v17, v17, v2

    goto :goto_269

    :cond_264
    const-wide v17, 0x7fffffffffffffffL

    :goto_269
    const/4 v2, 0x0

    add-long v2, p0, v17

    cmp-long v4, v2, p0

    if-ltz v4, :cond_27a

    const-wide v0, 0xe677d21fdbffL

    cmp-long v4, v2, v0

    if-lez v4, :cond_24c

    goto :goto_27f

    :cond_27a
    const-wide v0, 0xe677d21fdbffL

    :goto_27f
    move-wide v13, v0

    move-object/from16 v0, p2

    goto :goto_287

    :cond_283
    move-object/from16 v0, p2

    move-wide/from16 v13, v19

    :goto_287
    iget-object v1, v0, Lb/v;->l:Ljava/lang/String;

    if-nez v9, :cond_28e

    move-object v15, v1

    const/4 v2, 0x0

    goto :goto_298

    :cond_28e
    invoke-static {v1, v9}, Lb/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_296

    const/4 v2, 0x0

    return-object v2

    :cond_296
    const/4 v2, 0x0

    move-object v15, v9

    :goto_298
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v1, v3, :cond_2ad

    invoke-static {}, Lb/a/i/a;->a()Lb/a/i/a;

    move-result-object v1

    invoke-virtual {v1, v15}, Lb/a/i/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2ad

    return-object v2

    :cond_2ad
    move-object/from16 v9, v21

    if-eqz v9, :cond_2bd

    const-string v1, "/"

    invoke-virtual {v9, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2ba

    goto :goto_2bd

    :cond_2ba
    move-object/from16 v16, v9

    goto :goto_2d3

    :cond_2bd
    :goto_2bd
    invoke-virtual/range {p2 .. p2}, Lb/v;->e()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eqz v1, :cond_2cf

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d1

    :cond_2cf
    const-string v0, "/"

    :goto_2d1
    move-object/from16 v16, v0

    :goto_2d3
    new-instance v0, Lb/m;

    move-object v10, v0

    move-object v12, v8

    move/from16 v17, v22

    move/from16 v18, v23

    move/from16 v19, v24

    move/from16 v20, v25

    invoke-direct/range {v10 .. v20}, Lb/m;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZZZZ)V

    return-object v0

    :cond_2e3
    :goto_2e3
    move-object v0, v9

    return-object v0
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/m;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Lb/v;Lb/u;)Ljava/util/List;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/v;",
            "Lb/u;",
            ")",
            "Ljava/util/List<",
            "Lb/m;",
            ">;"
        }
    .end annotation

    const-string v0, "Set-Cookie"

    invoke-virtual {p1, v0}, Lb/u;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v0, :cond_2b

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5, p0, v3}, Lb/m;->a(JLb/v;Ljava/lang/String;)Lb/m;

    move-result-object v3

    if-eqz v3, :cond_28

    if-nez v1, :cond_25

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_25
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_2b
    if-eqz v1, :cond_32

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Lb/v;)Z
    .registers 7

    iget-boolean v0, p0, Lb/m;->m:Z

    if-eqz v0, :cond_d

    iget-object v0, p1, Lb/v;->l:Ljava/lang/String;

    iget-object v1, p0, Lb/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_15

    :cond_d
    iget-object v0, p1, Lb/v;->l:Ljava/lang/String;

    iget-object v1, p0, Lb/m;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/m;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_15
    const/4 v1, 0x0

    if-nez v0, :cond_19

    return v1

    :cond_19
    iget-object v0, p0, Lb/m;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lb/v;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_28

    :goto_26
    const/4 v0, 0x1

    goto :goto_45

    :cond_28
    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_44

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    goto :goto_26

    :cond_37
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_44

    goto :goto_26

    :cond_44
    const/4 v0, 0x0

    :goto_45
    if-nez v0, :cond_48

    return v1

    :cond_48
    iget-boolean v0, p0, Lb/m;->j:Z

    if-eqz v0, :cond_53

    invoke-virtual {p1}, Lb/v;->b()Z

    move-result p1

    if-nez p1, :cond_53

    return v1

    :cond_53
    return v4
.end method

.method private static a(Lb/v;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Lb/v;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 p1, 0x2f

    if-ne p0, p1, :cond_28

    return v1

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v0, p1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v0, 0x2e

    if-ne p1, v0, :cond_27

    invoke-static {p0}, Lb/a/c;->c(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_27

    return v1

    :cond_27
    const/4 p0, 0x0

    return p0
.end method

.method private static b(Lb/v;Ljava/lang/String;)Lb/m;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Lb/m;->a(JLb/v;Ljava/lang/String;)Lb/m;

    move-result-object p0

    return-object p0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/m;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_e
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_1b
    invoke-static {p0}, Lb/a/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_27

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_27
    return-object p0
.end method

.method private c()Z
    .registers 2

    iget-boolean v0, p0, Lb/m;->l:Z

    return v0
.end method

.method private d()J
    .registers 3

    iget-wide v0, p0, Lb/m;->g:J

    return-wide v0
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lb/m;->m:Z

    return v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/m;->h:Ljava/lang/String;

    return-object v0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/m;->i:Ljava/lang/String;

    return-object v0
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lb/m;->k:Z

    return v0
.end method

.method private i()Z
    .registers 2

    iget-boolean v0, p0, Lb/m;->j:Z

    return v0
.end method

.method private j()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/m;->l:Z

    if-eqz v1, :cond_37

    iget-wide v1, p0, Lb/m;->g:J

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

    iget-wide v2, p0, Lb/m;->g:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lb/a/d/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_37
    :goto_37
    iget-boolean v1, p0, Lb/m;->m:Z

    if-nez v1, :cond_45

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/m;->j:Z

    if-eqz v1, :cond_58

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    iget-boolean v1, p0, Lb/m;->k:Z

    if-eqz v1, :cond_61

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lb/m;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lb/m;

    iget-object v0, p1, Lb/m;->a:Ljava/lang/String;

    iget-object v2, p0, Lb/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lb/m;->b:Ljava/lang/String;

    iget-object v2, p0, Lb/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lb/m;->h:Ljava/lang/String;

    iget-object v2, p0, Lb/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p1, Lb/m;->i:Ljava/lang/String;

    iget-object v2, p0, Lb/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_52

    iget-wide v2, p1, Lb/m;->g:J

    iget-wide v4, p0, Lb/m;->g:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_52

    iget-boolean v0, p1, Lb/m;->j:Z

    iget-boolean v2, p0, Lb/m;->j:Z

    if-ne v0, v2, :cond_52

    iget-boolean v0, p1, Lb/m;->k:Z

    iget-boolean v2, p0, Lb/m;->k:Z

    if-ne v0, v2, :cond_52

    iget-boolean v0, p1, Lb/m;->l:Z

    iget-boolean v2, p0, Lb/m;->l:Z

    if-ne v0, v2, :cond_52

    iget-boolean p1, p1, Lb/m;->m:Z

    iget-boolean v0, p0, Lb/m;->m:Z

    if-ne p1, v0, :cond_52

    const/4 p1, 0x1

    return p1

    :cond_52
    return v1
.end method

.method public final hashCode()I
    .registers 8

    iget-object v0, p0, Lb/m;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/m;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/m;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lb/m;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lb/m;->g:J

    iget-wide v3, p0, Lb/m;->g:J

    const/16 v5, 0x20

    ushr-long/2addr v3, v5

    xor-long v5, v1, v3

    long-to-int v1, v5

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lb/m;->j:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lb/m;->k:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lb/m;->l:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lb/m;->m:Z

    xor-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/m;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/m;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/m;->l:Z

    if-eqz v1, :cond_37

    iget-wide v1, p0, Lb/m;->g:J

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

    iget-wide v2, p0, Lb/m;->g:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v1}, Lb/a/d/d;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    goto :goto_22

    :cond_37
    :goto_37
    iget-boolean v1, p0, Lb/m;->m:Z

    if-nez v1, :cond_45

    const-string v1, "; domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_45
    const-string v1, "; path="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/m;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lb/m;->j:Z

    if-eqz v1, :cond_58

    const-string v1, "; secure"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_58
    iget-boolean v1, p0, Lb/m;->k:Z

    if-eqz v1, :cond_61

    const-string v1, "; httponly"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
