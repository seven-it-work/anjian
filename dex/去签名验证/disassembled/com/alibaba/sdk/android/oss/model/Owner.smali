.class public Lcom/alibaba/sdk/android/oss/model/Owner;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1af6110a0c683242L


# instance fields
.field private displayName:Ljava/lang/String;

.field private id:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/alibaba/sdk/android/oss/model/Owner;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->displayName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    instance-of v0, p1, Lcom/alibaba/sdk/android/oss/model/Owner;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    check-cast p1, Lcom/alibaba/sdk/android/oss/model/Owner;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    if-nez v0, :cond_1c

    const-string v0, ""

    :cond_1c
    if-nez p1, :cond_20

    const-string p1, ""

    :cond_20
    if-nez v2, :cond_24

    const-string v2, ""

    :cond_24
    if-nez v3, :cond_28

    const-string v3, ""

    :cond_28
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 p1, 0x1

    return p1

    :cond_36
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->displayName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/alibaba/sdk/android/oss/model/Owner;->id:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Owner [name="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/alibaba/sdk/android/oss/model/Owner;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
