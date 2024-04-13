.class final Lb/a/f/g$6;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g;->a(ILc/e;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic c:Lc/c;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Lb/a/f/g;


# direct methods
.method varargs constructor <init>(Lb/a/f/g;Ljava/lang/String;[Ljava/lang/Object;ILc/c;IZ)V
    .registers 8

    iput-object p1, p0, Lb/a/f/g$6;->f:Lb/a/f/g;

    iput p4, p0, Lb/a/f/g$6;->a:I

    iput-object p5, p0, Lb/a/f/g$6;->c:Lc/c;

    iput p6, p0, Lb/a/f/g$6;->d:I

    iput-boolean p7, p0, Lb/a/f/g$6;->e:Z

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lb/a/f/g$6;->f:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->j:Lb/a/f/m;

    iget-object v1, p0, Lb/a/f/g$6;->c:Lc/c;

    iget v2, p0, Lb/a/f/g$6;->d:I

    invoke-interface {v0, v1, v2}, Lb/a/f/m;->a(Lc/e;I)Z

    iget-object v0, p0, Lb/a/f/g$6;->f:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->q:Lb/a/f/j;

    iget v1, p0, Lb/a/f/g$6;->a:I

    sget-object v2, Lb/a/f/b;->CANCEL:Lb/a/f/b;

    invoke-virtual {v0, v1, v2}, Lb/a/f/j;->a(ILb/a/f/b;)V

    iget-object v0, p0, Lb/a/f/g$6;->f:Lb/a/f/g;

    monitor-enter v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_19} :catch_2b

    :try_start_19
    iget-object v1, p0, Lb/a/f/g$6;->f:Lb/a/f/g;

    iget-object v1, v1, Lb/a/f/g;->s:Ljava/util/Set;

    iget v2, p0, Lb/a/f/g$6;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_19 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw v1
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    return-void
.end method
