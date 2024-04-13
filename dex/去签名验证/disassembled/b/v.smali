.class public final Lb/v;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/v$a;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final b:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#"

.field static final c:Ljava/lang/String; = " \"<>^`{}|/\\?#"

.field static final d:Ljava/lang/String; = "[]"

.field static final e:Ljava/lang/String; = " \"\'<>#"

.field static final f:Ljava/lang/String; = " \"\'<>#&="

.field static final g:Ljava/lang/String; = "\\^`{|}"

.field static final h:Ljava/lang/String; = " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

.field static final i:Ljava/lang/String; = ""

.field static final j:Ljava/lang/String; = " \"#<>\\^`{|}"

.field private static final o:[C


# instance fields
.field public final k:Ljava/lang/String;

.field public final l:Ljava/lang/String;

.field public final m:I

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final t:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lb/v;->o:[C

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

.method constructor <init>(Lb/v$a;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lb/v$a;->a:Ljava/lang/String;

    iput-object v0, p0, Lb/v;->k:Ljava/lang/String;

    iget-object v0, p1, Lb/v$a;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lb/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/v;->p:Ljava/lang/String;

    iget-object v0, p1, Lb/v$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lb/v;->q:Ljava/lang/String;

    iget-object v0, p1, Lb/v$a;->d:Ljava/lang/String;

    iput-object v0, p0, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {p1}, Lb/v$a;->a()I

    move-result v0

    iput v0, p0, Lb/v;->m:I

    iget-object v0, p1, Lb/v$a;->f:Ljava/util/List;

    invoke-static {v0, v1}, Lb/v;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lb/v;->r:Ljava/util/List;

    iget-object v0, p1, Lb/v$a;->g:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    iget-object v0, p1, Lb/v$a;->g:Ljava/util/List;

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lb/v;->a(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    goto :goto_38

    :cond_37
    move-object v0, v2

    :goto_38
    iput-object v0, p0, Lb/v;->n:Ljava/util/List;

    iget-object v0, p1, Lb/v$a;->h:Ljava/lang/String;

    if-eqz v0, :cond_44

    iget-object v0, p1, Lb/v$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lb/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :cond_44
    iput-object v2, p0, Lb/v;->s:Ljava/lang/String;

    invoke-virtual {p1}, Lb/v$a;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/v;->t:Ljava/lang/String;

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

.method private static a(Ljava/net/URI;)Lb/v;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/v;->d(Ljava/lang/String;)Lb/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/net/URL;)Lb/v;
    .registers 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lb/v;->d(Ljava/lang/String;)Lb/v;

    move-result-object p0

    return-object p0
.end method

.method private a(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
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

    invoke-static {v0, v3, v1}, Lb/v;->a(Ljava/lang/String;II)Z

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
    new-instance v4, Lc/c;

    invoke-direct {v4}, Lc/c;-><init>()V

    move/from16 v11, p1

    invoke-virtual {v4, v0, v11, v3}, Lc/c;->a(Ljava/lang/String;II)Lc/c;

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
    invoke-virtual {v4, v6}, Lc/c;->a(Ljava/lang/String;)Lc/c;

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

    invoke-static {v0, v3, v1}, Lb/v;->a(Ljava/lang/String;II)Z

    move-result v6

    if-nez v6, :cond_90

    goto :goto_95

    :cond_90
    invoke-virtual {v4, v10}, Lc/c;->a(I)Lc/c;

    goto :goto_c6

    :cond_94
    const/4 v5, -0x1

    :cond_95
    :goto_95
    if-nez v11, :cond_9c

    new-instance v11, Lc/c;

    invoke-direct {v11}, Lc/c;-><init>()V

    :cond_9c
    invoke-virtual {v11, v10}, Lc/c;->a(I)Lc/c;

    :goto_9f
    invoke-virtual {v11}, Lc/c;->d()Z

    move-result v6

    if-nez v6, :cond_c6

    invoke-virtual {v11}, Lc/c;->g()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/16 v5, 0x25

    invoke-virtual {v4, v5}, Lc/c;->b(I)Lc/c;

    sget-object v12, Lb/v;->o:[C

    shr-int/lit8 v13, v6, 0x4

    and-int/lit8 v13, v13, 0xf

    aget-char v5, v12, v13

    invoke-virtual {v4, v5}, Lc/c;->b(I)Lc/c;

    sget-object v5, Lb/v;->o:[C

    and-int/lit8 v6, v6, 0xf

    aget-char v5, v5, v6

    invoke-virtual {v4, v5}, Lc/c;->b(I)Lc/c;

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
    invoke-virtual {v4}, Lc/c;->q()Ljava/lang/String;

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
    new-instance v1, Lc/c;

    invoke-direct {v1}, Lc/c;-><init>()V

    invoke-virtual {v1, p0, p1, v0}, Lc/c;->a(Ljava/lang/String;II)Lc/c;

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

    invoke-static {v5}, Lb/v;->a(C)I

    move-result v5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Lb/v;->a(C)I

    move-result v6

    const/4 v7, -0x1

    if-eq v5, v7, :cond_52

    if-eq v6, v7, :cond_52

    shl-int/lit8 v0, v5, 0x4

    add-int/2addr v0, v6

    invoke-virtual {v1, v0}, Lc/c;->b(I)Lc/c;

    move v0, v4

    goto :goto_55

    :cond_48
    if-ne p1, v2, :cond_52

    if-eqz p3, :cond_52

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Lc/c;->b(I)Lc/c;

    goto :goto_55

    :cond_52
    invoke-virtual {v1, p1}, Lc/c;->a(I)Lc/c;

    :goto_55
    invoke-static {p1}, Ljava/lang/Character;->charCount(I)I

    move-result p1

    add-int/2addr v0, p1

    goto :goto_1d

    :cond_5b
    invoke-virtual {v1}, Lc/c;->q()Ljava/lang/String;

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

    invoke-static/range {v0 .. v7}, Lb/v;->a(Ljava/lang/String;IILjava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lb/v;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

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

    invoke-static {v3, p1}, Lb/v;->a(Ljava/lang/String;Z)Ljava/lang/String;

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

.method private static a(Lc/c;Ljava/lang/String;IILjava/lang/String;ZZZZ)V
    .registers 15

    const/4 v0, 0x0

    :goto_1
    if-ge p2, p3, :cond_87

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p5, :cond_19

    const/16 v2, 0x9

    if-eq v1, v2, :cond_80

    const/16 v2, 0xa

    if-eq v1, v2, :cond_80

    const/16 v2, 0xc

    if-eq v1, v2, :cond_80

    const/16 v2, 0xd

    if-eq v1, v2, :cond_80

    :cond_19
    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2a

    if-eqz p7, :cond_2a

    if-eqz p5, :cond_24

    const-string v2, "+"

    goto :goto_26

    :cond_24
    const-string v2, "%2B"

    :goto_26
    invoke-virtual {p0, v2}, Lc/c;->a(Ljava/lang/String;)Lc/c;

    goto :goto_80

    :cond_2a
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_52

    const/16 v2, 0x7f

    if-eq v1, v2, :cond_52

    const/16 v2, 0x80

    if-lt v1, v2, :cond_3a

    if-nez p8, :cond_52

    :cond_3a
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_52

    if-ne v1, v3, :cond_4e

    if-eqz p5, :cond_52

    if-eqz p6, :cond_4e

    invoke-static {p1, p2, p3}, Lb/v;->a(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_4e

    goto :goto_52

    :cond_4e
    invoke-virtual {p0, v1}, Lc/c;->a(I)Lc/c;

    goto :goto_80

    :cond_52
    :goto_52
    if-nez v0, :cond_59

    new-instance v0, Lc/c;

    invoke-direct {v0}, Lc/c;-><init>()V

    :cond_59
    invoke-virtual {v0, v1}, Lc/c;->a(I)Lc/c;

    :goto_5c
    invoke-virtual {v0}, Lc/c;->d()Z

    move-result v2

    if-nez v2, :cond_80

    invoke-virtual {v0}, Lc/c;->g()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p0, v3}, Lc/c;->b(I)Lc/c;

    sget-object v4, Lb/v;->o:[C

    shr-int/lit8 v5, v2, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {p0, v4}, Lc/c;->b(I)Lc/c;

    sget-object v4, Lb/v;->o:[C

    and-int/lit8 v2, v2, 0xf

    aget-char v2, v4, v2

    invoke-virtual {p0, v2}, Lc/c;->b(I)Lc/c;

    goto :goto_5c

    :cond_80
    :goto_80
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto/16 :goto_1

    :cond_87
    return-void
.end method

.method private static a(Lc/c;Ljava/lang/String;IIZ)V
    .registers 10

    :goto_0
    if-ge p2, p3, :cond_42

    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    const/16 v1, 0x25

    if-ne v0, v1, :cond_2d

    add-int/lit8 v1, p2, 0x2

    if-ge v1, p3, :cond_2d

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lb/v;->a(C)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lb/v;->a(C)I

    move-result v3

    const/4 v4, -0x1

    if-eq v2, v4, :cond_39

    if-eq v3, v4, :cond_39

    shl-int/lit8 p2, v2, 0x4

    add-int/2addr p2, v3

    invoke-virtual {p0, p2}, Lc/c;->b(I)Lc/c;

    move p2, v1

    goto :goto_3c

    :cond_2d
    const/16 v1, 0x2b

    if-ne v0, v1, :cond_39

    if-eqz p4, :cond_39

    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lc/c;->b(I)Lc/c;

    goto :goto_3c

    :cond_39
    invoke-virtual {p0, v0}, Lc/c;->a(I)Lc/c;

    :goto_3c
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_0

    :cond_42
    return-void
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

    invoke-static {p1}, Lb/v;->a(C)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_24

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0}, Lb/v;->a(C)I

    move-result p0

    if-eq p0, v1, :cond_24

    return p2

    :cond_24
    const/4 p0, 0x0

    return p0
.end method

.method private b(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    if-nez v0, :cond_a

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    :cond_a
    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
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

.method public static b(Ljava/lang/StringBuilder;Ljava/util/List;)V
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

.method public static d(Ljava/lang/String;)Lb/v;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Lb/v$a;

    invoke-direct {v0}, Lb/v$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lb/v$a;->a(Lb/v;Ljava/lang/String;)Lb/v$a$a;

    move-result-object p0

    sget-object v2, Lb/v$a$a;->SUCCESS:Lb/v$a$a;

    if-ne p0, v2, :cond_13

    invoke-virtual {v0}, Lb/v$a;->b()Lb/v;

    move-result-object p0

    return-object p0

    :cond_13
    return-object v1
.end method

.method static e(Ljava/lang/String;)Lb/v;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    new-instance v0, Lb/v$a;

    invoke-direct {v0}, Lb/v$a;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lb/v$a;->a(Lb/v;Ljava/lang/String;)Lb/v$a$a;

    move-result-object v1

    sget-object v2, Lb/v$1;->a:[I

    invoke-virtual {v1}, Lb/v$a$a;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4a

    new-instance v0, Ljava/net/MalformedURLException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Invalid URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_31
    new-instance v0, Ljava/net/UnknownHostException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid host: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_45
    invoke-virtual {v0}, Lb/v$a;->b()Lb/v;

    move-result-object p0

    return-object p0

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_45
        :pswitch_31
    .end packed-switch
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x0

    iget-object v2, p0, Lb/v;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_d
    if-ge v0, v2, :cond_29

    iget-object v3, p0, Lb/v;->n:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    iget-object p1, p0, Lb/v;->n:Ljava/util/List;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_26
    add-int/lit8 v0, v0, 0x2

    goto :goto_d

    :cond_29
    return-object v1
.end method

.method private g(Ljava/lang/String;)Ljava/util/List;
    .registers 7
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

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lb/v;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_15
    if-ge v1, v2, :cond_31

    iget-object v3, p0, Lb/v;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    iget-object v3, p0, Lb/v;->n:Ljava/util/List;

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2e
    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    :cond_31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private h(Ljava/lang/String;)Lb/v;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    invoke-virtual {p0, p1}, Lb/v;->c(Ljava/lang/String;)Lb/v$a;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lb/v$a;->b()Lb/v;

    move-result-object p1

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method private i()Ljava/net/URL;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    :catch_8
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private j()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/v;->k:Ljava/lang/String;

    return-object v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/v;->p:Ljava/lang/String;

    return-object v0
.end method

.method private l()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/v;->q:Ljava/lang/String;

    return-object v0
.end method

.method private m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/v;->l:Ljava/lang/String;

    return-object v0
.end method

.method private n()I
    .registers 2

    iget v0, p0, Lb/v;->m:I

    return v0
.end method

.method private o()I
    .registers 2

    iget-object v0, p0, Lb/v;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method private p()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/v;->r:Ljava/util/List;

    return-object v0
.end method

.method private q()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lb/v;->n:Ljava/util/List;

    invoke-static {v0, v1}, Lb/v;->b(Ljava/lang/StringBuilder;Ljava/util/List;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()I
    .registers 2

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private s()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_9
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v1, 0x0

    iget-object v2, p0, Lb/v;->n:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_15
    if-ge v1, v2, :cond_23

    iget-object v3, p0, Lb/v;->n:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x2

    goto :goto_15

    :cond_23
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private t()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/v;->s:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private u()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/v;->s:Ljava/lang/String;

    return-object v0
.end method

.method private v()Lb/v$a;
    .registers 4

    new-instance v0, Lb/v$a;

    invoke-direct {v0}, Lb/v$a;-><init>()V

    iget-object v1, p0, Lb/v;->k:Ljava/lang/String;

    iput-object v1, v0, Lb/v$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lb/v;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lb/v;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lb/v;->l:Ljava/lang/String;

    iput-object v1, v0, Lb/v$a;->d:Ljava/lang/String;

    iget v1, p0, Lb/v;->m:I

    iget-object v2, p0, Lb/v;->k:Ljava/lang/String;

    invoke-static {v2}, Lb/v;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Lb/v;->m:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Lb/v$a;->e:I

    iget-object v1, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Lb/v;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lb/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/v$a;->a(Ljava/lang/String;)Lb/v$a;

    iget-object v1, p0, Lb/v;->s:Ljava/lang/String;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    goto :goto_54

    :cond_44
    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_54
    iput-object v1, v0, Lb/v$a;->h:Ljava/lang/String;

    return-object v0
.end method

.method private w()Ljava/lang/String;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/v;->l:Ljava/lang/String;

    invoke-static {v0}, Lb/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    :cond_a
    invoke-static {}, Lb/a/i/a;->a()Lb/a/i/a;

    move-result-object v0

    iget-object v1, p0, Lb/v;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/i/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/net/URI;
    .registers 12

    new-instance v0, Lb/v$a;

    invoke-direct {v0}, Lb/v$a;-><init>()V

    iget-object v1, p0, Lb/v;->k:Ljava/lang/String;

    iput-object v1, v0, Lb/v$a;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lb/v;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lb/v;->d()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->c:Ljava/lang/String;

    iget-object v1, p0, Lb/v;->l:Ljava/lang/String;

    iput-object v1, v0, Lb/v$a;->d:Ljava/lang/String;

    iget v1, p0, Lb/v;->m:I

    iget-object v2, p0, Lb/v;->k:Ljava/lang/String;

    invoke-static {v2}, Lb/v;->a(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_26

    iget v1, p0, Lb/v;->m:I

    goto :goto_27

    :cond_26
    const/4 v1, -0x1

    :goto_27
    iput v1, v0, Lb/v$a;->e:I

    iget-object v1, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-virtual {p0}, Lb/v;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lb/v;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/v$a;->a(Ljava/lang/String;)Lb/v$a;

    iget-object v1, p0, Lb/v;->s:Ljava/lang/String;

    if-nez v1, :cond_44

    const/4 v1, 0x0

    goto :goto_54

    :cond_44
    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_54
    iput-object v1, v0, Lb/v$a;->h:Ljava/lang/String;

    iget-object v1, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5e
    if-ge v3, v1, :cond_7b

    iget-object v4, v0, Lb/v$a;->f:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    iget-object v4, v0, Lb/v$a;->f:Ljava/util/List;

    const-string v6, "[]"

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-static/range {v5 .. v10}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    :cond_7b
    iget-object v1, v0, Lb/v$a;->g:Ljava/util/List;

    if-eqz v1, :cond_a4

    iget-object v1, v0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_85
    if-ge v2, v1, :cond_a4

    iget-object v3, v0, Lb/v$a;->g:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_a1

    iget-object v3, v0, Lb/v$a;->g:Ljava/util/List;

    const-string v5, "\\^`{|}"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static/range {v4 .. v9}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_a4
    iget-object v1, v0, Lb/v$a;->h:Ljava/lang/String;

    if-eqz v1, :cond_b6

    iget-object v2, v0, Lb/v$a;->h:Ljava/lang/String;

    const-string v3, " \"#<>\\^`{|}"

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->h:Ljava/lang/String;

    :cond_b6
    invoke-virtual {v0}, Lb/v$a;->toString()Ljava/lang/String;

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

.method public final b()Z
    .registers 3

    iget-object v0, p0, Lb/v;->k:Ljava/lang/String;

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final c(Ljava/lang/String;)Lb/v$a;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    new-instance v0, Lb/v$a;

    invoke-direct {v0}, Lb/v$a;-><init>()V

    invoke-virtual {v0, p0, p1}, Lb/v$a;->a(Lb/v;Ljava/lang/String;)Lb/v$a$a;

    move-result-object p1

    sget-object v1, Lb/v$a$a;->SUCCESS:Lb/v$a$a;

    if-ne p1, v1, :cond_e

    return-object v0

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lb/v;->p:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lb/v;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, ":@"

    invoke-static {v1, v0, v2, v3}, Lb/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lb/v;->q:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    return-object v0

    :cond_b
    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    const/16 v1, 0x3a

    iget-object v2, p0, Lb/v;->k:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    iget-object v1, p0, Lb/v;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "?#"

    invoke-static {v1, v0, v2, v3}, Lb/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lb/v;

    if-eqz v0, :cond_12

    check-cast p1, Lb/v;

    iget-object p1, p1, Lb/v;->t:Ljava/lang/String;

    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    iget-object v1, p0, Lb/v;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x3

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    iget-object v3, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "?#"

    invoke-static {v1, v0, v3, v4}, Lb/a/c;->a(Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :goto_23
    if-ge v0, v1, :cond_38

    add-int/lit8 v0, v0, 0x1

    iget-object v4, p0, Lb/v;->t:Ljava/lang/String;

    invoke-static {v4, v0, v1, v2}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v4

    iget-object v5, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_23

    :cond_38
    return-object v3
.end method

.method public final g()Ljava/lang/String;
    .registers 6
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/v;->n:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lb/v;->t:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x23

    invoke-static {v1, v2, v3, v4}, Lb/a/c;->a(Ljava/lang/String;IIC)I

    move-result v1

    iget-object v2, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 9

    const-string v0, "/..."

    invoke-virtual {p0, v0}, Lb/v;->c(Ljava/lang/String;)Lb/v$a;

    move-result-object v0

    const-string v1, ""

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->b:Ljava/lang/String;

    const-string v2, ""

    const-string v3, " \"\':;<=>@[]^`{}|/\\?#"

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lb/v$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Lb/v$a;->b()Lb/v;

    move-result-object v0

    invoke-virtual {v0}, Lb/v;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final hashCode()I
    .registers 2

    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lb/v;->t:Ljava/lang/String;

    return-object v0
.end method
