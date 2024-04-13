.class final Lb/a/f/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/f/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lc/e;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-long v0, p2

    invoke-interface {p1, v0, v1}, Lc/e;->h(J)V

    const/4 p1, 0x1

    return p1
.end method

.method public final b()Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public final c()V
    .registers 1

    return-void
.end method
