.class public Lcom/sun/mail/imap/protocol/UIDSet;
.super Ljava/lang/Object;


# instance fields
.field public end:J

.field public start:J


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    iput-wide p3, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    return-void
.end method

.method public static createUIDSets([J)[Lcom/sun/mail/imap/protocol/UIDSet;
    .registers 12

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :goto_6
    array-length v2, p0

    if-lt v1, v2, :cond_13

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    new-array p0, p0, [Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p0

    :cond_13
    new-instance v2, Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-direct {v2}, Lcom/sun/mail/imap/protocol/UIDSet;-><init>()V

    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    array-length v3, p0

    if-lt v1, v3, :cond_22

    goto :goto_31

    :cond_22
    aget-wide v3, p0, v1

    add-int/lit8 v5, v1, -0x1

    aget-wide v5, p0, v5

    const-wide/16 v7, 0x1

    add-long v9, v5, v7

    cmp-long v5, v3, v9

    if-nez v5, :cond_31

    goto :goto_1c

    :cond_31
    :goto_31
    add-int/lit8 v1, v1, -0x1

    aget-wide v3, p0, v1

    iput-wide v3, v2, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static size([Lcom/sun/mail/imap/protocol/UIDSet;)J
    .registers 8

    const-wide/16 v0, 0x0

    if-nez p0, :cond_5

    return-wide v0

    :cond_5
    const/4 v2, 0x0

    :goto_6
    array-length v3, p0

    if-lt v2, v3, :cond_a

    return-wide v0

    :cond_a
    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/UIDSet;->size()J

    move-result-wide v3

    add-long v5, v0, v3

    add-int/lit8 v2, v2, 0x1

    move-wide v0, v5

    goto :goto_6
.end method

.method public static toString([Lcom/sun/mail/imap/protocol/UIDSet;)Ljava/lang/String;
    .registers 9

    if-eqz p0, :cond_37

    array-length v0, p0

    if-nez v0, :cond_6

    goto :goto_37

    :cond_6
    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    array-length v2, p0

    :goto_d
    aget-object v3, p0, v0

    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    aget-object v5, p0, v0

    iget-wide v5, v5, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    cmp-long v7, v5, v3

    if-lez v7, :cond_25

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const/16 v3, 0x3a

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    goto :goto_28

    :cond_25
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    :goto_28
    add-int/lit8 v0, v0, 0x1

    if-ge v0, v2, :cond_32

    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_d

    :cond_32
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_37
    :goto_37
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public size()J
    .registers 7

    iget-wide v0, p0, Lcom/sun/mail/imap/protocol/UIDSet;->end:J

    iget-wide v2, p0, Lcom/sun/mail/imap/protocol/UIDSet;->start:J

    sub-long v4, v0, v2

    const-wide/16 v0, 0x1

    add-long v2, v4, v0

    return-wide v2
.end method
