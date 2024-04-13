.class public Lcom/sun/mail/imap/protocol/FetchResponse;
.super Lcom/sun/mail/imap/protocol/IMAPResponse;


# static fields
.field private static final HEADER:[C

.field private static final TEXT:[C


# instance fields
.field private items:[Lcom/sun/mail/imap/protocol/Item;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x7

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_1e

    sput-object v0, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    return-void

    nop

    :array_12
    .array-data 2
        0x2es
        0x48s
        0x45s
        0x41s
        0x44s
        0x45s
        0x52s
    .end array-data

    nop

    :array_1e
    .array-data 2
        0x2es
        0x54s
        0x45s
        0x58s
        0x54s
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/iap/Protocol;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/iap/Protocol;)V

    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    invoke-direct {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->parse()V

    return-void
.end method

.method public static getItem([Lcom/sun/mail/iap/Response;ILjava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .registers 9

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_6
    array-length v3, p0

    if-lt v2, v3, :cond_a

    return-object v0

    :cond_a
    aget-object v3, p0, v2

    if-eqz v3, :cond_3b

    aget-object v3, p0, v2

    instance-of v3, v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-eqz v3, :cond_3b

    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v3

    if-ne v3, p1, :cond_3b

    aget-object v3, p0, v2

    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    const/4 v4, 0x0

    :goto_23
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v5, v5

    if-lt v4, v5, :cond_29

    goto :goto_3b

    :cond_29
    iget-object v5, v3, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v5, v5, v4

    invoke-virtual {p2, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    iget-object p0, v3, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object p0, p0, v4

    return-object p0

    :cond_38
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :cond_3b
    :goto_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private match([C)Z
    .registers 8

    array-length v0, p1

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    const/4 v2, 0x0

    move v3, v1

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v0, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_a
    iget-object v4, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    add-int/lit8 v5, v3, 0x1

    aget-byte v3, v4, v3

    int-to-char v3, v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    add-int/lit8 v4, v1, 0x1

    aget-char v1, p1, v1

    if-eq v3, v1, :cond_1c

    return v2

    :cond_1c
    move v1, v4

    move v3, v5

    goto :goto_6
.end method

.method private parse()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ParsingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v0, v0, v1

    const/16 v1, 0x28

    if-eq v0, v1, :cond_23

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in FETCH parsing, missing \'(\' at index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    const/4 v1, 0x0

    :cond_29
    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    if-lt v2, v3, :cond_4b

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error in FETCH parsing, ran off end of buffer, size "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4b
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x42

    if-eq v2, v3, :cond_10d

    const/16 v3, 0x49

    if-eq v2, v3, :cond_f7

    const/16 v3, 0x52

    if-eq v2, v3, :cond_ab

    const/16 v3, 0x55

    if-eq v2, v3, :cond_94

    packed-switch v2, :pswitch_data_16e

    goto/16 :goto_14b

    :pswitch_66
    sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/FLAGS;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    new-instance v1, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/FLAGS;-><init>(Lcom/sun/mail/imap/protocol/IMAPResponse;)V

    goto/16 :goto_14b

    :pswitch_7d
    sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    new-instance v1, Lcom/sun/mail/imap/protocol/ENVELOPE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/ENVELOPE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_14b

    :cond_94
    sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/UID;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    new-instance v1, Lcom/sun/mail/imap/protocol/UID;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/UID;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_14b

    :cond_ab
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_c2

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822SIZE;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822SIZE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/RFC822SIZE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto/16 :goto_14b

    :cond_c2
    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/RFC822DATA;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_e3

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->HEADER:[C

    array-length v2, v2

    :goto_df
    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_f1

    :cond_e3
    sget-object v1, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_f1

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/FetchResponse;->TEXT:[C

    array-length v2, v2

    goto :goto_df

    :cond_f1
    :goto_f1
    new-instance v1, Lcom/sun/mail/imap/protocol/RFC822DATA;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/RFC822DATA;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_14b

    :cond_f7
    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/INTERNALDATE;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    new-instance v1, Lcom/sun/mail/imap/protocol/INTERNALDATE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/INTERNALDATE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_14b

    :cond_10d
    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v2

    if-eqz v2, :cond_14b

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v2, v2, 0x4

    aget-byte v1, v1, v2

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_12f

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    new-instance v1, Lcom/sun/mail/imap/protocol/BODY;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/BODY;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    goto :goto_14b

    :cond_12f
    sget-object v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    invoke-direct {p0, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->match([C)Z

    move-result v1

    if-eqz v1, :cond_140

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;->name:[C

    array-length v2, v2

    :goto_13c
    add-int/2addr v1, v2

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    goto :goto_146

    :cond_140
    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    sget-object v2, Lcom/sun/mail/imap/protocol/BODY;->name:[C

    array-length v2, v2

    goto :goto_13c

    :goto_146
    new-instance v1, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;

    invoke-direct {v1, p0}, Lcom/sun/mail/imap/protocol/BODYSTRUCTURE;-><init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V

    :cond_14b
    :goto_14b
    if-eqz v1, :cond_150

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_150
    iget-object v2, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->buffer:[B

    iget v3, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    aget-byte v2, v2, v3

    const/16 v3, 0x29

    if-ne v2, v3, :cond_29

    iget v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->index:I

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/sun/mail/imap/protocol/Item;

    iput-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    return-void

    :pswitch_data_16e
    .packed-switch 0x45
        :pswitch_7d
        :pswitch_66
    .end packed-switch
.end method


# virtual methods
.method public getItem(I)Lcom/sun/mail/imap/protocol/Item;
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v1, v1

    if-lt v0, v1, :cond_8

    const/4 p1, 0x0

    return-object p1

    :cond_8
    iget-object v1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object p1, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    aget-object p1, p1, v0

    return-object p1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getItemCount()I
    .registers 2

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/FetchResponse;->items:[Lcom/sun/mail/imap/protocol/Item;

    array-length v0, v0

    return v0
.end method
