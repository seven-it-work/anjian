.class public final enum Lcom/google/a/d/c/l;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/d/c/l;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/a/d/c/l;

.field public static final enum FORCE_NONE:Lcom/google/a/d/c/l;

.field public static final enum FORCE_RECTANGLE:Lcom/google/a/d/c/l;

.field public static final enum FORCE_SQUARE:Lcom/google/a/d/c/l;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/google/a/d/c/l;

    const-string v1, "FORCE_NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/d/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/d/c/l;->FORCE_NONE:Lcom/google/a/d/c/l;

    new-instance v0, Lcom/google/a/d/c/l;

    const-string v1, "FORCE_SQUARE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/a/d/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/d/c/l;->FORCE_SQUARE:Lcom/google/a/d/c/l;

    new-instance v0, Lcom/google/a/d/c/l;

    const-string v1, "FORCE_RECTANGLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/a/d/c/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/d/c/l;->FORCE_RECTANGLE:Lcom/google/a/d/c/l;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/a/d/c/l;

    sget-object v1, Lcom/google/a/d/c/l;->FORCE_NONE:Lcom/google/a/d/c/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/d/c/l;->FORCE_SQUARE:Lcom/google/a/d/c/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/d/c/l;->FORCE_RECTANGLE:Lcom/google/a/d/c/l;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/a/d/c/l;->$VALUES:[Lcom/google/a/d/c/l;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/d/c/l;
    .registers 2

    const-class v0, Lcom/google/a/d/c/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/d/c/l;

    return-object p0
.end method

.method public static values()[Lcom/google/a/d/c/l;
    .registers 1

    sget-object v0, Lcom/google/a/d/c/l;->$VALUES:[Lcom/google/a/d/c/l;

    invoke-virtual {v0}, [Lcom/google/a/d/c/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/d/c/l;

    return-object v0
.end method
