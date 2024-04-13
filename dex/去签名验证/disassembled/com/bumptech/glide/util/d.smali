.class public final Lcom/bumptech/glide/util/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/i$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/i$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:[I


# direct methods
.method private constructor <init>(II)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    iput-object v0, p0, Lcom/bumptech/glide/util/d;->a:[I

    return-void
.end method


# virtual methods
.method public final a()[I
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/util/d;->a:[I

    return-object v0
.end method
