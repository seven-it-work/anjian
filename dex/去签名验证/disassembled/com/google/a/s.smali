.class public final enum Lcom/google/a/s;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/s;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/a/s;

.field public static final enum BYTE_SEGMENTS:Lcom/google/a/s;

.field public static final enum ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

.field public static final enum ISSUE_NUMBER:Lcom/google/a/s;

.field public static final enum ORIENTATION:Lcom/google/a/s;

.field public static final enum OTHER:Lcom/google/a/s;

.field public static final enum PDF417_EXTRA_METADATA:Lcom/google/a/s;

.field public static final enum POSSIBLE_COUNTRY:Lcom/google/a/s;

.field public static final enum STRUCTURED_APPEND_PARITY:Lcom/google/a/s;

.field public static final enum STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

.field public static final enum SUGGESTED_PRICE:Lcom/google/a/s;

.field public static final enum UPC_EAN_EXTENSION:Lcom/google/a/s;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    new-instance v0, Lcom/google/a/s;

    const-string v1, "OTHER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->OTHER:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "ORIENTATION"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->ORIENTATION:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "BYTE_SEGMENTS"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "ERROR_CORRECTION_LEVEL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "ISSUE_NUMBER"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->ISSUE_NUMBER:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "SUGGESTED_PRICE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->SUGGESTED_PRICE:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "POSSIBLE_COUNTRY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->POSSIBLE_COUNTRY:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "UPC_EAN_EXTENSION"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->UPC_EAN_EXTENSION:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "PDF417_EXTRA_METADATA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->PDF417_EXTRA_METADATA:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "STRUCTURED_APPEND_SEQUENCE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    new-instance v0, Lcom/google/a/s;

    const-string v1, "STRUCTURED_APPEND_PARITY"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/google/a/s;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/s;->STRUCTURED_APPEND_PARITY:Lcom/google/a/s;

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/google/a/s;

    sget-object v1, Lcom/google/a/s;->OTHER:Lcom/google/a/s;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/s;->ORIENTATION:Lcom/google/a/s;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/s;->BYTE_SEGMENTS:Lcom/google/a/s;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/s;->ERROR_CORRECTION_LEVEL:Lcom/google/a/s;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/s;->ISSUE_NUMBER:Lcom/google/a/s;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/s;->SUGGESTED_PRICE:Lcom/google/a/s;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/a/s;->POSSIBLE_COUNTRY:Lcom/google/a/s;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/a/s;->UPC_EAN_EXTENSION:Lcom/google/a/s;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/a/s;->PDF417_EXTRA_METADATA:Lcom/google/a/s;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/a/s;->STRUCTURED_APPEND_SEQUENCE:Lcom/google/a/s;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/a/s;->STRUCTURED_APPEND_PARITY:Lcom/google/a/s;

    aput-object v1, v0, v12

    sput-object v0, Lcom/google/a/s;->$VALUES:[Lcom/google/a/s;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/s;
    .registers 2

    const-class v0, Lcom/google/a/s;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/s;

    return-object p0
.end method

.method public static values()[Lcom/google/a/s;
    .registers 1

    sget-object v0, Lcom/google/a/s;->$VALUES:[Lcom/google/a/s;

    invoke-virtual {v0}, [Lcom/google/a/s;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/s;

    return-object v0
.end method
