.class final Lb/c$a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lb/c;

.field private final c:Lb/a/a/d$a;

.field private d:Lc/x;

.field private e:Lc/x;


# direct methods
.method constructor <init>(Lb/c;Lb/a/a/d$a;)V
    .registers 5

    iput-object p1, p0, Lb/c$a;->b:Lb/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lb/c$a;->c:Lb/a/a/d$a;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lb/a/a/d$a;->a(I)Lc/x;

    move-result-object v0

    iput-object v0, p0, Lb/c$a;->d:Lc/x;

    new-instance v0, Lb/c$a$1;

    iget-object v1, p0, Lb/c$a;->d:Lc/x;

    invoke-direct {v0, p0, v1, p1, p2}, Lb/c$a$1;-><init>(Lb/c$a;Lc/x;Lb/c;Lb/a/a/d$a;)V

    iput-object v0, p0, Lb/c$a;->e:Lc/x;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lb/c$a;->b:Lb/c;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lb/c$a;->a:Z

    if-eqz v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lb/c$a;->a:Z

    iget-object v2, p0, Lb/c$a;->b:Lb/c;

    iget v3, v2, Lb/c;->d:I

    add-int/2addr v3, v1

    iput v3, v2, Lb/c;->d:I

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_1f

    iget-object v0, p0, Lb/c$a;->d:Lc/x;

    invoke-static {v0}, Lb/a/c;->a(Ljava/io/Closeable;)V

    :try_start_19
    iget-object v0, p0, Lb/c$a;->c:Lb/a/a/d$a;

    invoke-virtual {v0}, Lb/a/a/d$a;->c()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void

    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v1
.end method

.method public final b()Lc/x;
    .registers 2

    iget-object v0, p0, Lb/c$a;->e:Lc/x;

    return-object v0
.end method
