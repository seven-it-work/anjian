.class final Lcom/cyjh/elfin/e/c/j$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cyjh/elfin/e/c/j;->a(Landroid/content/Context;Ljava/lang/String;Lcom/bumptech/glide/request/g;Lcom/cyjh/elfin/c/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/elfin/c/a;


# direct methods
.method constructor <init>(Lcom/cyjh/elfin/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/e/c/j$1;->a:Lcom/cyjh/elfin/c/a;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method

.method private static a()V
    .registers 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public final bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/a/f;)V
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/request/a/f;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method
