.class public final Lc/aa;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .registers 13

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez p0, :cond_e

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "string == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    if-gez v0, :cond_29

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex < beginIndex: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < 0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_4f

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "endIndex > string.length: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " > "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4f
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move-wide v4, v1

    const/4 v1, 0x0

    :goto_54
    if-ge v1, v0, :cond_a4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x80

    const-wide/16 v7, 0x1

    if-ge v2, v6, :cond_66

    add-long v9, v4, v7

    add-int/lit8 v1, v1, 0x1

    move-wide v4, v9

    goto :goto_54

    :cond_66
    const/16 v6, 0x800

    if-ge v2, v6, :cond_72

    const-wide/16 v6, 0x2

    :goto_6c
    add-long v8, v4, v6

    add-int/lit8 v1, v1, 0x1

    :goto_70
    move-wide v4, v8

    goto :goto_54

    :cond_72
    const v6, 0xd800

    if-lt v2, v6, :cond_a1

    const v6, 0xdfff

    if-le v2, v6, :cond_7d

    goto :goto_a1

    :cond_7d
    add-int/lit8 v9, v1, 0x1

    if-ge v9, v0, :cond_86

    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    goto :goto_87

    :cond_86
    const/4 v10, 0x0

    :goto_87
    const v11, 0xdbff

    if-gt v2, v11, :cond_9b

    const v2, 0xdc00

    if-lt v10, v2, :cond_9b

    if-le v10, v6, :cond_94

    goto :goto_9b

    :cond_94
    const-wide/16 v6, 0x4

    add-long v8, v4, v6

    add-int/lit8 v1, v1, 0x2

    goto :goto_70

    :cond_9b
    :goto_9b
    const/4 v1, 0x0

    add-long v1, v4, v7

    move-wide v4, v1

    move v1, v9

    goto :goto_54

    :cond_a1
    :goto_a1
    const-wide/16 v6, 0x3

    goto :goto_6c

    :cond_a4
    return-wide v4
.end method

.method private static a(Ljava/lang/String;I)J
    .registers 13

    if-nez p0, :cond_a

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "string == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-gez p1, :cond_25

    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "endIndex < beginIndex: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " < 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_25
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p1, v0, :cond_4b

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "endIndex > string.length: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " > "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    const/4 v0, 0x0

    :goto_50
    if-ge v0, p1, :cond_a0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x80

    const-wide/16 v6, 0x1

    if-ge v1, v5, :cond_62

    add-long v8, v3, v6

    add-int/lit8 v0, v0, 0x1

    move-wide v3, v8

    goto :goto_50

    :cond_62
    const/16 v5, 0x800

    if-ge v1, v5, :cond_6e

    const-wide/16 v5, 0x2

    :goto_68
    add-long v7, v3, v5

    add-int/lit8 v0, v0, 0x1

    :goto_6c
    move-wide v3, v7

    goto :goto_50

    :cond_6e
    const v5, 0xd800

    if-lt v1, v5, :cond_9d

    const v5, 0xdfff

    if-le v1, v5, :cond_79

    goto :goto_9d

    :cond_79
    add-int/lit8 v8, v0, 0x1

    if-ge v8, p1, :cond_82

    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    goto :goto_83

    :cond_82
    const/4 v9, 0x0

    :goto_83
    const v10, 0xdbff

    if-gt v1, v10, :cond_97

    const v1, 0xdc00

    if-lt v9, v1, :cond_97

    if-le v9, v5, :cond_90

    goto :goto_97

    :cond_90
    const-wide/16 v5, 0x4

    add-long v7, v3, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_6c

    :cond_97
    :goto_97
    const/4 v0, 0x0

    add-long v0, v3, v6

    move-wide v3, v0

    move v0, v8

    goto :goto_50

    :cond_9d
    :goto_9d
    const-wide/16 v5, 0x3

    goto :goto_68

    :cond_a0
    return-wide v3
.end method
