.class final Lcom/cyjh/mobileanjian/ipc/ui/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/cyjh/mobileanjian/ipc/ui/SlidingTabLayout$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mobileanjian/ipc/ui/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:[I


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/cyjh/mobileanjian/ipc/ui/d$a;-><init>()V

    return-void
.end method

.method private varargs a([I)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d$a;->a:[I

    return-void
.end method


# virtual methods
.method public final a(I)I
    .registers 4

    iget-object v0, p0, Lcom/cyjh/mobileanjian/ipc/ui/d$a;->a:[I

    iget-object v1, p0, Lcom/cyjh/mobileanjian/ipc/ui/d$a;->a:[I

    array-length v1, v1

    rem-int/2addr p1, v1

    aget p1, v0, p1

    return p1
.end method
