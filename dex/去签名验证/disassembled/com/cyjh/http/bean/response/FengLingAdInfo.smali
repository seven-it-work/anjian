.class public Lcom/cyjh/http/bean/response/FengLingAdInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;,
        Lcom/cyjh/http/bean/response/FengLingAdInfo$Imgs;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/response/FengLingAdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionName:I

.field private adId:I

.field private adPlatformIcon:Ljava/lang/String;

.field private adPlatformId:I

.field private clickUrl:Ljava/lang/String;

.field private creativeType:I

.field private drawType:I

.field private height:I

.field private imgs:Lcom/cyjh/http/bean/response/FengLingAdInfo$Imgs;

.field private rating:I

.field private title:Ljava/lang/String;

.field private webTracks:Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/http/bean/response/FengLingAdInfo$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/FengLingAdInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->creativeType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->drawType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->actionName:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->width:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->height:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->rating:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformId:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getActionName()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->actionName:I

    return v0
.end method

.method public getAdId()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adId:I

    return v0
.end method

.method public getAdPlatformIcon()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getAdPlatformId()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformId:I

    return v0
.end method

.method public getClickUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCreativeType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->creativeType:I

    return v0
.end method

.method public getDrawType()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->drawType:I

    return v0
.end method

.method public getHeight()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->height:I

    return v0
.end method

.method public getImgs()Lcom/cyjh/http/bean/response/FengLingAdInfo$Imgs;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->imgs:Lcom/cyjh/http/bean/response/FengLingAdInfo$Imgs;

    return-object v0
.end method

.method public getRating()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->rating:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWebTracks()Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->webTracks:Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    iget v0, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->width:I

    return v0
.end method

.method public setActionName(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->actionName:I

    return-void
.end method

.method public setAdId(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adId:I

    return-void
.end method

.method public setAdPlatformIcon(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    return-void
.end method

.method public setAdPlatformId(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformId:I

    return-void
.end method

.method public setClickUrl(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    return-void
.end method

.method public setCreativeType(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->creativeType:I

    return-void
.end method

.method public setDrawType(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->drawType:I

    return-void
.end method

.method public setHeight(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->height:I

    return-void
.end method

.method public setImgs(Lcom/cyjh/http/bean/response/FengLingAdInfo$Imgs;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->imgs:Lcom/cyjh/http/bean/response/FengLingAdInfo$Imgs;

    return-void
.end method

.method public setRating(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->rating:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setWebTracks(Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->webTracks:Lcom/cyjh/http/bean/response/FengLingAdInfo$WebTracks;

    return-void
.end method

.method public setWidth(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->width:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->creativeType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->drawType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->actionName:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->rating:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->clickUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cyjh/http/bean/response/FengLingAdInfo;->adPlatformId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
