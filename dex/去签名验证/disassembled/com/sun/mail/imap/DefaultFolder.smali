.class public Lcom/sun/mail/imap/DefaultFolder;
.super Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/IMAPStore;)V
    .registers 4

    const-string v0, ""

    const v1, 0xffff

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/mail/imap/DefaultFolder;->exists:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/sun/mail/imap/DefaultFolder;->type:I

    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Cannot append to Default Folder"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Cannot delete Default Folder"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public expunge()[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot expunge Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    const v2, 0xffff

    invoke-direct {v0, p1, v2, v1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;)V

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNewMessages()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/imap/DefaultFolder$1;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$1;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    new-array p1, v0, [Ljavax/mail/Folder;

    return-object p1

    :cond_11
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    :goto_14
    array-length v2, v1

    if-lt v0, v2, :cond_18

    return-object v1

    :cond_18
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v2, v3, v4}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance v0, Lcom/sun/mail/imap/DefaultFolder$2;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$2;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_11

    new-array p1, v0, [Ljavax/mail/Folder;

    return-object p1

    :cond_11
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/mail/imap/IMAPFolder;

    :goto_14
    array-length v2, v1

    if-lt v0, v2, :cond_18

    return-object v1

    :cond_18
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder;

    aget-object v3, p1, v0

    iget-object v4, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v2, v3, v4}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_14
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Cannot rename Default Folder"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
