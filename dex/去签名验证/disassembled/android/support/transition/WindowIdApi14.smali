.class Landroid/support/transition/WindowIdApi14;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/transition/WindowIdImpl;


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0xe
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Landroid/support/transition/WindowIdApi14;

    if-eqz v0, :cond_12

    check-cast p1, Landroid/support/transition/WindowIdApi14;

    iget-object p1, p1, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Landroid/support/transition/WindowIdApi14;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
