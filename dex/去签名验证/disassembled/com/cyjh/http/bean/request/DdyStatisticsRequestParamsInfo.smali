.class public Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;
.super Lcom/cyjh/http/bean/request/BaseRequestValueInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public IsChargeStatistics:I

.field public IsDDYun:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsDDYun:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsChargeStatistics:I

    return-void
.end method

.method public constructor <init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>(Lcom/cyjh/http/bean/request/BaseRequestValueInfo;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "StatisticsRequestParamsInfo{IsDDYun="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsDDYun:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "IsChargeStatistics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsChargeStatistics:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", TemplateFileId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->TemplateFileId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", TemplateVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->TemplateVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", AppId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->AppId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", AppVersion=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->AppVersion:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", DeviceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->DeviceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", ClientTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->ClientTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget p2, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsDDYun:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/request/DdyStatisticsRequestParamsInfo;->IsChargeStatistics:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
