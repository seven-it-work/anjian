.class public final Lcom/cyjh/elfin/sweepcode/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/elfin/sweepcode/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/hardware/Camera$Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/sweepcode/a;


# direct methods
.method public constructor <init>(Lcom/cyjh/elfin/sweepcode/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/sweepcode/a$a;->a:Lcom/cyjh/elfin/sweepcode/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/hardware/Camera$Size;Landroid/hardware/Camera$Size;)I
    .registers 4

    iget v0, p0, Landroid/hardware/Camera$Size;->width:I

    iget v1, p1, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    iget p0, p0, Landroid/hardware/Camera$Size;->width:I

    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    if-ge p0, p1, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 5

    check-cast p1, Landroid/hardware/Camera$Size;

    check-cast p2, Landroid/hardware/Camera$Size;

    iget v0, p1, Landroid/hardware/Camera$Size;->width:I

    iget v1, p2, Landroid/hardware/Camera$Size;->width:I

    if-ne v0, v1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    iget p1, p1, Landroid/hardware/Camera$Size;->width:I

    iget p2, p2, Landroid/hardware/Camera$Size;->width:I

    if-ge p1, p2, :cond_14

    const/4 p1, 0x1

    return p1

    :cond_14
    const/4 p1, -0x1

    return p1
.end method
