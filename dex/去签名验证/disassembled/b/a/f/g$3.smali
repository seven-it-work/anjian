.class final Lb/a/f/g$3;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g;->a(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lb/a/f/l;

.field final synthetic f:Lb/a/f/g;


# direct methods
.method varargs constructor <init>(Lb/a/f/g;Ljava/lang/String;[Ljava/lang/Object;II)V
    .registers 6

    iput-object p1, p0, Lb/a/f/g$3;->f:Lb/a/f/g;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lb/a/f/g$3;->a:Z

    iput p4, p0, Lb/a/f/g$3;->c:I

    iput p5, p0, Lb/a/f/g$3;->d:I

    const/4 p1, 0x0

    iput-object p1, p0, Lb/a/f/g$3;->e:Lb/a/f/l;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lb/a/f/g$3;->f:Lb/a/f/g;

    iget-boolean v1, p0, Lb/a/f/g$3;->a:Z

    iget v2, p0, Lb/a/f/g$3;->c:I

    iget v3, p0, Lb/a/f/g$3;->d:I

    iget-object v4, p0, Lb/a/f/g$3;->e:Lb/a/f/l;

    invoke-virtual {v0, v1, v2, v3, v4}, Lb/a/f/g;->a(ZIILb/a/f/l;)V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_d

    :catch_d
    return-void
.end method
