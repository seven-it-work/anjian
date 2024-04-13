.class public final Lcom/google/a/d/b/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/a/d/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/a/t;

.field public final b:Lcom/google/a/t;

.field public final c:I


# direct methods
.method private constructor <init>(Lcom/google/a/t;Lcom/google/a/t;I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/a/d/b/a$a;->a:Lcom/google/a/t;

    iput-object p2, p0, Lcom/google/a/d/b/a$a;->b:Lcom/google/a/t;

    iput p3, p0, Lcom/google/a/d/b/a$a;->c:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/a/t;Lcom/google/a/t;IB)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/google/a/d/b/a$a;-><init>(Lcom/google/a/t;Lcom/google/a/t;I)V

    return-void
.end method

.method private a()Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/b/a$a;->a:Lcom/google/a/t;

    return-object v0
.end method

.method private b()Lcom/google/a/t;
    .registers 2

    iget-object v0, p0, Lcom/google/a/d/b/a$a;->b:Lcom/google/a/t;

    return-object v0
.end method

.method private c()I
    .registers 2

    iget v0, p0, Lcom/google/a/d/b/a$a;->c:I

    return v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/google/a/d/b/a$a;->a:Lcom/google/a/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/a/d/b/a$a;->b:Lcom/google/a/t;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/a/d/b/a$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
