.class public Lcom/cyjh/elfin/entity/ScriptLog;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/elfin/entity/ScriptLog;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private file:Ljava/io/File;

.field private isSelect:Z

.field private name:Ljava/lang/String;

.field private size:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptLog$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/ScriptLog$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/ScriptLog;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1f

    const/4 p1, 0x1

    goto :goto_20

    :cond_1f
    const/4 p1, 0x0

    :goto_20
    iput-boolean p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/cyjh/elfin/entity/ScriptLog$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    return v0
.end method

.method public setFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScriptLog [size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/cyjh/elfin/entity/ScriptLog;->size:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/elfin/entity/ScriptLog;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/elfin/entity/ScriptLog;->file:Ljava/io/File;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-boolean p2, p0, Lcom/cyjh/elfin/entity/ScriptLog;->isSelect:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
