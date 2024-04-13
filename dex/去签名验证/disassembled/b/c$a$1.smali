.class final Lb/c$a$1;
.super Lc/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/c$a;-><init>(Lb/c;Lb/a/a/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/c;

.field final synthetic b:Lb/a/a/d$a;

.field final synthetic c:Lb/c$a;


# direct methods
.method constructor <init>(Lb/c$a;Lc/x;Lb/c;Lb/a/a/d$a;)V
    .registers 5

    iput-object p1, p0, Lb/c$a$1;->c:Lb/c$a;

    iput-object p3, p0, Lb/c$a$1;->a:Lb/c;

    iput-object p4, p0, Lb/c$a$1;->b:Lb/a/a/d$a;

    invoke-direct {p0, p2}, Lc/h;-><init>(Lc/x;)V

    return-void
.end method


# virtual methods
.method public final close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lb/c$a$1;->c:Lb/c$a;

    iget-object v0, v0, Lb/c$a;->b:Lb/c;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lb/c$a$1;->c:Lb/c$a;

    iget-boolean v1, v1, Lb/c$a;->a:Z

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    :cond_d
    iget-object v1, p0, Lb/c$a$1;->c:Lb/c$a;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lb/c$a;->a:Z

    iget-object v1, p0, Lb/c$a$1;->c:Lb/c$a;

    iget-object v1, v1, Lb/c$a;->b:Lb/c;

    iget v3, v1, Lb/c;->c:I

    add-int/2addr v3, v2

    iput v3, v1, Lb/c;->c:I

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_25

    invoke-super {p0}, Lc/h;->close()V

    iget-object v0, p0, Lb/c$a$1;->b:Lb/a/a/d$a;

    invoke-virtual {v0}, Lb/a/a/d$a;->b()V

    return-void

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v1
.end method
