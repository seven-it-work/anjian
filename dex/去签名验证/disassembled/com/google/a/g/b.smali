.class public final Lcom/google/a/g/b;
.super Lcom/google/a/g/s;


# static fields
.field private static final a:[C

.field private static final b:[C

.field private static final c:[C

.field private static final d:C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x4

    new-array v1, v0, [C

    fill-array-data v1, :array_1e

    sput-object v1, Lcom/google/a/g/b;->a:[C

    new-array v1, v0, [C

    fill-array-data v1, :array_26

    sput-object v1, Lcom/google/a/g/b;->b:[C

    new-array v0, v0, [C

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/google/a/g/b;->c:[C

    sget-object v0, Lcom/google/a/g/b;->a:[C

    const/4 v1, 0x0

    aget-char v0, v0, v1

    sput-char v0, Lcom/google/a/g/b;->d:C

    return-void

    :array_1e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
    .end array-data

    :array_26
    .array-data 2
        0x54s
        0x4es
        0x2as
        0x45s
    .end array-data

    :array_2e
    .array-data 2
        0x2fs
        0x3as
        0x2bs
        0x2es
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/g/s;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)[Z
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v0, v3, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_e
    sget-char v3, Lcom/google/a/g/b;->d:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char p1, Lcom/google/a/g/b;->d:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_81

    :cond_20
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    sget-object v4, Lcom/google/a/g/b;->a:[C

    invoke-static {v4, v0}, Lcom/google/a/g/a;->a([CC)Z

    move-result v4

    sget-object v5, Lcom/google/a/g/b;->a:[C

    invoke-static {v5, v3}, Lcom/google/a/g/a;->a([CC)Z

    move-result v5

    sget-object v6, Lcom/google/a/g/b;->b:[C

    invoke-static {v6, v0}, Lcom/google/a/g/a;->a([CC)Z

    move-result v0

    sget-object v6, Lcom/google/a/g/b;->b:[C

    invoke-static {v6, v3}, Lcom/google/a/g/a;->a([CC)Z

    move-result v3

    if-eqz v4, :cond_61

    if-nez v5, :cond_81

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start/end guards: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_61
    if-eqz v0, :cond_75

    if-nez v3, :cond_81

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start/end guards: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_75
    if-nez v5, :cond_158

    if-eqz v3, :cond_7b

    goto/16 :goto_158

    :cond_7b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_e

    :cond_81
    :goto_81
    const/16 v0, 0x14

    const/4 v0, 0x1

    const/16 v3, 0x14

    :goto_86
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v0, v4, :cond_d9

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_d4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_d4

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_a8

    goto :goto_d4

    :cond_a8
    sget-object v4, Lcom/google/a/g/b;->c:[C

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v4, v5}, Lcom/google/a/g/a;->a([CC)Z

    move-result v4

    if-eqz v4, :cond_b7

    add-int/lit8 v3, v3, 0xa

    goto :goto_d6

    :cond_b7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Cannot encode : \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 p1, 0x27

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d4
    :goto_d4
    add-int/lit8 v3, v3, 0x9

    :goto_d6
    add-int/lit8 v0, v0, 0x1

    goto :goto_86

    :cond_d9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    add-int/2addr v3, v0

    new-array v0, v3, [Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_157

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v5

    if-eqz v3, :cond_fa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    if-ne v3, v6, :cond_116

    :cond_fa
    const/16 v6, 0x2a

    if-eq v5, v6, :cond_114

    const/16 v6, 0x45

    if-eq v5, v6, :cond_111

    const/16 v6, 0x4e

    if-eq v5, v6, :cond_10e

    const/16 v6, 0x54

    if-eq v5, v6, :cond_10b

    goto :goto_116

    :cond_10b
    const/16 v5, 0x41

    goto :goto_116

    :cond_10e
    const/16 v5, 0x42

    goto :goto_116

    :cond_111
    const/16 v5, 0x44

    goto :goto_116

    :cond_114
    const/16 v5, 0x43

    :cond_116
    :goto_116
    const/4 v6, 0x0

    :goto_117
    sget-object v7, Lcom/google/a/g/a;->a:[C

    array-length v7, v7

    if-ge v6, v7, :cond_12a

    sget-object v7, Lcom/google/a/g/a;->a:[C

    aget-char v7, v7, v6

    if-ne v5, v7, :cond_127

    sget-object v5, Lcom/google/a/g/a;->b:[I

    aget v5, v5, v6

    goto :goto_12b

    :cond_127
    add-int/lit8 v6, v6, 0x1

    goto :goto_117

    :cond_12a
    const/4 v5, 0x0

    :goto_12b
    move v6, v4

    const/4 v4, 0x0

    const/4 v7, 0x1

    :goto_12e
    const/4 v8, 0x0

    :goto_12f
    const/4 v9, 0x7

    if-ge v4, v9, :cond_148

    aput-boolean v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    rsub-int/lit8 v9, v4, 0x6

    shr-int v9, v5, v9

    and-int/2addr v9, v2

    if-eqz v9, :cond_143

    if-ne v8, v2, :cond_140

    goto :goto_143

    :cond_140
    add-int/lit8 v8, v8, 0x1

    goto :goto_12f

    :cond_143
    :goto_143
    xor-int/lit8 v7, v7, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_12e

    :cond_148
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v3, v4, :cond_153

    aput-boolean v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    :cond_153
    move v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_e3

    :cond_157
    return-object v0

    :cond_158
    :goto_158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid start/end guards: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
