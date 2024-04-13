.class public final Lcom/cyjh/common/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String; = null

.field public static b:Ljava/lang/String; = ""

.field public static c:[Ljava/lang/String; = null

.field public static d:[Ljava/lang/String; = null

.field public static e:Z = false

.field public static f:Ljava/lang/String; = null

.field private static final g:Ljava/lang/String; = "http"

.field private static h:Ljava/lang/String; = null

.field private static i:J = 0x0L

.field private static j:J = 0x0L

.field private static k:Ljava/lang/String; = null

.field private static l:Ljava/lang/String; = null

.field private static m:Ljava/lang/String; = null

.field private static n:Ljava/lang/String; = null

.field private static o:I = 0x0

.field private static p:Ljava/lang/String; = null

.field private static q:Ljava/lang/String; = "http://auth2.mobileanjian.com/"


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, "a6cd931d"

    const-string v1, "1dcf44bf"

    const-string v2, "650e59d7"

    const-string v3, "3460d8da"

    const-string v4, "21fbt87f"

    const-string v5, "317e5900"

    const-string v6, "ed1139f0"

    const-string v7, "c99f6f94"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/a/a;->a:[Ljava/lang/String;

    const-string v1, "c6bd901f"

    const-string v2, "0ddf44be"

    const-string v3, "950e5927"

    const-string v4, "6460d8df"

    const-string v5, "11fb887f"

    const-string v6, "117e4900"

    const-string v7, "bd113950"

    const-string v8, "a99f6f97"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/a/a;->c:[Ljava/lang/String;

    const-string v1, "a6cd931d"

    const-string v2, "1dcf44bf"

    const-string v3, "650e59d7"

    const-string v4, "3460d8da"

    const-string v5, "21fbt87f"

    const-string v6, "317e5900"

    const-string v7, "ed1139f0"

    const-string v8, "c99f6f94"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/cyjh/common/a/a;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 4

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/common/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 5

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_13
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)V
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    const-string v0, "http://"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_13
    sput-object p0, Lcom/cyjh/common/a/a;->h:Ljava/lang/String;

    :cond_15
    return-void
.end method

.method public static a(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    sput-object p0, Lcom/cyjh/common/a/a;->h:Ljava/lang/String;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/cyjh/common/a/a;->e:Z

    sput-wide p1, Lcom/cyjh/common/a/a;->j:J

    const-wide/16 p0, 0x22f

    sput-wide p0, Lcom/cyjh/common/a/a;->i:J

    sput-object p3, Lcom/cyjh/common/a/a;->k:Ljava/lang/String;

    const/4 p0, 0x2

    sput p0, Lcom/cyjh/common/a/a;->o:I

    sput-object p4, Lcom/cyjh/common/a/a;->l:Ljava/lang/String;

    sput-object p5, Lcom/cyjh/common/a/a;->m:Ljava/lang/String;

    sput-object p6, Lcom/cyjh/common/a/a;->n:Ljava/lang/String;

    sput-object p7, Lcom/cyjh/common/a/a;->p:Ljava/lang/String;

    return-void
.end method

.method public static b()J
    .registers 2

    sget-wide v0, Lcom/cyjh/common/a/a;->i:J

    return-wide v0
.end method

.method public static b(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "http"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    sget-object v1, Lcom/cyjh/common/a/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->encodedAuthority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static c()J
    .registers 2

    sget-wide v0, Lcom/cyjh/common/a/a;->j:J

    return-wide v0
.end method

.method public static c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/cyjh/common/a/a;->f:Ljava/lang/String;

    return-void
.end method

.method public static d()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/a/a;->l:Ljava/lang/String;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/cyjh/common/a/a;->q:Ljava/lang/String;

    return-void
.end method

.method public static e()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/a/a;->m:Ljava/lang/String;

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/a/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/a/a;->p:Ljava/lang/String;

    return-object v0
.end method

.method public static h()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/a/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static i()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/cyjh/common/a/a;->q:Ljava/lang/String;

    return-object v0
.end method

.method private static j()Z
    .registers 1

    sget-boolean v0, Lcom/cyjh/common/a/a;->e:Z

    return v0
.end method

.method private static k()I
    .registers 1

    sget v0, Lcom/cyjh/common/a/a;->o:I

    return v0
.end method
