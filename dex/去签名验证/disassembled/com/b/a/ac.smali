.class public final Lcom/b/a/ac;
.super Ljava/lang/Object;


# static fields
.field private static final d:[C


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/b/a/ac;->d:[C

    return-void

    :array_a
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(Lcom/b/a/ad;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/b/a/ad;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/ad;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->e:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/ad;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->f:Ljava/lang/String;

    iget-object v0, p1, Lcom/b/a/ad;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/b/a/ac;->b:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/b/a/ad;->a()I

    move-result v0

    iput v0, p0, Lcom/b/a/ac;->c:I

    iget-object v0, p1, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/b/a/ac;->g:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/ad;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lcom/b/a/ad;->g:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/b/a/ac;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_38

    :cond_37
    move-object v0, v2

    :goto_38
    iput-object v0, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    iget-object v0, p1, Lcom/b/a/ad;->h:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lcom/b/a/ad;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_44
    iput-object v2, p0, Lcom/b/a/ac;->i:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/b/a/ad;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    return-void
.end method

.method static a(C)I
    .registers 3

    const/16 v0, 0x30

    if-lt p0, v0, :cond_a

    const/16 v1, 0x39

    if-gt p0, v1, :cond_a

    sub-int/2addr p0, v0

    return p0

    :cond_a
    const/16 v0, 0x61

    if-lt p0, v0, :cond_16

    const/16 v1, 0x66

    if-gt p0, v1, :cond_16

    :goto_12
    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0xa

    return p0

    :cond_16
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1f

    const/16 v1, 0x46

    if-gt p0, v1, :cond_1f

    goto :goto_12

    :cond_1f
    const/4 p0, -0x1

    return p0
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x50

    return p0

    :cond_b
    const-string v0, "https"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/16 p0, 0x1bb

    return p0

    :cond_16
    const/4 p0, -0x1

    return p0
.end method

.method static a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 23

    move-object v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p1

    :goto_7
    if-ge v3, v1, :cond_d7

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    const/16 v5, 0x2b

    const/4 v6, -0x1

    const/16 v7, 0x80

    const/16 v8, 0x7f

    const/16 v9, 0x20

    const/16 v10, 0x25

    if-lt v4, v9, :cond_3d

    if-eq v4, v8, :cond_3d

    if-lt v4, v7, :cond_20

    if-nez p7, :cond_3d

    :cond_20
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    if-ne v11, v6, :cond_3d

    if-ne v4, v10, :cond_32

    if-eqz p4, :cond_3d

    if-eqz p5, :cond_32

    invoke-static {v0, v3, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;II)Z

    move-result v11

    if-eqz v11, :cond_3d

    :cond_32
    if-ne v4, v5, :cond_37

    if-eqz p6, :cond_37

    goto :goto_3d

    :cond_37
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_7

    :cond_3d
    :goto_3d
    new-instance v4, Lcom/b/b/f;

    invoke-direct {v4}, Lcom/b/b/f;-><init>()V

    move/from16 v11, p1

    invoke-virtual {v4, v0, v11, v3}, Lcom/b/b/f;->a(Ljava/lang/String;II)Lcom/b/b/f;

    const/4 v11, 0x0

    :goto_48
    if-ge v3, v1, :cond_d2

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v10

    if-eqz p4, :cond_63

    const/16 v6, 0x9

    if-eq v10, v6, :cond_61

    const/16 v6, 0xa

    if-eq v10, v6, :cond_61

    const/16 v6, 0xc

    if-eq v10, v6, :cond_61

    const/16 v6, 0xd

    if-eq v10, v6, :cond_61

    goto :goto_63

    :cond_61
    :goto_61
    const/4 v5, -0x1

    goto :goto_c6

    :cond_63
    :goto_63
    if-ne v10, v5, :cond_72

    if-eqz p6, :cond_72

    if-eqz p4, :cond_6c

    const-string v6, "+"

    goto :goto_6e

    :cond_6c
    const-string v6, "%2B"

    :goto_6e
    invoke-virtual {v4, v6}, Lcom/b/b/f;->a(Ljava/lang/String;)Lcom/b/b/f;

    goto :goto_61

    :cond_72
    if-lt v10, v9, :cond_94

    if-eq v10, v8, :cond_94

    if-lt v10, v7, :cond_7a

    if-nez p7, :cond_94

    :cond_7a
    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v5, -0x1

    if-ne v6, v5, :cond_95

    const/16 v6, 0x25

    if-ne v10, v6, :cond_90

    if-eqz p4, :cond_95

    if-eqz p5, :cond_90

    invoke-static {v0, v3, v1}, Lcom/b/a/ac;->a(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_90

    goto :goto_95

    :cond_90
    invoke-virtual {v4, v10}, Lcom/b/b/f;->a(I)Lcom/b/b/f;

    goto :goto_c6

    :cond_94
    const/4 v5, -0x1

    :cond_95
    :goto_95
    if-nez v11, :cond_9c

    new-instance v11, Lcom/b/b/f;

    invoke-direct {v11}, Lcom/b/b/f;-><init>()V

    :cond_9c
    invoke-virtual {v11, v10}, Lcom/b/b/f;->a(I)Lcom/b/b/f;

    :goto_9f
    invoke-virtual {v11}, Lcom/b/b/f;->d()Z

    move-result v6

    if-nez v6, :cond_c6

    invoke-virtual {v11}, Lcom/b/b/f;->e()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    sget-object v12, Lcom/b/a/ac;->d:[C

    shr-int/lit8 v13, v6, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v5, v12, v13

    invoke-virtual {v4, v5}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    sget-object v5, Lcom/b/a/ac;->d:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    const/4 v5, -0x1

    goto :goto_9f

    :cond_c6
    :goto_c6
    invoke-static {v10}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0x2b

    const/4 v6, -0x1

    const/16 v10, 0x25

    goto/16 :goto_48

    :cond_d2
    invoke-virtual {v4}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_d7
    move/from16 v11, p1

    invoke-virtual/range {p0 .. p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static a(Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 12

    move v0, p1

    :goto_1
    if-ge v0, p2, :cond_60

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2b

    const/16 v3, 0x25

    if-eq v1, v3, :cond_15

    if-ne v1, v2, :cond_12

    if-eqz p3, :cond_12

    goto :goto_15

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    :goto_15
    new-instance v1, Lcom/b/b/f;

    invoke-direct {v1}, Lcom/b/b/f;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lcom/b/b/f;->a(Ljava/lang/String;II)Lcom/b/b/f;

    :goto_1d
    if-ge v0, p2, :cond_5b

    invoke-virtual {p0, v0}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    if-ne p1, v3, :cond_48

    add-int/lit8 v4, v0, 0x2

    if-ge v4, p2, :cond_48

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/b/a/ac;->a(C)I

    move-result v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lcom/b/a/ac;->a(C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_52

    if-eq v6, v7, :cond_52

    shl-int/lit8 v0, v5, 0x4

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    move v0, v4

    goto :goto_55

    :cond_48
    if-ne p1, v2, :cond_52

    if-eqz p3, :cond_52

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lcom/b/b/f;->b(I)Lcom/b/b/f;

    goto :goto_55

    :cond_52
    invoke-virtual {v1, p1}, Lcom/b/b/f;->a(I)Lcom/b/b/f;

    :goto_55
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_1d

    :cond_5b
    invoke-virtual {v1}, Lcom/b/b/f;->l()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_60
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;
    .registers 14

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-static/range {v0 .. v7}, Lcom/b/a/ac;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lcom/b/a/ac;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_20

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_19

    invoke-static {v3, p1}, Lcom/b/a/ac;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_1a

    :cond_19
    const/4 v3, 0x0

    :goto_1a
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_20
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_18

    const/16 v2, 0x2f

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_18
    return-void
.end method

.method private static a(Ljava/lang/String;II)Z
    .registers 5

    add-int/lit8 v0, p1, 0x2

    if-ge v0, p2, :cond_24

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x25

    if-ne p2, v1, :cond_24

    const/4 p2, 0x1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Lcom/b/a/ac;->a(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lcom/b/a/ac;->a(C)I

    move-result p0

    if-eq p0, v1, :cond_24

    return p2

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method static b(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v1, v2, :cond_40

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :cond_19
    const/16 v4, 0x3d

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    if-eq v4, v3, :cond_32

    if-le v4, v2, :cond_24

    goto :goto_32

    :cond_24
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3a

    :cond_32
    :goto_32
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_3a
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v2, 0x1

    goto :goto_6

    :cond_40
    return-object v0
.end method

.method static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_2c

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-lez v1, :cond_1c

    const/16 v4, 0x26

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1c
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_29

    const/16 v2, 0x3d

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_29
    add-int/lit8 v1, v1, 0x2

    goto :goto_5

    :cond_2c
    return-void
.end method

.method public static e(Ljava/lang/String;)Lcom/b/a/ac;
    .registers 4

    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/b/a/ad;->a(Lcom/b/a/ac;Ljava/lang/String;)I

    move-result p0

    sget v2, Lcom/b/a/ae;->a:I

    if-ne p0, v2, :cond_13

    invoke-virtual {v0}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v1
.end method


# virtual methods
.method public final a()Ljava/net/URI;
    .registers 12

    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    iget-object v1, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/a/ad;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/b/a/ac;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/b/a/ac;->e()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/ac;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/b/a/ad;->d:Ljava/lang/String;

    iget v1, p0, Lcom/b/a/ac;->c:I

    iget-object v2, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-static {v2}, Lcom/b/a/ac;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Lcom/b/a/ac;->c:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Lcom/b/a/ad;->e:I

    iget-object v1, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-virtual {p0}, Lcom/b/a/ac;->i()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lcom/b/a/ac;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/b/a/ad;->b(Ljava/lang/String;)Lcom/b/a/ad;

    iget-object v1, p0, Lcom/b/a/ac;->i:Ljava/lang/String;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    goto :goto_54

    :cond_44
    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_54
    iput-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    iget-object v1, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v1, :cond_7b

    iget-object v4, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    iget-object v4, v0, Lcom/b/a/ad;->f:Ljava/util/List;

    const-string v6, "[]"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_7b
    iget-object v1, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    if-eqz v1, :cond_a4

    iget-object v1, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_85
    if-ge v2, v1, :cond_a4

    iget-object v3, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a1

    iget-object v3, v0, Lcom/b/a/ad;->g:Ljava/util/List;

    const-string v5, "\\^`{|}"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_a4
    iget-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    if-eqz v1, :cond_b6

    iget-object v2, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    const-string v3, " \"#<>\\^`{|}"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/b/a/ac;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/b/a/ad;->h:Ljava/lang/String;

    :cond_b6
    invoke-virtual {v0}, Lcom/b/a/ad;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_ba
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, v0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/net/URISyntaxException; {:try_start_ba .. :try_end_bf} :catch_c0

    return-object v1

    :catch_c0
    move-exception v1

    :try_start_c1
    const-string v2, "[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_cd} :catch_ce

    return-object v0

    :catch_ce
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Ljava/lang/String;)Lcom/b/a/ac;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/b/a/ac;->d(Ljava/lang/String;)Lcom/b/a/ad;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/b/a/ad;->b()Lcom/b/a/ac;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Z
    .registers 3

    iget-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/String;)Lcom/b/a/ad;
    .registers 4

    new-instance v0, Lcom/b/a/ad;

    invoke-direct {v0}, Lcom/b/a/ad;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/b/a/ad;->a(Lcom/b/a/ac;Ljava/lang/String;)I

    move-result p1

    sget v1, Lcom/b/a/ae;->a:I

    if-ne p1, v1, :cond_e

    return-object v0

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/b/a/ac;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/b/a/ac;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/b/a/ac;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/b/a/ac;

    iget-object p1, p1, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/b/a/ac;->c:I

    return v0
.end method

.method public final h()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final i()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v1, p0, Lcom/b/a/ac;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    iget-object v3, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lcom/b/a/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-ge v0, v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    iget-object v5, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_23

    :cond_38
    return-object v3
.end method

.method public final j()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v1, v2, v3, v4}, Lcom/b/a/a/c;->a(Ljava/lang/String;IIC)I

    move-result v1

    iget-object v2, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/b/a/ac;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/b/a/ac;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/b/a/ac;->j:Ljava/lang/String;

    return-object v0
.end method
