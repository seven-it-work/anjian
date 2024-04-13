.class final Lb/a/k/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/k/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lb/a/k/a;


# direct methods
.method constructor <init>(Lb/a/k/a;)V
    .registers 2

    iput-object p1, p0, Lb/a/k/a$a;->a:Lb/a/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lb/a/k/a$a;->a:Lb/a/k/a;

    iget-object v0, v0, Lb/a/k/a;->f:Lb/e;

    invoke-interface {v0}, Lb/e;->c()V

    return-void
.end method
