.class public Lcom/sun/mail/imap/protocol/ListInfo;
.super Ljava/lang/Object;


# static fields
.field public static final CHANGED:I = 0x1

.field public static final INDETERMINATE:I = 0x3

.field public static final UNCHANGED:I = 0x2


# instance fields
.field public attrs:[Ljava/lang/String;

.field public canOpen:Z

.field public changeState:I

.field public hasInferiors:Z

.field public name:Ljava/lang/String;

.field public separator:C


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    const/16 v0, 0x2f

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v1, 0x3

    iput v1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readSimpleList()[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    const/4 v3, 0x2

    if-eqz v1, :cond_5f

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_20
    array-length v6, v1

    if-lt v5, v6, :cond_24

    goto :goto_5f

    :cond_24
    aget-object v6, v1, v5

    const-string v7, "\\Marked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    iput v0, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    goto :goto_57

    :cond_31
    aget-object v6, v1, v5

    const-string v7, "\\Unmarked"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    iput v3, p0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    goto :goto_57

    :cond_3e
    aget-object v6, v1, v5

    const-string v7, "\\Noselect"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4b

    iput-boolean v4, p0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    goto :goto_57

    :cond_4b
    aget-object v6, v1, v5

    const-string v7, "\\Noinferiors"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_57

    iput-boolean v4, p0, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    :cond_57
    :goto_57
    aget-object v6, v1, v5

    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_20

    :cond_5f
    :goto_5f
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v1

    const/16 v2, 0x22

    if-ne v1, v2, :cond_8d

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    const/16 v2, 0x5c

    if-ne v1, v2, :cond_89

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readByte()B

    move-result v1

    int-to-char v1, v1

    iput-char v1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    :cond_89
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skip(I)V

    goto :goto_90

    :cond_8d
    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skip(I)V

    :goto_90
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-object p1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    return-void
.end method
