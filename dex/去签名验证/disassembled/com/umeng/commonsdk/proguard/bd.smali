.class public final Lcom/umeng/commonsdk/proguard/bd;
.super Ljava/lang/Object;


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/umeng/commonsdk/proguard/bd;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/bd;->a:B

    iput p2, p0, Lcom/umeng/commonsdk/proguard/bd;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/proguard/av;)V
    .registers 3

    iget-byte v0, p1, Lcom/umeng/commonsdk/proguard/av;->a:B

    iget p1, p1, Lcom/umeng/commonsdk/proguard/av;->b:I

    invoke-direct {p0, v0, p1}, Lcom/umeng/commonsdk/proguard/bd;-><init>(BI)V

    return-void
.end method
