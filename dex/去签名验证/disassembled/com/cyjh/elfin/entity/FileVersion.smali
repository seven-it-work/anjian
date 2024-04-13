.class public Lcom/cyjh/elfin/entity/FileVersion;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/elfin/entity/FileVersion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field atc:I

.field mq:I

.field prop:I

.field rtd:I

.field ui:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/entity/FileVersion$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FileVersion$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/FileVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    iput p2, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    iput p3, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    iput p4, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    iput p5, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getAtc()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    return v0
.end method

.method public getMq()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    return v0
.end method

.method public getProp()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    return v0
.end method

.method public getRtd()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    return v0
.end method

.method public getUi()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    return v0
.end method

.method public setAtc(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    return-void
.end method

.method public setMq(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    return-void
.end method

.method public setProp(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    return-void
.end method

.method public setRtd(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    return-void
.end method

.method public setUI(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Lcom/cyjh/elfin/entity/FileVersion;->atc:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/elfin/entity/FileVersion;->mq:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/elfin/entity/FileVersion;->prop:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/elfin/entity/FileVersion;->ui:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/cyjh/elfin/entity/FileVersion;->rtd:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
