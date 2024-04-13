.class public Lcom/cyjh/http/bean/response/AppStartupResponse;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/cyjh/http/bean/response/AppStartupResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AppInfo:Lcom/cyjh/http/bean/response/AppRelatedInfo;

.field public AuthorInfo:Lcom/cyjh/http/bean/response/AuthorRelatedInfo;

.field public ClientTimestamp:J

.field public ServerTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/cyjh/http/bean/response/AppStartupResponse$1;

    invoke-direct {v0}, Lcom/cyjh/http/bean/response/AppStartupResponse$1;-><init>()V

    sput-object v0, Lcom/cyjh/http/bean/response/AppStartupResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->ClientTimestamp:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->ServerTimestamp:J

    const-class v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/cyjh/http/bean/response/AuthorRelatedInfo;

    iput-object v0, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->AuthorInfo:Lcom/cyjh/http/bean/response/AuthorRelatedInfo;

    const-class v0, Lcom/cyjh/http/bean/response/AppRelatedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/cyjh/http/bean/response/AppRelatedInfo;

    iput-object p1, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->AppInfo:Lcom/cyjh/http/bean/response/AppRelatedInfo;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    iget-wide v0, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->ClientTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->ServerTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->AuthorInfo:Lcom/cyjh/http/bean/response/AuthorRelatedInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Lcom/cyjh/http/bean/response/AppStartupResponse;->AppInfo:Lcom/cyjh/http/bean/response/AppRelatedInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
