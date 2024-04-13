.class public Lcom/umeng/commonsdk/proguard/at$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/umeng/commonsdk/proguard/bb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/commonsdk/proguard/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/umeng/commonsdk/proguard/at$a;->a:J

    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/umeng/commonsdk/proguard/at$a;->a:J

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/proguard/bn;)Lcom/umeng/commonsdk/proguard/az;
    .registers 5

    new-instance v0, Lcom/umeng/commonsdk/proguard/at;

    iget-wide v1, p0, Lcom/umeng/commonsdk/proguard/at$a;->a:J

    invoke-direct {v0, p1, v1, v2}, Lcom/umeng/commonsdk/proguard/at;-><init>(Lcom/umeng/commonsdk/proguard/bn;J)V

    return-object v0
.end method
