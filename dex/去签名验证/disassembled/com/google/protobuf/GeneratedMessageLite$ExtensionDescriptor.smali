.class final Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/protobuf/FieldSet$FieldDescriptorLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ExtensionDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/FieldSet$FieldDescriptorLite<",
        "Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
        ">;"
    }
.end annotation


# instance fields
.field private final enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation
.end field

.field private final isPacked:Z

.field private final isRepeated:Z

.field private final number:I

.field private final type:Lcom/google/protobuf/WireFormat$FieldType;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;I",
            "Lcom/google/protobuf/WireFormat$FieldType;",
            "ZZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    iput p2, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iput-object p3, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    iput-boolean p4, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    iput-boolean p5, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZLcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;-><init>(Lcom/google/protobuf/Internal$EnumLiteMap;ILcom/google/protobuf/WireFormat$FieldType;ZZ)V

    return-void
.end method

.method static synthetic access$1(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return p0
.end method

.method static synthetic access$2(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)Lcom/google/protobuf/WireFormat$FieldType;
    .registers 1

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    return-object p0
.end method


# virtual methods
.method public final compareTo(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I
    .registers 3

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    iget p1, p1, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->compareTo(Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;)I

    move-result p1

    return p1
.end method

.method public final getEnumType()Lcom/google/protobuf/Internal$EnumLiteMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->enumTypeMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public final getLiteJavaType()Lcom/google/protobuf/WireFormat$JavaType;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    invoke-virtual {v0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v0

    return-object v0
.end method

.method public final getLiteType()Lcom/google/protobuf/WireFormat$FieldType;
    .registers 2

    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->type:Lcom/google/protobuf/WireFormat$FieldType;

    return-object v0
.end method

.method public final getNumber()I
    .registers 2

    iget v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->number:I

    return v0
.end method

.method public final internalMergeFrom(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/MessageLite$Builder;
    .registers 3

    check-cast p1, Lcom/google/protobuf/GeneratedMessageLite$Builder;

    check-cast p2, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {p1, p2}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final isPacked()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isPacked:Z

    return v0
.end method

.method public final isRepeated()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageLite$ExtensionDescriptor;->isRepeated:Z

    return v0
.end method
