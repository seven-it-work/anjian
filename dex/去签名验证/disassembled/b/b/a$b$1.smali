.class final Lb/b/a$b$1;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lb/a/h/e;->b()Lb/a/h/e;

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lb/a/h/e;->a(ILjava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
