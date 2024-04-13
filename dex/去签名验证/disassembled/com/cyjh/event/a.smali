.class public final Lcom/cyjh/event/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Lcom/google/protobuf/ByteString;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/protobuf/ByteString;)V
    .registers 1

    sput-object p0, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/cyjh/event/a;->a:Z

    return-void
.end method

.method public static a()[B
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/cyjh/event/a;->a:Z

    sget-object v1, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    if-nez v1, :cond_b

    return-object v0

    :cond_b
    sget-object v0, Lcom/cyjh/event/a;->b:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
