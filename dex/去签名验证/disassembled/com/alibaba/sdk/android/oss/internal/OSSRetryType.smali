.class public final enum Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

.field public static final enum OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

.field public static final enum OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

.field public static final enum OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    const-string v1, "OSSRetryTypeShouldNotRetry"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    const-string v1, "OSSRetryTypeShouldRetry"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    new-instance v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    const-string v1, "OSSRetryTypeShouldFixedTimeSkewedAndRetry"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldNotRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->OSSRetryTypeShouldFixedTimeSkewedAndRetry:Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->$VALUES:[Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->$VALUES:[Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/internal/OSSRetryType;

    return-object v0
.end method
