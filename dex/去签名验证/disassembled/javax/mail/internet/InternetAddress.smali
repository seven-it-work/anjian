.class public Ljavax/mail/internet/InternetAddress;
.super Ljavax/mail/Address;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final rfc822phrase:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6830565bb828acb7L

.field private static final specialsNoDot:Ljava/lang/String; = "()<>,;:\\\"[]@"

.field private static final specialsNoDotNoAt:Ljava/lang/String; = "()<>,;:\\\"[]"


# instance fields
.field protected address:Ljava/lang/String;

.field protected encodedPersonal:Ljava/lang/String;

.field protected personal:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const-string v0, "()<>@,;:\\\"\t .[]"

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v1

    array-length v2, v1

    if-eq v2, v0, :cond_13

    new-instance v0, Ljavax/mail/internet/AddressException;

    const-string v1, "Illegal address"

    invoke-direct {v0, v1, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_13
    const/4 p1, 0x0

    aget-object v0, v1, p1

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    aget-object v0, v1, p1

    iget-object v0, v0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    aget-object p1, v1, p1

    iget-object p1, p1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/mail/Address;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {p0, p2, p3}, Ljavax/mail/internet/InternetAddress;->setPersonal(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_b

    iget-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 p2, 0x1

    invoke-static {p1, p2, p2}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    :cond_b
    return-void
.end method

.method private static checkAddress(Ljava/lang/String;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_9

    return-void

    :cond_9
    const/16 v0, 0x40

    const/4 v1, 0x0

    if-eqz p1, :cond_33

    :goto_e
    const-string p1, ",:"

    invoke-static {p0, p1, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_17

    goto :goto_33

    :cond_17
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_25

    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal route-addr"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_25
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_30

    add-int/lit8 v1, p1, 0x1

    goto :goto_33

    :cond_30
    add-int/lit8 v1, p1, 0x1

    goto :goto_e

    :cond_33
    :goto_33
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-ltz p1, :cond_5e

    if-ne p1, v1, :cond_43

    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Missing local name"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    if-ne p1, p2, :cond_53

    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Missing domain"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_53
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_6a

    :cond_5e
    if-eqz p2, :cond_68

    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Missing final \'@domain\'"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_68
    const/4 p1, 0x0

    move-object p2, p0

    :goto_6a
    const-string v0, " \t\n\r"

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_7a

    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal whitespace in address"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_7a
    const-string v0, "()<>,;:\\\"[]@"

    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    if-ltz p2, :cond_8a

    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal character in local name"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_8a
    if-eqz p1, :cond_a4

    const/16 p2, 0x5b

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    if-gez p2, :cond_a4

    const-string p2, "()<>,;:\\\"[]@"

    invoke-static {p1, p2}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_a4

    new-instance p1, Ljavax/mail/internet/AddressException;

    const-string p2, "Illegal character in domain"

    invoke-direct {p1, p2, p0}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_a4
    return-void
.end method

.method public static getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_15

    :try_start_3
    const-string p0, "user.name"

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    move-object v2, p0

    move-object p0, v1

    move-object v1, v0

    goto :goto_5a

    :cond_15
    const-string v1, "mail.from"

    invoke-virtual {p0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_58

    const-string v2, "mail.user"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_31

    :cond_2b
    const-string v2, "user.name"

    invoke-virtual {p0, v2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_31
    if-eqz v2, :cond_39

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3f

    :cond_39
    const-string v2, "user.name"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_3f
    const-string v3, "mail.host"

    invoke-virtual {p0, v3}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5a

    :cond_4d
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object v3

    if-eqz v3, :cond_5a

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p0

    goto :goto_5a

    :cond_58
    move-object p0, v0

    move-object v2, p0

    :cond_5a
    :goto_5a
    if-nez v1, :cond_81

    if-eqz v2, :cond_81

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_81

    if-eqz p0, :cond_81

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_81

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_81
    if-eqz v1, :cond_89

    new-instance p0, Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, v1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_88} :catch_89
    .catch Ljavax/mail/internet/AddressException; {:try_start_3 .. :try_end_88} :catch_89
    .catch Ljava/net/UnknownHostException; {:try_start_3 .. :try_end_88} :catch_89

    return-object p0

    :catch_89
    :cond_89
    return-object v0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static indexOfAny(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 6

    const/4 v0, -0x1

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_5
    if-lt p2, v1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p0, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2
    :try_end_10
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_10} :catch_16

    if-ltz v2, :cond_13

    return p2

    :cond_13
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :catch_16
    return v0
.end method

.method private isSimple()Z
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, "()<>,;:\\\"[]"

    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->indexOfAny(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_10

    const/4 v0, 0x0

    return v0

    :cond_10
    const/4 v0, 0x1

    return v0
.end method

.method private static lengthOfFirstSegment(Ljava/lang/String;)I
    .registers 3

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    return v0

    :cond_a
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    return p0
.end method

.method private static lengthOfLastSegment(Ljava/lang/String;I)I
    .registers 4

    const-string v0, "\r\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x2

    return p0

    :cond_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;
    .registers 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v14, -0x1

    :goto_15
    if-lt v7, v3, :cond_77

    if-ltz v8, :cond_6d

    if-ne v9, v6, :cond_1c

    goto :goto_1d

    :cond_1c
    move v7, v9

    :goto_1d
    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    if-nez v12, :cond_4b

    if-nez p1, :cond_4b

    if-eqz p2, :cond_2c

    goto :goto_4b

    :cond_2c
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_31
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_38

    goto :goto_6d

    :cond_38
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5, v5}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v1, v0}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_31

    :cond_4b
    :goto_4b
    if-nez p1, :cond_4f

    if-nez p2, :cond_52

    :cond_4f
    invoke-static {v3, v11, v5}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    :cond_52
    new-instance v1, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v1}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v1, v3}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-ltz v13, :cond_6a

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    :cond_6a
    invoke-virtual {v4, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6d
    :goto_6d
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v4, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object v0

    :cond_77
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v5, 0x22

    const/16 v6, 0x5c

    const/16 v16, 0x1

    sparse-switch v15, :sswitch_data_21e

    const/4 v5, -0x1

    const/4 v15, 0x0

    if-ne v8, v5, :cond_218

    move v8, v7

    goto/16 :goto_218

    :goto_8b
    :sswitch_8b
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_90

    goto :goto_98

    :cond_90
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_254

    goto :goto_8b

    :goto_98
    :pswitch_98
    if-lt v7, v3, :cond_a2

    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \']\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_a2
    const/4 v5, -0x1

    goto/16 :goto_13a

    :pswitch_a5
    add-int/lit8 v7, v7, 0x1

    goto :goto_8b

    :sswitch_a8
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'<\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :sswitch_b0
    if-eqz v11, :cond_ba

    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Extra route-addr"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_ba
    if-nez v10, :cond_c3

    if-ltz v8, :cond_bf

    move v14, v7

    :cond_bf
    add-int/lit8 v9, v7, 0x1

    move v11, v8

    goto :goto_c5

    :cond_c3
    move v9, v8

    move v11, v13

    :goto_c5
    move v15, v14

    const/4 v8, 0x0

    :goto_c7
    add-int/lit8 v7, v7, 0x1

    if-lt v7, v3, :cond_cc

    goto :goto_df

    :cond_cc
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v5, :cond_fd

    const/16 v13, 0x3e

    if-eq v12, v13, :cond_dc

    if-eq v12, v6, :cond_d9

    goto :goto_c7

    :cond_d9
    add-int/lit8 v7, v7, 0x1

    goto :goto_c7

    :cond_dc
    if-eqz v8, :cond_df

    goto :goto_c7

    :cond_df
    :goto_df
    if-lt v7, v3, :cond_f3

    if-eqz v8, :cond_eb

    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'\"\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_eb
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'>\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_f3
    move v8, v9

    move v13, v11

    move v14, v15

    const/4 v5, -0x1

    const/4 v11, 0x1

    const/4 v12, 0x1

    const/4 v15, 0x0

    move v9, v7

    goto/16 :goto_218

    :cond_fd
    xor-int/lit8 v8, v8, 0x1

    goto :goto_c7

    :sswitch_100
    const/4 v5, -0x1

    if-ne v8, v5, :cond_104

    move v8, v7

    :cond_104
    if-nez v10, :cond_10e

    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Illegal semicolon, not in group"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_10e
    if-ne v8, v5, :cond_111

    move v8, v7

    :cond_111
    new-instance v5, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v5}, Ljavax/mail/internet/InternetAddress;-><init>()V

    add-int/lit8 v6, v7, 0x1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v5, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    goto :goto_148

    :sswitch_12b
    if-eqz v10, :cond_135

    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Nested group"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_135
    const/4 v5, -0x1

    if-ne v8, v5, :cond_139

    move v8, v7

    :cond_139
    const/4 v10, 0x1

    :goto_13a
    const/4 v12, 0x1

    goto :goto_143

    :sswitch_13c
    const/4 v5, -0x1

    if-ne v8, v5, :cond_146

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_143
    const/4 v15, 0x0

    goto/16 :goto_218

    :cond_146
    if-eqz v10, :cond_14a

    :goto_148
    const/4 v11, 0x0

    goto :goto_143

    :cond_14a
    if-ne v9, v5, :cond_14d

    move v9, v7

    :cond_14d
    invoke-virtual {v0, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    if-nez v12, :cond_17d

    if-nez p1, :cond_17d

    if-eqz p2, :cond_15c

    goto :goto_17d

    :cond_15c
    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_161
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_169

    const/4 v15, 0x0

    goto :goto_1a5

    :cond_169
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v8}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    new-instance v8, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v8}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v8, v5}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    invoke-virtual {v4, v8}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_161

    :cond_17d
    :goto_17d
    if-nez p1, :cond_184

    if-nez p2, :cond_182

    goto :goto_184

    :cond_182
    const/4 v15, 0x0

    goto :goto_188

    :cond_184
    :goto_184
    const/4 v15, 0x0

    invoke-static {v5, v11, v15}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    :goto_188
    new-instance v6, Ljavax/mail/internet/InternetAddress;

    invoke-direct {v6}, Ljavax/mail/internet/InternetAddress;-><init>()V

    invoke-virtual {v6, v5}, Ljavax/mail/internet/InternetAddress;->setAddress(Ljava/lang/String;)V

    if-ltz v13, :cond_1a2

    invoke-virtual {v0, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljavax/mail/internet/InternetAddress;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v6, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    const/4 v13, -0x1

    const/4 v14, -0x1

    :cond_1a2
    invoke-virtual {v4, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_1a5
    const/4 v5, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto/16 :goto_218

    :sswitch_1ac
    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'(\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :sswitch_1b4
    const/4 v15, 0x0

    if-ltz v8, :cond_1bc

    const/4 v5, -0x1

    if-ne v9, v5, :cond_1bd

    move v9, v7

    goto :goto_1bd

    :cond_1bc
    const/4 v5, -0x1

    :cond_1bd
    :goto_1bd
    if-ne v13, v5, :cond_1c1

    add-int/lit8 v13, v7, 0x1

    :cond_1c1
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x1

    :goto_1c4
    if-ge v7, v3, :cond_1de

    if-gtz v5, :cond_1c9

    goto :goto_1de

    :cond_1c9
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-eq v12, v6, :cond_1d9

    packed-switch v12, :pswitch_data_25c

    goto :goto_1db

    :pswitch_1d3
    add-int/lit8 v5, v5, -0x1

    goto :goto_1db

    :pswitch_1d6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1db

    :cond_1d9
    add-int/lit8 v7, v7, 0x1

    :goto_1db
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c4

    :cond_1de
    :goto_1de
    if-lez v5, :cond_1e8

    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \')\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_1e8
    add-int/lit8 v7, v7, -0x1

    const/4 v5, -0x1

    if-ne v14, v5, :cond_214

    move v14, v7

    goto :goto_214

    :sswitch_1ef
    const/4 v5, -0x1

    const/4 v15, 0x0

    if-ne v8, v5, :cond_1f4

    move v8, v7

    :cond_1f4
    add-int/lit8 v7, v7, 0x1

    :goto_1f6
    if-lt v7, v3, :cond_1f9

    goto :goto_209

    :cond_1f9
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v12, 0x22

    if-eq v5, v12, :cond_209

    if-eq v5, v6, :cond_204

    goto :goto_206

    :cond_204
    add-int/lit8 v7, v7, 0x1

    :goto_206
    add-int/lit8 v7, v7, 0x1

    goto :goto_1f6

    :cond_209
    :goto_209
    if-lt v7, v3, :cond_213

    new-instance v1, Ljavax/mail/internet/AddressException;

    const-string v2, "Missing \'\"\'"

    invoke-direct {v1, v2, v0, v7}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1

    :cond_213
    const/4 v5, -0x1

    :cond_214
    :goto_214
    const/4 v12, 0x1

    goto :goto_218

    :sswitch_216
    const/4 v15, 0x0

    const/4 v5, -0x1

    :cond_218
    :goto_218
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    const/4 v6, -0x1

    goto/16 :goto_15

    :sswitch_data_21e
    .sparse-switch
        0x9 -> :sswitch_216
        0xa -> :sswitch_216
        0xd -> :sswitch_216
        0x20 -> :sswitch_216
        0x22 -> :sswitch_1ef
        0x28 -> :sswitch_1b4
        0x29 -> :sswitch_1ac
        0x2c -> :sswitch_13c
        0x3a -> :sswitch_12b
        0x3b -> :sswitch_100
        0x3c -> :sswitch_b0
        0x3e -> :sswitch_a8
        0x5b -> :sswitch_8b
    .end sparse-switch

    :pswitch_data_254
    .packed-switch 0x5c
        :pswitch_a5
        :pswitch_98
    .end packed-switch

    :pswitch_data_25c
    .packed-switch 0x28
        :pswitch_1d6
        :pswitch_1d3
    .end packed-switch
.end method

.method public static parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;ZZ)[Ljavax/mail/internet/InternetAddress;

    move-result-object p0

    return-object p0
.end method

.method private static quotePhrase(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    const/16 v4, 0x22

    if-lt v2, v0, :cond_22

    if-eqz v3, :cond_21

    new-instance v1, Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_21
    return-object p0

    :cond_22
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5c

    if-eq v5, v4, :cond_4d

    if-ne v5, v6, :cond_2d

    goto :goto_4d

    :cond_2d
    const/16 v4, 0x20

    if-ge v5, v4, :cond_3d

    const/16 v4, 0xd

    if-eq v5, v4, :cond_3d

    const/16 v4, 0xa

    if-eq v5, v4, :cond_3d

    const/16 v4, 0x9

    if-ne v5, v4, :cond_49

    :cond_3d
    const/16 v4, 0x7f

    if-ge v5, v4, :cond_49

    sget-object v4, Ljavax/mail/internet/InternetAddress;->rfc822phrase:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4a

    :cond_49
    const/4 v3, 0x1

    :cond_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_4d
    :goto_4d
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v0, 0x3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_57
    if-lt v1, v0, :cond_61

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_61
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v4, :cond_69

    if-ne v3, v6, :cond_6c

    :cond_69
    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_57
.end method

.method public static toString([Ljavax/mail/Address;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([Ljavax/mail/Address;I)Ljava/lang/String;
    .registers 7

    if-eqz p0, :cond_3d

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_3d

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_c
    array-length v2, p0

    if-lt v1, v2, :cond_14

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    if-eqz v1, :cond_1d

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x2

    :cond_1d
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljavax/mail/internet/InternetAddress;->lengthOfFirstSegment(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, p1

    const/16 v4, 0x4c

    if-le v3, v4, :cond_33

    const-string p1, "\r\n\t"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0x8

    :cond_33
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v2, p1}, Ljavax/mail/internet/InternetAddress;->lengthOfLastSegment(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_3d
    :goto_3d
    const/4 p0, 0x0

    return-object p0
.end method

.method private static unquote(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x5c

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_4f

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v3, 0x0

    :goto_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_37

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v0, :cond_4a

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v1

    if-ge v3, v5, :cond_4a

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    :cond_4a
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/2addr v3, v1

    goto :goto_2c

    :cond_4f
    return-object p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .registers 2

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetAddress;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    return-object v0

    :catch_7
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    instance-of v0, p1, Ljavax/mail/internet/InternetAddress;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/4 v2, 0x1

    if-ne p1, v0, :cond_12

    return v2

    :cond_12
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v2

    :cond_1f
    return v1
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    return-object v2

    :cond_e
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_17

    return-object v2

    :cond_17
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1

    return-object p1
.end method

.method public getPersonal()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_19

    :try_start_b
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "rfc822"

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isGroup()Z
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-void
.end method

.method public setPersonal(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz p1, :cond_b

    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void

    :cond_b
    const/4 p1, 0x0

    goto :goto_8
.end method

.method public setPersonal(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    invoke-static {p1, p2, v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void

    :cond_c
    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-nez v0, :cond_10

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    if-eqz v0, :cond_10

    :try_start_8
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->personal:Ljava/lang/String;

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;
    :try_end_10
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_10} :catch_10

    :catch_10
    :cond_10
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->encodedPersonal:Ljava/lang/String;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " <"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_28
    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_4c

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_44

    goto :goto_4c

    :cond_44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_28

    :cond_4c
    :goto_4c
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public toUnicodeString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getPersonal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->quotePhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " <"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->isGroup()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;->isSimple()Z

    move-result v0

    if-eqz v0, :cond_34

    goto :goto_4a

    :cond_34
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4a
    :goto_4a
    iget-object v0, p0, Ljavax/mail/internet/InternetAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public validate()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/mail/internet/InternetAddress;->getAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Ljavax/mail/internet/InternetAddress;->checkAddress(Ljava/lang/String;ZZ)V

    return-void
.end method
