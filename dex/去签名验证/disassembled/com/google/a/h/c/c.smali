.class public final enum Lcom/google/a/h/c/c;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/a/h/c/c;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/a/h/c/c;

.field public static final enum AUTO:Lcom/google/a/h/c/c;

.field public static final enum BYTE:Lcom/google/a/h/c/c;

.field public static final enum NUMERIC:Lcom/google/a/h/c/c;

.field public static final enum TEXT:Lcom/google/a/h/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Lcom/google/a/h/c/c;

    const-string v1, "AUTO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/a/h/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/h/c/c;->AUTO:Lcom/google/a/h/c/c;

    new-instance v0, Lcom/google/a/h/c/c;

    const-string v1, "TEXT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/a/h/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/h/c/c;->TEXT:Lcom/google/a/h/c/c;

    new-instance v0, Lcom/google/a/h/c/c;

    const-string v1, "BYTE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/a/h/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/h/c/c;->BYTE:Lcom/google/a/h/c/c;

    new-instance v0, Lcom/google/a/h/c/c;

    const-string v1, "NUMERIC"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/a/h/c/c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/a/h/c/c;->NUMERIC:Lcom/google/a/h/c/c;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/a/h/c/c;

    sget-object v1, Lcom/google/a/h/c/c;->AUTO:Lcom/google/a/h/c/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/a/h/c/c;->TEXT:Lcom/google/a/h/c/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/a/h/c/c;->BYTE:Lcom/google/a/h/c/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/a/h/c/c;->NUMERIC:Lcom/google/a/h/c/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/google/a/h/c/c;->$VALUES:[Lcom/google/a/h/c/c;

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

.method public static valueOf(Ljava/lang/String;)Lcom/google/a/h/c/c;
    .registers 2

    const-class v0, Lcom/google/a/h/c/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/a/h/c/c;

    return-object p0
.end method

.method public static values()[Lcom/google/a/h/c/c;
    .registers 1

    sget-object v0, Lcom/google/a/h/c/c;->$VALUES:[Lcom/google/a/h/c/c;

    invoke-virtual {v0}, [Lcom/google/a/h/c/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/a/h/c/c;

    return-object v0
.end method
