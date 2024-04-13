.class public final Lb/a/j/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field public static final a:Lb/a/j/d;

.field private static final b:I = 0x2

.field private static final c:I = 0x7


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/a/j/d;

    invoke-direct {v0}, Lb/a/j/d;-><init>()V

    sput-object v0, Lb/a/j/d;->a:Lb/a/j/d;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/security/cert/X509Certificate;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x7

    invoke-static {p0, v0}, Lb/a/j/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lb/a/j/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1
.end method

.method private static a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_5
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object p0

    if-nez p0, :cond_10

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_10
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_14
    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_45

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_14

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_14

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_14

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_44
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_5 .. :try_end_44} :catch_46

    goto :goto_14

    :cond_45
    return-object v0

    :catch_46
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p0, :cond_bc

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bc

    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bc

    const-string v1, ".."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return v0

    :cond_1a
    if-eqz p1, :cond_bc

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_bc

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_bc

    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_33

    return v0

    :cond_33
    const-string v1, "."

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/16 v2, 0x2e

    if-nez v1, :cond_4c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4c
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_63
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "*"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_76

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_76
    const-string v1, "*."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_bc

    const/16 v1, 0x2a

    const/4 v3, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_89

    return v0

    :cond_89
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v1, v5, :cond_94

    return v0

    :cond_94
    const-string v1, "*."

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    return v0

    :cond_9d
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a8

    return v0

    :cond_a8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v1, p1

    if-lez v1, :cond_bb

    sub-int/2addr v1, v3

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result p0

    if-eq p0, v4, :cond_bb

    return v0

    :cond_bb
    return v3

    :cond_bc
    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 12

    invoke-static {p0}, Lb/a/c;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_25

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lb/a/j/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v0, :cond_24

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    return v2

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_24
    return v1

    :cond_25
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lb/a/j/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_36
    if-ge v4, v3, :cond_49

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lb/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_45

    return v2

    :cond_45
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_36

    :cond_49
    if-nez v5, :cond_17a

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    new-instance v0, Lb/a/j/c;

    invoke-direct {v0, p1}, Lb/a/j/c;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p1, "cn"

    iput v1, v0, Lb/a/j/c;->c:I

    iput v1, v0, Lb/a/j/c;->d:I

    iput v1, v0, Lb/a/j/c;->e:I

    iput v1, v0, Lb/a/j/c;->f:I

    iget-object v3, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    iput-object v3, v0, Lb/a/j/c;->g:[C

    invoke-virtual {v0}, Lb/a/j/c;->a()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_6f

    goto/16 :goto_11e

    :cond_6f
    const-string v5, ""

    iget v6, v0, Lb/a/j/c;->c:I

    iget v7, v0, Lb/a/j/c;->b:I

    if-ne v6, v7, :cond_79

    goto/16 :goto_11e

    :cond_79
    iget-object v6, v0, Lb/a/j/c;->g:[C

    iget v7, v0, Lb/a/j/c;->c:I

    aget-char v6, v6, v7

    sparse-switch v6, :sswitch_data_17c

    invoke-virtual {v0}, Lb/a/j/c;->c()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_110

    :sswitch_88
    invoke-virtual {v0}, Lb/a/j/c;->b()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_110

    :sswitch_8e
    iget v5, v0, Lb/a/j/c;->c:I

    add-int/2addr v5, v2

    iput v5, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->c:I

    iput v5, v0, Lb/a/j/c;->d:I

    iget v5, v0, Lb/a/j/c;->d:I

    :goto_99
    iput v5, v0, Lb/a/j/c;->e:I

    iget v5, v0, Lb/a/j/c;->c:I

    iget v6, v0, Lb/a/j/c;->b:I

    if-ne v5, v6, :cond_b7

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end of DN: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b7
    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x22

    if-ne v5, v6, :cond_e6

    :goto_c1
    iget v5, v0, Lb/a/j/c;->c:I

    add-int/2addr v5, v2

    iput v5, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->c:I

    iget v6, v0, Lb/a/j/c;->b:I

    if-ge v5, v6, :cond_d7

    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_d7

    goto :goto_c1

    :cond_d7
    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lb/a/j/c;->g:[C

    iget v7, v0, Lb/a/j/c;->d:I

    iget v8, v0, Lb/a/j/c;->e:I

    iget v9, v0, Lb/a/j/c;->d:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    goto :goto_110

    :cond_e6
    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_fb

    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->e:I

    invoke-virtual {v0}, Lb/a/j/c;->d()C

    move-result v7

    aput-char v7, v5, v6

    goto :goto_107

    :cond_fb
    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->e:I

    iget-object v7, v0, Lb/a/j/c;->g:[C

    iget v8, v0, Lb/a/j/c;->c:I

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    :goto_107
    iget v5, v0, Lb/a/j/c;->c:I

    add-int/2addr v5, v2

    iput v5, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->e:I

    add-int/2addr v5, v2

    goto :goto_99

    :goto_110
    :sswitch_110
    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_118

    move-object v4, v5

    goto :goto_11e

    :cond_118
    iget v3, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->b:I

    if-lt v3, v5, :cond_125

    :goto_11e
    if-eqz v4, :cond_17a

    invoke-static {p0, v4}, Lb/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_125
    iget-object v3, v0, Lb/a/j/c;->g:[C

    iget v5, v0, Lb/a/j/c;->c:I

    aget-char v3, v3, v5

    const/16 v5, 0x2c

    if-eq v3, v5, :cond_159

    iget-object v3, v0, Lb/a/j/c;->g:[C

    iget v5, v0, Lb/a/j/c;->c:I

    aget-char v3, v3, v5

    const/16 v5, 0x3b

    if-eq v3, v5, :cond_159

    iget-object v3, v0, Lb/a/j/c;->g:[C

    iget v5, v0, Lb/a/j/c;->c:I

    aget-char v3, v3, v5

    const/16 v5, 0x2b

    if-eq v3, v5, :cond_159

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_159
    iget v3, v0, Lb/a/j/c;->c:I

    add-int/2addr v3, v2

    iput v3, v0, Lb/a/j/c;->c:I

    invoke-virtual {v0}, Lb/a/j/c;->a()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_6f

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_17a
    return v1

    nop

    :sswitch_data_17c
    .sparse-switch
        0x22 -> :sswitch_8e
        0x23 -> :sswitch_88
        0x2b -> :sswitch_110
        0x2c -> :sswitch_110
        0x3b -> :sswitch_110
    .end sparse-switch
.end method

.method private static b(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 6

    const/4 v0, 0x7

    invoke-static {p1, v0}, Lb/a/j/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_1e

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const/4 p0, 0x1

    return p0

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_1e
    return v1
.end method

.method private static c(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z
    .registers 12

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lb/a/j/d;->a(Ljava/security/cert/X509Certificate;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_13
    if-ge v4, v1, :cond_26

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {p0, v5}, Lb/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_22

    return v3

    :cond_22
    add-int/lit8 v4, v4, 0x1

    const/4 v5, 0x1

    goto :goto_13

    :cond_26
    if-nez v5, :cond_157

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object p1

    new-instance v0, Lb/a/j/c;

    invoke-direct {v0, p1}, Lb/a/j/c;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    const-string p1, "cn"

    iput v2, v0, Lb/a/j/c;->c:I

    iput v2, v0, Lb/a/j/c;->d:I

    iput v2, v0, Lb/a/j/c;->e:I

    iput v2, v0, Lb/a/j/c;->f:I

    iget-object v1, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, v0, Lb/a/j/c;->g:[C

    invoke-virtual {v0}, Lb/a/j/c;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    if-nez v1, :cond_4c

    goto/16 :goto_fb

    :cond_4c
    const-string v5, ""

    iget v6, v0, Lb/a/j/c;->c:I

    iget v7, v0, Lb/a/j/c;->b:I

    if-ne v6, v7, :cond_56

    goto/16 :goto_fb

    :cond_56
    iget-object v6, v0, Lb/a/j/c;->g:[C

    iget v7, v0, Lb/a/j/c;->c:I

    aget-char v6, v6, v7

    sparse-switch v6, :sswitch_data_158

    invoke-virtual {v0}, Lb/a/j/c;->c()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ed

    :sswitch_65
    invoke-virtual {v0}, Lb/a/j/c;->b()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_ed

    :sswitch_6b
    iget v5, v0, Lb/a/j/c;->c:I

    add-int/2addr v5, v3

    iput v5, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->c:I

    iput v5, v0, Lb/a/j/c;->d:I

    iget v5, v0, Lb/a/j/c;->d:I

    :goto_76
    iput v5, v0, Lb/a/j/c;->e:I

    iget v5, v0, Lb/a/j/c;->c:I

    iget v6, v0, Lb/a/j/c;->b:I

    if-ne v5, v6, :cond_94

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected end of DN: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_94
    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x22

    if-ne v5, v6, :cond_c3

    :goto_9e
    iget v5, v0, Lb/a/j/c;->c:I

    add-int/2addr v5, v3

    iput v5, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->c:I

    iget v6, v0, Lb/a/j/c;->b:I

    if-ge v5, v6, :cond_b4

    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x20

    if-ne v5, v6, :cond_b4

    goto :goto_9e

    :cond_b4
    new-instance v5, Ljava/lang/String;

    iget-object v6, v0, Lb/a/j/c;->g:[C

    iget v7, v0, Lb/a/j/c;->d:I

    iget v8, v0, Lb/a/j/c;->e:I

    iget v9, v0, Lb/a/j/c;->d:I

    sub-int/2addr v8, v9

    invoke-direct {v5, v6, v7, v8}, Ljava/lang/String;-><init>([CII)V

    goto :goto_ed

    :cond_c3
    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->c:I

    aget-char v5, v5, v6

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_d8

    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->e:I

    invoke-virtual {v0}, Lb/a/j/c;->d()C

    move-result v7

    aput-char v7, v5, v6

    goto :goto_e4

    :cond_d8
    iget-object v5, v0, Lb/a/j/c;->g:[C

    iget v6, v0, Lb/a/j/c;->e:I

    iget-object v7, v0, Lb/a/j/c;->g:[C

    iget v8, v0, Lb/a/j/c;->c:I

    aget-char v7, v7, v8

    aput-char v7, v5, v6

    :goto_e4
    iget v5, v0, Lb/a/j/c;->c:I

    add-int/2addr v5, v3

    iput v5, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->e:I

    add-int/2addr v5, v3

    goto :goto_76

    :goto_ed
    :sswitch_ed
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f5

    move-object v4, v5

    goto :goto_fb

    :cond_f5
    iget v1, v0, Lb/a/j/c;->c:I

    iget v5, v0, Lb/a/j/c;->b:I

    if-lt v1, v5, :cond_102

    :goto_fb
    if-eqz v4, :cond_157

    invoke-static {p0, v4}, Lb/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_102
    iget-object v1, v0, Lb/a/j/c;->g:[C

    iget v5, v0, Lb/a/j/c;->c:I

    aget-char v1, v1, v5

    const/16 v5, 0x2c

    if-eq v1, v5, :cond_136

    iget-object v1, v0, Lb/a/j/c;->g:[C

    iget v5, v0, Lb/a/j/c;->c:I

    aget-char v1, v1, v5

    const/16 v5, 0x3b

    if-eq v1, v5, :cond_136

    iget-object v1, v0, Lb/a/j/c;->g:[C

    iget v5, v0, Lb/a/j/c;->c:I

    aget-char v1, v1, v5

    const/16 v5, 0x2b

    if-eq v1, v5, :cond_136

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_136
    iget v1, v0, Lb/a/j/c;->c:I

    add-int/2addr v1, v3

    iput v1, v0, Lb/a/j/c;->c:I

    invoke-virtual {v0}, Lb/a/j/c;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4c

    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Malformed DN: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lb/a/j/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_157
    return v2

    :sswitch_data_158
    .sparse-switch
        0x22 -> :sswitch_6b
        0x23 -> :sswitch_65
        0x2b -> :sswitch_ed
        0x2c -> :sswitch_ed
        0x3b -> :sswitch_ed
    .end sparse-switch
.end method


# virtual methods
.method public final verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object p2

    aget-object p2, p2, v0

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-static {p1, p2}, Lb/a/j/d;->a(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result p1
    :try_end_d
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_d} :catch_e

    return p1

    :catch_e
    return v0
.end method
