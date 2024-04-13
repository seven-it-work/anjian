.class public final enum Lb/a/f/b;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/a/f/b;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lb/a/f/b;

.field public static final enum CANCEL:Lb/a/f/b;

.field public static final enum FLOW_CONTROL_ERROR:Lb/a/f/b;

.field public static final enum INTERNAL_ERROR:Lb/a/f/b;

.field public static final enum NO_ERROR:Lb/a/f/b;

.field public static final enum PROTOCOL_ERROR:Lb/a/f/b;

.field public static final enum REFUSED_STREAM:Lb/a/f/b;


# instance fields
.field public final httpCode:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lb/a/f/b;

    const-string v1, "NO_ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lb/a/f/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/f/b;->NO_ERROR:Lb/a/f/b;

    new-instance v0, Lb/a/f/b;

    const-string v1, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lb/a/f/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/f/b;->PROTOCOL_ERROR:Lb/a/f/b;

    new-instance v0, Lb/a/f/b;

    const-string v1, "INTERNAL_ERROR"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lb/a/f/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/f/b;->INTERNAL_ERROR:Lb/a/f/b;

    new-instance v0, Lb/a/f/b;

    const-string v1, "FLOW_CONTROL_ERROR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lb/a/f/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/f/b;->FLOW_CONTROL_ERROR:Lb/a/f/b;

    new-instance v0, Lb/a/f/b;

    const-string v1, "REFUSED_STREAM"

    const/4 v6, 0x4

    const/4 v7, 0x7

    invoke-direct {v0, v1, v6, v7}, Lb/a/f/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/f/b;->REFUSED_STREAM:Lb/a/f/b;

    new-instance v0, Lb/a/f/b;

    const-string v1, "CANCEL"

    const/4 v7, 0x5

    const/16 v8, 0x8

    invoke-direct {v0, v1, v7, v8}, Lb/a/f/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lb/a/f/b;->CANCEL:Lb/a/f/b;

    const/4 v0, 0x6

    new-array v0, v0, [Lb/a/f/b;

    sget-object v1, Lb/a/f/b;->NO_ERROR:Lb/a/f/b;

    aput-object v1, v0, v2

    sget-object v1, Lb/a/f/b;->PROTOCOL_ERROR:Lb/a/f/b;

    aput-object v1, v0, v3

    sget-object v1, Lb/a/f/b;->INTERNAL_ERROR:Lb/a/f/b;

    aput-object v1, v0, v4

    sget-object v1, Lb/a/f/b;->FLOW_CONTROL_ERROR:Lb/a/f/b;

    aput-object v1, v0, v5

    sget-object v1, Lb/a/f/b;->REFUSED_STREAM:Lb/a/f/b;

    aput-object v1, v0, v6

    sget-object v1, Lb/a/f/b;->CANCEL:Lb/a/f/b;

    aput-object v1, v0, v7

    sput-object v0, Lb/a/f/b;->$VALUES:[Lb/a/f/b;

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

    iput p3, p0, Lb/a/f/b;->httpCode:I

    return-void
.end method

.method public static fromHttp2(I)Lb/a/f/b;
    .registers 6

    invoke-static {}, Lb/a/f/b;->values()[Lb/a/f/b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v1, :cond_12

    aget-object v3, v0, v2

    iget v4, v3, Lb/a/f/b;->httpCode:I

    if-ne v4, p0, :cond_f

    return-object v3

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lb/a/f/b;
    .registers 2

    const-class v0, Lb/a/f/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/a/f/b;

    return-object p0
.end method

.method public static values()[Lb/a/f/b;
    .registers 1

    sget-object v0, Lb/a/f/b;->$VALUES:[Lb/a/f/b;

    invoke-virtual {v0}, [Lb/a/f/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/a/f/b;

    return-object v0
.end method
