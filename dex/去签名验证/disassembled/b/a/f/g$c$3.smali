.class final Lb/a/f/g$c$3;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g$c;->b(Lb/a/f/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/f/n;

.field final synthetic c:Lb/a/f/g$c;


# direct methods
.method varargs constructor <init>(Lb/a/f/g$c;Ljava/lang/String;[Ljava/lang/Object;Lb/a/f/n;)V
    .registers 5

    iput-object p1, p0, Lb/a/f/g$c$3;->c:Lb/a/f/g$c;

    iput-object p4, p0, Lb/a/f/g$c$3;->a:Lb/a/f/n;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lb/a/f/g$c$3;->c:Lb/a/f/g$c;

    iget-object v0, v0, Lb/a/f/g$c;->c:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->q:Lb/a/f/j;

    iget-object v1, p0, Lb/a/f/g$c$3;->a:Lb/a/f/n;

    invoke-virtual {v0, v1}, Lb/a/f/j;->a(Lb/a/f/n;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_b} :catch_b

    :catch_b
    return-void
.end method
