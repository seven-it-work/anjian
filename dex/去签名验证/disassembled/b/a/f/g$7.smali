.class final Lb/a/f/g$7;
.super Lb/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/f/g;->c(ILb/a/f/b;)V
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

    iput-object p1, p0, Lb/a/f/g$7;->d:Lb/a/f/g;

    iput p4, p0, Lb/a/f/g$7;->a:I

    iput-object p5, p0, Lb/a/f/g$7;->c:Lb/a/f/b;

    invoke-direct {p0, p2, p3}, Lb/a/b;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    iget-object v0, p0, Lb/a/f/g$7;->d:Lb/a/f/g;

    iget-object v0, v0, Lb/a/f/g;->j:Lb/a/f/m;

    invoke-interface {v0}, Lb/a/f/m;->c()V

    iget-object v0, p0, Lb/a/f/g$7;->d:Lb/a/f/g;

    monitor-enter v0

    :try_start_a
    iget-object v1, p0, Lb/a/f/g$7;->d:Lb/a/f/g;

    iget-object v1, v1, Lb/a/f/g;->s:Ljava/util/Set;

    iget v2, p0, Lb/a/f/g$7;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_19
    move-exception v1

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_19

    throw v1
.end method
