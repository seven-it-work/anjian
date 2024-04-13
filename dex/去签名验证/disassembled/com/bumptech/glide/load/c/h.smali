.class public interface abstract Lcom/bumptech/glide/load/c/h;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/bumptech/glide/load/c/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/c/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bumptech/glide/load/c/h$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/h$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/h;->a:Lcom/bumptech/glide/load/c/h;

    new-instance v0, Lcom/bumptech/glide/load/c/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/j$a;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bumptech/glide/load/c/j$a;->a:Z

    new-instance v1, Lcom/bumptech/glide/load/c/j;

    iget-object v0, v0, Lcom/bumptech/glide/load/c/j$a;->b:Ljava/util/Map;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/c/j;-><init>(Ljava/util/Map;)V

    sput-object v1, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
