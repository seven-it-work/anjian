.class public final Lcom/elf/studio/a/a;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Z

.field private g:Ljava/lang/String;

.field private h:J


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/elf/studio/a/a;->a:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/elf/studio/a/a;->a:I

    iput p2, p0, Lcom/elf/studio/a/a;->b:I

    iput-object p3, p0, Lcom/elf/studio/a/a;->g:Ljava/lang/String;

    iput-wide p4, p0, Lcom/elf/studio/a/a;->h:J

    iput-object p6, p0, Lcom/elf/studio/a/a;->c:Ljava/lang/String;

    iput-object p7, p0, Lcom/elf/studio/a/a;->d:Ljava/lang/String;

    iput-object p8, p0, Lcom/elf/studio/a/a;->e:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/elf/studio/a/a;->f:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x277b

    iput v0, p0, Lcom/elf/studio/a/a;->a:I

    iput-object p1, p0, Lcom/elf/studio/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/elf/studio/a/a;->b:I

    return v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/elf/studio/a/a;->b:I

    return-void
.end method

.method private a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/elf/studio/a/a;->h:J

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elf/studio/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/elf/studio/a/a;->f:Z

    return-void
.end method

.method private b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elf/studio/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/elf/studio/a/a;->a:I

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elf/studio/a/a;->c:Ljava/lang/String;

    return-void
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/elf/studio/a/a;->a:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elf/studio/a/a;->d:Ljava/lang/String;

    return-void
.end method

.method private d()J
    .registers 3

    iget-wide v0, p0, Lcom/elf/studio/a/a;->h:J

    return-wide v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elf/studio/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method private e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elf/studio/a/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elf/studio/a/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method private g()Z
    .registers 2

    iget-boolean v0, p0, Lcom/elf/studio/a/a;->f:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elf/studio/a/a;->e:Ljava/lang/String;

    return-object v0
.end method
