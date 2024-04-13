.class public final Lcom/goldcoast/sdk/a/d;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/goldcoast/sdk/a/d;->a:Ljava/lang/String;

    iput p2, p0, Lcom/goldcoast/sdk/a/d;->b:I

    iput-object p3, p0, Lcom/goldcoast/sdk/a/d;->c:Ljava/lang/String;

    iput p4, p0, Lcom/goldcoast/sdk/a/d;->d:I

    iput-object p5, p0, Lcom/goldcoast/sdk/a/d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/goldcoast/sdk/a/d;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/goldcoast/sdk/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/d;->a:Ljava/lang/String;

    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/goldcoast/sdk/a/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/goldcoast/sdk/a/d;->c:Ljava/lang/String;

    return-void
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lcom/goldcoast/sdk/a/d;->b:I

    return v0
.end method

.method public final d()I
    .registers 2

    iget v0, p0, Lcom/goldcoast/sdk/a/d;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/goldcoast/sdk/a/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/goldcoast/sdk/a/d;->f:Ljava/lang/String;

    return-object v0
.end method
