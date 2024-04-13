.class final Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    invoke-direct {v0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;
    .registers 2

    new-array p1, p1, [Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo$1;->newArray(I)[Lcom/cyjh/elfin/entity/BindRegCodeResponse$RegCodeTimeInfo;

    move-result-object p1

    return-object p1
.end method
