.class final Lcom/hlzn/socketclient/pbmsg/MessageProtobuf$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/Descriptors$FileDescriptor$InternalDescriptorAssigner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final assignDescriptors(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/ExtensionRegistry;
    .registers 10

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a(Lcom/google/protobuf/Descriptors$FileDescriptor;)Lcom/google/protobuf/Descriptors$FileDescriptor;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->b()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "RpcId"

    const-string v3, "AppId"

    const-string v4, "ScriptId"

    const-string v5, "DeviceId"

    const-string v6, "IMToken"

    const-string v7, "ScriptRunning"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->b(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "RpcId"

    const-string v3, "Error"

    const-string v4, "Message"

    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->b(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->c(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "RpcId"

    const-string v3, "ScriptRunning"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->c(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->d(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->h()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    const-string v2, "RpcId"

    const-string v3, "Error"

    const-string v4, "Message"

    const-string v5, "Disabled"

    filled-new-array {v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->d(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->e(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->j()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/String;

    invoke-direct {p1, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->e(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x5

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->f(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->l()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->f(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->g(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->n()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->g(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->h(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->p()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "Error"

    const-string v3, "Message"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->h(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x8

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->i(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->r()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->i(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x9

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->j(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->t()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "Error"

    const-string v3, "Message"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->j(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->k(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->v()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "ScriptVersion"

    const-string v3, "ScriptFileUrl"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->k(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->l(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->x()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "Error"

    const-string v3, "Message"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->l(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xc

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->m(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->z()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "ScriptSettings"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->m(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xd

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->n(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->B()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "Error"

    const-string v3, "Message"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->n(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xe

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->o(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->D()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->o(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0xf

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->p(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->F()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "Error"

    const-string v3, "Message"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->p(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x10

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->q(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->H()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->q(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x11

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->r(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->J()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "Error"

    const-string v3, "Message"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->r(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x12

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->s(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->L()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "NewDeviceName"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->s(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->a()Lcom/google/protobuf/Descriptors$FileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FileDescriptor;->getMessageTypes()Ljava/util/List;

    move-result-object p1

    const/16 v0, 0x13

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/Descriptors$Descriptor;

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->t(Lcom/google/protobuf/Descriptors$Descriptor;)Lcom/google/protobuf/Descriptors$Descriptor;

    new-instance p1, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    invoke-static {}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->N()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    const-string v1, "RpcId"

    const-string v2, "Error"

    const-string v3, "Message"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;-><init>(Lcom/google/protobuf/Descriptors$Descriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Lcom/hlzn/socketclient/pbmsg/MessageProtobuf;->t(Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    const/4 p1, 0x0

    return-object p1
.end method
