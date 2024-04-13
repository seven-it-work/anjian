.class final Lb/a/k/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/a/k/a;-><init>(Lb/ac;Lb/aj;Ljava/util/Random;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/a/k/a;


# direct methods
.method constructor <init>(Lb/a/k/a;)V
    .registers 2

    iput-object p1, p0, Lb/a/k/a$1;->a:Lb/a/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lb/a/k/a$1;->a:Lb/a/k/a;

    invoke-virtual {v0}, Lb/a/k/a;->j()Z

    move-result v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_6} :catch_9

    if-nez v0, :cond_0

    return-void

    :catch_9
    iget-object v0, p0, Lb/a/k/a$1;->a:Lb/a/k/a;

    invoke-virtual {v0}, Lb/a/k/a;->k()V

    return-void
.end method
