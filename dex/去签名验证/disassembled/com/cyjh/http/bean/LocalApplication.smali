.class public Lcom/cyjh/http/bean/LocalApplication;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/LocalApplication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected applicationIcon:Landroid/graphics/drawable/Drawable;

.field protected applicationName:Ljava/lang/String;

.field protected applicationPackageName:Ljava/lang/String;

.field protected applicationVersionName:Ljava/lang/String;

.field protected initialLetter:Ljava/lang/String;

.field protected isSelect:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/http/bean/LocalApplication$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/LocalApplication$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/LocalApplication;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    iput-boolean v0, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getApplicationIcon()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getApplicationName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationVersionName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    return-object v0
.end method

.method public getInitialLetter()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    if-nez v0, :cond_7

    invoke-static {p0}, Lcom/cyjh/http/e/a;->a(Lcom/cyjh/http/bean/LocalApplication;)V

    :cond_7
    iget-object v0, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    return-object v0
.end method

.method public isSelect()Z
    .registers 2

    iget-boolean v0, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    return v0
.end method

.method public setApplicationIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationPackageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    return-void
.end method

.method public setApplicationVersionName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    return-void
.end method

.method public setInitialLetter(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    return-void
.end method

.method public setSelect(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->applicationVersionName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/cyjh/http/bean/LocalApplication;->isSelect:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/cyjh/http/bean/LocalApplication;->initialLetter:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
