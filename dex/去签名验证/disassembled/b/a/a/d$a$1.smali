.class final Lb/a/a/d$a$1;
.super Lb/a/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/a/d$a;->a(I)Lc/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/a/d$a;


# direct methods
.method constructor <init>(Lb/a/a/d$a;Lc/x;)V
    .registers 3

    iput-object p1, p0, Lb/a/a/d$a$1;->a:Lb/a/a/d$a;

    invoke-direct {p0, p2}, Lb/a/a/e;-><init>(Lc/x;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lb/a/a/d$a$1;->a:Lb/a/a/d$a;

    iget-object v0, v0, Lb/a/a/d$a;->c:Lb/a/a/d;

    monitor-enter v0

    :try_start_5
    iget-object v1, p0, Lb/a/a/d$a$1;->a:Lb/a/a/d$a;

    invoke-virtual {v1}, Lb/a/a/d$a;->a()V

    monitor-exit v0

    return-void

    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw v1
.end method
