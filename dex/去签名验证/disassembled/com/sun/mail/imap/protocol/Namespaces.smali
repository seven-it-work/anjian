.class public Lcom/sun/mail/imap/protocol/Namespaces;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    }
.end annotation


# instance fields
.field public otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

.field public personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

.field public shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/Namespaces;->getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/Namespaces;->getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/Namespaces;->getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    return-void
.end method

.method private getNamespaces(Lcom/sun/mail/iap/Response;)[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_30

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    :cond_13
    new-instance v1, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {v1, p1}, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v1

    const/16 v2, 0x29

    if-ne v1, v2, :cond_13

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p1

    new-array p1, p1, [Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-object p1

    :cond_30
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3e

    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    const-string v0, "Expected NIL, got null"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    const-string v0, "NIL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Expected NIL, got "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    const/4 p1, 0x0

    return-object p1
.end method
