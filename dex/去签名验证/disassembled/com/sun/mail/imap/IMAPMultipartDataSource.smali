.class public Lcom/sun/mail/imap/IMAPMultipartDataSource;
.super Ljavax/mail/internet/MimePartDataSource;

# interfaces
.implements Ljavax/mail/MultipartDataSource;


# instance fields
.field private parts:Ljava/util/Vector;


# direct methods
.method protected constructor <init>(Ljavax/mail/internet/MimePart;[Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V
    .registers 10

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimePartDataSource;-><init>(Ljavax/mail/internet/MimePart;)V

    new-instance p1, Ljava/util/Vector;

    array-length v0, p2

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    const/4 p1, 0x0

    :goto_c
    array-length v0, p2

    if-lt p1, v0, :cond_10

    return-void

    :cond_10
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    new-instance v1, Lcom/sun/mail/imap/IMAPBodyPart;

    aget-object v2, p2, p1

    if-nez p3, :cond_1f

    add-int/lit8 v3, p1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_3a

    :cond_1f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, p1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3a
    invoke-direct {v1, v2, v3, p4}, Lcom/sun/mail/imap/IMAPBodyPart;-><init>(Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;Ljava/lang/String;Lcom/sun/mail/imap/IMAPMessage;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_c
.end method


# virtual methods
.method public getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/BodyPart;

    return-object p1
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPMultipartDataSource;->parts:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
