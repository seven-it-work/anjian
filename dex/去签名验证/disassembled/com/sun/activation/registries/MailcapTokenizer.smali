.class public Lcom/sun/activation/registries/MailcapTokenizer;
.super Ljava/lang/Object;


# static fields
.field public static final EOI_TOKEN:I = 0x5

.field public static final EQUALS_TOKEN:I = 0x3d

.field public static final SEMICOLON_TOKEN:I = 0x3b

.field public static final SLASH_TOKEN:I = 0x2f

.field public static final START_TOKEN:I = 0x1

.field public static final STRING_TOKEN:I = 0x2

.field public static final UNKNOWN_TOKEN:I


# instance fields
.field private autoquoteChar:C

.field private currentToken:I

.field private currentTokenValue:Ljava/lang/String;

.field private data:Ljava/lang/String;

.field private dataIndex:I

.field private dataLength:I

.field private isAutoquoting:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    const-string p1, ""

    iput-object p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    const/16 p1, 0x3b

    iput-char p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    return-void
.end method

.method private static fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->ensureCapacity(I)V

    const/4 v2, 0x0

    :goto_d
    if-lt v2, v0, :cond_14

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_14
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5c

    if-eq v3, v4, :cond_1d

    goto :goto_27

    :cond_1d
    add-int/lit8 v4, v0, -0x1

    if-ge v2, v4, :cond_27

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    :cond_27
    :goto_27
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private static isControlChar(C)Z
    .registers 1

    invoke-static {p0}, Ljava/lang/Character;->isISOControl(C)Z

    move-result p0

    return p0
.end method

.method private static isSpecialChar(C)Z
    .registers 2

    const/16 v0, 0x22

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2c

    if-eq p0, v0, :cond_17

    const/16 v0, 0x2f

    if-eq p0, v0, :cond_17

    packed-switch p0, :pswitch_data_1a

    packed-switch p0, :pswitch_data_22

    packed-switch p0, :pswitch_data_34

    const/4 p0, 0x0

    return p0

    :cond_17
    :pswitch_17
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_1a
    .packed-switch 0x28
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_22
    .packed-switch 0x3a
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch

    :pswitch_data_34
    .packed-switch 0x5b
        :pswitch_17
        :pswitch_17
        :pswitch_17
    .end packed-switch
.end method

.method private static isStringTokenChar(C)Z
    .registers 2

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isSpecialChar(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isControlChar(C)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    const/4 p0, 0x0

    return p0
.end method

.method private static isWhiteSpaceChar(C)Z
    .registers 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result p0

    return p0
.end method

.method public static nameForToken(I)Ljava/lang/String;
    .registers 3

    const-string v0, "really unknown"

    const/4 v1, 0x5

    if-eq p0, v1, :cond_27

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_24

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_21

    const/16 v1, 0x3d

    if-eq p0, v1, :cond_1e

    packed-switch p0, :pswitch_data_2a

    return-object v0

    :pswitch_15
    const-string v0, "string"

    return-object v0

    :pswitch_18
    const-string v0, "start"

    return-object v0

    :pswitch_1b
    const-string v0, "unknown"

    return-object v0

    :cond_1e
    const-string v0, "\'=\'"

    return-object v0

    :cond_21
    const-string v0, "\';\'"

    return-object v0

    :cond_24
    const-string v0, "\'/\'"

    return-object v0

    :cond_27
    const-string v0, "EOI"

    return-object v0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method private processAutoquoteToken()V
    .registers 6

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_4
    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v3, v4, :cond_21

    if-eqz v2, :cond_d

    goto :goto_21

    :cond_d
    iget-object v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v4, p0, Lcom/sun/activation/registries/MailcapTokenizer;->autoquoteChar:C

    if-eq v3, v4, :cond_1f

    iget v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_4

    :cond_1f
    const/4 v2, 0x1

    goto :goto_4

    :cond_21
    :goto_21
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->fixEscapeSequences(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-void
.end method

.method private processStringToken()V
    .registers 4

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    :goto_2
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v1, v2, :cond_1e

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1e

    :cond_17
    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_2

    :cond_1e
    :goto_1e
    const/4 v1, 0x2

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    iget-object v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCurrentToken()I
    .registers 2

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v0
.end method

.method public getCurrentTokenValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    return-object v0
.end method

.method public nextToken()I
    .registers 5

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ge v0, v1, :cond_7b

    :goto_8
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->isWhiteSpaceChar(C)Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_24

    :cond_1d
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_8

    :cond_24
    :goto_24
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataLength:I

    if-ge v0, v1, :cond_7b

    iget-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->data:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-boolean v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    const/16 v2, 0x3d

    const/16 v3, 0x3b

    if-eqz v1, :cond_57

    if-eq v0, v3, :cond_43

    if-ne v0, v2, :cond_3f

    goto :goto_43

    :cond_3f
    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processAutoquoteToken()V

    goto :goto_7f

    :cond_43
    :goto_43
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    :goto_4a
    invoke-virtual {v1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->dataIndex:I

    goto :goto_7f

    :cond_57
    invoke-static {v0}, Lcom/sun/activation/registries/MailcapTokenizer;->isStringTokenChar(C)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-direct {p0}, Lcom/sun/activation/registries/MailcapTokenizer;->processStringToken()V

    goto :goto_7f

    :cond_61
    const/16 v1, 0x2f

    if-eq v0, v1, :cond_73

    if-eq v0, v3, :cond_73

    if-ne v0, v2, :cond_6a

    goto :goto_73

    :cond_6a
    const/4 v1, 0x0

    iput v1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_4a

    :cond_73
    :goto_73
    iput v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    new-instance v1, Ljava/lang/Character;

    invoke-direct {v1, v0}, Ljava/lang/Character;-><init>(C)V

    goto :goto_4a

    :cond_7b
    iput v3, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    iput-object v2, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentTokenValue:Ljava/lang/String;

    :goto_7f
    iget v0, p0, Lcom/sun/activation/registries/MailcapTokenizer;->currentToken:I

    return v0
.end method

.method public setIsAutoquoting(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sun/activation/registries/MailcapTokenizer;->isAutoquoting:Z

    return-void
.end method
