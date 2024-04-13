.class abstract enum Lcom/google/a/i/a/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/i/a/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_000:Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_001:Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_010:Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_011:Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_100:Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_101:Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_110:Lcom/google/a/i/a/c;

.field public static final enum DATA_MASK_111:Lcom/google/a/i/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    new-instance v0, Lcom/google/a/i/a/c$1;

    const-string v1, "DATA_MASK_000"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/i/a/c$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_000:Lcom/google/a/i/a/c;

    new-instance v0, Lcom/google/a/i/a/c$2;

    const-string v1, "DATA_MASK_001"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/a/i/a/c$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_001:Lcom/google/a/i/a/c;

    new-instance v0, Lcom/google/a/i/a/c$3;

    const-string v1, "DATA_MASK_010"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/a/i/a/c$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_010:Lcom/google/a/i/a/c;

    new-instance v0, Lcom/google/a/i/a/c$4;

    const-string v1, "DATA_MASK_011"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/a/i/a/c$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_011:Lcom/google/a/i/a/c;

    new-instance v0, Lcom/google/a/i/a/c$5;

    const-string v1, "DATA_MASK_100"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/google/a/i/a/c$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_100:Lcom/google/a/i/a/c;

    new-instance v0, Lcom/google/a/i/a/c$6;

    const-string v1, "DATA_MASK_101"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/google/a/i/a/c$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_101:Lcom/google/a/i/a/c;

    new-instance v0, Lcom/google/a/i/a/c$7;

    const-string v1, "DATA_MASK_110"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/google/a/i/a/c$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_110:Lcom/google/a/i/a/c;

    new-instance v0, Lcom/google/a/i/a/c$8;

    const-string v1, "DATA_MASK_111"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/google/a/i/a/c$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/i/a/c;->DATA_MASK_111:Lcom/google/a/i/a/c;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/a/i/a/c;

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_000:Lcom/google/a/i/a/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_001:Lcom/google/a/i/a/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_010:Lcom/google/a/i/a/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_011:Lcom/google/a/i/a/c;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_100:Lcom/google/a/i/a/c;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_101:Lcom/google/a/i/a/c;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_110:Lcom/google/a/i/a/c;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/a/i/a/c;->DATA_MASK_111:Lcom/google/a/i/a/c;

    aput-object v1, v0, v9

    sput-object v0, Lcom/google/a/i/a/c;->$VALUES:[Lcom/google/a/i/a/c;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/a/i/a/c$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/a/i/a/c;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/i/a/c;
    .registers 2

    const-class v0, Lcom/google/a/i/a/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/i/a/c;

    return-object p0
.end method

.method public static values()[Lcom/google/a/i/a/c;
    .registers 1

    sget-object v0, Lcom/google/a/i/a/c;->$VALUES:[Lcom/google/a/i/a/c;

    invoke-virtual {v0}, [Lcom/google/a/i/a/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/i/a/c;

    return-object v0
.end method


# virtual methods
.method abstract isMasked(II)Z
.end method

.method final unmaskBitMatrix(Lcom/google/a/c/b;I)V
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, p2, :cond_16

    const/4 v2, 0x0

    :goto_5
    if-ge v2, p2, :cond_13

    invoke-virtual {p0, v1, v2}, Lcom/google/a/i/a/c;->isMasked(II)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-virtual {p1, v2, v1}, Lcom/google/a/c/b;->c(II)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_16
    return-void
.end method
