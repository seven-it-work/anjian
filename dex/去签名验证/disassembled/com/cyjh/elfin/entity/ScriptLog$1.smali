.class final Lcom/cyjh/elfin/entity/ScriptLog$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/entity/ScriptLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/cyjh/elfin/entity/ScriptLog;",
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
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/ScriptLog;
    .registers 4

    new-instance v0, Lcom/cyjh/elfin/entity/ScriptLog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/cyjh/elfin/entity/ScriptLog;-><init>(Landroid/os/Parcel;Lcom/cyjh/elfin/entity/ScriptLog$1;)V

    return-object v0
.end method

.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/ScriptLog$1;->createFromParcel(Landroid/os/Parcel;)Lcom/cyjh/elfin/entity/ScriptLog;

    move-result-object p1

    return-object p1
.end method

.method public final newArray(I)[Lcom/cyjh/elfin/entity/ScriptLog;
    .registers 2

    new-array p1, p1, [Lcom/cyjh/elfin/entity/ScriptLog;

    return-object p1
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/cyjh/elfin/entity/ScriptLog$1;->newArray(I)[Lcom/cyjh/elfin/entity/ScriptLog;

    move-result-object p1

    return-object p1
.end method
