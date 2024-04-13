.class public Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProgressRequestBody(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;
    .registers 12

    new-instance v6, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableRequestBody;-><init>(Ljava/io/InputStream;JLjava/lang/String;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    return-object v6
.end method

.method public static addProgressResponseListener(Lb/z;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lb/z;
    .registers 3

    invoke-virtual {p0}, Lb/z;->a()Lb/z$a;

    move-result-object p0

    new-instance v0, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;

    invoke-direct {v0, p1}, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;-><init>(Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    invoke-virtual {p0, v0}, Lb/z$a;->a(Lb/w;)Lb/z$a;

    move-result-object p0

    invoke-virtual {p0}, Lb/z$a;->e()Lb/z;

    move-result-object p0

    return-object p0
.end method
