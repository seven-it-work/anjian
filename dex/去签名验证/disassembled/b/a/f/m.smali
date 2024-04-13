.class public interface abstract Lb/a/f/m;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lb/a/f/m;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/a/f/m$1;

    invoke-direct {v0}, Lb/a/f/m$1;-><init>()V

    sput-object v0, Lb/a/f/m;->a:Lb/a/f/m;

    return-void
.end method


# virtual methods
.method public abstract a()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method public abstract a(Lc/e;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract b()Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Z"
        }
    .end annotation
.end method

.method public abstract c()V
.end method
