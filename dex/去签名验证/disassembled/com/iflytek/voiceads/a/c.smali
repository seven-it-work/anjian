.class public Lcom/iflytek/voiceads/a/c;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    const-string v0, "succes"

    const-string v1, "network error"

    const-string v2, "server error"

    const-string v3, "invalid ad request"

    const-string v4, "no fill"

    const-string v5, "invalid ad unit id"

    const-string v6, "permission error"

    const-string v7, "unknown error"

    const-string v8, "request over limit"

    const-string v9, "ad page load timeout"

    const-string v10, "ad page load error"

    const-string v11, "video cache error"

    const-string v12, "activity finish error"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/a/c;->a:[Ljava/lang/String;

    const-string v0, "Error code"

    const-string v1, "Unexpected error"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/iflytek/voiceads/a/c;->b:[Ljava/lang/String;

    return-void
.end method
