.class final Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper;->addProgressResponseListener(Lb/z;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)Lb/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;->val$context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final intercept(Lb/w$a;)Lb/ae;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lb/w$a;->a()Lb/ac;

    move-result-object v0

    invoke-interface {p1, v0}, Lb/w$a;->a(Lb/ac;)Lb/ae;

    move-result-object p1

    invoke-virtual {p1}, Lb/ae;->e()Lb/ae$a;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;

    invoke-virtual {p1}, Lb/ae;->d()Lb/af;

    move-result-object p1

    iget-object v2, p0, Lcom/alibaba/sdk/android/oss/network/NetworkProgressHelper$1;->val$context:Lcom/alibaba/sdk/android/oss/network/ExecutionContext;

    invoke-direct {v1, p1, v2}, Lcom/alibaba/sdk/android/oss/network/ProgressTouchableResponseBody;-><init>(Lb/af;Lcom/alibaba/sdk/android/oss/network/ExecutionContext;)V

    invoke-virtual {v0, v1}, Lb/ae$a;->a(Lb/af;)Lb/ae$a;

    move-result-object p1

    invoke-virtual {p1}, Lb/ae$a;->a()Lb/ae;

    move-result-object p1

    return-object p1
.end method
