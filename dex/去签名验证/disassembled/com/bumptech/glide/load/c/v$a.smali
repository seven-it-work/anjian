.class public final Lcom/bumptech/glide/load/c/v$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/c/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/c/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/c/o<",
        "TModel;TModel;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/c/v$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/c/v$a<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/load/c/v$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/v$a;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/v$a;->a:Lcom/bumptech/glide/load/c/v$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/bumptech/glide/load/c/v$a;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/c/v$a<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/bumptech/glide/load/c/v$a;->a:Lcom/bumptech/glide/load/c/v$a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/bumptech/glide/load/c/r;)Lcom/bumptech/glide/load/c/n;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/c/r;",
            ")",
            "Lcom/bumptech/glide/load/c/n<",
            "TModel;TModel;>;"
        }
    .end annotation

    invoke-static {}, Lcom/bumptech/glide/load/c/v;->a()Lcom/bumptech/glide/load/c/v;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 1

    return-void
.end method
