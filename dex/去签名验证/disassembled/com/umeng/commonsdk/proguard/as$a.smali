.class public Lcom/umeng/commonsdk/proguard/as$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/proguard/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/as;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/umeng/commonsdk/proguard/as$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/commonsdk/proguard/as$a;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/as$a;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/umeng/commonsdk/proguard/as$a;->b:Z

    iput-boolean p1, p0, Lcom/umeng/commonsdk/proguard/as$a;->a:Z

    iput-boolean p2, p0, Lcom/umeng/commonsdk/proguard/as$a;->b:Z

    iput p3, p0, Lcom/umeng/commonsdk/proguard/as$a;->c:I

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/bn;)Lcom/umeng/commonsdk/proguard/az;
    .registers 5

    new-instance v0, Lcom/umeng/commonsdk/proguard/as;

    iget-boolean v1, p0, Lcom/umeng/commonsdk/proguard/as$a;->a:Z

    iget-boolean v2, p0, Lcom/umeng/commonsdk/proguard/as$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/commonsdk/proguard/as;-><init>(Lcom/umeng/commonsdk/proguard/bn;ZZ)V

    iget p1, p0, Lcom/umeng/commonsdk/proguard/as$a;->c:I

    if-eqz p1, :cond_12

    iget p1, p0, Lcom/umeng/commonsdk/proguard/as$a;->c:I

    invoke-virtual {v0, p1}, Lcom/umeng/commonsdk/proguard/as;->c(I)V

    :cond_12
    return-object v0
.end method
