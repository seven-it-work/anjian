.class public final Lcom/bumptech/glide/m$b;
.super Lcom/bumptech/glide/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Failed to find image header parser."

    invoke-direct {p0, v0}, Lcom/bumptech/glide/m$a;-><init>(Ljava/lang/String;)V

    return-void
.end method
