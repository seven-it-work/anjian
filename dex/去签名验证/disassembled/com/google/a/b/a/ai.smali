.class public final Lcom/google/a/b/a/ai;
.super Lcom/google/a/b/a/u;


# static fields
.field private static final a:Ljava/util/regex/Pattern;

.field private static final b:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[IOQ]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/ai;->a:Ljava/util/regex/Pattern;

    const-string v0, "[A-Z0-9]{17}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/ai;->b:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static a(I)I
    .registers 4

    const/16 v0, 0x9

    if-lez p0, :cond_9

    const/4 v1, 0x7

    if-gt p0, v1, :cond_9

    sub-int/2addr v0, p0

    return v0

    :cond_9
    const/16 v1, 0x8

    const/16 v2, 0xa

    if-ne p0, v1, :cond_10

    return v2

    :cond_10
    if-ne p0, v0, :cond_14

    const/4 p0, 0x0

    return p0

    :cond_14
    if-lt p0, v2, :cond_1d

    const/16 v0, 0x11

    if-gt p0, v0, :cond_1d

    rsub-int/lit8 p0, p0, 0x13

    return p0

    :cond_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static a(Ljava/lang/CharSequence;)Z
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x8

    const/16 v5, 0x30

    const/16 v6, 0xa

    const/4 v7, 0x1

    if-ge v1, v3, :cond_6e

    add-int/lit8 v3, v1, 0x1

    const/16 v8, 0x9

    if-lez v3, :cond_1c

    const/4 v9, 0x7

    if-gt v3, v9, :cond_1c

    rsub-int/lit8 v4, v3, 0x9

    goto :goto_2d

    :cond_1c
    if-ne v3, v4, :cond_21

    const/16 v4, 0xa

    goto :goto_2d

    :cond_21
    if-ne v3, v8, :cond_25

    const/4 v4, 0x0

    goto :goto_2d

    :cond_25
    if-lt v3, v6, :cond_68

    const/16 v4, 0x11

    if-gt v3, v4, :cond_68

    rsub-int/lit8 v4, v3, 0x13

    :goto_2d
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v6, 0x41

    if-lt v1, v6, :cond_3d

    const/16 v6, 0x49

    if-gt v1, v6, :cond_3d

    add-int/lit8 v1, v1, -0x41

    :goto_3b
    add-int/2addr v1, v7

    goto :goto_5d

    :cond_3d
    const/16 v6, 0x4a

    if-lt v1, v6, :cond_48

    const/16 v6, 0x52

    if-gt v1, v6, :cond_48

    add-int/lit8 v1, v1, -0x4a

    goto :goto_3b

    :cond_48
    const/16 v6, 0x53

    if-lt v1, v6, :cond_55

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_55

    add-int/lit8 v1, v1, -0x53

    add-int/lit8 v1, v1, 0x2

    goto :goto_5d

    :cond_55
    if-lt v1, v5, :cond_62

    const/16 v5, 0x39

    if-gt v1, v5, :cond_62

    add-int/lit8 v1, v1, -0x30

    :goto_5d
    mul-int v4, v4, v1

    add-int/2addr v2, v4

    move v1, v3

    goto :goto_3

    :cond_62
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_68
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_6e
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    rem-int/lit8 v2, v2, 0xb

    if-ge v2, v6, :cond_79

    add-int/2addr v2, v5

    int-to-char v1, v2

    goto :goto_7d

    :cond_79
    if-ne v2, v6, :cond_81

    const/16 v1, 0x58

    :goto_7d
    if-ne p0, v1, :cond_80

    return v7

    :cond_80
    return v0

    :cond_81
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(I)C
    .registers 2

    const/16 v0, 0xa

    if-ge p0, v0, :cond_8

    add-int/lit8 p0, p0, 0x30

    int-to-char p0, p0

    return p0

    :cond_8
    if-ne p0, v0, :cond_d

    const/16 p0, 0x58

    return p0

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(C)I
    .registers 3

    const/16 v0, 0x41

    if-lt p0, v0, :cond_c

    const/16 v1, 0x49

    if-gt p0, v1, :cond_c

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_c
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_18

    const/16 v1, 0x52

    if-gt p0, v1, :cond_18

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    return p0

    :cond_18
    const/16 v0, 0x53

    if-lt p0, v0, :cond_24

    const/16 v1, 0x5a

    if-gt p0, v1, :cond_24

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x2

    return p0

    :cond_24
    const/16 v0, 0x30

    if-lt p0, v0, :cond_2e

    const/16 v1, 0x39

    if-gt p0, v1, :cond_2e

    sub-int/2addr p0, v0

    return p0

    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .registers 10

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 v1, 0x45

    const/16 v2, 0x33

    const/16 v3, 0x39

    const/16 v4, 0x41

    if-eq v0, v3, :cond_8b

    const/16 v5, 0x54

    const/16 v6, 0x53

    if-eq v0, v6, :cond_79

    const/16 v7, 0x5a

    const/16 v8, 0x52

    if-eq v0, v7, :cond_72

    const/16 v7, 0x57

    packed-switch v0, :pswitch_data_98

    packed-switch v0, :pswitch_data_a6

    packed-switch v0, :pswitch_data_b2

    goto/16 :goto_96

    :pswitch_2d
    const/16 v0, 0x30

    if-eq p0, v0, :cond_35

    if-lt p0, v2, :cond_96

    if-gt p0, v3, :cond_96

    :cond_35
    const-string p0, "RU"

    return-object p0

    :pswitch_38
    const-string p0, "DE"

    return-object p0

    :pswitch_3b
    const/16 v0, 0x46

    if-lt p0, v0, :cond_44

    if-gt p0, v8, :cond_44

    const-string p0, "FR"

    return-object p0

    :cond_44
    if-lt p0, v6, :cond_96

    if-gt p0, v7, :cond_96

    const-string p0, "ES"

    return-object p0

    :pswitch_4b
    if-lt p0, v4, :cond_96

    if-gt p0, v1, :cond_96

    const-string p0, "IN"

    return-object p0

    :pswitch_52
    const-string p0, "CN"

    return-object p0

    :pswitch_55
    const/16 v0, 0x4c

    if-lt p0, v0, :cond_96

    if-gt p0, v8, :cond_96

    const-string p0, "KO"

    return-object p0

    :pswitch_5e
    if-lt p0, v4, :cond_96

    if-gt p0, v5, :cond_96

    const-string p0, "JP"

    return-object p0

    :pswitch_65
    if-lt p0, v4, :cond_96

    if-gt p0, v7, :cond_96

    const-string p0, "MX"

    return-object p0

    :pswitch_6c
    const-string p0, "CA"

    return-object p0

    :pswitch_6f
    const-string p0, "US"

    return-object p0

    :cond_72
    if-lt p0, v4, :cond_96

    if-gt p0, v8, :cond_96

    const-string p0, "IT"

    return-object p0

    :cond_79
    if-lt p0, v4, :cond_82

    const/16 v0, 0x4d

    if-gt p0, v0, :cond_82

    const-string p0, "UK"

    return-object p0

    :cond_82
    const/16 v0, 0x4e

    if-lt p0, v0, :cond_96

    if-gt p0, v5, :cond_96

    const-string p0, "DE"

    return-object p0

    :cond_8b
    if-lt p0, v4, :cond_8f

    if-le p0, v1, :cond_93

    :cond_8f
    if-lt p0, v2, :cond_96

    if-gt p0, v3, :cond_96

    :cond_93
    const-string p0, "BR"

    return-object p0

    :cond_96
    :goto_96
    const/4 p0, 0x0

    return-object p0

    :pswitch_data_98
    .packed-switch 0x31
        :pswitch_6f
        :pswitch_6c
        :pswitch_65
        :pswitch_6f
        :pswitch_6f
    .end packed-switch

    :pswitch_data_a6
    .packed-switch 0x4a
        :pswitch_5e
        :pswitch_55
        :pswitch_52
        :pswitch_4b
    .end packed-switch

    :pswitch_data_b2
    .packed-switch 0x56
        :pswitch_3b
        :pswitch_38
        :pswitch_2d
    .end packed-switch
.end method

.method private static c(C)I
    .registers 3

    const/16 v0, 0x45

    if-lt p0, v0, :cond_c

    const/16 v1, 0x48

    if-gt p0, v1, :cond_c

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7c0

    return p0

    :cond_c
    const/16 v0, 0x4a

    if-lt p0, v0, :cond_18

    const/16 v1, 0x4e

    if-gt p0, v1, :cond_18

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7c4

    return p0

    :cond_18
    const/16 v0, 0x50

    if-ne p0, v0, :cond_1f

    const/16 p0, 0x7c9

    return p0

    :cond_1f
    const/16 v0, 0x52

    if-lt p0, v0, :cond_2b

    const/16 v1, 0x54

    if-gt p0, v1, :cond_2b

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7ca

    return p0

    :cond_2b
    const/16 v0, 0x56

    if-lt p0, v0, :cond_37

    const/16 v1, 0x59

    if-gt p0, v1, :cond_37

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7cd

    return p0

    :cond_37
    const/16 v0, 0x31

    if-lt p0, v0, :cond_43

    const/16 v1, 0x39

    if-gt p0, v1, :cond_43

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7d1

    return p0

    :cond_43
    const/16 v0, 0x41

    if-lt p0, v0, :cond_4f

    const/16 v1, 0x44

    if-gt p0, v1, :cond_4f

    sub-int/2addr p0, v0

    add-int/lit16 p0, p0, 0x7da

    return p0

    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/ah;
    .registers 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/a/r;->e:Lcom/google/a/a;

    sget-object v2, Lcom/google/a/a;->CODE_39:Lcom/google/a/a;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_a

    return-object v3

    :cond_a
    iget-object v0, v0, Lcom/google/a/r;->a:Ljava/lang/String;

    sget-object v1, Lcom/google/a/b/a/ai;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    sget-object v0, Lcom/google/a/b/a/ai;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_29

    return-object v3

    :cond_29
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2b
    :try_start_2b
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/16 v6, 0x8

    const/16 v7, 0x30

    const/16 v8, 0x53

    const/16 v9, 0x4a

    const/16 v10, 0x39

    const/16 v11, 0xa

    const/16 v12, 0x9

    const/4 v13, 0x1

    const/16 v14, 0x52

    const/16 v15, 0x41

    if-ge v1, v4, :cond_96

    add-int/lit8 v4, v1, 0x1

    if-lez v4, :cond_4e

    const/4 v0, 0x7

    if-gt v4, v0, :cond_4e

    rsub-int/lit8 v0, v4, 0x9

    goto :goto_5f

    :cond_4e
    if-ne v4, v6, :cond_53

    const/16 v0, 0xa

    goto :goto_5f

    :cond_53
    if-ne v4, v12, :cond_57

    const/4 v0, 0x0

    goto :goto_5f

    :cond_57
    if-lt v4, v11, :cond_90

    const/16 v0, 0x11

    if-gt v4, v0, :cond_90

    rsub-int/lit8 v0, v4, 0x13

    :goto_5f
    invoke-interface {v5, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v1, v15, :cond_6d

    const/16 v6, 0x49

    if-gt v1, v6, :cond_6d

    add-int/lit8 v1, v1, -0x41

    :goto_6b
    add-int/2addr v1, v13

    goto :goto_85

    :cond_6d
    if-lt v1, v9, :cond_74

    if-gt v1, v14, :cond_74

    add-int/lit8 v1, v1, -0x4a

    goto :goto_6b

    :cond_74
    if-lt v1, v8, :cond_7f

    const/16 v6, 0x5a

    if-gt v1, v6, :cond_7f

    add-int/lit8 v1, v1, -0x53

    add-int/lit8 v1, v1, 0x2

    goto :goto_85

    :cond_7f
    if-lt v1, v7, :cond_8a

    if-gt v1, v10, :cond_8a

    add-int/lit8 v1, v1, -0x30

    :goto_85
    mul-int v0, v0, v1

    add-int/2addr v2, v0

    move v1, v4

    goto :goto_2b

    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_96
    invoke-interface {v5, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    rem-int/lit8 v2, v2, 0xb

    if-ge v2, v11, :cond_a1

    add-int/2addr v2, v7

    int-to-char v1, v2

    goto :goto_a5

    :cond_a1
    if-ne v2, v11, :cond_1c0

    const/16 v1, 0x58

    :goto_a5
    if-ne v0, v1, :cond_a9

    const/4 v0, 0x1

    goto :goto_aa

    :cond_a9
    const/4 v0, 0x0

    :goto_aa
    if-nez v0, :cond_ad

    return-object v3

    :cond_ad
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {v5, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    new-instance v16, Lcom/google/a/b/a/ah;

    invoke-virtual {v5, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v4, 0x11

    invoke-virtual {v5, v12, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-interface {v2, v13}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4
    :try_end_c7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2b .. :try_end_c7} :catch_1c8

    const/16 v13, 0x54

    const/16 v3, 0x45

    if-eq v1, v10, :cond_141

    if-eq v1, v8, :cond_131

    const/16 v11, 0x5a

    if-eq v1, v11, :cond_12a

    packed-switch v1, :pswitch_data_1ca

    packed-switch v1, :pswitch_data_1d8

    packed-switch v1, :pswitch_data_1e4

    goto/16 :goto_14e

    :pswitch_de
    if-eq v4, v7, :cond_e6

    const/16 v1, 0x33

    if-lt v4, v1, :cond_14e

    if-gt v4, v10, :cond_14e

    :cond_e6
    :try_start_e6
    const-string v1, "RU"

    goto/16 :goto_14f

    :goto_ea
    :pswitch_ea
    const-string v1, "DE"

    goto/16 :goto_14f

    :pswitch_ee
    const/16 v1, 0x46

    if-lt v4, v1, :cond_f8

    if-gt v4, v14, :cond_f8

    const-string v1, "FR"

    goto/16 :goto_14f

    :cond_f8
    if-lt v4, v8, :cond_14e

    const/16 v1, 0x57

    if-gt v4, v1, :cond_14e

    const-string v1, "ES"

    goto :goto_14f

    :pswitch_101
    if-lt v4, v15, :cond_14e

    if-gt v4, v3, :cond_14e

    const-string v1, "IN"

    goto :goto_14f

    :pswitch_108
    const-string v1, "CN"

    goto :goto_14f

    :pswitch_10b
    const/16 v1, 0x4c

    if-lt v4, v1, :cond_14e

    if-gt v4, v14, :cond_14e

    const-string v1, "KO"

    goto :goto_14f

    :pswitch_114
    if-lt v4, v15, :cond_14e

    if-gt v4, v13, :cond_14e

    const-string v1, "JP"

    goto :goto_14f

    :pswitch_11b
    if-lt v4, v15, :cond_14e

    const/16 v1, 0x57

    if-gt v4, v1, :cond_14e

    const-string v1, "MX"

    goto :goto_14f

    :pswitch_124
    const-string v1, "CA"

    goto :goto_14f

    :pswitch_127
    const-string v1, "US"

    goto :goto_14f

    :cond_12a
    if-lt v4, v15, :cond_14e

    if-gt v4, v14, :cond_14e

    const-string v1, "IT"

    goto :goto_14f

    :cond_131
    if-lt v4, v15, :cond_13a

    const/16 v1, 0x4d

    if-gt v4, v1, :cond_13a

    const-string v1, "UK"

    goto :goto_14f

    :cond_13a
    const/16 v1, 0x4e

    if-lt v4, v1, :cond_14e

    if-gt v4, v13, :cond_14e

    goto :goto_ea

    :cond_141
    if-lt v4, v15, :cond_145

    if-le v4, v3, :cond_14b

    :cond_145
    const/16 v1, 0x33

    if-lt v4, v1, :cond_14e

    if-gt v4, v10, :cond_14e

    :cond_14b
    const-string v1, "BR"

    goto :goto_14f

    :cond_14e
    :goto_14e
    const/4 v1, 0x0

    :goto_14f
    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v12}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-lt v4, v3, :cond_164

    const/16 v6, 0x48

    if-gt v4, v6, :cond_164

    sub-int/2addr v4, v3

    add-int/lit16 v4, v4, 0x7c0

    :goto_160
    move v11, v4

    const/16 v3, 0xa

    goto :goto_1a3

    :cond_164
    if-lt v4, v9, :cond_16e

    const/16 v3, 0x4e

    if-gt v4, v3, :cond_16e

    sub-int/2addr v4, v9

    add-int/lit16 v4, v4, 0x7c4

    goto :goto_160

    :cond_16e
    const/16 v3, 0x50

    if-ne v4, v3, :cond_179

    const/16 v3, 0x7c9

    const/16 v3, 0xa

    const/16 v11, 0x7c9

    goto :goto_1a3

    :cond_179
    if-lt v4, v14, :cond_181

    if-gt v4, v13, :cond_181

    sub-int/2addr v4, v14

    add-int/lit16 v4, v4, 0x7ca

    goto :goto_160

    :cond_181
    const/16 v3, 0x56

    if-lt v4, v3, :cond_18e

    const/16 v3, 0x59

    if-gt v4, v3, :cond_18e

    add-int/lit8 v4, v4, -0x56

    add-int/lit16 v4, v4, 0x7cd

    goto :goto_160

    :cond_18e
    const/16 v3, 0x31

    if-lt v4, v3, :cond_199

    if-gt v4, v10, :cond_199

    add-int/lit8 v4, v4, -0x31

    add-int/lit16 v4, v4, 0x7d1

    goto :goto_160

    :cond_199
    if-lt v4, v15, :cond_1ba

    const/16 v3, 0x44

    if-gt v4, v3, :cond_1ba

    sub-int/2addr v4, v15

    add-int/lit16 v4, v4, 0x7da

    goto :goto_160

    :goto_1a3
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v4, v16

    move-object v6, v2

    move-object/from16 v7, v17

    move-object/from16 v8, v18

    move-object v9, v1

    move-object v10, v0

    invoke-direct/range {v4 .. v13}, Lcom/google/a/b/a/ah;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ICLjava/lang/String;)V

    return-object v16

    :cond_1ba
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_1c6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e6 .. :try_end_1c6} :catch_1c6

    :catch_1c6
    const/4 v0, 0x0

    return-object v0

    :catch_1c8
    move-object v0, v3

    return-object v0

    :pswitch_data_1ca
    .packed-switch 0x31
        :pswitch_127
        :pswitch_124
        :pswitch_11b
        :pswitch_127
        :pswitch_127
    .end packed-switch

    :pswitch_data_1d8
    .packed-switch 0x4a
        :pswitch_114
        :pswitch_10b
        :pswitch_108
        :pswitch_101
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x56
        :pswitch_ee
        :pswitch_ea
        :pswitch_de
    .end packed-switch
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 2

    invoke-static {p1}, Lcom/google/a/b/a/ai;->c(Lcom/google/a/r;)Lcom/google/a/b/a/ah;

    move-result-object p1

    return-object p1
.end method
