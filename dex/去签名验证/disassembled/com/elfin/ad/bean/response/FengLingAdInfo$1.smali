.class final Lcom/elfin/ad/bean/response/FengLingAdInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/elfin/ad/bean/response/FengLingAdInfo;
    .registers 2

    new-instance v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {v0, p0}, Lcom/elfin/ad/bean/response/FengLingAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/elfin/ad/bean/response/FengLingAdInfo;
    .registers 1

    new-array p0, p0, [Lcom/elfin/ad/bean/response/FengLingAdInfo;

    return-object p0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {v0, p1}, Lcom/elfin/ad/bean/response/FengLingAdInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/elfin/ad/bean/response/FengLingAdInfo;

    return-object p1
.end method
