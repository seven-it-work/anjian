.class public Lcom/umeng/commonsdk/proguard/bo;
.super Lcom/umeng/commonsdk/proguard/ag;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field private static final g:J = 0x1L


# instance fields
.field protected f:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ag;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/umeng/commonsdk/proguard/ag;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p2}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    iput p1, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/ag;-><init>(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/umeng/commonsdk/proguard/bo;->f:I

    return v0
.end method
