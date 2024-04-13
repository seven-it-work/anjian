.class final Lb/a/f/g$c$1;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g$c;->a(ZILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/f/i;

.field final synthetic c:Lb/a/f/g$c;


# direct methods
.method varargs constructor <init>(Lb/a/f/g$c;Ljava/lang/String;[Ljava/lang/Object;Lb/a/f/i;)V
    .registers 5

    iput-object p1, p0, Lb/a/f/g$c$1;->c:Lb/a/f/g$c;

    iput-object p4, p0, Lb/a/f/g$c$1;->a:Lb/a/f/i;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lb/a/f/g$c$1;->c:Lb/a/f/g$c;

    iget-object v0, v0, Lb/a/f/g$c;->c:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->c:Lb/a/f/g$b;

    iget-object v1, p0, Lb/a/f/g$c$1;->a:Lb/a/f/i;

    invoke-virtual {v0, v1}, Lb/a/f/g$b;->a(Lb/a/f/i;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception v0

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v1

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Http2Connection.Listener failure for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lb/a/f/g$c$1;->c:Lb/a/f/g$c;

    iget-object v4, v4, Lb/a/f/g$c;->c:Lb/a/f/g;

    iget-object v4, v4, Lb/a/f/g;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lb/a/h/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    :try_start_29
    iget-object v0, p0, Lb/a/f/g$c$1;->a:Lb/a/f/i;

    sget-object v1, Lb/a/f/b;->PROTOCOL_ERROR:Lb/a/f/b;

    invoke-virtual {v0, v1}, Lb/a/f/i;->a(Lb/a/f/b;)V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_30} :catch_30

    :catch_30
    return-void
.end method
