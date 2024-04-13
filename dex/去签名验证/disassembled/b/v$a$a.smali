.class final enum Lb/v$a$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/v$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lb/v$a$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lb/v$a$a;

.field public static final enum INVALID_HOST:Lb/v$a$a;

.field public static final enum INVALID_PORT:Lb/v$a$a;

.field public static final enum MISSING_SCHEME:Lb/v$a$a;

.field public static final enum SUCCESS:Lb/v$a$a;

.field public static final enum UNSUPPORTED_SCHEME:Lb/v$a$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lb/v$a$a;

    const-string v1, "SUCCESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lb/v$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/v$a$a;->SUCCESS:Lb/v$a$a;

    new-instance v0, Lb/v$a$a;

    const-string v1, "MISSING_SCHEME"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lb/v$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/v$a$a;->MISSING_SCHEME:Lb/v$a$a;

    new-instance v0, Lb/v$a$a;

    const-string v1, "UNSUPPORTED_SCHEME"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lb/v$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/v$a$a;->UNSUPPORTED_SCHEME:Lb/v$a$a;

    new-instance v0, Lb/v$a$a;

    const-string v1, "INVALID_PORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lb/v$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/v$a$a;->INVALID_PORT:Lb/v$a$a;

    new-instance v0, Lb/v$a$a;

    const-string v1, "INVALID_HOST"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lb/v$a$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lb/v$a$a;->INVALID_HOST:Lb/v$a$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lb/v$a$a;

    sget-object v1, Lb/v$a$a;->SUCCESS:Lb/v$a$a;

    aput-object v1, v0, v2

    sget-object v1, Lb/v$a$a;->MISSING_SCHEME:Lb/v$a$a;

    aput-object v1, v0, v3

    sget-object v1, Lb/v$a$a;->UNSUPPORTED_SCHEME:Lb/v$a$a;

    aput-object v1, v0, v4

    sget-object v1, Lb/v$a$a;->INVALID_PORT:Lb/v$a$a;

    aput-object v1, v0, v5

    sget-object v1, Lb/v$a$a;->INVALID_HOST:Lb/v$a$a;

    aput-object v1, v0, v6

    sput-object v0, Lb/v$a$a;->$VALUES:[Lb/v$a$a;

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

.method public static valueOf(Ljava/lang/String;)Lb/v$a$a;
    .registers 2

    const-class v0, Lb/v$a$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lb/v$a$a;

    return-object p0
.end method

.method public static values()[Lb/v$a$a;
    .registers 1

    sget-object v0, Lb/v$a$a;->$VALUES:[Lb/v$a$a;

    invoke-virtual {v0}, [Lb/v$a$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lb/v$a$a;

    return-object v0
.end method
