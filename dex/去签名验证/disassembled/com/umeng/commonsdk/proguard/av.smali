.class public final Lcom/umeng/commonsdk/proguard/av;
.super Ljava/lang/Object;


# instance fields
.field public final a:B

.field public final b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/umeng/commonsdk/proguard/av;-><init>(BI)V

    return-void
.end method

.method public constructor <init>(BI)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/umeng/commonsdk/proguard/av;->a:B

    iput p2, p0, Lcom/umeng/commonsdk/proguard/av;->b:I

    return-void
.end method
