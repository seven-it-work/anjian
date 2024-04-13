.class final Lc/z$1;
.super Lc/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lc/z;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lc/z;
    .registers 3

    return-object p0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lc/z;
    .registers 4

    return-object p0
.end method

.method public final f()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method
