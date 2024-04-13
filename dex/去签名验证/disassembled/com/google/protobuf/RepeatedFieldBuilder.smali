.class public Lcom/google/protobuf/RepeatedFieldBuilder;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;,
        Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;,
        Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MType:",
        "Lcom/google/protobuf/GeneratedMessage;",
        "BType:",
        "Lcom/google/protobuf/GeneratedMessage$Builder;",
        "IType::",
        "Lcom/google/protobuf/MessageOrBuilder;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/GeneratedMessage$BuilderParent;"
    }
.end annotation


# instance fields
.field private builders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/SingleFieldBuilder<",
            "TMType;TBType;TIType;>;>;"
        }
    .end annotation
.end field

.field private externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation
.end field

.field private isClean:Z

.field private isMessagesListMutable:Z

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation
.end field

.field private parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;


# direct methods
.method public constructor <init>(Ljava/util/List;ZLcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TMType;>;Z",
            "Lcom/google/protobuf/GeneratedMessage$BuilderParent;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    iput-boolean p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    iput-object p3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    iput-boolean p4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    return-void
.end method

.method private ensureBuilders()V
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_24

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    :goto_12
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1b

    return-void

    :cond_1b
    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_24
    return-void
.end method

.method private ensureMutableMessageList()V
    .registers 3

    iget-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v0, :cond_10

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    :cond_10
    return-void
.end method

.method private getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TMType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_d

    :goto_4
    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_18

    goto :goto_4

    :cond_18
    if-eqz p2, :cond_1f

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1

    :cond_1f
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessage()Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1
.end method

.method private incrementModCounts()V
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;->incrementModCount()V

    :cond_9
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;->incrementModCount()V

    :cond_12
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    invoke-virtual {v0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;->incrementModCount()V

    :cond_1b
    return-void
.end method

.method private onChanged()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    invoke-interface {v0}, Lcom/google/protobuf/GeneratedMessage$BuilderParent;->markDirty()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    :cond_10
    return-void
.end method


# virtual methods
.method public addAllMessages(Ljava/lang/Iterable;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TMType;>;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4e

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_18

    return-object p0

    :cond_18
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_26

    goto :goto_3d

    :cond_26
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_1f

    :cond_30
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_37
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_44

    :goto_3d
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0

    :cond_44
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/GeneratedMessage;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/RepeatedFieldBuilder;->addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;

    goto :goto_37

    :cond_4e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedMessage;

    if-nez v1, :cond_4

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method

.method public addBuilder(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)TBType;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v0, p2, p0, v1}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addBuilder(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)TBType;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    new-instance v0, Lcom/google/protobuf/SingleFieldBuilder;

    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v0, p1, p0, v1}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    if-nez p2, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p2, :cond_1a

    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1a
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method

.method public addMessage(Lcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    if-nez p1, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p1, :cond_1a

    iget-object p1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method

.method public build()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v1, :cond_e

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    :cond_e
    iget-boolean v1, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3f

    const/4 v1, 0x0

    :goto_14
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_1e

    const/4 v1, 0x1

    goto :goto_37

    :cond_1e
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/Message;

    iget-object v4, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v4, :cond_3c

    invoke-virtual {v4}, Lcom/google/protobuf/SingleFieldBuilder;->build()Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    if-eq v4, v3, :cond_3c

    const/4 v1, 0x0

    :goto_37
    if-eqz v1, :cond_3f

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    :cond_3c
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_3f
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    const/4 v1, 0x0

    :goto_43
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v1, v3, :cond_58

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    iput-boolean v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    return-object v0

    :cond_58
    iget-object v3, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-direct {p0, v1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;

    move-result-object v4

    invoke-interface {v3, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_43
.end method

.method public clear()V
    .registers 3

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isMessagesListMutable:Z

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_13
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1d

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    goto :goto_29

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    goto :goto_13

    :cond_29
    :goto_29
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-void
.end method

.method public dispose()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->parent:Lcom/google/protobuf/GeneratedMessage$BuilderParent;

    return-void
.end method

.method public getBuilder(I)Lcom/google/protobuf/GeneratedMessage$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TBType;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureBuilders()V

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessage;

    new-instance v1, Lcom/google/protobuf/SingleFieldBuilder;

    iget-boolean v2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->isClean:Z

    invoke-direct {v1, v0, p0, v2}, Lcom/google/protobuf/SingleFieldBuilder;-><init>(Lcom/google/protobuf/GeneratedMessage;Lcom/google/protobuf/GeneratedMessage$BuilderParent;Z)V

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_22
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getBuilder()Lcom/google/protobuf/GeneratedMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TBType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$BuilderExternalList;

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getMessage(I)Lcom/google/protobuf/GeneratedMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TMType;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/protobuf/RepeatedFieldBuilder;->getMessage(IZ)Lcom/google/protobuf/GeneratedMessage;

    move-result-object p1

    return-object p1
.end method

.method public getMessageList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TMType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageExternalList;

    return-object v0
.end method

.method public getMessageOrBuilder(I)Lcom/google/protobuf/MessageOrBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TIType;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-nez v0, :cond_d

    :goto_4
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/MessageOrBuilder;

    return-object p1

    :cond_d
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/SingleFieldBuilder;

    if-nez v0, :cond_18

    goto :goto_4

    :cond_18
    invoke-virtual {v0}, Lcom/google/protobuf/SingleFieldBuilder;->getMessageOrBuilder()Lcom/google/protobuf/MessageOrBuilder;

    move-result-object p1

    return-object p1
.end method

.method public getMessageOrBuilderList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TIType;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    if-nez v0, :cond_b

    new-instance v0, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    invoke-direct {v0, p0}, Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;-><init>(Lcom/google/protobuf/RepeatedFieldBuilder;)V

    iput-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->externalMessageOrBuilderList:Lcom/google/protobuf/RepeatedFieldBuilder$MessageOrBuilderExternalList;

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public markDirty()V
    .registers 1

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    return-void
.end method

.method public remove(I)V
    .registers 3

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    :cond_19
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-void
.end method

.method public setMessage(ILcom/google/protobuf/GeneratedMessage;)Lcom/google/protobuf/RepeatedFieldBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITMType;)",
            "Lcom/google/protobuf/RepeatedFieldBuilder<",
            "TMType;TBType;TIType;>;"
        }
    .end annotation

    if-nez p2, :cond_8

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1

    :cond_8
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->ensureMutableMessageList()V

    iget-object v0, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->messages:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    if-eqz p2, :cond_22

    iget-object p2, p0, Lcom/google/protobuf/RepeatedFieldBuilder;->builders:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/SingleFieldBuilder;

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/google/protobuf/SingleFieldBuilder;->dispose()V

    :cond_22
    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->onChanged()V

    invoke-direct {p0}, Lcom/google/protobuf/RepeatedFieldBuilder;->incrementModCounts()V

    return-object p0
.end method
