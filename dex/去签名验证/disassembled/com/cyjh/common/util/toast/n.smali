.class public final Lcom/cyjh/common/util/toast/n;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(I)Ljava/lang/String;
    .registers 2
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/cyjh/common/util/toast/n;->a(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(I[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/cyjh/common/util/toast/n;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p0, :cond_11

    if-eqz p1, :cond_11

    array-length v0, p1

    if-lez v0, :cond_11

    :try_start_7
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_b
    .catch Ljava/util/IllegalFormatException; {:try_start_7 .. :try_end_b} :catch_d

    move-object p0, p1

    return-object p0

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Ljava/util/IllegalFormatException;->printStackTrace()V

    :cond_11
    return-object p0
.end method

.method private static a(Ljava/lang/CharSequence;)Z
    .registers 1

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_b
    :goto_b
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v2, v3, :cond_32

    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_20

    instance-of v3, p1, Ljava/lang/String;

    if-eqz v3, :cond_20

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_20
    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_31

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_2e

    return v1

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_31
    return v0

    :cond_32
    return v1
.end method

.method private static a(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    return p0

    :cond_f
    :goto_f
    const/4 p0, 0x1

    return p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 2

    if-nez p0, :cond_8

    if-nez p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x1

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v1, :cond_1a

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_17

    return v2

    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    return v0
.end method

.method private static b(I)[Ljava/lang/String;
    .registers 3
    .param p0    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    :try_start_0
    invoke-static {}, Lcom/cyjh/common/util/toast/q;->a()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_31

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v1

    if-nez v1, :cond_15

    return-object p0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x20

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    :goto_31
    const-string p0, ""

    return-object p0
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_35

    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_15

    return-object p0

    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    :goto_35
    const-string p0, ""

    return-object p0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_d

    return-object p0

    :cond_d
    shr-int/lit8 v2, v0, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v2, :cond_24

    aget-char v4, p0, v3

    sub-int v5, v0, v3

    sub-int/2addr v5, v1

    aget-char v6, p0, v5

    aput-char v6, p0, v3

    aput-char v4, p0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_24
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method private static g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_41

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    :goto_f
    if-ge v0, v1, :cond_3b

    aget-char v2, p0, v0

    const/16 v3, 0x3000

    if-ne v2, v3, :cond_1c

    const/16 v2, 0x20

    aput-char v2, p0, v0

    goto :goto_38

    :cond_1c
    const v2, 0xff01

    aget-char v3, p0, v0

    if-gt v2, v3, :cond_34

    aget-char v2, p0, v0

    const v3, 0xff5e

    if-gt v2, v3, :cond_34

    aget-char v2, p0, v0

    const v3, 0xfee0

    sub-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v0

    goto :goto_38

    :cond_34
    aget-char v2, p0, v0

    aput-char v2, p0, v0

    :goto_38
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_3b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_41
    :goto_41
    const-string p0, ""

    return-object p0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    if-eqz p0, :cond_3f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3f

    :cond_9
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v0, 0x0

    array-length v1, p0

    :goto_f
    if-ge v0, v1, :cond_39

    aget-char v2, p0, v0

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1c

    const/16 v2, 0x3000

    aput-char v2, p0, v0

    goto :goto_36

    :cond_1c
    const/16 v2, 0x21

    aget-char v3, p0, v0

    if-gt v2, v3, :cond_32

    aget-char v2, p0, v0

    const/16 v3, 0x7e

    if-gt v2, v3, :cond_32

    aget-char v2, p0, v0

    const v3, 0xfee0

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v0

    goto :goto_36

    :cond_32
    aget-char v2, p0, v0

    aput-char v2, p0, v0

    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    :cond_39
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_3f
    :goto_3f
    const-string p0, ""

    return-object p0
.end method
