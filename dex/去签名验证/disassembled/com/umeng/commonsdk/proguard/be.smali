.class public final Lcom/umeng/commonsdk/proguard/be;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/proguard/be;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/umeng/commonsdk/proguard/be;->a:Ljava/lang/String;

    return-void
.end method
