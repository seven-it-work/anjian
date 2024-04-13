.class Lcom/google/protobuf/LazyField;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/LazyField$LazyEntry;,
        Lcom/google/protobuf/LazyField$LazyIterator;
    }
.end annotation


# instance fields
.field private bytes:Lcom/google/protobuf/ByteString;

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

.field private volatile isDirty:Z

.field private volatile value:Lcom/google/protobuf/MessageLite;


# direct methods
.method public constructor <init>(Lcom/google/protobuf/MessageLite;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    iput-object p1, p0, Lcom/google/protobuf/LazyField;->defaultInstance:Lcom/google/protobuf/MessageLite;

    iput-object p2, p0, Lcom/google/protobuf/LazyField;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    iput-object p3, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    return-void
.end method

.method private ensureInitialized()V
    .registers 4

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    monitor-enter p0

    :try_start_6
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    if-eqz v0, :cond_c

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_24

    return-void

    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    iget-object v2, p0, Lcom/google/protobuf/LazyField;->extensionRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-interface {v0, v1, v2}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/MessageLite;

    iput-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_22} :catch_22
    .catchall {:try_start_c .. :try_end_22} :catchall_24

    :catch_22
    :cond_22
    :try_start_22
    monitor-exit p0

    return-void

    :catchall_24
    move-exception v0

    monitor-exit p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getSerializedSize()I
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->getSerializedSize()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    return v0
.end method

.method public getValue()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite;
    .registers 3

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    iput-object p1, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    return-object v0
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    return-object v0

    :cond_7
    monitor-enter p0

    :try_start_8
    iget-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->toByteString()Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/protobuf/LazyField;->isDirty:Z

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->bytes:Lcom/google/protobuf/ByteString;

    monitor-exit p0

    return-object v0

    :catchall_1f
    move-exception v0

    monitor-exit p0
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/LazyField;->ensureInitialized()V

    iget-object v0, p0, Lcom/google/protobuf/LazyField;->value:Lcom/google/protobuf/MessageLite;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
