.class final Lb/a/f/g$1;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g;->a(ILb/a/f/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lb/a/f/b;

.field final synthetic d:Lb/a/f/g;


# direct methods
.method varargs constructor <init>(Lb/a/f/g;Ljava/lang/String;[Ljava/lang/Object;ILb/a/f/b;)V
    .registers 6

    iput-object p1, p0, Lb/a/f/g$1;->d:Lb/a/f/g;

    iput p4, p0, Lb/a/f/g$1;->a:I

    iput-object p5, p0, Lb/a/f/g$1;->c:Lb/a/f/b;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lb/a/f/g$1;->d:Lb/a/f/g;

    iget v1, p0, Lb/a/f/g$1;->a:I

    iget-object v2, p0, Lb/a/f/g$1;->c:Lb/a/f/b;

    invoke-virtual {v0, v1, v2}, Lb/a/f/g;->b(ILb/a/f/b;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_9

    :catch_9
    return-void
.end method
