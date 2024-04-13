.class final Lb/c$b;
.super Lb/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field final a:Lb/a/a/d$c;

.field private final b:Lc/e;

.field private final c:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lb/a/a/d$c;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Lb/af;-><init>()V

    iput-object p1, p0, Lb/c$b;->a:Lb/a/a/d$c;

    iput-object p2, p0, Lb/c$b;->c:Ljava/lang/String;

    iput-object p3, p0, Lb/c$b;->d:Ljava/lang/String;

    iget-object p2, p1, Lb/a/a/d$c;->c:[Lc/y;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    new-instance p3, Lb/c$b$1;

    invoke-direct {p3, p0, p2, p1}, Lb/c$b$1;-><init>(Lb/c$b;Lc/y;Lb/a/a/d$c;)V

    invoke-static {p3}, Lc/p;->a(Lc/y;)Lc/e;

    move-result-object p1

    iput-object p1, p0, Lb/c$b;->b:Lc/e;

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .registers 5

    const-wide/16 v0, -0x1

    :try_start_2
    iget-object v2, p0, Lb/c$b;->d:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Lb/c$b;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_c} :catch_d

    return-wide v2

    :catch_d
    :cond_d
    return-wide v0
.end method

.method public final contentType()Lb/x;
    .registers 2

    iget-object v0, p0, Lb/c$b;->c:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lb/c$b;->c:Ljava/lang/String;

    invoke-static {v0}, Lb/x;->a(Ljava/lang/String;)Lb/x;

    move-result-object v0

    return-object v0

    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public final source()Lc/e;
    .registers 2

    iget-object v0, p0, Lb/c$b;->b:Lc/e;

    return-object v0
.end method
