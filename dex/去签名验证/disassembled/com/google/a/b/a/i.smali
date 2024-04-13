.class public final Lcom/google/a/b/a/i;
.super Lcom/google/a/b/a/u;


# static fields
.field private static final a:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ","

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/a/b/a/i;->a:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/b/a/u;-><init>()V

    return-void
.end method

.method private static c(Lcom/google/a/r;)Lcom/google/a/b/a/h;
    .registers 11

    invoke-static {p0}, Lcom/google/a/b/a/i;->b(Lcom/google/a/r;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "mailto:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_23

    const-string v0, "MAILTO:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto :goto_23

    :cond_16
    invoke-static {p0}, Lcom/google/a/b/a/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    return-object v1

    :cond_1d
    new-instance v0, Lcom/google/a/b/a/h;

    invoke-direct {v0, p0}, Lcom/google/a/b/a/h;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_23
    :goto_23
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_35

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_35
    :try_start_35
    invoke-static {v0}, Lcom/google/a/b/a/i;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_39
    .catch Ljava/lang/IllegalArgumentException; {:try_start_35 .. :try_end_39} :catch_a3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_46

    sget-object v2, Lcom/google/a/b/a/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_47

    :cond_46
    move-object v0, v1

    :goto_47
    invoke-static {p0}, Lcom/google/a/b/a/i;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_97

    if-nez v0, :cond_5f

    const-string v2, "to"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_5f

    sget-object v0, Lcom/google/a/b/a/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    :cond_5f
    const-string v2, "cc"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_70

    sget-object v3, Lcom/google/a/b/a/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_71

    :cond_70
    move-object v2, v1

    :goto_71
    const-string v3, "bcc"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_81

    sget-object v1, Lcom/google/a/b/a/i;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v3}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v1

    :cond_81
    const-string v3, "subject"

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "body"

    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object v9, p0

    move-object v5, v0

    move-object v7, v1

    move-object v6, v2

    move-object v8, v3

    goto :goto_9c

    :cond_97
    move-object v5, v0

    move-object v6, v1

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    :goto_9c
    new-instance p0, Lcom/google/a/b/a/h;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/google/a/b/a/h;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :catch_a3
    return-object v1
.end method


# virtual methods
.method public final synthetic a(Lcom/google/a/r;)Lcom/google/a/b/a/q;
    .registers 2

    invoke-static {p1}, Lcom/google/a/b/a/i;->c(Lcom/google/a/r;)Lcom/google/a/b/a/h;

    move-result-object p1

    return-object p1
.end method
