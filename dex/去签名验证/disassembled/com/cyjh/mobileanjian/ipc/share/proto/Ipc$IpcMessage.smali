.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IpcMessage"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    }
.end annotation


# static fields
.field public static final ARG1_FIELD_NUMBER:I = 0x2

.field public static final ARG2_FIELD_NUMBER:I = 0x3

.field public static final ARG3_FIELD_NUMBER:I = 0x4

.field public static final ARG4_FIELD_NUMBER:I = 0x6

.field public static final CLASSNAME_FIELD_NUMBER:I = 0x8

.field public static final CMD_FIELD_NUMBER:I = 0x1

.field public static final ENCRYPT_FIELD_NUMBER:I = 0xf

.field public static final FILEDATA_FIELD_NUMBER:I = 0x5

.field public static final ISDEBUG_FIELD_NUMBER:I = 0x10

.field public static final ISSYNCCALL_FIELD_NUMBER:I = 0xc

.field public static final METHODNAME_FIELD_NUMBER:I = 0x9

.field public static final PARAMS_FIELD_NUMBER:I = 0xb

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;",
            ">;"
        }
    .end annotation
.end field

.field public static final PKGNAME_FIELD_NUMBER:I = 0x7

.field public static final RETVALUE_FIELD_NUMBER:I = 0xe

.field public static final TYPES_FIELD_NUMBER:I = 0xa

.field public static final WAITID_FIELD_NUMBER:I = 0xd

.field private static final defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

.field private static final serialVersionUID:J


# instance fields
.field private arg1_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private arg2_:Lcom/google/protobuf/LazyStringList;

.field private arg3_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private arg4_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private bitField0_:I

.field private className_:Ljava/lang/Object;

.field private cmd_:I

.field private encrypt_:Z

.field private fileData_:Lcom/google/protobuf/ByteString;

.field private isDebug_:Z

.field private isSyncCall_:Z

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private methodName_:Ljava/lang/Object;

.field private params_:Lcom/google/protobuf/LazyStringList;

.field private pkgName_:Ljava/lang/Object;

.field private retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

.field private types_:Lcom/google/protobuf/LazyStringList;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private waitId_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;-><init>(Z)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {p0 .. p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v4, -0x1

    iput-byte v4, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    iput v4, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    invoke-direct/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    :cond_17
    :goto_17
    const/16 v8, 0x400

    const/4 v9, 0x4

    const/16 v10, 0x200

    const/4 v11, 0x2

    const/16 v12, 0x8

    const/16 v13, 0x20

    if-nez v5, :cond_279

    :try_start_23
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v14

    sparse-switch v14, :sswitch_data_2d2

    const/4 v8, 0x1

    invoke-virtual {v1, v2, v4, v3, v14}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v6

    goto/16 :goto_204

    :sswitch_31
    iget v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v14, v10

    iput v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    iput-boolean v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    :goto_3c
    const/4 v8, 0x1

    goto :goto_17

    :sswitch_3e
    iget v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/lit16 v14, v14, 0x100

    iput v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v14

    iput-boolean v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    goto :goto_3c

    :sswitch_4b
    iget v15, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v14, 0x80

    and-int/2addr v15, v14

    if-ne v15, v14, :cond_59

    iget-object v15, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {v15}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    move-result-object v15

    goto :goto_5a

    :cond_59
    const/4 v15, 0x0

    :goto_5a
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {v2, v6, v3}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    if-eqz v15, :cond_71

    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {v15, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;

    invoke-virtual {v15}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    :cond_71
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v14

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    goto :goto_3c

    :sswitch_77
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    goto :goto_3c

    :sswitch_84
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v13

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v6

    iput-boolean v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    goto :goto_3c

    :sswitch_90
    and-int/lit16 v6, v7, 0x400

    if-eq v6, v8, :cond_9e

    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v6, v7, 0x400

    move v7, v6

    :cond_9e
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v14

    :goto_a4
    invoke-interface {v6, v14}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_17

    :sswitch_a9
    and-int/lit16 v6, v7, 0x200

    if-eq v6, v10, :cond_b7

    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v6, v7, 0x200

    move v7, v6

    :cond_b7
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v14

    goto :goto_a4

    :sswitch_be
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    goto/16 :goto_3c

    :sswitch_cc
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v12

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    goto/16 :goto_3c

    :sswitch_d9
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v9

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    goto/16 :goto_3c

    :sswitch_e6
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v14, v7, 0x20

    if-eq v14, v13, :cond_101

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_101

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    or-int/lit8 v7, v7, 0x20

    :cond_101
    :goto_101
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v14

    if-lez v14, :cond_118

    iget-object v14, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x400

    const/4 v9, 0x4

    goto :goto_101

    :cond_118
    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_17

    :sswitch_11d
    and-int/lit8 v6, v7, 0x20

    if-eq v6, v13, :cond_12b

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    or-int/lit8 v6, v7, 0x20

    move v7, v6

    :cond_12b
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    :goto_135
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_17

    :sswitch_13a
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    or-int/2addr v6, v11

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    goto/16 :goto_3c

    :sswitch_147
    and-int/lit8 v6, v7, 0x8

    if-eq v6, v12, :cond_155

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    or-int/lit8 v6, v7, 0x8

    move v7, v6

    :cond_155
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    goto :goto_135

    :sswitch_160
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v8, v7, 0x8

    if-eq v8, v12, :cond_17b

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_17b

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    or-int/lit8 v7, v7, 0x8

    :cond_17b
    :goto_17b
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_118

    iget-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readFloat()F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17b

    :sswitch_18f
    and-int/lit8 v6, v7, 0x4

    const/4 v8, 0x4

    if-eq v6, v8, :cond_19e

    new-instance v6, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v6}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    or-int/lit8 v6, v7, 0x4

    move v7, v6

    :cond_19e
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    invoke-interface {v6, v8}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_17

    :sswitch_1a9
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/google/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v6

    and-int/lit8 v8, v7, 0x2

    if-eq v8, v11, :cond_1c4

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_1c4

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    or-int/lit8 v7, v7, 0x2

    :cond_1c4
    :goto_1c4
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v8

    if-lez v8, :cond_118

    iget-object v8, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c4

    :sswitch_1d8
    and-int/lit8 v6, v7, 0x2

    if-eq v6, v11, :cond_1e6

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    or-int/lit8 v6, v7, 0x2

    move v7, v6

    :cond_1e6
    iget-object v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto/16 :goto_135

    :sswitch_1f2
    iget v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v8, 0x1

    or-int/2addr v6, v8

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v6

    iput v6, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I
    :try_end_1fe
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_23 .. :try_end_1fe} :catch_21a
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_1fe} :catch_20a
    .catchall {:try_start_23 .. :try_end_1fe} :catchall_207

    goto/16 :goto_17

    :sswitch_200
    const/4 v8, 0x1

    :goto_201
    const/4 v5, 0x1

    goto/16 :goto_17

    :goto_204
    if-nez v6, :cond_17

    goto :goto_201

    :catchall_207
    move-exception v0

    move-object v2, v0

    goto :goto_221

    :catch_20a
    move-exception v0

    move-object v2, v0

    :try_start_20c
    new-instance v3, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2

    :catch_21a
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2, v1}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v2

    throw v2
    :try_end_221
    .catchall {:try_start_20c .. :try_end_221} :catchall_207

    :goto_221
    and-int/lit8 v3, v7, 0x2

    if-ne v3, v11, :cond_22d

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    :cond_22d
    and-int/lit8 v3, v7, 0x4

    const/4 v5, 0x4

    if-ne v3, v5, :cond_23b

    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    :cond_23b
    and-int/lit8 v3, v7, 0x8

    if-ne v3, v12, :cond_247

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    :cond_247
    and-int/lit8 v3, v7, 0x20

    if-ne v3, v13, :cond_253

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    :cond_253
    and-int/lit16 v3, v7, 0x200

    if-ne v3, v10, :cond_260

    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    :cond_260
    const/16 v3, 0x400

    and-int/lit16 v5, v7, 0x400

    if-ne v5, v3, :cond_26f

    new-instance v3, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v5, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v3, v5}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    :cond_26f
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v3

    iput-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->makeExtensionsImmutable()V

    throw v2

    :cond_279
    and-int/lit8 v2, v7, 0x2

    if-ne v2, v11, :cond_285

    iget-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    :cond_285
    and-int/lit8 v2, v7, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_293

    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    :cond_293
    and-int/lit8 v2, v7, 0x8

    if-ne v2, v12, :cond_29f

    iget-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    :cond_29f
    and-int/lit8 v2, v7, 0x20

    if-ne v2, v13, :cond_2ab

    iget-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    :cond_2ab
    and-int/lit16 v2, v7, 0x200

    if-ne v2, v10, :cond_2b8

    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    :cond_2b8
    const/16 v2, 0x400

    and-int/lit16 v3, v7, 0x400

    if-ne v3, v2, :cond_2c7

    new-instance v2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v3, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {v2, v3}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    :cond_2c7
    invoke-virtual {v4}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v2

    iput-object v2, v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual/range {p0 .. p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_2d2
    .sparse-switch
        0x0 -> :sswitch_200
        0x8 -> :sswitch_1f2
        0x10 -> :sswitch_1d8
        0x12 -> :sswitch_1a9
        0x1a -> :sswitch_18f
        0x22 -> :sswitch_160
        0x25 -> :sswitch_147
        0x2a -> :sswitch_13a
        0x30 -> :sswitch_11d
        0x32 -> :sswitch_e6
        0x3a -> :sswitch_d9
        0x42 -> :sswitch_cc
        0x4a -> :sswitch_be
        0x52 -> :sswitch_a9
        0x5a -> :sswitch_90
        0x60 -> :sswitch_84
        0x68 -> :sswitch_77
        0x72 -> :sswitch_4b
        0x78 -> :sswitch_3e
        0x80 -> :sswitch_31
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessage$Builder<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$3000()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$3202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    return p1
.end method

.method static synthetic access$3300(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3900(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4000(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4002(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4102(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/google/protobuf/LazyStringList;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$4202(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$4302(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    return p1
.end method

.method static synthetic access$4502(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object p1
.end method

.method static synthetic access$4602(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    return p1
.end method

.method static synthetic access$4702(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    return p1
.end method

.method static synthetic access$4802(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->f()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    return-void
.end method

.method public static newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 1

    # invokes: Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->access$2800()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object p0
.end method


# virtual methods
.method public final getArg1(I)I
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public final getArg1Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg1List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    return-object v0
.end method

.method public final getArg2(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getArg2Bytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getArg2Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getArg2List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getArg3(I)F
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    return p1
.end method

.method public final getArg3Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg3List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    return-object v0
.end method

.method public final getArg4(I)J
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getArg4Count()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getArg4List()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    return-object v0
.end method

.method public final getClassName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getClassNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->className_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getCmd()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    move-result-object v0

    return-object v0
.end method

.method public final getEncrypt()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    return v0
.end method

.method public final getFileData()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getIsDebug()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    return v0
.end method

.method public final getIsSyncCall()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    return v0
.end method

.method public final getMethodName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getMethodNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->methodName_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getParams(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getParamsBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getParamsCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getParamsList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPkgName()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_9

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_9
    check-cast v0, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->isValidUtf8()Z

    move-result v0

    if-eqz v0, :cond_17

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getPkgNameBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->pkgName_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getRetValue()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final getRetValueOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValueOrBuilder;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 9

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_15

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_18
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_34

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_34
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg1List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_42
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v3, v5, :cond_58

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v3}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    :cond_58
    add-int/2addr v0, v4

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg2List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg3List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v5, 0x2

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_89

    const/4 v3, 0x5

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_89
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_8b
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_a7

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/protobuf/CodedOutputStream;->computeInt64SizeNoTag(J)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    :cond_a7
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getArg4List()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_c2

    const/4 v3, 0x7

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_c2
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v4, 0x8

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_d2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_d2
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_e4

    const/16 v3, 0x9

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_e4
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_e6
    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v6

    if-ge v3, v6, :cond_fc

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v6, v3}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v6

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_e6

    :cond_fc
    add-int/2addr v0, v5

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getTypesList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x1

    add-int/2addr v0, v3

    const/4 v3, 0x0

    :goto_109
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v2, v5, :cond_11f

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v2}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_109

    :cond_11f
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getParamsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x20

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13b

    const/16 v1, 0xc

    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13b
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x40

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14b

    const/16 v1, 0xd

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14b
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x80

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15b

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15b
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_16b

    const/16 v1, 0xf

    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16b
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_179

    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_179
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedSerializedSize:I

    return v0
.end method

.method public final getTypes(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getTypesBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getTypesCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getTypesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getWaitId()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    return v0
.end method

.method public final hasClassName()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCmd()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEncrypt()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFileData()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIsDebug()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIsSyncCall()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasMethodName()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPkgName()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasRetValue()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWaitId()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method protected final internalGetFieldAccessorTable()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;
    .registers 4

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc;->g()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 4

    iget-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq v0, v2, :cond_b

    if-ne v0, v1, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    return v0

    :cond_b
    iput-byte v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 4

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;
    .registers 2

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;)Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final writeReplace()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessage;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getSerializedSize()I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->cmd_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_e
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_10
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v1, v2, :cond_2b

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg1_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v3, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_2b
    const/4 v1, 0x0

    :goto_2c
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v1, v2, :cond_41

    const/4 v2, 0x3

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg2_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_41
    const/4 v1, 0x0

    :goto_42
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x4

    if-ge v1, v2, :cond_5d

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg3_:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v4, v2}, Lcom/google/protobuf/CodedOutputStream;->writeFloat(IF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_5d
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    and-int/2addr v1, v3

    if-ne v1, v3, :cond_68

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->fileData_:Lcom/google/protobuf/ByteString;

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_68
    const/4 v1, 0x0

    :goto_69
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_84

    const/4 v2, 0x6

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->arg4_:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p1, v2, v5, v6}, Lcom/google/protobuf/CodedOutputStream;->writeInt64(IJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    :cond_84
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_91

    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getPkgNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_91
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_9f

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getClassNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_9f
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v2, 0x10

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_af

    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getMethodNameBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_af
    const/4 v1, 0x0

    :goto_b0
    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v3

    if-ge v1, v3, :cond_c6

    const/16 v3, 0xa

    iget-object v4, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->types_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v4, v1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_b0

    :cond_c6
    :goto_c6
    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v1

    if-ge v0, v1, :cond_dc

    const/16 v1, 0xb

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->params_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_c6

    :cond_dc
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_ea

    const/16 v0, 0xc

    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isSyncCall_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_ea
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_f8

    const/16 v0, 0xd

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->waitId_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_f8
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_106

    const/16 v0, 0xe

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->retValue_:Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$ReturnValue;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_106
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_114

    const/16 v0, 0xf

    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->encrypt_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_114
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_120

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->isDebug_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_120
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/Ipc$IpcMessage;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
