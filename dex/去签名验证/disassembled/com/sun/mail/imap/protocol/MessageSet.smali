.class public Lcom/sun/mail/imap/protocol/MessageSet;
.super Ljava/lang/Object;


# instance fields
.field public end:I

.field public start:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    iput p2, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    return-void
.end method

.method public static createMessageSets([I)[Lcom/sun/mail/imap/protocol/MessageSet;
    .registers 6

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_13

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0

    :cond_13
    new-instance v2, Lcom/sun/mail/imap/protocol/MessageSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/MessageSet;-><init>()V

    aget v3, p0, v1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    array-length v3, p0

    if-lt v1, v3, :cond_22

    goto :goto_2d

    :cond_22
    aget v3, p0, v1

    add-int/lit8 v4, v1, -0x1

    aget v4, p0, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_2d

    goto :goto_1c

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, -0x1

    aget v3, p0, v1

    iput v3, v2, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static size([Lcom/sun/mail/imap/protocol/MessageSet;)I
    .registers 4

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    :goto_5
    array-length v2, p0

    if-lt v0, v2, :cond_9

    return v1

    :cond_9
    aget-object v2, p0, v0

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/MessageSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/MessageSet;)Ljava/lang/String;
    .registers 6

    if-eqz p0, :cond_35

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_35

    :cond_6
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v2, p0

    :goto_d
    aget-object v3, p0, v0

    iget v3, v3, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    aget-object v4, p0, v0

    iget v4, v4, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    if-le v4, v3, :cond_23

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_26

    :cond_23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :goto_26
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_30

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_30
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_35
    :goto_35
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public size()I
    .registers 3

    iget v0, p0, Lcom/sun/mail/imap/protocol/MessageSet;->end:I

    iget v1, p0, Lcom/sun/mail/imap/protocol/MessageSet;->start:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
