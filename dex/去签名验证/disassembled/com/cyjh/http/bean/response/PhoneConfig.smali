.class public Lcom/cyjh/http/bean/response/PhoneConfig;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private Active:I

.field private CloudPhoneType:I

.field private DisableMsg:Ljava/lang/String;

.field private ImageUrl:Ljava/lang/String;

.field private JudgeMode:I

.field private LinkUrl:Ljava/lang/String;

.field private Package:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/http/bean/response/PhoneConfig$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/PhoneConfig$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/response/PhoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Active:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->JudgeMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->CloudPhoneType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/response/PhoneConfig;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/cyjh/http/bean/response/PhoneConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActive()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Active:I

    return v0
.end method

.method public getCloudPhoneType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->CloudPhoneType:I

    return v0
.end method

.method public getDisableMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getJudgeMode()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->JudgeMode:I

    return v0
.end method

.method public getLinkUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    return-object v0
.end method

.method public setActive(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Active:I

    return-void
.end method

.method public setCloudPhoneType(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->CloudPhoneType:I

    return-void
.end method

.method public setDisableMsg(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    return-void
.end method

.method public setJudgeMode(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->JudgeMode:I

    return-void
.end method

.method public setLinkUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    return-void
.end method

.method public setPackage(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Active:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->DisableMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->Package:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->JudgeMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->CloudPhoneType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->ImageUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/PhoneConfig;->LinkUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
