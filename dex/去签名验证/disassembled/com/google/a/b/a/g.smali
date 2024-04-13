.class public final Lcom/google/a/b/a/g;
.super Lcom/google/a/b/a/q;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:[J

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:J

.field private final f:Z

.field private final g:J

.field private final h:Z

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:[Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:D

.field private final n:D


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "P(?:(\\d+)W)?(?:(\\d+)D)?(?:T(?:(\\d+)H)?(?:(\\d+)M)?(?:(\\d+)S)?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/g;->a:Ljava/util/regex/Pattern;

    const/4 v0, 0x5

    new-array v0, v0, [J

    fill-array-data v0, :array_1a

    sput-object v0, Lcom/google/a/b/a/g;->b:[J

    const-string v0, "[0-9]{8}(T[0-9]{6}Z?)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/g;->c:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_1a
    .array-data 8
        0x240c8400
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;DD)V
    .registers 22

    move-object v1, p0

    sget v3, Lcom/google/a/b/a/r;->CALENDAR$3fc7421e:I

    invoke-direct {v1, v3}, Lcom/google/a/b/a/q;-><init>(I)V

    move-object v3, p1

    iput-object v3, v1, Lcom/google/a/b/a/g;->d:Ljava/lang/String;

    :try_start_9
    invoke-static {p2}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/a/b/a/g;->e:J
    :try_end_f
    .catch Ljava/text/ParseException; {:try_start_9 .. :try_end_f} :catch_69

    if-nez p3, :cond_26

    invoke-static {p4}, Lcom/google/a/b/a/g;->a(Ljava/lang/CharSequence;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gez v7, :cond_1e

    const-wide/16 v3, -0x1

    goto :goto_23

    :cond_1e
    iget-wide v5, v1, Lcom/google/a/b/a/g;->e:J

    add-long v7, v5, v3

    move-wide v3, v7

    :goto_23
    iput-wide v3, v1, Lcom/google/a/b/a/g;->g:J

    goto :goto_2c

    :cond_26
    :try_start_26
    invoke-static {p3}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/google/a/b/a/g;->g:J
    :try_end_2c
    .catch Ljava/text/ParseException; {:try_start_26 .. :try_end_2c} :catch_5d

    :goto_2c
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v6, 0x8

    if-ne v3, v6, :cond_38

    const/4 v3, 0x1

    goto :goto_39

    :cond_38
    const/4 v3, 0x0

    :goto_39
    iput-boolean v3, v1, Lcom/google/a/b/a/g;->f:Z

    if-eqz p3, :cond_44

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v6, :cond_44

    const/4 v4, 0x1

    :cond_44
    iput-boolean v4, v1, Lcom/google/a/b/a/g;->h:Z

    move-object v2, p5

    iput-object v2, v1, Lcom/google/a/b/a/g;->i:Ljava/lang/String;

    move-object v2, p6

    iput-object v2, v1, Lcom/google/a/b/a/g;->j:Ljava/lang/String;

    move-object/from16 v2, p7

    iput-object v2, v1, Lcom/google/a/b/a/g;->k:[Ljava/lang/String;

    move-object/from16 v2, p8

    iput-object v2, v1, Lcom/google/a/b/a/g;->l:Ljava/lang/String;

    move-wide/from16 v2, p9

    iput-wide v2, v1, Lcom/google/a/b/a/g;->m:D

    move-wide/from16 v2, p11

    iput-wide v2, v1, Lcom/google/a/b/a/g;->n:D

    return-void

    :catch_5d
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :catch_69
    move-exception v0

    move-object v2, v0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v2}, Ljava/text/ParseException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private static a(Ljava/lang/CharSequence;)J
    .registers 9

    const-wide/16 v0, -0x1

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    sget-object v2, Lcom/google/a/b/a/g;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_12

    return-wide v0

    :cond_12
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_15
    sget-object v3, Lcom/google/a/b/a/g;->b:[J

    array-length v3, v3

    if-ge v2, v3, :cond_32

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_30

    sget-object v5, Lcom/google/a/b/a/g;->b:[J

    aget-wide v6, v5, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    mul-long v6, v6, v4

    add-long v4, v0, v6

    move-wide v0, v4

    :cond_30
    move v2, v3

    goto :goto_15

    :cond_32
    return-wide v0
.end method

.method private static a(Ljava/lang/String;)J
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    sget-object v0, Lcom/google/a/b/a/g;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_13

    new-instance v0, Ljava/text/ParseException;

    invoke-direct {v0, p0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_36

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0

    :cond_36
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x10

    if-ne v0, v2, :cond_6c

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5a

    if-ne v3, v4, :cond_6c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/a/b/a/g;->b(Ljava/lang/String;)J

    move-result-wide v3

    new-instance p0, Ljava/util/GregorianCalendar;

    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    int-to-long v0, v0

    add-long v5, v3, v0

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result p0

    int-to-long v0, p0

    add-long v2, v5, v0

    return-wide v2

    :cond_6c
    invoke-static {p0}, Lcom/google/a/b/a/g;->b(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method private static a(ZJ)Ljava/lang/String;
    .registers 6

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x2

    if-eqz p0, :cond_10

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object p0

    goto :goto_14

    :cond_10
    invoke-static {v0, v0}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object p0

    :goto_14
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static b(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd\'T\'HHmmss"

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method private c()Ljava/util/Date;
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/a/b/a/g;->e:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private d()J
    .registers 3

    iget-wide v0, p0, Lcom/google/a/b/a/g;->e:J

    return-wide v0
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/b/a/g;->f:Z

    return v0
.end method

.method private f()Ljava/util/Date;
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lcom/google/a/b/a/g;->g:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/google/a/b/a/g;->g:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method private g()J
    .registers 3

    iget-wide v0, p0, Lcom/google/a/b/a/g;->g:J

    return-wide v0
.end method

.method private h()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/b/a/g;->h:Z

    return v0
.end method

.method private i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method private k()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/g;->k:[Ljava/lang/String;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/b/a/g;->l:Ljava/lang/String;

    return-object v0
.end method

.method private m()D
    .registers 3

    iget-wide v0, p0, Lcom/google/a/b/a/g;->m:D

    return-wide v0
.end method

.method private n()D
    .registers 3

    iget-wide v0, p0, Lcom/google/a/b/a/g;->n:D

    return-wide v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v1, p0, Lcom/google/a/b/a/g;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lcom/google/a/b/a/g;->f:Z

    iget-wide v2, p0, Lcom/google/a/b/a/g;->e:J

    invoke-static {v1, v2, v3}, Lcom/google/a/b/a/g;->a(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-boolean v1, p0, Lcom/google/a/b/a/g;->h:Z

    iget-wide v2, p0, Lcom/google/a/b/a/g;->g:J

    invoke-static {v1, v2, v3}, Lcom/google/a/b/a/g;->a(ZJ)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/g;->i:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/g;->j:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/g;->k:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/g;->a([Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/google/a/b/a/g;->l:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/google/a/b/a/g;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
