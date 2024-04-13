.class Lcom/google/protobuf/DynamicMessage$1;
.super Lcom/google/protobuf/AbstractParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/protobuf/DynamicMessage;->getParserForType()Lcom/google/protobuf/Parser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/AbstractParser<",
        "Lcom/google/protobuf/DynamicMessage;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/protobuf/DynamicMessage;


# direct methods
.method constructor <init>(Lcom/google/protobuf/DynamicMessage;)V
    .registers 2

    iput-object p1, p0, Lcom/google/protobuf/DynamicMessage$1;->this$0:Lcom/google/protobuf/DynamicMessage;

    invoke-direct {p0}, Lcom/google/protobuf/AbstractParser;-><init>()V

    return-void
.end method


# virtual methods
.method public parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DynamicMessage;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/DynamicMessage$1;->this$0:Lcom/google/protobuf/DynamicMessage;

    # getter for: Lcom/google/protobuf/DynamicMessage;->type:Lcom/google/protobuf/Descriptors$Descriptor;
    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->access$6(Lcom/google/protobuf/DynamicMessage;)Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/DynamicMessage;->newBuilder(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/DynamicMessage$Builder;

    move-result-object v0

    :try_start_a
    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/DynamicMessage$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessage$Builder;
    :try_end_d
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_a .. :try_end_d} :catch_25
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_12

    invoke-virtual {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/google/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1

    :catch_12
    move-exception p1

    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/google/protobuf/DynamicMessage;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_25
    move-exception p1

    invoke-virtual {v0}, Lcom/google/protobuf/DynamicMessage$Builder;->buildPartial()Lcom/google/protobuf/DynamicMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public bridge synthetic parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/DynamicMessage$1;->parsePartialFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/DynamicMessage;

    move-result-object p1

    return-object p1
.end method
