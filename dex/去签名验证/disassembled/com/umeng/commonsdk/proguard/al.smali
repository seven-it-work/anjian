.class public Lcom/umeng/commonsdk/proguard/al;
.super Lcom/umeng/commonsdk/proguard/an;


# instance fields
.field public final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/ae;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(BLjava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/commonsdk/proguard/ae;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/proguard/an;-><init>(B)V

    iput-object p2, p0, Lcom/umeng/commonsdk/proguard/al;->a:Ljava/lang/Class;

    return-void
.end method
