.class public Lcom/elfin/ad/bean/response/FengLingAdInfo;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/elfin/ad/bean/response/FengLingAdInfo$b;,
        Lcom/elfin/ad/bean/response/FengLingAdInfo$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/elfin/ad/bean/response/FengLingAdInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

.field public m:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/elfin/ad/bean/response/FengLingAdInfo$1;

    invoke-direct {v0}, Lcom/elfin/ad/bean/response/FengLingAdInfo$1;-><init>()V

    sput-object v0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->a:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->b:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->g:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->m:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->a:I

    return v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->a:I

    return-void
.end method

.method private a(Lcom/elfin/ad/bean/response/FengLingAdInfo$a;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->h:Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    return-void
.end method

.method private a(Lcom/elfin/ad/bean/response/FengLingAdInfo$b;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->l:Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->f:Ljava/lang/String;

    return-void
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->b:I

    return v0
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->b:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->i:Ljava/lang/String;

    return-void
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    return v0
.end method

.method private c(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    return-void
.end method

.method private d()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->d:I

    return v0
.end method

.method private d(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->d:I

    return-void
.end method

.method private e()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->e:I

    return v0
.end method

.method private e(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->e:I

    return-void
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->f:Ljava/lang/String;

    return-object v0
.end method

.method private f(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->g:I

    return-void
.end method

.method private g()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->g:I

    return v0
.end method

.method private g(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->j:I

    return-void
.end method

.method private h()Lcom/elfin/ad/bean/response/FengLingAdInfo$a;
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->h:Lcom/elfin/ad/bean/response/FengLingAdInfo$a;

    return-object v0
.end method

.method private h(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->m:I

    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->i:Ljava/lang/String;

    return-object v0
.end method

.method private j()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->j:I

    return v0
.end method

.method private k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    return-object v0
.end method

.method private l()Lcom/elfin/ad/bean/response/FengLingAdInfo$b;
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->l:Lcom/elfin/ad/bean/response/FengLingAdInfo$b;

    return-object v0
.end method

.method private m()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->m:I

    return v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->c:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->g:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
