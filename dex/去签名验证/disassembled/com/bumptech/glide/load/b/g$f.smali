.class public final enum Lcom/bumptech/glide/load/b/g$f;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/b/g$f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/b/g$f;

.field public static final enum DECODE_DATA:Lcom/bumptech/glide/load/b/g$f;

.field public static final enum INITIALIZE:Lcom/bumptech/glide/load/b/g$f;

.field public static final enum SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/g$f;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/bumptech/glide/load/b/g$f;

    const-string v1, "INITIALIZE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/b/g$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/g$f;->INITIALIZE:Lcom/bumptech/glide/load/b/g$f;

    new-instance v0, Lcom/bumptech/glide/load/b/g$f;

    const-string v1, "SWITCH_TO_SOURCE_SERVICE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/bumptech/glide/load/b/g$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/g$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/g$f;

    new-instance v0, Lcom/bumptech/glide/load/b/g$f;

    const-string v1, "DECODE_DATA"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/bumptech/glide/load/b/g$f;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/b/g$f;->DECODE_DATA:Lcom/bumptech/glide/load/b/g$f;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/bumptech/glide/load/b/g$f;

    sget-object v1, Lcom/bumptech/glide/load/b/g$f;->INITIALIZE:Lcom/bumptech/glide/load/b/g$f;

    aput-object v1, v0, v2

    sget-object v1, Lcom/bumptech/glide/load/b/g$f;->SWITCH_TO_SOURCE_SERVICE:Lcom/bumptech/glide/load/b/g$f;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/b/g$f;->DECODE_DATA:Lcom/bumptech/glide/load/b/g$f;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/b/g$f;->$VALUES:[Lcom/bumptech/glide/load/b/g$f;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/b/g$f;
    .registers 2

    const-class v0, Lcom/bumptech/glide/load/b/g$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/b/g$f;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/b/g$f;
    .registers 1

    sget-object v0, Lcom/bumptech/glide/load/b/g$f;->$VALUES:[Lcom/bumptech/glide/load/b/g$f;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/b/g$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/b/g$f;

    return-object v0
.end method
