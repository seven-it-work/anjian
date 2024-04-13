.class Lcom/sun/mail/imap/IMAPFolder$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->hasNewMessages()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;)V
    .registers 2

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object p1

    if-eqz p1, :cond_21

    const/4 v0, 0x0

    aget-object v1, p1, v0

    iget v1, v1, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_17
    aget-object p1, p1, v0

    iget p1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    :cond_21
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$7;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    # invokes: Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPFolder;->access$0(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object p1

    iget p1, p1, Lcom/sun/mail/imap/protocol/Status;->recent:I

    if-lez p1, :cond_2e

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_2e
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
