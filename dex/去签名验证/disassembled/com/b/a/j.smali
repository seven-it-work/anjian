.class public final Lcom/b/a/j;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/b/a/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/b/a/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Lcom/b/a/i;
    .registers 4

    new-instance v0, Lcom/b/a/i;

    new-instance v1, Ljava/util/LinkedHashSet;

    iget-object v2, p0, Lcom/b/a/j;->a:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/b/a/i;-><init>(Ljava/util/Set;Lcom/b/a/a/h/b;)V

    return-object v0
.end method
