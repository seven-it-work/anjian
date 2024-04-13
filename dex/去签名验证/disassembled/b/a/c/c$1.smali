.class public final Lb/a/c/c$1;
.super Lb/a/k/a$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/c/c;->a(Lb/a/c/g;)Lb/a/k/a$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/c/g;

.field final synthetic b:Lb/a/c/c;


# direct methods
.method public constructor <init>(Lb/a/c/c;Lc/e;Lc/d;Lb/a/c/g;)V
    .registers 5

    iput-object p1, p0, Lb/a/c/c$1;->b:Lb/a/c/c;

    iput-object p4, p0, Lb/a/c/c$1;->a:Lb/a/c/g;

    invoke-direct {p0, p2, p3}, Lb/a/k/a$e;-><init>(Lc/e;Lc/d;)V

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

    iget-object v0, p0, Lb/a/c/c$1;->a:Lb/a/c/g;

    iget-object v1, p0, Lb/a/c/c$1;->a:Lb/a/c/g;

    invoke-virtual {v1}, Lb/a/c/g;->a()Lb/a/d/c;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lb/a/c/g;->a(ZLb/a/d/c;)V

    return-void
.end method
