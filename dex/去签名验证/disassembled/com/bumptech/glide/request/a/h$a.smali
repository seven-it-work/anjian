.class final Lcom/bumptech/glide/request/a/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/request/a/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Landroid/view/animation/Animation;


# direct methods
.method constructor <init>(Landroid/view/animation/Animation;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/request/a/h$a;->a:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Landroid/view/animation/Animation;
    .registers 2

    iget-object p1, p0, Lcom/bumptech/glide/request/a/h$a;->a:Landroid/view/animation/Animation;

    return-object p1
.end method
