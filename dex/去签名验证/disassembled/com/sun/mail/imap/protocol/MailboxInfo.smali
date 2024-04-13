.class public Lcom/sun/mail/imap/protocol/MailboxInfo;
.super Ljava/lang/Object;


# instance fields
.field public availableFlags:Ljavax/mail/Flags;

.field public first:I

.field public mode:I

.field public permanentFlags:Ljavax/mail/Flags;

.field public recent:I

.field public total:I

.field public uidnext:J

.field public uidvalidity:J


# direct methods
.method public constructor <init>([Lcom/sun/mail/iap/Response;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    iput-wide v1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_17
    array-length v3, p1

    if-lt v2, v3, :cond_34

    iget-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    if-eqz p1, :cond_2c

    new-instance p1, Ljavax/mail/Flags;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    invoke-direct {p1, v0}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags;)V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    return-void

    :cond_2c
    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1}, Ljavax/mail/Flags;-><init>()V

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    :cond_33
    return-void

    :cond_34
    aget-object v3, p1, v2

    if-eqz v3, :cond_da

    aget-object v3, p1, v2

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-eqz v3, :cond_da

    aget-object v3, p1, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v4, "EXISTS"

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    aput-object v0, p1, v2

    goto/16 :goto_da

    :cond_54
    const-string v4, "RECENT"

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_66

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result v3

    iput v3, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    aput-object v0, p1, v2

    goto/16 :goto_da

    :cond_66
    const-string v4, "FLAGS"

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_78

    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v3}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    aput-object v0, p1, v2

    goto :goto_da

    :cond_78
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isUnTagged()Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->isOK()Z

    move-result v4

    if-eqz v4, :cond_da

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_d7

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNSEEN"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readNumber()I

    move-result v4

    iput v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->first:I

    goto :goto_cf

    :cond_a2
    const-string v5, "UIDVALIDITY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    goto :goto_cf

    :cond_b1
    const-string v5, "PERMANENTFLAGS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    new-instance v4, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v4, v3}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    iput-object v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    goto :goto_cf

    :cond_c1
    const-string v5, "UIDNEXT"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readLong()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    :goto_cf
    const/4 v4, 0x1

    goto :goto_d2

    :cond_d1
    const/4 v4, 0x0

    :goto_d2
    if-eqz v4, :cond_d7

    aput-object v0, p1, v2

    goto :goto_da

    :cond_d7
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->reset()V

    :cond_da
    :goto_da
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_17
.end method
