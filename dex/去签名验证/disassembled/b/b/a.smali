.class public final Lb/b/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/b/a$b;,
        Lb/b/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# instance fields
.field private final b:Lb/b/a$b;

.field private volatile c:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lb/b/a;->a:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    sget-object v0, Lb/b/a$b;->a:Lb/b/a$b;

    invoke-direct {p0, v0}, Lb/b/a;-><init>(Lb/b/a$b;)V

    return-void
.end method

.method private constructor <init>(Lb/b/a$b;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lb/b/a$a;->NONE$2dc28571:I

    iput v0, p0, Lb/b/a;->c:I

    iput-object p1, p0, Lb/b/a;->b:Lb/b/a$b;

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lb/b/a;->c:I

    return v0
.end method

.method private a(I)Lb/b/a;
    .registers 3

    if-nez p1, :cond_a

    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "level == null. Use Level.NONE instead."

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    iput p1, p0, Lb/b/a;->c:I

    return-object p0
.end method

.method private static a(Lb/u;)Z
    .registers 2

    const-string v0, "Content-Encoding"

    invoke-virtual {p0, v0}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_12

    const-string v0, "identity"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    const/4 p0, 0x0

    return p0
.end method

.method private static a(Lc/c;)Z
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    new-instance v7, Lc/c;

    invoke-direct {v7}, Lc/c;-><init>()V

    iget-wide v1, p0, Lc/c;->c:J

    const-wide/16 v3, 0x40

    cmp-long v5, v1, v3

    if-gez v5, :cond_12

    iget-wide v1, p0, Lc/c;->c:J

    move-wide v5, v1

    goto :goto_13

    :cond_12
    move-wide v5, v3

    :goto_13
    const-wide/16 v3, 0x0

    move-object v1, p0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Lc/c;->a(Lc/c;JJ)Lc/c;

    const/4 p0, 0x0

    :goto_1b
    const/16 v1, 0x10

    if-ge p0, v1, :cond_39

    invoke-virtual {v7}, Lc/c;->d()Z

    move-result v1

    if-nez v1, :cond_39

    invoke-virtual {v7}, Lc/c;->u()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v1
    :try_end_33
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_33} :catch_3b

    if-nez v1, :cond_36

    return v0

    :cond_36
    add-int/lit8 p0, p0, 0x1

    goto :goto_1b

    :cond_39
    const/4 p0, 0x1

    return p0

    :catch_3b
    return v0
.end method


# virtual methods
.method public final intercept(Lb/w$a;)Lb/ae;
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v3, v1, Lb/b/a;->c:I

    invoke-interface/range {p1 .. p1}, Lb/w$a;->a()Lb/ac;

    move-result-object v4

    sget v5, Lb/b/a$a;->NONE$2dc28571:I

    if-ne v3, v5, :cond_13

    invoke-interface {v2, v4}, Lb/w$a;->a(Lb/ac;)Lb/ae;

    move-result-object v2

    return-object v2

    :cond_13
    sget v5, Lb/b/a$a;->BODY$2dc28571:I

    const/4 v7, 0x1

    if-ne v3, v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    :goto_1b
    if-nez v5, :cond_24

    sget v8, Lb/b/a$a;->HEADERS$2dc28571:I

    if-ne v3, v8, :cond_22

    goto :goto_24

    :cond_22
    const/4 v3, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v3, 0x1

    :goto_25
    iget-object v8, v4, Lb/ac;->d:Lb/ad;

    if-eqz v8, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v7, 0x0

    :goto_2b
    invoke-interface/range {p1 .. p1}, Lb/w$a;->b()Lb/j;

    move-result-object v9

    if-eqz v9, :cond_36

    invoke-interface {v9}, Lb/j;->d()Lb/aa;

    move-result-object v9

    goto :goto_38

    :cond_36
    sget-object v9, Lb/aa;->HTTP_1_1:Lb/aa;

    :goto_38
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "--> "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lb/ac;->b:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v11, 0x20

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v12, v4, Lb/ac;->a:Lb/v;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_79

    if-eqz v7, :cond_79

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " ("

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lb/ad;->contentLength()J

    move-result-wide v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-byte body)"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_79
    iget-object v10, v1, Lb/b/a;->b:Lb/b/a$b;

    invoke-interface {v10, v9}, Lb/b/a$b;->a(Ljava/lang/String;)V

    const-wide/16 v9, -0x1

    if-eqz v3, :cond_19a

    if-eqz v7, :cond_c0

    invoke-virtual {v8}, Lb/ad;->contentType()Lb/x;

    move-result-object v12

    if-eqz v12, :cond_a1

    iget-object v12, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Content-Type: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lb/ad;->contentType()Lb/x;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lb/b/a$b;->a(Ljava/lang/String;)V

    :cond_a1
    invoke-virtual {v8}, Lb/ad;->contentLength()J

    move-result-wide v12

    cmp-long v14, v12, v9

    if-eqz v14, :cond_c0

    iget-object v12, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Content-Length: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lb/ad;->contentLength()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lb/b/a$b;->a(Ljava/lang/String;)V

    :cond_c0
    iget-object v12, v4, Lb/ac;->c:Lb/u;

    iget-object v13, v12, Lb/u;->a:[Ljava/lang/String;

    array-length v13, v13

    div-int/lit8 v13, v13, 0x2

    const/4 v14, 0x0

    :goto_c8
    if-ge v14, v13, :cond_100

    invoke-virtual {v12, v14}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v15

    const-string v6, "Content-Type"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_fb

    const-string v6, "Content-Length"

    invoke-virtual {v6, v15}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_fb

    iget-object v6, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v14}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v11}, Lb/b/a$b;->a(Ljava/lang/String;)V

    :cond_fb
    add-int/lit8 v14, v14, 0x1

    const/16 v11, 0x20

    goto :goto_c8

    :cond_100
    if-eqz v5, :cond_185

    if-nez v7, :cond_106

    goto/16 :goto_185

    :cond_106
    iget-object v6, v4, Lb/ac;->c:Lb/u;

    invoke-static {v6}, Lb/b/a;->a(Lb/u;)Z

    move-result v6

    if-eqz v6, :cond_11f

    iget-object v6, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "--> END "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lb/ac;->b:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " (encoded body omitted)"

    goto :goto_190

    :cond_11f
    new-instance v6, Lc/c;

    invoke-direct {v6}, Lc/c;-><init>()V

    invoke-virtual {v8, v6}, Lb/ad;->writeTo(Lc/d;)V

    sget-object v7, Lb/b/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v8}, Lb/ad;->contentType()Lb/x;

    move-result-object v11

    if-eqz v11, :cond_135

    sget-object v7, Lb/b/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v11, v7}, Lb/x;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v7

    :cond_135
    iget-object v11, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v12, ""

    invoke-interface {v11, v12}, Lb/b/a$b;->a(Ljava/lang/String;)V

    invoke-static {v6}, Lb/b/a;->a(Lc/c;)Z

    move-result v11

    if-eqz v11, :cond_168

    iget-object v11, v1, Lb/b/a;->b:Lb/b/a$b;

    invoke-virtual {v6, v7}, Lc/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v11, v6}, Lb/b/a$b;->a(Ljava/lang/String;)V

    iget-object v6, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "--> END "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lb/ac;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " ("

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lb/ad;->contentLength()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte body)"

    goto :goto_190

    :cond_168
    iget-object v6, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "--> END "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v4, Lb/ac;->b:Ljava/lang/String;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " (binary "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lb/ad;->contentLength()J

    move-result-wide v11

    invoke-virtual {v7, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-byte body omitted)"

    goto :goto_190

    :cond_185
    :goto_185
    iget-object v6, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "--> END "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v4, Lb/ac;->b:Ljava/lang/String;

    :goto_190
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lb/b/a$b;->a(Ljava/lang/String;)V

    :cond_19a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    :try_start_19e
    invoke-interface {v2, v4}, Lb/w$a;->a(Lb/ac;)Lb/ae;

    move-result-object v2
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_19e .. :try_end_1a2} :catch_304

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v11

    sub-long v13, v11, v6

    invoke-virtual {v4, v13, v14}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    iget-object v4, v2, Lb/ae;->g:Lb/af;

    invoke-virtual {v4}, Lb/af;->contentLength()J

    move-result-wide v11

    cmp-long v8, v11, v9

    if-eqz v8, :cond_1ca

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, "-byte"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1cc

    :cond_1ca
    const-string v8, "unknown-length"

    :goto_1cc
    iget-object v9, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v13, "<-- "

    invoke-direct {v10, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v13, v2, Lb/ae;->c:I

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v13, 0x20

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v14, v2, Lb/ae;->d:Ljava/lang/String;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v13, v2, Lb/ae;->a:Lb/ac;

    iget-object v13, v13, Lb/ac;->a:Lb/v;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " ("

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "ms"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v3, :cond_211

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " body"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_213

    :cond_211
    const-string v6, ""

    :goto_213
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x29

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v9, v6}, Lb/b/a$b;->a(Ljava/lang/String;)V

    if-eqz v3, :cond_303

    iget-object v3, v2, Lb/ae;->f:Lb/u;

    iget-object v6, v3, Lb/u;->a:[Ljava/lang/String;

    array-length v6, v6

    div-int/lit8 v6, v6, 0x2

    const/4 v7, 0x0

    :goto_22c
    if-ge v7, v6, :cond_252

    iget-object v8, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Lb/u;->a(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Lb/u;->b(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lb/b/a$b;->a(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_22c

    :cond_252
    if-eqz v5, :cond_2fc

    invoke-static {v2}, Lb/a/d/e;->d(Lb/ae;)Z

    move-result v3

    if-nez v3, :cond_25c

    goto/16 :goto_2fc

    :cond_25c
    iget-object v3, v2, Lb/ae;->f:Lb/u;

    invoke-static {v3}, Lb/b/a;->a(Lb/u;)Z

    move-result v3

    if-eqz v3, :cond_26a

    iget-object v3, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v4, "<-- END HTTP (encoded body omitted)"

    goto/16 :goto_300

    :cond_26a
    invoke-virtual {v4}, Lb/af;->source()Lc/e;

    move-result-object v3

    const-wide v5, 0x7fffffffffffffffL

    invoke-interface {v3, v5, v6}, Lc/e;->b(J)Z

    invoke-interface {v3}, Lc/e;->a()Lc/c;

    move-result-object v3

    sget-object v5, Lb/b/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Lb/af;->contentType()Lb/x;

    move-result-object v4

    if-eqz v4, :cond_29f

    :try_start_282
    sget-object v5, Lb/b/a;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Lb/x;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v5
    :try_end_288
    .catch Ljava/nio/charset/UnsupportedCharsetException; {:try_start_282 .. :try_end_288} :catch_289

    goto :goto_29f

    :catch_289
    iget-object v3, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v4, ""

    invoke-interface {v3, v4}, Lb/b/a$b;->a(Ljava/lang/String;)V

    iget-object v3, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v4, "Couldn\'t decode the response body; charset is likely malformed."

    invoke-interface {v3, v4}, Lb/b/a$b;->a(Ljava/lang/String;)V

    iget-object v3, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v4, "<-- END HTTP"

    invoke-interface {v3, v4}, Lb/b/a$b;->a(Ljava/lang/String;)V

    return-object v2

    :cond_29f
    :goto_29f
    invoke-static {v3}, Lb/b/a;->a(Lc/c;)Z

    move-result v4

    if-nez v4, :cond_2c7

    iget-object v4, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v5, ""

    invoke-interface {v4, v5}, Lb/b/a$b;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<-- END HTTP (binary "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lc/c;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-byte body omitted)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lb/b/a$b;->a(Ljava/lang/String;)V

    return-object v2

    :cond_2c7
    const-wide/16 v6, 0x0

    cmp-long v4, v11, v6

    if-eqz v4, :cond_2e1

    iget-object v4, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v6, ""

    invoke-interface {v4, v6}, Lb/b/a$b;->a(Ljava/lang/String;)V

    iget-object v4, v1, Lb/b/a;->b:Lb/b/a$b;

    invoke-virtual {v3}, Lc/c;->x()Lc/c;

    move-result-object v6

    invoke-virtual {v6, v5}, Lc/c;->a(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lb/b/a$b;->a(Ljava/lang/String;)V

    :cond_2e1
    iget-object v4, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "<-- END HTTP ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v3, Lc/c;->c:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-byte body)"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lb/b/a$b;->a(Ljava/lang/String;)V

    return-object v2

    :cond_2fc
    :goto_2fc
    iget-object v3, v1, Lb/b/a;->b:Lb/b/a$b;

    const-string v4, "<-- END HTTP"

    :goto_300
    invoke-interface {v3, v4}, Lb/b/a$b;->a(Ljava/lang/String;)V

    :cond_303
    return-object v2

    :catch_304
    move-exception v0

    iget-object v2, v1, Lb/b/a;->b:Lb/b/a$b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<-- HTTP FAILED: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lb/b/a$b;->a(Ljava/lang/String;)V

    throw v0
.end method
