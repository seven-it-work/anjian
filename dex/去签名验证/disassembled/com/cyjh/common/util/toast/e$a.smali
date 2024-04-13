.class public final enum Lcom/cyjh/common/util/toast/e$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/common/util/toast/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/cyjh/common/util/toast/e$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_BMP:Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_GIF:Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_ICO:Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_JPG:Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_PNG:Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_TIFF:Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_UNKNOWN:Lcom/cyjh/common/util/toast/e$a;

.field public static final enum TYPE_WEBP:Lcom/cyjh/common/util/toast/e$a;


# instance fields
.field value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_JPG"

    const-string v2, "jpg"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_JPG:Lcom/cyjh/common/util/toast/e$a;

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_PNG"

    const-string v2, "png"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_PNG:Lcom/cyjh/common/util/toast/e$a;

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_GIF"

    const-string v2, "gif"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_GIF:Lcom/cyjh/common/util/toast/e$a;

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_TIFF"

    const-string v2, "tiff"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_TIFF:Lcom/cyjh/common/util/toast/e$a;

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_BMP"

    const-string v2, "bmp"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_BMP:Lcom/cyjh/common/util/toast/e$a;

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_WEBP"

    const-string v2, "webp"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_WEBP:Lcom/cyjh/common/util/toast/e$a;

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_ICO"

    const-string v2, "ico"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_ICO:Lcom/cyjh/common/util/toast/e$a;

    new-instance v0, Lcom/cyjh/common/util/toast/e$a;

    const-string v1, "TYPE_UNKNOWN"

    const-string v2, "unknown"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/cyjh/common/util/toast/e$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->TYPE_UNKNOWN:Lcom/cyjh/common/util/toast/e$a;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/cyjh/common/util/toast/e$a;

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_JPG:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_PNG:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_GIF:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_TIFF:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_BMP:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v7

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_WEBP:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v8

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_ICO:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v9

    sget-object v1, Lcom/cyjh/common/util/toast/e$a;->TYPE_UNKNOWN:Lcom/cyjh/common/util/toast/e$a;

    aput-object v1, v0, v10

    sput-object v0, Lcom/cyjh/common/util/toast/e$a;->$VALUES:[Lcom/cyjh/common/util/toast/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/cyjh/common/util/toast/e$a;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/cyjh/common/util/toast/e$a;
    .registers 2

    const-class v0, Lcom/cyjh/common/util/toast/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/cyjh/common/util/toast/e$a;

    return-object p0
.end method

.method public static values()[Lcom/cyjh/common/util/toast/e$a;
    .registers 1

    sget-object v0, Lcom/cyjh/common/util/toast/e$a;->$VALUES:[Lcom/cyjh/common/util/toast/e$a;

    invoke-virtual {v0}, [Lcom/cyjh/common/util/toast/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/cyjh/common/util/toast/e$a;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/common/util/toast/e$a;->value:Ljava/lang/String;

    return-object v0
.end method
