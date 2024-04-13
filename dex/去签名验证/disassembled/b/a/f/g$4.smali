.class final Lb/a/f/g$4;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g;->a(ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lb/a/f/g;


# direct methods
.method varargs constructor <init>(Lb/a/f/g;Ljava/lang/String;[Ljava/lang/Object;ILjava/util/List;)V
    .registers 6

    iput-object p1, p0, Lb/a/f/g$4;->d:Lb/a/f/g;

    iput p4, p0, Lb/a/f/g$4;->a:I

    iput-object p5, p0, Lb/a/f/g$4;->c:Ljava/util/List;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    iget-object v0, p0, Lb/a/f/g$4;->d:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->j:Lb/a/f/m;

    invoke-interface {v0}, Lb/a/f/m;->a()Z

    :try_start_7
    iget-object v0, p0, Lb/a/f/g$4;->d:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->q:Lb/a/f/j;

    iget v1, p0, Lb/a/f/g$4;->a:I

    sget-object v2, Lb/a/f/b;->CANCEL:Lb/a/f/b;

    invoke-virtual {v0, v1, v2}, Lb/a/f/j;->a(ILb/a/f/b;)V

    iget-object v0, p0, Lb/a/f/g$4;->d:Lb/a/f/g;

    monitor-enter v0
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_15} :catch_27

    :try_start_15
    iget-object v1, p0, Lb/a/f/g$4;->d:Lb/a/f/g;

    iget-object v1, v1, Lb/a/f/g;->s:Ljava/util/Set;

    iget v2, p0, Lb/a/f/g$4;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_24

    :try_start_26
    throw v1
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_27} :catch_27

    :catch_27
    return-void
.end method
