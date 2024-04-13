.class public Lcom/sun/mail/imap/protocol/BODY;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field static final name:[C


# instance fields
.field public data:Lcom/sun/mail/iap/ByteArray;

.field public msgno:I

.field public origin:I

.field public section:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    return-void

    nop

    :array_a
    .array-data 2
        0x42s
        0x4fs
        0x44s
        0x59s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->msgno:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    :cond_f
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_30

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x3c

    if-ne v0, v1, :cond_29

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/BODY;->origin:I

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skip(I)V

    :cond_29
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    return-void

    :cond_30
    if-nez v0, :cond_f

    new-instance p1, Lcom/sun/mail/iap/ParsingException;

    const-string v0, "BODY parse error: missing ``]\'\' at section end"

    invoke-direct {p1, v0}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getByteArray()Lcom/sun/mail/iap/ByteArray;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    return-object v0
.end method

.method public getByteArrayInputStream()Ljava/io/ByteArrayInputStream;
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/BODY;->data:Lcom/sun/mail/iap/ByteArray;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ByteArray;->toByteArrayInputStream()Ljava/io/ByteArrayInputStream;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method
