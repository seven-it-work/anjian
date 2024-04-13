.class public Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;
.super Lcom/cyjh/http/bean/request/BaseRequestValueInfo;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public IsSuperpose:I

.field public OldRegCode:Ljava/lang/String;

.field public RegCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->IsSuperpose:I

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

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    invoke-super {p0, p1, p2}, Lcom/cyjh/http/bean/request/BaseRequestValueInfo;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->RegCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->OldRegCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/cyjh/http/bean/request/BindRegCodeRequestInfo;->IsSuperpose:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
