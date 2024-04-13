.class public final Lb/s$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/s$a;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/s$a;->b:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Lb/s$a;
    .registers 10

    iget-object v0, p0, Lb/s$a;->a:Ljava/util/List;

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/s$a;->b:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private a()Lb/s;
    .registers 4

    new-instance v0, Lb/s;

    iget-object v1, p0, Lb/s$a;->a:Ljava/util/List;

    iget-object v2, p0, Lb/s$a;->b:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lb/s;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Lb/s$a;
    .registers 10

    iget-object v0, p0, Lb/s$a;->a:Ljava/util/List;

    const-string v2, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lb/s$a;->b:Ljava/util/List;

    const-string v1, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lb/v;->a(Ljava/lang/String;Ljava/lang/String;ZZZZ)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
