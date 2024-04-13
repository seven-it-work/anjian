.class public final Lcom/google/a/h/c;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Z

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:J

.field public i:J

.field public j:I

.field public k:[I


# direct methods
.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/a/h/c;->d:I

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/a/h/c;->h:J

    iput-wide v1, p0, Lcom/google/a/h/c;->i:J

    iput v0, p0, Lcom/google/a/h/c;->j:I

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/c;->a:I

    return v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/google/a/h/c;->a:I

    return-void
.end method

.method private a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/a/h/c;->h:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/h/c;->b:Ljava/lang/String;

    return-void
.end method

.method private a([I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lcom/google/a/h/c;->k:[I

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/google/a/h/c;->d:I

    return-void
.end method

.method private b(J)V
    .registers 3

    iput-wide p1, p0, Lcom/google/a/h/c;->i:J

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/h/c;->e:Ljava/lang/String;

    return-void
.end method

.method private c(I)V
    .registers 2

    iput p1, p0, Lcom/google/a/h/c;->j:I

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/h/c;->f:Ljava/lang/String;

    return-void
.end method

.method private c()[I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/a/h/c;->k:[I

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/google/a/h/c;->g:Ljava/lang/String;

    return-void
.end method

.method private d()Z
    .registers 2

    iget-boolean v0, p0, Lcom/google/a/h/c;->c:Z

    return v0
.end method

.method private e()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/a/h/c;->c:Z

    return-void
.end method

.method private f()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/c;->d:I

    return v0
.end method

.method private g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method private i()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/a/h/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method private j()J
    .registers 3

    iget-wide v0, p0, Lcom/google/a/h/c;->h:J

    return-wide v0
.end method

.method private k()I
    .registers 2

    iget v0, p0, Lcom/google/a/h/c;->j:I

    return v0
.end method

.method private l()J
    .registers 3

    iget-wide v0, p0, Lcom/google/a/h/c;->i:J

    return-wide v0
.end method
