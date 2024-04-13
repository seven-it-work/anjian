.class final Lcom/bumptech/glide/request/a/h$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/bumptech/glide/request/a/h$b;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 3

    iget v0, p0, Lcom/bumptech/glide/request/a/h$b;->a:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1
.end method
