.class public final Lb/a/d/h;
.super Lb/af;


# instance fields
.field private final a:Lb/u;

.field private final b:Lc/e;


# direct methods
.method public constructor <init>(Lb/u;Lc/e;)V
    .registers 3

    invoke-direct {p0}, Lb/af;-><init>()V

    iput-object p1, p0, Lb/a/d/h;->a:Lb/u;

    iput-object p2, p0, Lb/a/d/h;->b:Lc/e;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .registers 3

    iget-object v0, p0, Lb/a/d/h;->a:Lb/u;

    invoke-static {v0}, Lb/a/d/e;->a(Lb/u;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final contentType()Lb/x;
    .registers 3

    iget-object v0, p0, Lb/a/d/h;->a:Lb/u;

    const-string v1, "Content-Type"

    invoke-virtual {v0, v1}, Lb/u;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    return-object v0

    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method public final source()Lc/e;
    .registers 2

    iget-object v0, p0, Lb/a/d/h;->b:Lc/e;

    return-object v0
.end method
