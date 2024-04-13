.class public final Lcom/google/a/g/d;
.super Lcom/google/a/g/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/a/g/d$a;
    }
.end annotation


# static fields
.field private static final a:I = 0x67

.field private static final b:I = 0x68

.field private static final c:I = 0x69

.field private static final d:I = 0x65

.field private static final e:I = 0x64

.field private static final f:I = 0x63

.field private static final g:I = 0x6a

.field private static final h:C = '\u00f1'

.field private static final i:C = '\u00f2'

.field private static final j:C = '\u00f3'

.field private static final k:C = '\u00f4'

.field private static final l:I = 0x66

.field private static final m:I = 0x61

.field private static final n:I = 0x60

.field private static final o:I = 0x65

.field private static final p:I = 0x64


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/g/s;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/CharSequence;I)I
    .registers 6

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt p1, v0, :cond_9

    sget p0, Lcom/google/a/g/d$a;->UNCODABLE$127b542f:I

    return p0

    :cond_9
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xf1

    if-ne v1, v2, :cond_14

    sget p0, Lcom/google/a/g/d$a;->FNC_1$127b542f:I

    return p0

    :cond_14
    const/16 v2, 0x30

    if-lt v1, v2, :cond_33

    const/16 v3, 0x39

    if-le v1, v3, :cond_1d

    goto :goto_33

    :cond_1d
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v0, :cond_24

    sget p0, Lcom/google/a/g/d$a;->ONE_DIGIT$127b542f:I

    return p0

    :cond_24
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v2, :cond_30

    if-le p0, v3, :cond_2d

    goto :goto_30

    :cond_2d
    sget p0, Lcom/google/a/g/d$a;->TWO_DIGITS$127b542f:I

    return p0

    :cond_30
    :goto_30
    sget p0, Lcom/google/a/g/d$a;->ONE_DIGIT$127b542f:I

    return p0

    :cond_33
    :goto_33
    sget p0, Lcom/google/a/g/d$a;->UNCODABLE$127b542f:I

    return p0
.end method

.method private static a(Ljava/lang/CharSequence;II)I
    .registers 6

    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    sget v1, Lcom/google/a/g/d$a;->ONE_DIGIT$127b542f:I

    const/16 v2, 0x64

    if-ne v0, v1, :cond_b

    return v2

    :cond_b
    sget v1, Lcom/google/a/g/d$a;->UNCODABLE$127b542f:I

    if-ne v0, v1, :cond_27

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_26

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x20

    const/16 v0, 0x65

    if-lt p0, p1, :cond_25

    if-ne p2, v0, :cond_26

    const/16 p1, 0x60

    if-ge p0, p1, :cond_26

    :cond_25
    return v0

    :cond_26
    return v2

    :cond_27
    const/16 v1, 0x63

    if-ne p2, v1, :cond_2c

    return v1

    :cond_2c
    if-ne p2, v2, :cond_66

    sget p2, Lcom/google/a/g/d$a;->FNC_1$127b542f:I

    if-ne v0, p2, :cond_33

    return v2

    :cond_33
    add-int/lit8 p2, p1, 0x2

    invoke-static {p0, p2}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result p2

    sget v0, Lcom/google/a/g/d$a;->UNCODABLE$127b542f:I

    if-eq p2, v0, :cond_65

    sget v0, Lcom/google/a/g/d$a;->ONE_DIGIT$127b542f:I

    if-ne p2, v0, :cond_42

    return v2

    :cond_42
    sget v0, Lcom/google/a/g/d$a;->FNC_1$127b542f:I

    if-ne p2, v0, :cond_52

    add-int/lit8 p1, p1, 0x3

    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result p0

    sget p1, Lcom/google/a/g/d$a;->TWO_DIGITS$127b542f:I

    if-ne p0, p1, :cond_51

    return v1

    :cond_51
    return v2

    :cond_52
    add-int/lit8 p1, p1, 0x4

    :goto_54
    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result p2

    sget v0, Lcom/google/a/g/d$a;->TWO_DIGITS$127b542f:I

    if-ne p2, v0, :cond_5f

    add-int/lit8 p1, p1, 0x2

    goto :goto_54

    :cond_5f
    sget p0, Lcom/google/a/g/d$a;->ONE_DIGIT$127b542f:I

    if-ne p2, p0, :cond_64

    return v2

    :cond_64
    return v1

    :cond_65
    return v2

    :cond_66
    sget p2, Lcom/google/a/g/d$a;->FNC_1$127b542f:I

    if-ne v0, p2, :cond_70

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;I)I

    move-result v0

    :cond_70
    sget p0, Lcom/google/a/g/d$a;->TWO_DIGITS$127b542f:I

    if-ne v0, p0, :cond_75

    return v1

    :cond_75
    return v2
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/a/a;",
            "II",
            "Ljava/util/Map<",
            "Lcom/google/a/g;",
            "*>;)",
            "Lcom/google/a/c/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/a/w;
        }
    .end annotation

    sget-object v0, Lcom/google/a/a;->CODE_128:Lcom/google/a/a;

    if-eq p2, v0, :cond_14

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Can only encode CODE_128, but got "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    invoke-super/range {p0 .. p5}, Lcom/google/a/g/s;->a(Ljava/lang/String;Lcom/google/a/a;IILjava/util/Map;)Lcom/google/a/c/b;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)[Z
    .registers 12

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e2

    const/16 v1, 0x50

    if-le v0, v1, :cond_c

    goto/16 :goto_e2

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_e
    if-ge v2, v0, :cond_2e

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    packed-switch v3, :pswitch_data_f2

    const/16 v4, 0x7f

    if-le v3, v4, :cond_2b

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Bad character in input: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2b
    :pswitch_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :cond_38
    :goto_38
    const/16 v8, 0x67

    if-ge v4, v0, :cond_9a

    invoke-static {p1, v4, v5}, Lcom/google/a/g/d;->a(Ljava/lang/CharSequence;II)I

    move-result v9

    if-ne v9, v5, :cond_7e

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x65

    packed-switch v8, :pswitch_data_fe

    packed-switch v5, :pswitch_data_10a

    add-int/lit8 v8, v4, 0x2

    invoke-virtual {p1, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_7b

    :pswitch_5b
    if-ne v5, v9, :cond_5e

    goto :goto_7b

    :cond_5e
    const/16 v9, 0x64

    goto :goto_7b

    :pswitch_61
    const/16 v9, 0x60

    goto :goto_7b

    :pswitch_64
    const/16 v9, 0x61

    goto :goto_7b

    :pswitch_67
    const/16 v9, 0x66

    goto :goto_7b

    :pswitch_6a
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v8, -0x20

    if-gez v9, :cond_7b

    add-int/lit8 v9, v9, 0x60

    goto :goto_7b

    :pswitch_75
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    add-int/lit8 v9, v8, -0x20

    :cond_7b
    :goto_7b
    add-int/2addr v4, v3

    move v8, v9

    goto :goto_8b

    :cond_7e
    if-nez v5, :cond_89

    packed-switch v9, :pswitch_data_112

    const/16 v8, 0x69

    goto :goto_8a

    :pswitch_86
    const/16 v8, 0x68

    goto :goto_8a

    :cond_89
    move v8, v9

    :goto_8a
    :pswitch_8a
    move v5, v9

    :goto_8b
    sget-object v9, Lcom/google/a/g/c;->a:[[I

    aget-object v9, v9, v8

    invoke-interface {v2, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    mul-int v8, v8, v7

    add-int/2addr v6, v8

    if-eqz v4, :cond_38

    add-int/lit8 v7, v7, 0x1

    goto :goto_38

    :cond_9a
    rem-int/2addr v6, v8

    sget-object p1, Lcom/google/a/g/c;->a:[[I

    aget-object p1, p1, v6

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/google/a/g/c;->a:[[I

    const/16 v0, 0x6a

    aget-object p1, p1, v0

    invoke-interface {v2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_b0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    array-length v5, v4

    move v6, v0

    const/4 v0, 0x0

    :goto_bf
    if-ge v0, v5, :cond_c7

    aget v7, v4, v0

    add-int/2addr v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_bf

    :cond_c7
    move v0, v6

    goto :goto_b0

    :cond_c9
    new-array p1, v0, [Z

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_cf
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    invoke-static {p1, v1, v2, v3}, Lcom/google/a/g/d;->a([ZI[IZ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_cf

    :cond_e1
    return-object p1

    :cond_e2
    :goto_e2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v1, "Contents length should be between 1 and 80 characters, but got "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_data_f2
    .packed-switch 0xf1
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
        :pswitch_2b
    .end packed-switch

    :pswitch_data_fe
    .packed-switch 0xf1
        :pswitch_67
        :pswitch_64
        :pswitch_61
        :pswitch_5b
    .end packed-switch

    :pswitch_data_10a
    .packed-switch 0x64
        :pswitch_75
        :pswitch_6a
    .end packed-switch

    :pswitch_data_112
    .packed-switch 0x64
        :pswitch_86
        :pswitch_8a
    .end packed-switch
.end method
