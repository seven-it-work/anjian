.class public final Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
.super Lcom/google/protobuf/GeneratedMessage;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUiOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CommandToUi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;,
        Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;
    }
.end annotation


# static fields
.field public static final ALIGNTYPE_FIELD_NUMBER:I = 0x11

.field public static final BOOL_PARAM_FIELD_NUMBER:I = 0x1b

.field public static final COLOR_FIELD_NUMBER:I = 0x10

.field public static final COMMAND_FIELD_NUMBER:I = 0x1

.field public static final CONTROL_ID_FIELD_NUMBER:I = 0x2

.field public static final DEFAULT_CHECK_STATUS_FIELD_NUMBER:I = 0x8

.field public static final DEFAULT_ITEM_INDEX_FIELD_NUMBER:I = 0xb

.field public static final EDIT_INPUT_TYPE_FIELD_NUMBER:I = 0x14

.field public static final ENABLED_STATUS_FIELD_NUMBER:I = 0xe

.field public static final FONT_SIZE_FIELD_NUMBER:I = 0x16

.field public static final FONT_TYPE_FIELD_NUMBER:I = 0x15

.field public static final HEIGHT_FIELD_NUMBER:I = 0x6

.field public static final INT_PARAM_FIELD_NUMBER:I = 0x19

.field public static final ITEM_INDEX_FIELD_NUMBER:I = 0xa

.field public static final ITEM_TEXT_FIELD_NUMBER:I = 0x9

.field public static final LAYOUT_STYLE_FIELD_NUMBER:I = 0x7

.field public static final LEFT_FIELD_NUMBER:I = 0x17

.field public static final PADDING_FIELD_NUMBER:I = 0x12

.field public static final PARENT_ID_FIELD_NUMBER:I = 0x3

.field public static PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0xc

.field public static final STR_PARAM_FIELD_NUMBER:I = 0x1a

.field public static final TEXT_FIELD_NUMBER:I = 0x4

.field public static final TOP_FIELD_NUMBER:I = 0x18

.field public static final UIP_DATA_FIELD_NUMBER:I = 0x13

.field public static final URL_FIELD_NUMBER:I = 0xd

.field public static final VISIBLE_STATUS_FIELD_NUMBER:I = 0xf

.field public static final WIDTH_FIELD_NUMBER:I = 0x5

.field private static final defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

.field private static final serialVersionUID:J


# instance fields
.field private alignType_:I

.field private bitField0_:I

.field private boolParam_:Z

.field private color_:Ljava/lang/Object;

.field private command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

.field private controlId_:Ljava/lang/Object;

.field private defaultCheckStatus_:Z

.field private defaultItemIndex_:I

.field private editInputType_:I

.field private enabledStatus_:Z

.field private fontSize_:I

.field private fontType_:Ljava/lang/Object;

.field private height_:I

.field private intParam_:I

.field private itemIndex_:I

.field private itemText_:Lcom/google/protobuf/LazyStringList;

.field private layoutStyle_:I

.field private left_:I

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

.field private parentId_:Ljava/lang/Object;

.field private path_:Ljava/lang/Object;

.field private strParam_:Ljava/lang/Object;

.field private text_:Ljava/lang/Object;

.field private top_:I

.field private uipData_:Ljava/lang/Object;

.field private final unknownFields:Lcom/google/protobuf/UnknownFieldSet;

.field private url_:Ljava/lang/Object;

.field private visibleStatus_:I

.field private width_:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$1;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$1;-><init>()V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;-><init>(Z)V

    sput-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    invoke-direct {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->initFields()V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedSerializedSize:I

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->initFields()V

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->newBuilder()Lcom/google/protobuf/UnknownFieldSet$Builder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :cond_12
    :goto_12
    const/16 v4, 0x100

    if-nez v1, :cond_206

    :try_start_16
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v5

    sparse-switch v5, :sswitch_data_21e

    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/UnknownFieldSet$Builder;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v5

    goto/16 :goto_1d5

    :sswitch_23
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x2000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->boolParam_:Z

    goto :goto_12

    :sswitch_31
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x1000000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

    goto :goto_12

    :sswitch_3f
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x800000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->intParam_:I

    goto :goto_12

    :sswitch_4d
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x400000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->top_:I

    goto :goto_12

    :sswitch_5b
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x200000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->left_:I

    goto :goto_12

    :sswitch_69
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x100000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontSize_:I

    goto :goto_12

    :sswitch_77
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x80000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

    goto :goto_12

    :sswitch_85
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x40000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->editInputType_:I

    goto/16 :goto_12

    :sswitch_94
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v6, 0x20000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

    goto/16 :goto_12

    :sswitch_a3
    const/4 v5, 0x0

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v7, 0x10000

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_b1

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    move-result-object v5

    :cond_b1
    sget-object v6, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->PARSER:Lcom/google/protobuf/Parser;

    invoke-virtual {p1, v6, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/Parser;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite;

    move-result-object v6

    check-cast v6, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    iput-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    if-eqz v5, :cond_c8

    iget-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {v5, v6}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;

    invoke-virtual {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var$Builder;->buildPartial()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    :cond_c8
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/2addr v5, v7

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    goto/16 :goto_12

    :sswitch_cf
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alignType_:I

    goto/16 :goto_12

    :sswitch_df
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit16 v5, v5, 0x4000

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

    goto/16 :goto_12

    :sswitch_ed
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->visibleStatus_:I

    goto/16 :goto_12

    :sswitch_fb
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit16 v5, v5, 0x1000

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->enabledStatus_:Z

    goto/16 :goto_12

    :sswitch_109
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit16 v5, v5, 0x800

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

    goto/16 :goto_12

    :sswitch_117
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit16 v5, v5, 0x400

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

    goto/16 :goto_12

    :sswitch_125
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit16 v5, v5, 0x200

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultItemIndex_:I

    goto/16 :goto_12

    :sswitch_133
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/2addr v5, v4

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemIndex_:I

    goto/16 :goto_12

    :sswitch_140
    and-int/lit16 v5, v3, 0x100

    if-eq v5, v4, :cond_14d

    new-instance v5, Lcom/google/protobuf/LazyStringArrayList;

    invoke-direct {v5}, Lcom/google/protobuf/LazyStringArrayList;-><init>()V

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    or-int/lit16 v3, v3, 0x100

    :cond_14d
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/google/protobuf/LazyStringList;->add(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_12

    :sswitch_158
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit16 v5, v5, 0x80

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultCheckStatus_:Z

    goto/16 :goto_12

    :sswitch_166
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit8 v5, v5, 0x40

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->layoutStyle_:I

    goto/16 :goto_12

    :sswitch_174
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit8 v5, v5, 0x20

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->height_:I

    goto/16 :goto_12

    :sswitch_182
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->width_:I

    goto/16 :goto_12

    :sswitch_190
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

    goto/16 :goto_12

    :sswitch_19e
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

    goto/16 :goto_12

    :sswitch_1ac
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    iput-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

    goto/16 :goto_12

    :sswitch_1ba
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v5

    invoke-static {v5}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->valueOf(I)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    move-result-object v6

    if-nez v6, :cond_1c9

    invoke-virtual {v0, v2, v5}, Lcom/google/protobuf/UnknownFieldSet$Builder;->mergeVarintField(II)Lcom/google/protobuf/UnknownFieldSet$Builder;

    goto/16 :goto_12

    :cond_1c9
    iget v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    or-int/2addr v5, v2

    iput v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    iput-object v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;
    :try_end_1d0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_16 .. :try_end_1d0} :catch_1e9
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_1d0} :catch_1da
    .catchall {:try_start_16 .. :try_end_1d0} :catchall_1d8

    goto/16 :goto_12

    :goto_1d2
    :sswitch_1d2
    const/4 v1, 0x1

    goto/16 :goto_12

    :goto_1d5
    if-nez v5, :cond_12

    goto :goto_1d2

    :catchall_1d8
    move-exception p1

    goto :goto_1ef

    :catch_1da
    move-exception p1

    :try_start_1db
    new-instance p2, Lcom/google/protobuf/InvalidProtocolBufferException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    :catch_1e9
    move-exception p1

    invoke-virtual {p1, p0}, Lcom/google/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
    :try_end_1ef
    .catchall {:try_start_1db .. :try_end_1ef} :catchall_1d8

    :goto_1ef
    and-int/lit16 p2, v3, 0x100

    if-ne p2, v4, :cond_1fc

    new-instance p2, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {p2, v1}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    :cond_1fc
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p2

    iput-object p2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->makeExtensionsImmutable()V

    throw p1

    :cond_206
    and-int/lit16 p1, v3, 0x100

    if-ne p1, v4, :cond_213

    new-instance p1, Lcom/google/protobuf/UnmodifiableLazyStringList;

    iget-object p2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-direct {p1, p2}, Lcom/google/protobuf/UnmodifiableLazyStringList;-><init>(Lcom/google/protobuf/LazyStringList;)V

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    :cond_213
    invoke-virtual {v0}, Lcom/google/protobuf/UnknownFieldSet$Builder;->build()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->makeExtensionsImmutable()V

    return-void

    nop

    :sswitch_data_21e
    .sparse-switch
        0x0 -> :sswitch_1d2
        0x8 -> :sswitch_1ba
        0x12 -> :sswitch_1ac
        0x1a -> :sswitch_19e
        0x22 -> :sswitch_190
        0x28 -> :sswitch_182
        0x30 -> :sswitch_174
        0x38 -> :sswitch_166
        0x40 -> :sswitch_158
        0x4a -> :sswitch_140
        0x50 -> :sswitch_133
        0x58 -> :sswitch_125
        0x62 -> :sswitch_117
        0x6a -> :sswitch_109
        0x70 -> :sswitch_fb
        0x78 -> :sswitch_ed
        0x82 -> :sswitch_df
        0x88 -> :sswitch_cf
        0x92 -> :sswitch_a3
        0x9a -> :sswitch_94
        0xa0 -> :sswitch_85
        0xaa -> :sswitch_77
        0xb0 -> :sswitch_69
        0xb8 -> :sswitch_5b
        0xc0 -> :sswitch_4d
        0xc8 -> :sswitch_3f
        0xd2 -> :sswitch_31
        0xd8 -> :sswitch_23
    .end sparse-switch
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;-><init>(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)V

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

    iput-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedIsInitialized:B

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedSerializedSize:I

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessage$Builder;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/GeneratedMessage$Builder;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;-><init>(Lcom/google/protobuf/GeneratedMessage$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessage;-><init>()V

    const/4 p1, -0x1

    iput-byte p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedIsInitialized:B

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedSerializedSize:I

    invoke-static {}, Lcom/google/protobuf/UnknownFieldSet;->getDefaultInstance()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-void
.end method

.method static synthetic access$1700()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alwaysUseFieldBuilders:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    return-object p1
.end method

.method static synthetic access$2000(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$2202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$2302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->width_:I

    return p1
.end method

.method static synthetic access$2402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->height_:I

    return p1
.end method

.method static synthetic access$2502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->layoutStyle_:I

    return p1
.end method

.method static synthetic access$2602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultCheckStatus_:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/google/protobuf/LazyStringList;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    return-object p0
.end method

.method static synthetic access$2702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/google/protobuf/LazyStringList;)Lcom/google/protobuf/LazyStringList;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemIndex_:I

    return p1
.end method

.method static synthetic access$2902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultItemIndex_:I

    return p1
.end method

.method static synthetic access$3000(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->enabledStatus_:Z

    return p1
.end method

.method static synthetic access$3302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->visibleStatus_:I

    return p1
.end method

.method static synthetic access$3400(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alignType_:I

    return p1
.end method

.method static synthetic access$3602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object p1
.end method

.method static synthetic access$3700(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3702(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3802(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->editInputType_:I

    return p1
.end method

.method static synthetic access$3900(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$3902(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4002(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontSize_:I

    return p1
.end method

.method static synthetic access$4102(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->left_:I

    return p1
.end method

.method static synthetic access$4202(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->top_:I

    return p1
.end method

.method static synthetic access$4302(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->intParam_:I

    return p1
.end method

.method static synthetic access$4400(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$4402(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$4502(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->boolParam_:Z

    return p1
.end method

.method static synthetic access$4602(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;I)I
    .registers 2

    iput p1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 1

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/google/protobuf/Descriptors$Descriptor;
    .registers 1

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->d()Lcom/google/protobuf/Descriptors$Descriptor;

    move-result-object v0

    return-object v0
.end method

.method private initFields()V
    .registers 3

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->NEW_LAYOUT:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

    const-string v0, ""

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->width_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->height_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->layoutStyle_:I

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultCheckStatus_:Z

    sget-object v1, Lcom/google/protobuf/LazyStringArrayList;->EMPTY:Lcom/google/protobuf/LazyStringList;

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemIndex_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultItemIndex_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->enabledStatus_:Z

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->visibleStatus_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alignType_:I

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->getDefaultInstance()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v1

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->editInputType_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontSize_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->left_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->top_:I

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->intParam_:I

    const-string v1, ""

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->boolParam_:Z

    return-void
.end method

.method public static newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 1

    # invokes: Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->create()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->access$1500()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;->mergeFrom(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0}, Lcom/google/protobuf/Parser;->parseFrom([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    invoke-interface {v0, p0, p1}, Lcom/google/protobuf/Parser;->parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object p0
.end method


# virtual methods
.method public final getAlignType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alignType_:I

    return v0
.end method

.method public final getBoolParam()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->boolParam_:Z

    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getColorBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->color_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getCommand()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    return-object v0
.end method

.method public final getControlId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getControlIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->controlId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getDefaultCheckStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultCheckStatus_:Z

    return v0
.end method

.method public final getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;
    .registers 2

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultInstance:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/Message;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getDefaultInstanceForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    move-result-object v0

    return-object v0
.end method

.method public final getDefaultItemIndex()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultItemIndex_:I

    return v0
.end method

.method public final getEditInputType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->editInputType_:I

    return v0
.end method

.method public final getEnabledStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->enabledStatus_:Z

    return v0
.end method

.method public final getFontSize()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontSize_:I

    return v0
.end method

.method public final getFontType()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getFontTypeBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontType_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getHeight()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->height_:I

    return v0
.end method

.method public final getIntParam()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->intParam_:I

    return v0
.end method

.method public final getItemIndex()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemIndex_:I

    return v0
.end method

.method public final getItemText(I)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getItemTextBytes(I)Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public final getItemTextCount()I
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public final getItemTextList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    return-object v0
.end method

.method public final getLayoutStyle()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->layoutStyle_:I

    return v0
.end method

.method public final getLeft()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->left_:I

    return v0
.end method

.method public final getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0
.end method

.method public final getPaddingOrBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_VarOrBuilder;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    return-object v0
.end method

.method public final getParentId()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getParentIdBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->parentId_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getParserForType()Lcom/google/protobuf/Parser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->PARSER:Lcom/google/protobuf/Parser;

    return-object v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getPathBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->path_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getSerializedSize()I
    .registers 8

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return v0

    :cond_6
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->getNumber()I

    move-result v0

    invoke-static {v1, v0}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_29

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_29
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_39

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_39
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v5, 0x8

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_49

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v3

    add-int/2addr v0, v3

    :cond_49
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v4, 0x10

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_58

    const/4 v3, 0x5

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->width_:I

    invoke-static {v3, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_58
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v6, 0x20

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_67

    const/4 v3, 0x6

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->height_:I

    invoke-static {v3, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_67
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v6, 0x40

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_76

    const/4 v3, 0x7

    iget v6, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->layoutStyle_:I

    invoke-static {v3, v6}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_76
    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v6, 0x80

    and-int/2addr v3, v6

    if-ne v3, v6, :cond_84

    iget-boolean v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultCheckStatus_:Z

    invoke-static {v5, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v0, v3

    :cond_84
    const/4 v3, 0x0

    :goto_85
    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v5

    if-ge v2, v5, :cond_9b

    iget-object v5, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v5, v2}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v5

    invoke-static {v5}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSizeNoTag(Lcom/google/protobuf/ByteString;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_85

    :cond_9b
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getItemTextList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_b7

    const/16 v1, 0xa

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemIndex_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b7
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_c7

    const/16 v1, 0xb

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultItemIndex_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_c7
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_d9

    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_d9
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_eb

    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_eb
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_fb

    const/16 v1, 0xe

    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->enabledStatus_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_fb
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_10b

    const/16 v1, 0xf

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->visibleStatus_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_10b
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    and-int/lit16 v1, v1, 0x4000

    const/16 v2, 0x4000

    if-ne v1, v2, :cond_11c

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_11c
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_12d

    const/16 v1, 0x11

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alignType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_12d
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x10000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_13d

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeMessageSize(ILcom/google/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13d
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_14f

    const/16 v1, 0x13

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUipDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14f
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x40000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15f

    const/16 v1, 0x14

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->editInputType_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_15f
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x80000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_171

    const/16 v1, 0x15

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_171
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x100000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_181

    const/16 v1, 0x16

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontSize_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_181
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_191

    const/16 v1, 0x17

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->left_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_191
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1a1

    const/16 v1, 0x18

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->top_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1a1
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1b1

    const/16 v1, 0x19

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->intParam_:I

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1b1
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x1000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1c3

    const/16 v1, 0x1a

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParamBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1c3
    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v2, 0x2000000

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1d3

    const/16 v1, 0x1b

    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->boolParam_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1d3
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedSerializedSize:I

    return v0
.end method

.method public final getStrParam()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getStrParamBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->strParam_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getTextBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->text_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getTop()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->top_:I

    return v0
.end method

.method public final getUipData()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getUipDataBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->uipData_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->unknownFields:Lcom/google/protobuf/UnknownFieldSet;

    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

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

    iput-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

    :cond_17
    return-object v1
.end method

.method public final getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 3

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_f

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->url_:Ljava/lang/Object;

    return-object v0

    :cond_f
    check-cast v0, Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public final getVisibleStatus()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->visibleStatus_:I

    return v0
.end method

.method public final getWidth()I
    .registers 2

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->width_:I

    return v0
.end method

.method public final hasAlignType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final hasBoolParam()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasColor()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x4000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasCommand()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_7

    return v1

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public final hasControlId()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultCheckStatus()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x80

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasDefaultItemIndex()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x200

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEditInputType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasEnabledStatus()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x1000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFontSize()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasFontType()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasHeight()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x20

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasIntParam()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasItemIndex()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLayoutStyle()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x40

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasLeft()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPadding()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasParentId()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public final hasPath()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasStrParam()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasText()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasTop()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUipData()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUrl()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x800

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasVisibleStatus()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x2000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    return v0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public final hasWidth()Z
    .registers 3

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x10

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

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage;->e()Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    const-class v1, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;

    const-class v2, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    invoke-virtual {v0, v1, v2}, Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessage$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .registers 5

    iget-byte v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedIsInitialized:B

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_b

    if-ne v0, v1, :cond_a

    return v1

    :cond_a
    return v2

    :cond_b
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasCommand()Z

    move-result v0

    if-nez v0, :cond_14

    iput-byte v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedIsInitialized:B

    return v2

    :cond_14
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->hasPadding()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPadding()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_27

    iput-byte v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedIsInitialized:B

    return v2

    :cond_27
    iput-byte v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->memoizedIsInitialized:B

    return v1
.end method

.method public final newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    invoke-static {}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->newBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 4

    new-instance v0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;-><init>(Lcom/google/protobuf/GeneratedMessage$BuilderParent;Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$1;)V

    return-object v0
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->newBuilderForType(Lcom/google/protobuf/GeneratedMessage$BuilderParent;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->newBuilderForType()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;
    .registers 2

    invoke-static {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->newBuilder(Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;)Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/Message$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic toBuilder()Lcom/google/protobuf/MessageLite$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->toBuilder()Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Builder;

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
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getSerializedSize()I

    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->command_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;

    invoke-virtual {v0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi$Command_Type;->getNumber()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_12
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_1f

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getControlIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_1f
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getParentIdBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_2d
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x8

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_3b

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getTextBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_3b
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v1, 0x10

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_48

    const/4 v0, 0x5

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->width_:I

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_48
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v3, 0x20

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_55

    const/4 v0, 0x6

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->height_:I

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_55
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v3, 0x40

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_62

    const/4 v0, 0x7

    iget v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->layoutStyle_:I

    invoke-virtual {p1, v0, v3}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_62
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v3, 0x80

    and-int/2addr v0, v3

    if-ne v0, v3, :cond_6e

    iget-boolean v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultCheckStatus_:Z

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_6e
    const/4 v0, 0x0

    :goto_6f
    iget-object v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v2}, Lcom/google/protobuf/LazyStringList;->size()I

    move-result v2

    if-ge v0, v2, :cond_85

    const/16 v2, 0x9

    iget-object v3, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemText_:Lcom/google/protobuf/LazyStringList;

    invoke-interface {v3, v0}, Lcom/google/protobuf/LazyStringList;->getByteString(I)Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6f

    :cond_85
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x100

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_93

    const/16 v0, 0xa

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->itemIndex_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_93
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x200

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_a1

    const/16 v0, 0xb

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->defaultItemIndex_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_a1
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x400

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_b1

    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getPathBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_b1
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x800

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_c1

    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUrlBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_c1
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x1000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_cf

    const/16 v0, 0xe

    iget-boolean v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->enabledStatus_:Z

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_cf
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x2000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_dd

    const/16 v0, 0xf

    iget v2, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->visibleStatus_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_dd
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/16 v2, 0x4000

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_eb

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getColorBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_eb
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const v1, 0x8000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_fa

    const/16 v0, 0x11

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->alignType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_fa
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_108

    const/16 v0, 0x12

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->padding_:Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$Padding_Var;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeMessage(ILcom/google/protobuf/MessageLite;)V

    :cond_108
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x20000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_118

    const/16 v0, 0x13

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUipDataBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_118
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x40000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_126

    const/16 v0, 0x14

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->editInputType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_126
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x80000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_136

    const/16 v0, 0x15

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getFontTypeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_136
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x100000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_144

    const/16 v0, 0x16

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->fontSize_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_144
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x200000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_152

    const/16 v0, 0x17

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->left_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_152
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_160

    const/16 v0, 0x18

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->top_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_160
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_16e

    const/16 v0, 0x19

    iget v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->intParam_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_16e
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x1000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_17e

    const/16 v0, 0x1a

    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getStrParamBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    :cond_17e
    iget v0, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->bitField0_:I

    const/high16 v1, 0x2000000

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_18c

    const/16 v0, 0x1b

    iget-boolean v1, p0, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->boolParam_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_18c
    invoke-virtual {p0}, Lcom/cyjh/mobileanjian/ipc/share/proto/UiMessage$CommandToUi;->getUnknownFields()Lcom/google/protobuf/UnknownFieldSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/UnknownFieldSet;->writeTo(Lcom/google/protobuf/CodedOutputStream;)V

    return-void
.end method
