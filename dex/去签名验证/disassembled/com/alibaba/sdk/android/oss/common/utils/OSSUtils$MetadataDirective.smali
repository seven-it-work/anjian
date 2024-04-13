.class final enum Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MetadataDirective"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

.field public static final enum COPY:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

.field public static final enum REPLACE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;


# instance fields
.field private final directiveAsString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    const-string v1, "COPY"

    const-string v2, "COPY"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->COPY:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    new-instance v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    const-string v1, "REPLACE"

    const-string v2, "REPLACE"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->REPLACE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->COPY:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->REPLACE:Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

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

    iput-object p3, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->directiveAsString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;
    .registers 2

    const-class v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;
    .registers 1

    sget-object v0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->$VALUES:[Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    invoke-virtual {v0}, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;

    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils$MetadataDirective;->directiveAsString:Ljava/lang/String;

    return-object v0
.end method
