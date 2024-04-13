.class final Lb/a/f/g$b$1;
.super Lb/a/f/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/g$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lb/a/f/g$b;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lb/a/f/i;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lb/a/f/b;->REFUSED_STREAM:Lb/a/f/b;

    invoke-virtual {p1, v0}, Lb/a/f/i;->a(Lb/a/f/b;)V

    return-void
.end method
