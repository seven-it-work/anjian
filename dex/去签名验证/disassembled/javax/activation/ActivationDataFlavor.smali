.class public Ljavax/activation/ActivationDataFlavor;
.super Lmyjava/awt/datatransfer/DataFlavor;


# instance fields
.field private humanPresentableName:Ljava/lang/String;

.field private mimeObject:Ljavax/activation/MimeType;

.field private mimeType:Ljava/lang/String;

.field private representationClass:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    invoke-super {p0}, Lmyjava/awt/datatransfer/DataFlavor;->getMimeType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p2, p3}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object p3, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmyjava/awt/datatransfer/DataFlavor;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    :try_start_e
    const-string p1, "java.io.InputStream"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;
    :try_end_16
    .catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_16} :catch_16

    :catch_16
    iput-object p2, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Lmyjava/awt/datatransfer/DataFlavor;)Z
    .registers 3

    invoke-virtual {p0, p1}, Ljavax/activation/ActivationDataFlavor;->isMimeTypeEqual(Lmyjava/awt/datatransfer/DataFlavor;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lmyjava/awt/datatransfer/DataFlavor;->getRepresentationClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_10

    const/4 p1, 0x1

    return p1

    :cond_10
    const/4 p1, 0x0

    return p1
.end method

.method public getHumanPresentableName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getRepresentationClass()Ljava/lang/Class;
    .registers 2

    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->representationClass:Ljava/lang/Class;

    return-object v0
.end method

.method public isMimeTypeEqual(Ljava/lang/String;)Z
    .registers 4

    :try_start_0
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    if-nez v0, :cond_d

    new-instance v0, Ljavax/activation/MimeType;

    iget-object v1, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    :cond_d
    new-instance v0, Ljavax/activation/MimeType;

    invoke-direct {v0, p1}, Ljavax/activation/MimeType;-><init>(Ljava/lang/String;)V
    :try_end_12
    .catch Ljavax/activation/MimeTypeParseException; {:try_start_0 .. :try_end_12} :catch_19

    iget-object p1, p0, Ljavax/activation/ActivationDataFlavor;->mimeObject:Ljavax/activation/MimeType;

    invoke-virtual {p1, v0}, Ljavax/activation/MimeType;->match(Ljavax/activation/MimeType;)Z

    move-result p1

    return p1

    :catch_19
    iget-object v0, p0, Ljavax/activation/ActivationDataFlavor;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    return-object p1
.end method

.method protected normalizeMimeTypeParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    return-object p2
.end method

.method public setHumanPresentableName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Ljavax/activation/ActivationDataFlavor;->humanPresentableName:Ljava/lang/String;

    return-void
.end method
