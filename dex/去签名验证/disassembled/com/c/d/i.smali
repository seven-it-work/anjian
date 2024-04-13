.class public Lcom/c/d/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_7
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p1

    iput-object p1, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;
    :try_end_15
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_15} :catch_1d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception p1

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :catch_1d
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/c/d/i;-><init>([B)V

    return-void
.end method

.method private constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    return-void
.end method

.method private constructor <init>([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/c/d/i;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/c/d/i;
    .registers 4

    iget-object v0, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    if-eqz p1, :cond_1b

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-lez v0, :cond_1b

    new-instance v0, Lcom/c/d/i;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-direct {v0, p1}, Lcom/c/d/i;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/d/i;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/c/d/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/d/i;

    return-object p1
.end method

.method private static a(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/c/d/i;
    .registers 7

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_9

    return-object v1

    :cond_9
    check-cast p0, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_17

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_17
    if-eqz p2, :cond_1f

    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_1f
    if-eqz p3, :cond_2b

    invoke-interface {p0, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_30

    :cond_2b
    new-instance v1, Lcom/c/d/i;

    invoke-direct {v1, p0}, Lcom/c/d/i;-><init>(Lorg/w3c/dom/Element;)V

    :cond_30
    return-object v1
.end method

.method private static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .registers 2

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    packed-switch v0, :pswitch_data_1e

    const/4 p0, 0x0

    goto :goto_18

    :pswitch_9
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    goto :goto_18

    :pswitch_e
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_18
    :goto_18
    if-nez p0, :cond_1c

    const-string p0, ""

    :cond_1c
    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x3
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method

.method private static a(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/NodeList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/c/d/i;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_6
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_d

    return-object v0

    :cond_d
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1a

    goto :goto_42

    :cond_1a
    check-cast v2, Lorg/w3c/dom/Element;

    if-eqz p1, :cond_28

    invoke-interface {v2}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_28
    if-eqz p2, :cond_30

    invoke-interface {v2, p2}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_30
    if-eqz p3, :cond_3c

    invoke-interface {v2, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    :cond_3c
    new-instance v3, Lcom/c/d/i;

    invoke-direct {v3, v2}, Lcom/c/d/i;-><init>(Lorg/w3c/dom/Element;)V

    move-object v4, v3

    :cond_42
    :goto_42
    if-eqz v4, :cond_47

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private a()Lorg/w3c/dom/Element;
    .registers 2

    iget-object v0, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    return-object v0
.end method

.method private a(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, p3, p4}, Lcom/c/d/i;->a(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    const-string v1, ""

    invoke-interface {p2, v1, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasAttributes()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v3, 0x0

    :goto_18
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v4

    if-lt v3, v4, :cond_1f

    goto :goto_35

    :cond_1f
    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/Attr;

    const-string v5, ""

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v5, v6, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_35
    :goto_35
    invoke-interface {p1}, Lorg/w3c/dom/Element;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_77

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v1, 0x0

    :goto_40
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_4c

    if-lez v1, :cond_77

    invoke-static {p2, p3, p4}, Lcom/c/d/i;->a(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    goto :goto_77

    :cond_4c
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_6b

    packed-switch v4, :pswitch_data_7e

    goto :goto_74

    :pswitch_5b
    invoke-static {v3}, Lcom/c/d/i;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    goto :goto_74

    :pswitch_63
    invoke-static {v3}, Lcom/c/d/i;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_74

    :cond_6b
    check-cast v3, Lorg/w3c/dom/Element;

    add-int/lit8 v4, p3, 0x1

    invoke-direct {p0, v3, p2, v4, p4}, Lcom/c/d/i;->a(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    :goto_74
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    :cond_77
    :goto_77
    const-string p1, ""

    invoke-interface {p2, p1, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x3
        :pswitch_63
        :pswitch_5b
    .end packed-switch
.end method

.method private static a(Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-eqz p2, :cond_11

    const-string v0, "\n"

    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v0, 0x0

    :goto_8
    if-lt v0, p1, :cond_b

    return-void

    :cond_b
    invoke-interface {p0, p2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_11
    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/c/d/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/c/d/i;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/c/d/i;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/c/d/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3}, Lcom/c/d/i;->a(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/lang/String;)Lcom/c/d/i;
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/d/i;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/d/i;

    return-object p1
.end method

.method private c()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v1

    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    invoke-interface {v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v3, "utf-8"

    invoke-interface {v1, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v3, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4, v0}, Lcom/c/d/i;->a(Lorg/w3c/dom/Element;Lorg/xmlpull/v1/XmlSerializer;ILjava/lang/String;)V

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1f} :catch_20

    return-object v1

    :catch_20
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private d(Ljava/lang/String;)Lcom/c/d/i;
    .registers 3

    invoke-direct {p0, p1}, Lcom/c/d/i;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    :cond_c
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/d/i;

    return-object p1
.end method

.method private d()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_17

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1c
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-lt v2, v3, :cond_27

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_27
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-static {v3}, Lcom/c/d/i;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c
.end method

.method private e(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/c/d/i;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/c/d/i;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/c/d/i;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1, v1}, Lcom/c/d/i;->a(Lorg/w3c/dom/NodeList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private g(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1}, Lcom/c/d/i;->f(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_e

    move-object p1, v1

    goto :goto_14

    :cond_e
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/c/d/i;

    :goto_14
    if-nez p1, :cond_17

    return-object v1

    :cond_17
    iget-object p1, p1, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_32
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-lt v2, v1, :cond_3d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3d
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-static {v1}, Lcom/c/d/i;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_32
.end method

.method private h(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/c/d/i;->a:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/c/d/i;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
