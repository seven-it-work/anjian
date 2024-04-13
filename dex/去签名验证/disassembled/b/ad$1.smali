.class final Lb/ad$1;
.super Lb/ad;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/ad;->create(Lb/x;Lc/f;)Lb/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/x;

.field final synthetic b:Lc/f;


# direct methods
.method constructor <init>(Lb/x;Lc/f;)V
    .registers 3

    iput-object p1, p0, Lb/ad$1;->a:Lb/x;

    iput-object p2, p0, Lb/ad$1;->b:Lc/f;

    invoke-direct {p0}, Lb/ad;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/ad$1;->b:Lc/f;

    invoke-virtual {v0}, Lc/f;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final contentType()Lb/x;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/ad$1;->a:Lb/x;

    return-object v0
.end method

.method public final writeTo(Lc/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/ad$1;->b:Lc/f;

    invoke-interface {p1, v0}, Lc/d;->e(Lc/f;)Lc/d;

    return-void
.end method
