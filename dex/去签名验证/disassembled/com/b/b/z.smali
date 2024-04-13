.class final Lcom/b/b/z;
.super Lcom/b/b/y;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/b/b/y;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Lcom/b/b/y;
    .registers 3

    return-object p0
.end method

.method public final a(JLjava/util/concurrent/TimeUnit;)Lcom/b/b/y;
    .registers 4

    return-object p0
.end method

.method public final f_()V
    .registers 1

    return-void
.end method
