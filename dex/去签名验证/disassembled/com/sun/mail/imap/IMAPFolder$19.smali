.class Lcom/sun/mail/imap/IMAPFolder$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->idle()V
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

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    # getter for: Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPFolder;->access$1(Lcom/sun/mail/imap/IMAPFolder;)I

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->access$2(Lcom/sun/mail/imap/IMAPFolder;I)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_14
    :try_start_14
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$19;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object p1, p1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_1b} :catch_1b

    :catch_1b
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method
