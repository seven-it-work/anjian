.class public interface abstract Lb/q;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/q;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/q$1;

    invoke-direct {v0}, Lb/q$1;-><init>()V

    sput-object v0, Lb/q;->a:Lb/q;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
