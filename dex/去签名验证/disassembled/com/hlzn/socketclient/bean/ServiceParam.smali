.class public Lcom/hlzn/socketclient/bean/ServiceParam;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hlzn/socketclient/bean/ServiceParam;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:I = 0x0

.field public static final b:I = -0x1


# instance fields
.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:I

.field public i:Ljava/lang/String;

.field public j:I

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:I

.field public q:Ljava/lang/String;

.field public r:I

.field public s:Ljava/lang/String;

.field public t:I

.field public u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/hlzn/socketclient/bean/ServiceParam$1;

    invoke-direct {v0}, Lcom/hlzn/socketclient/bean/ServiceParam$1;-><init>()V

    sput-object v0, Lcom/hlzn/socketclient/bean/ServiceParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->h:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->j:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->n:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->p:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->r:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->t:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->h:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->j:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->n:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->p:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->r:I

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->c:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->d:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->e:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->f:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    iput-boolean v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->g:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->h:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->k:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->m:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->o:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->p:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->q:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->r:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->s:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->t:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->u:Ljava/lang/String;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->h:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->g:Z

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->j:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->d:Ljava/lang/String;

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->e:Ljava/lang/String;

    return-object v0
.end method

.method private c(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->e:Ljava/lang/String;

    return-void
.end method

.method private d()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->f:Ljava/lang/String;

    return-object v0
.end method

.method private d(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->n:I

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->f:Ljava/lang/String;

    return-void
.end method

.method private e(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->p:I

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->i:Ljava/lang/String;

    return-void
.end method

.method private e()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->g:Z

    return v0
.end method

.method private f()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->h:I

    return v0
.end method

.method private f(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->r:I

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->k:Ljava/lang/String;

    return-void
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->i:Ljava/lang/String;

    return-object v0
.end method

.method private g(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->t:I

    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->m:Ljava/lang/String;

    return-void
.end method

.method private h()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->j:I

    return v0
.end method

.method private h(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->o:Ljava/lang/String;

    return-void
.end method

.method private i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->k:Ljava/lang/String;

    return-object v0
.end method

.method private i(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->q:Ljava/lang/String;

    return-void
.end method

.method private j()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    return v0
.end method

.method private j(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->s:Ljava/lang/String;

    return-void
.end method

.method private k()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->m:Ljava/lang/String;

    return-object v0
.end method

.method private k(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->u:Ljava/lang/String;

    return-void
.end method

.method private l()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->n:I

    return v0
.end method

.method private m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->o:Ljava/lang/String;

    return-object v0
.end method

.method private n()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->p:I

    return v0
.end method

.method private o()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->q:Ljava/lang/String;

    return-object v0
.end method

.method private p()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->r:I

    return v0
.end method

.method private q()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->s:Ljava/lang/String;

    return-object v0
.end method

.method private r()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->t:I

    return v0
.end method

.method private s()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->u:Ljava/lang/String;

    return-object v0
.end method

.method private static t()Landroid/os/Parcelable$Creator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hlzn/socketclient/bean/ServiceParam;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/hlzn/socketclient/bean/ServiceParam;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->h:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->j:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->l:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->m:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->p:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->r:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->s:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->t:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/hlzn/socketclient/bean/ServiceParam;->u:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
