.class public final Lcom/cyjh/feedback/lib/c/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/c/d;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/cyjh/feedback/lib/c/c;->a:Ljava/util/List;

    return-object v0
.end method

.method private a(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/cyjh/feedback/lib/c/d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/cyjh/feedback/lib/c/c;->a:Ljava/util/List;

    return-void
.end method
