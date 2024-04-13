.class final Lcom/elf/studio/enity/IMResultInfo$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elf/studio/enity/IMResultInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/elf/studio/enity/IMResultInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/os/Parcel;)Lcom/elf/studio/enity/IMResultInfo;
    .registers 2

    new-instance v0, Lcom/elf/studio/enity/IMResultInfo;

    invoke-direct {v0, p0}, Lcom/elf/studio/enity/IMResultInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method private static a(I)[Lcom/elf/studio/enity/IMResultInfo;
    .registers 1

    new-array p0, p0, [Lcom/elf/studio/enity/IMResultInfo;

    return-object p0
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    new-instance v0, Lcom/elf/studio/enity/IMResultInfo;

    invoke-direct {v0, p1}, Lcom/elf/studio/enity/IMResultInfo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    new-array p1, p1, [Lcom/elf/studio/enity/IMResultInfo;

    return-object p1
.end method
