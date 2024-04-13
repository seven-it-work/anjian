.class public Lcom/alibaba/sdk/android/oss/model/OSSRequest;
.super Ljava/lang/Object;


# instance fields
.field private isAuthorizationRequired:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->isAuthorizationRequired:Z

    return-void
.end method


# virtual methods
.method public isAuthorizationRequired()Z
    .registers 2

    iget-boolean v0, p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->isAuthorizationRequired:Z

    return v0
.end method

.method public setIsAuthorizationRequired(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/alibaba/sdk/android/oss/model/OSSRequest;->isAuthorizationRequired:Z

    return-void
.end method
