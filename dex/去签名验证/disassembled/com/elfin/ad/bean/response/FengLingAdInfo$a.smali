.class public final Lcom/elfin/ad/bean/response/FengLingAdInfo$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/ad/bean/response/FengLingAdInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/lang/String;

.field final synthetic d:Lcom/elfin/ad/bean/response/FengLingAdInfo;


# direct methods
.method public constructor <init>(Lcom/elfin/ad/bean/response/FengLingAdInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->d:Lcom/elfin/ad/bean/response/FengLingAdInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->a:I

    return v0
.end method

.method private a(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->a:I

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->c:Ljava/lang/String;

    return-void
.end method

.method private b()I
    .registers 2

    iget v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->b:I

    return v0
.end method

.method private b(I)V
    .registers 2

    iput p1, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->b:I

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/elfin/ad/bean/response/FengLingAdInfo$a;->c:Ljava/lang/String;

    return-object v0
.end method
