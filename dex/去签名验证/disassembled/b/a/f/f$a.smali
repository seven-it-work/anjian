.class final Lb/a/f/f$a;
.super Lc/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/f/f;


# direct methods
.method constructor <init>(Lb/a/f/f;Lc/y;)V
    .registers 3

    iput-object p1, p0, Lb/a/f/f$a;->a:Lb/a/f/f;

    invoke-direct {p0, p2}, Lc/i;-><init>(Lc/y;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/a/f/f$a;->a:Lb/a/f/f;

    iget-object v0, v0, Lb/a/f/f;->b:Lb/a/c/g;

    iget-object v1, p0, Lb/a/f/f$a;->a:Lb/a/f/f;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lb/a/c/g;->a(ZLb/a/d/c;)V

    invoke-super {p0}, Lc/i;->close()V

    return-void
.end method
