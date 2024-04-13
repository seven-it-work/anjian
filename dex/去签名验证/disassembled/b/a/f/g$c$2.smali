.class final Lb/a/f/g$c$2;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g$c;->a(Lb/a/f/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/f/g$c;


# direct methods
.method varargs constructor <init>(Lb/a/f/g$c;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    iput-object p1, p0, Lb/a/f/g$c$2;->a:Lb/a/f/g$c;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 3

    iget-object v0, p0, Lb/a/f/g$c$2;->a:Lb/a/f/g$c;

    iget-object v0, v0, Lb/a/f/g$c;->c:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->c:Lb/a/f/g$b;

    iget-object v1, p0, Lb/a/f/g$c$2;->a:Lb/a/f/g$c;

    iget-object v1, v1, Lb/a/f/g$c;->c:Lb/a/f/g;

    invoke-virtual {v0, v1}, Lb/a/f/g$b;->a(Lb/a/f/g;)V

    return-void
.end method
