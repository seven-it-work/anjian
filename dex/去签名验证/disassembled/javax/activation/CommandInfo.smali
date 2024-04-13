.class public Ljavax/activation/CommandInfo;
.super Ljava/lang/Object;


# instance fields
.field private className:Ljava/lang/String;

.field private verb:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    iput-object p2, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCommandClass()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    return-object v0
.end method

.method public getCommandObject(Ljavax/activation/DataHandler;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/activation/CommandInfo;->className:Ljava/lang/String;

    invoke-static {p2, v0}, Ljava/beans/Beans;->instantiate(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_2c

    instance-of v0, p2, Ljavax/activation/CommandObject;

    if-eqz v0, :cond_15

    move-object v0, p2

    check-cast v0, Ljavax/activation/CommandObject;

    iget-object v1, p0, Ljavax/activation/CommandInfo;->verb:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljavax/activation/CommandObject;->setCommandContext(Ljava/lang/String;Ljavax/activation/DataHandler;)V

    return-object p2

    :cond_15
    instance-of v0, p2, Ljava/io/Externalizable;

    if-eqz v0, :cond_2c

    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_2c

    move-object v0, p2

    check-cast v0, Ljava/io/Externalizable;

    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v0, v1}, Ljava/io/Externalizable;->readExternal(Ljava/io/ObjectInput;)V

    :cond_2c
    return-object p2
.end method
