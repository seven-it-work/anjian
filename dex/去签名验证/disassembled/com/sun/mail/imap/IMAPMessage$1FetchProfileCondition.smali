.class Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/Utility$Condition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPMessage;->fetch(Lcom/sun/mail/imap/IMAPFolder;[Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "1FetchProfileCondition"
.end annotation


# instance fields
.field private hdrs:[Ljava/lang/String;

.field private needBodyStructure:Z

.field private needEnvelope:Z

.field private needFlags:Z

.field private needHeaders:Z

.field private needSize:Z

.field private needUID:Z


# direct methods
.method public constructor <init>(Ljavax/mail/FetchProfile;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needEnvelope:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needFlags:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needBodyStructure:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needUID:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needHeaders:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needSize:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1e

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needEnvelope:Z

    :cond_1e
    sget-object v0, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_28

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needFlags:Z

    :cond_28
    sget-object v0, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_32

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needBodyStructure:Z

    :cond_32
    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_3c

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needUID:Z

    :cond_3c
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_46

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needHeaders:Z

    :cond_46
    sget-object v0, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {p1, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_50

    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needSize:Z

    :cond_50
    invoke-virtual {p1}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public test(Lcom/sun/mail/imap/IMAPMessage;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needEnvelope:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    # invokes: Lcom/sun/mail/imap/IMAPMessage;->_getEnvelope()Lcom/sun/mail/imap/protocol/ENVELOPE;
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$0(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/ENVELOPE;

    move-result-object v0

    if-nez v0, :cond_c

    return v1

    :cond_c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needFlags:Z

    if-eqz v0, :cond_17

    # invokes: Lcom/sun/mail/imap/IMAPMessage;->_getFlags()Ljavax/mail/Flags;
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$1(Lcom/sun/mail/imap/IMAPMessage;)Ljavax/mail/Flags;

    move-result-object v0

    if-nez v0, :cond_17

    return v1

    :cond_17
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needBodyStructure:Z

    if-eqz v0, :cond_22

    # invokes: Lcom/sun/mail/imap/IMAPMessage;->_getBodyStructure()Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$2(Lcom/sun/mail/imap/IMAPMessage;)Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    move-result-object v0

    if-nez v0, :cond_22

    return v1

    :cond_22
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needUID:Z

    if-eqz v0, :cond_31

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_31

    return v1

    :cond_31
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needHeaders:Z

    if-eqz v0, :cond_3c

    # invokes: Lcom/sun/mail/imap/IMAPMessage;->areHeadersLoaded()Z
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$3(Lcom/sun/mail/imap/IMAPMessage;)Z

    move-result v0

    if-nez v0, :cond_3c

    return v1

    :cond_3c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->needSize:Z

    if-eqz v0, :cond_48

    # getter for: Lcom/sun/mail/imap/IMAPMessage;->size:I
    invoke-static {p1}, Lcom/sun/mail/imap/IMAPMessage;->access$4(Lcom/sun/mail/imap/IMAPMessage;)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_48

    return v1

    :cond_48
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_4a
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_50

    return v0

    :cond_50
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPMessage$1FetchProfileCondition;->hdrs:[Ljava/lang/String;

    aget-object v3, v3, v2

    # invokes: Lcom/sun/mail/imap/IMAPMessage;->isHeaderLoaded(Ljava/lang/String;)Z
    invoke-static {p1, v3}, Lcom/sun/mail/imap/IMAPMessage;->access$5(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5b

    return v1

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_4a
.end method
