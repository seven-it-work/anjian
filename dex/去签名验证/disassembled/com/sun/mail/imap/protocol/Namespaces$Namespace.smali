.class public Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/mail/imap/protocol/Namespaces;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Namespace"
.end annotation


# instance fields
.field public delimiter:C

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_13

    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    const-string v0, "Missing \'(\' at start of Namespace"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_13
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_4d

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    iget-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    const/16 v2, 0x5c

    if-ne v0, v2, :cond_3f

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    :cond_3f
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    if-eq v0, v1, :cond_7a

    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    const-string v0, "Missing \'\"\' at end of QUOTED_CHAR"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4d
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5b

    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    const-string v0, "Expected NIL, got null"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5b
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_77

    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected NIL, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_77
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    :cond_7a
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_8e

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    :cond_8e
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result p1

    if-eq p1, v1, :cond_9c

    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    const-string v0, "Missing \')\' at end of Namespace"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9c
    return-void
.end method
