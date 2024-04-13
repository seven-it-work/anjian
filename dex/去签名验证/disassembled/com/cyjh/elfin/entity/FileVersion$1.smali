.class final Lcom/cyjh/elfin/entity/FileVersion$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/FileVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/elfin/entity/FileVersion;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/FileVersion;
    .registers 9

    new-instance v6, Lcom/cyjh/elfin/entity/FileVersion;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/cyjh/elfin/entity/FileVersion;-><init>(IIIII)V

    return-object v6
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/FileVersion$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/FileVersion;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/cyjh/elfin/entity/FileVersion;
    .registers 2

    new-array p1, p1, [Lcom/cyjh/elfin/entity/FileVersion;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/FileVersion$1;->newArray(I)[Lcom/cyjh/elfin/entity/FileVersion;

    move-result-object p1

    return-object p1
.end method
