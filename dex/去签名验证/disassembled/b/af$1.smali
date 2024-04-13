.class final Lb/af$1;
.super Lb/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/af;->create(Lb/x;JLc/e;)Lb/af;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/x;

.field final synthetic b:J

.field final synthetic c:Lc/e;


# direct methods
.method constructor <init>(Lb/x;JLc/e;)V
    .registers 5

    iput-object p1, p0, Lb/af$1;->a:Lb/x;

    iput-wide p2, p0, Lb/af$1;->b:J

    iput-object p4, p0, Lb/af$1;->c:Lc/e;

    invoke-direct {p0}, Lb/af;-><init>()V

    return-void
.end method


# virtual methods
.method public final contentLength()J
    .registers 3

    iget-wide v0, p0, Lb/af$1;->b:J

    return-wide v0
.end method

.method public final contentType()Lb/x;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lb/af$1;->a:Lb/x;

    return-object v0
.end method

.method public final source()Lc/e;
    .registers 2

    iget-object v0, p0, Lb/af$1;->c:Lc/e;

    return-object v0
.end method
