.class final Lb/r$2;
.super Ljava/lang/Object;

# interfaces
.implements Lb/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/r;->a(Lb/r;)Lb/r$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/r;


# direct methods
.method constructor <init>(Lb/r;)V
    .registers 2

    iput-object p1, p0, Lb/r$2;->a:Lb/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lb/r;
    .registers 2

    iget-object v0, p0, Lb/r$2;->a:Lb/r;

    return-object v0
.end method
