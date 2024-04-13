.class public Lcom/cyjh/elfin/entity/FloatEditBean;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/elfin/entity/FloatEditBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public intentContent:Ljava/lang/String;

.field public intentTtile:Ljava/lang/String;

.field public isCancle:Z

.field public leftContent:Ljava/lang/String;

.field public rightContent:Ljava/lang/String;

.field public type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean$1;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FloatEditBean$1;-><init>()V

    sput-object v0, Lcom/cyjh/elfin/entity/FloatEditBean;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    iput-boolean v0, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_2f

    const/4 p1, 0x0

    goto :goto_35

    :cond_2f
    invoke-static {}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->values()[Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    move-result-object v0

    aget-object p1, v0, p1

    :goto_35
    iput-object p1, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-void
.end method

.method public static getDeleteFloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const v1, 0x7f0900ce

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const p1, 0x7f090066

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const p1, 0x7f090068

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    sget-object p0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->DELETE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0
.end method

.method public static getEditFlloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const v1, 0x7f0900cf

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const p1, 0x7f090066

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const p1, 0x7f090068

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    sget-object p0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->RENAME:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0
.end method

.method public static getNewCreateFlloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const v1, 0x7f09007f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const p1, 0x7f090066

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const p1, 0x7f090068

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    sget-object p0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->CREATE_NEW_FILE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0
.end method

.method public static getSaveFloatBean(Landroid/content/Context;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .registers 3

    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const v1, 0x7f09012d

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    const v1, 0x7f090166

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const v1, 0x7f09012c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const v1, 0x7f09006c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    sget-object p0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->SAVE:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0
.end method

.method public static getStartDownloadFlloatBean(Landroid/content/Context;Ljava/lang/String;)Lcom/cyjh/elfin/entity/FloatEditBean;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/entity/FloatEditBean;

    invoke-direct {v0}, Lcom/cyjh/elfin/entity/FloatEditBean;-><init>()V

    const v1, 0x7f09019c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    const p1, 0x7f090066

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    const p1, 0x7f090067

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    const/4 p0, 0x1

    iput-boolean p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    sget-object p0, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->START_DOWNLOAD:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    iput-object p0, v0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentTtile:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->intentContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->leftContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->rightContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->isCancle:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    if-nez p2, :cond_1f

    const/4 p2, -0x1

    goto :goto_25

    :cond_1f
    iget-object p2, p0, Lcom/cyjh/elfin/entity/FloatEditBean;->type:Lcom/cyjh/elfin/entity/ActionBarOperaEnum;

    invoke-virtual {p2}, Lcom/cyjh/elfin/entity/ActionBarOperaEnum;->ordinal()I

    move-result p2

    :goto_25
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
