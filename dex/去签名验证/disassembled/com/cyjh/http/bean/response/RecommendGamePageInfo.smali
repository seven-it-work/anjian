.class public Lcom/cyjh/http/bean/response/RecommendGamePageInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/response/RecommendGamePageInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public CurrentPage:I

.field public DataCount:I

.field public IsLastPage:I

.field public PageCount:I

.field public PageSize:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/RecommendGamePageInfo$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->CurrentPage:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->PageSize:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->PageCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->DataCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->IsLastPage:I

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

    iget p2, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->CurrentPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->PageSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->PageCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->DataCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/http/bean/response/RecommendGamePageInfo;->IsLastPage:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
