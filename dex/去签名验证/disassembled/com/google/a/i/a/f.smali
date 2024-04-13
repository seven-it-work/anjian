.class public final enum Lcom/google/a/i/a/f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/i/a/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/a/i/a/f;

.field private static final FOR_BITS:[Lcom/google/a/i/a/f;

.field public static final enum H:Lcom/google/a/i/a/f;

.field public static final enum L:Lcom/google/a/i/a/f;

.field public static final enum M:Lcom/google/a/i/a/f;

.field public static final enum Q:Lcom/google/a/i/a/f;


# instance fields
.field private final bits:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/google/a/i/a/f;

    const-string v1, "L"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/a/i/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/a/i/a/f;->L:Lcom/google/a/i/a/f;

    new-instance v0, Lcom/google/a/i/a/f;

    const-string v1, "M"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/a/i/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/a/i/a/f;->M:Lcom/google/a/i/a/f;

    new-instance v0, Lcom/google/a/i/a/f;

    const-string v1, "Q"

    const/4 v4, 0x3

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v4}, Lcom/google/a/i/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/a/i/a/f;->Q:Lcom/google/a/i/a/f;

    new-instance v0, Lcom/google/a/i/a/f;

    const-string v1, "H"

    invoke-direct {v0, v1, v4, v5}, Lcom/google/a/i/a/f;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/a/i/a/f;->H:Lcom/google/a/i/a/f;

    const/4 v0, 0x4

    new-array v1, v0, [Lcom/google/a/i/a/f;

    sget-object v6, Lcom/google/a/i/a/f;->L:Lcom/google/a/i/a/f;

    aput-object v6, v1, v3

    sget-object v6, Lcom/google/a/i/a/f;->M:Lcom/google/a/i/a/f;

    aput-object v6, v1, v2

    sget-object v6, Lcom/google/a/i/a/f;->Q:Lcom/google/a/i/a/f;

    aput-object v6, v1, v5

    sget-object v6, Lcom/google/a/i/a/f;->H:Lcom/google/a/i/a/f;

    aput-object v6, v1, v4

    sput-object v1, Lcom/google/a/i/a/f;->$VALUES:[Lcom/google/a/i/a/f;

    new-array v0, v0, [Lcom/google/a/i/a/f;

    sget-object v1, Lcom/google/a/i/a/f;->M:Lcom/google/a/i/a/f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/i/a/f;->L:Lcom/google/a/i/a/f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/i/a/f;->H:Lcom/google/a/i/a/f;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/a/i/a/f;->Q:Lcom/google/a/i/a/f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/a/i/a/f;->FOR_BITS:[Lcom/google/a/i/a/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/google/a/i/a/f;->bits:I

    return-void
.end method

.method public static forBits(I)Lcom/google/a/i/a/f;
    .registers 2

    if-ltz p0, :cond_d

    sget-object v0, Lcom/google/a/i/a/f;->FOR_BITS:[Lcom/google/a/i/a/f;

    array-length v0, v0

    if-lt p0, v0, :cond_8

    goto :goto_d

    :cond_8
    sget-object v0, Lcom/google/a/i/a/f;->FOR_BITS:[Lcom/google/a/i/a/f;

    aget-object p0, v0, p0

    return-object p0

    :cond_d
    :goto_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/i/a/f;
    .registers 2

    const-class v0, Lcom/google/a/i/a/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/i/a/f;

    return-object p0
.end method

.method public static values()[Lcom/google/a/i/a/f;
    .registers 1

    sget-object v0, Lcom/google/a/i/a/f;->$VALUES:[Lcom/google/a/i/a/f;

    invoke-virtual {v0}, [Lcom/google/a/i/a/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/i/a/f;

    return-object v0
.end method


# virtual methods
.method public final getBits()I
    .registers 2

    iget v0, p0, Lcom/google/a/i/a/f;->bits:I

    return v0
.end method
