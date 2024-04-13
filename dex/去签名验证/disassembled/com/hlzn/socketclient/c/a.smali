.class public final Lcom/hlzn/socketclient/c/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:J

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2712

    iput v0, p0, Lcom/hlzn/socketclient/c/a;->a:I

    iput p1, p0, Lcom/hlzn/socketclient/c/a;->b:I

    iput-object p2, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/hlzn/socketclient/c/a;->a:I

    iput-object p2, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2779

    iput v0, p0, Lcom/hlzn/socketclient/c/a;->a:I

    iput-object p1, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    iput-wide p2, p0, Lcom/hlzn/socketclient/c/a;->d:J

    iput-object p4, p0, Lcom/hlzn/socketclient/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x277b

    iput v0, p0, Lcom/hlzn/socketclient/c/a;->a:I

    iput-object p1, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/hlzn/socketclient/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/c/a;->b:I

    return v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/c/a;->b:I

    return-void
.end method

.method private a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/hlzn/socketclient/c/a;->d:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/hlzn/socketclient/c/a;->h:Z

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/c/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/hlzn/socketclient/c/a;->a:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/c/a;->e:Ljava/lang/String;

    return-void
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/hlzn/socketclient/c/a;->a:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method private d()J
    .registers 3

    iget-wide v0, p0, Lcom/hlzn/socketclient/c/a;->d:J

    return-wide v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/hlzn/socketclient/c/a;->g:Ljava/lang/String;

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/c/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/hlzn/socketclient/c/a;->h:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/hlzn/socketclient/c/a;->g:Ljava/lang/String;

    return-object v0
.end method
