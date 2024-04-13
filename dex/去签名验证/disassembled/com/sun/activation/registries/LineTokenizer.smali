.class Lcom/sun/activation/registries/LineTokenizer;
.super Ljava/lang/Object;


# static fields
.field private static final singles:Ljava/lang/String; = "="


# instance fields
.field private currentPosition:I

.field private maxPosition:I

.field private stack:Ljava/util/Vector;

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iput-object p1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    return-void
.end method

.method private skipWhiteSpace()V
    .registers 3

    :goto_0
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v0, v1, :cond_1c

    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v1, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_0

    :cond_1c
    return-void
.end method


# virtual methods
.method public hasMoreTokens()Z
    .registers 4

    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_a

    return v1

    :cond_a
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v0, v2, :cond_14

    return v1

    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method public nextToken()Ljava/lang/String;
    .registers 8

    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_18

    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    return-object v1

    :cond_18
    invoke-direct {p0}, Lcom/sun/activation/registries/LineTokenizer;->skipWhiteSpace()V

    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-lt v0, v2, :cond_27

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_27
    iget v0, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-ne v2, v3, :cond_85

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    const/4 v2, 0x0

    :cond_39
    :goto_39
    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-lt v4, v5, :cond_41

    goto/16 :goto_be

    :cond_41
    iget-object v4, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v5, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5c

    if-ne v4, v5, :cond_58

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    const/4 v2, 0x1

    goto :goto_39

    :cond_58
    if-ne v4, v3, :cond_39

    if-eqz v2, :cond_7a

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    add-int/2addr v0, v1

    :goto_62
    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    sub-int/2addr v3, v1

    if-lt v0, v3, :cond_6c

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_6c
    iget-object v3, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-eq v3, v5, :cond_77

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_77
    add-int/lit8 v0, v0, 0x1

    goto :goto_62

    :cond_7a
    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    add-int/2addr v0, v1

    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_85
    const-string v3, "="

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_93

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_be

    :cond_93
    :goto_93
    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->maxPosition:I

    if-ge v2, v3, :cond_be

    const-string v2, "="

    iget-object v3, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v4, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_be

    iget-object v2, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v3, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_b8

    goto :goto_be

    :cond_b8
    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    goto :goto_93

    :cond_be
    :goto_be
    iget-object v1, p0, Lcom/sun/activation/registries/LineTokenizer;->str:Ljava/lang/String;

    iget v2, p0, Lcom/sun/activation/registries/LineTokenizer;->currentPosition:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pushToken(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/sun/activation/registries/LineTokenizer;->stack:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method
