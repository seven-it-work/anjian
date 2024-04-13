.class final Lcom/cyjh/elfin/entity/BestResolution$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/BestResolution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/elfin/entity/BestResolution;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BestResolution;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/entity/BestResolution;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/cyjh/elfin/entity/BestResolution;-><init>(II)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BestResolution$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BestResolution;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/cyjh/elfin/entity/BestResolution;
    .registers 2

    new-array p1, p1, [Lcom/cyjh/elfin/entity/BestResolution;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BestResolution$1;->newArray(I)[Lcom/cyjh/elfin/entity/BestResolution;

    move-result-object p1

    return-object p1
.end method
