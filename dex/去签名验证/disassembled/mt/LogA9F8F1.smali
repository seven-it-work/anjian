.class public Lmt/LogA9F8F1;
.super Ljava/lang/Thread;
.source "LogA9F8F1.java"


# static fields
.field public static final IS_SHOW_STACK:Z = true

.field private static final PARAMETER_BUFFER:Ljava/lang/ThreadLocal;

.field private static final QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

.field private static final TIME_FORMAT1:Ljava/text/SimpleDateFormat;

.field private static final TIME_FORMAT2:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 19
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lmt/LogA9F8F1;->TIME_FORMAT1:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyyMMddHHmmssSSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Lmt/LogA9F8F1;->TIME_FORMAT2:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v1, Lmt/LogA9F8F1;->QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 25
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Lmt/LogA9F8F1;->PARAMETER_BUFFER:Ljava/lang/ThreadLocal;

    .line 28
    new-instance v0, Lmt/LogA9F8F1;

    invoke-direct {v0}, Lmt/LogA9F8F1;-><init>()V

    .line 29
    .local v0, "LogA9F8F1":Lmt/LogA9F8F1;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmt/LogA9F8F1;->setDaemon(Z)V

    .line 30
    invoke-virtual {v0}, Lmt/LogA9F8F1;->start()V

    .line 31
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static a(C)V
    .registers 2
    .param p0, "c"    # C

    .prologue
    .line 43
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public static a(D)V
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 47
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public static a(F)V
    .registers 2
    .param p0, "f"    # F

    .prologue
    .line 51
    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static a(I)V
    .registers 2
    .param p0, "i"    # I

    .prologue
    .line 55
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public static a(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 59
    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .registers 2
    .param p0, "obj"    # Ljava/lang/Object;
sget-boolean v0, Lmt/LogA9F8F1;->IS_SHOW_STACK:Z

if-eqz v0, :cond_0

invoke-static {}, Lmt/LogA9F8F1;->printStackTrace()V

:cond_0
    .prologue
    .line 63
    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "s2"    # Ljava/lang/Object;
sget-boolean v0, Lmt/LogA9F8F1;->IS_SHOW_STACK:Z

if-eqz v0, :cond_0

invoke-static {}, Lmt/LogA9F8F1;->printStackTrace()V

:cond_0
    .prologue
    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 39
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 6
    .param p0, "s1"    # Ljava/lang/Object;
    .param p1, "s2"    # Ljava/lang/Object;
    .param p2, "s3"    # Ljava/lang/Object;


sget-boolean v0, Lmt/LogA9F8F1;->IS_SHOW_STACK:Z

if-eqz v0, :cond_0

invoke-static {}, Lmt/LogA9F8F1;->printStackTrace()V

:cond_0

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "s":Ljava/lang/String;
    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method public static a(Z)V
    .registers 2
    .param p0, "z"    # Z

    .prologue
    .line 67
    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static b()V
    .registers 2

    .prologue
    .line 71
    sget-object v0, Lmt/LogA9F8F1;->PARAMETER_BUFFER:Ljava/lang/ThreadLocal;

    .line 72
    .local v0, "threadLocal":Ljava/lang/ThreadLocal;
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 74
    return-void
.end method

.method public static b1(C)V
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65701: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public static b1(D)V
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65701: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method public static b1(F)V
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65701: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static b1(I)V
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65701: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public static b1(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65701: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public static b1(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65701: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public static b1(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65701: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static b2(C)V
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65702: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static b2(D)V
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65702: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static b2(F)V
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65702: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static b2(I)V
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65702: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static b2(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65702: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public static b2(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65702: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public static b2(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65702: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public static b3(C)V
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65703: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static b3(D)V
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65703: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public static b3(F)V
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65703: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static b3(I)V
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65703: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static b3(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65703: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static b3(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65703: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static b3(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65703: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public static b4(C)V
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65704: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public static b4(D)V
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65704: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public static b4(F)V
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65704: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public static b4(I)V
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65704: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public static b4(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65704: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static b4(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65704: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static b4(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65704: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static b5(C)V
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65705: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static b5(D)V
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65705: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 194
    return-void
.end method

.method public static b5(F)V
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65705: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 198
    return-void
.end method

.method public static b5(I)V
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65705: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 202
    return-void
.end method

.method public static b5(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65705: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public static b5(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65705: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 210
    return-void
.end method

.method public static b5(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65705: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method public static b6(C)V
    .registers 3
    .param p0, "c"    # C

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65706: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 218
    return-void
.end method

.method public static b6(D)V
    .registers 4
    .param p0, "d"    # D

    .prologue
    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65706: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 222
    return-void
.end method

.method public static b6(F)V
    .registers 3
    .param p0, "f"    # F

    .prologue
    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65706: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 226
    return-void
.end method

.method public static b6(I)V
    .registers 3
    .param p0, "i"    # I

    .prologue
    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65706: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static b6(J)V
    .registers 4
    .param p0, "j"    # J

    .prologue
    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65706: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 234
    return-void
.end method

.method public static b6(Ljava/lang/Object;)V
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65706: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lmt/LogA9F8F1;->y(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 238
    return-void
.end method

.method public static b6(Z)V
    .registers 3
    .param p0, "z"    # Z

    .prologue
    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u53c2\u65706: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->x(Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public static printStackTrace()V
    .registers 2

    .prologue
    .line 245
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "InjectedLog.printStackTrace"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lmt/LogA9F8F1;->z(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private static x(Ljava/lang/String;)V
    .registers 4
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 249
    sget-object v1, Lmt/LogA9F8F1;->PARAMETER_BUFFER:Ljava/lang/ThreadLocal;

    .line 250
    .local v1, "threadLocal":Ljava/lang/ThreadLocal;
    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 251
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-nez v0, :cond_12

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 255
    :cond_12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_1d

    .line 256
    const/16 v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_1d
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    return-void
.end method

.method private static y(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    .line 262
    if-nez p0, :cond_5

    .line 263
    const-string v1, "null"

    .line 266
    .end local p0    # "obj":Ljava/lang/Object;
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_4
    return-object v1

    .line 265
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 266
    .restart local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_6e

    const-class v1, [B

    if-ne v0, v1, :cond_1a

    .line 267
    check-cast p0, [B

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 268
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1a
    const-class v1, [S

    if-ne v0, v1, :cond_25

    .line 269
    check-cast p0, [S

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([S)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 270
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_25
    const-class v1, [I

    if-ne v0, v1, :cond_30

    .line 271
    check-cast p0, [I

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 272
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_30
    const-class v1, [J

    if-ne v0, v1, :cond_3b

    .line 273
    check-cast p0, [J

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 274
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_3b
    const-class v1, [C

    if-ne v0, v1, :cond_46

    .line 275
    check-cast p0, [C

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([C)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 276
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_46
    const-class v1, [F

    if-ne v0, v1, :cond_51

    .line 277
    check-cast p0, [F

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 278
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_51
    const-class v1, [D

    if-ne v0, v1, :cond_5c

    .line 279
    check-cast p0, [D

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 280
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_5c
    const-class v1, [Z

    if-ne v0, v1, :cond_67

    .line 281
    check-cast p0, [Z

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 282
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_67
    check-cast p0, [Ljava/lang/Object;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_4
.end method

.method private static z(Ljava/lang/String;)V
    .registers 11
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 286
    const-string v4, "[TIME] [CLASS]\n->[METHOD]([LOCATION])\n[RESULT]\n--------------------\n"

    .line 287
    .local v4, "str2":Ljava/lang/String;
    const-string v5, "[TIME]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 288
    const-string v5, "[TIME]"

    sget-object v6, Lmt/LogA9F8F1;->TIME_FORMAT1:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 290
    :cond_1e
    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v5}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v3, v5, v6

    .line 291
    .local v3, "stackTraceElement":Ljava/lang/StackTraceElement;
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "fileName":Ljava/lang/String;
    if-nez v0, :cond_32

    .line 293
    const-string v0, "Unknown Source"

    .line 295
    :cond_32
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v1

    .line 296
    .local v1, "lineNumber":I
    if-ltz v1, :cond_4f

    .line 297
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    :cond_4f
    const-string v5, "[RESULT]"

    invoke-virtual {v4, v5, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[CLASS]"

    .line 300
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[METHOD]"

    .line 301
    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "[LOCATION]"

    .line 302
    invoke-virtual {v5, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 304
    .local v2, "replace":Ljava/lang/String;


    .line 306
    sget-object v5, Lmt/LogA9F8F1;->QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v5, v2}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 307
    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 311
    const/4 v7, 0x0

    .line 312
    .local v7, "fileOutputStream":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .line 314
    .local v9, "iOException":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/io/File;

    const-string v13, "[SDCARD]/MT2/logs/[PACKAGE]-[TIME].log"

    const-string v14, "[SDCARD]"

    .line 315
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v15}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v15

    .line 314
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "[PACKAGE]"

    const-string v15, "com.hjol"

    .line 316
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "[TIME]"

    sget-object v15, Lmt/LogA9F8F1;->TIME_FORMAT2:Ljava/text/SimpleDateFormat;

    .line 317
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0x5c

    const/16 v15, 0x2f

    .line 318
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v13

    const-string v14, "//"

    const-string v15, "/"

    .line 319
    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v4, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 320
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v11

    .line 321
    .local v11, "parentFile":Ljava/io/File;
    if-eqz v11, :cond_4c

    .line 322
    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    .line 324
    :cond_4c
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v13, 0x1

    invoke-direct {v8, v4, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_52} :catch_c7

    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    .local v8, "fileOutputStream":Ljava/io/FileOutputStream;
    move-object v7, v8

    .line 329
    .end local v4    # "file":Ljava/io/File;
    .end local v8    # "fileOutputStream":Ljava/io/FileOutputStream;
    .end local v11    # "parentFile":Ljava/io/File;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    :goto_53
    if-nez v7, :cond_8a

    .line 331
    :try_start_55
    new-instance v5, Ljava/io/File;

    const-string v13, "/data/data/com.hjol/logs"

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 332
    .local v5, "file2":Ljava/io/File;
    new-instance v6, Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v14, Lmt/LogA9F8F1;->TIME_FORMAT2:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".log"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v5, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 333
    .local v6, "file3":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 334
    new-instance v7, Ljava/io/FileOutputStream;

    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_8a} :catch_cd

    .line 341
    .end local v5    # "file2":Ljava/io/File;
    .end local v6    # "file3":Ljava/io/File;
    .restart local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    :cond_8a
    :try_start_8a
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 343
    .local v0, "defaultCharset":Ljava/nio/charset/Charset;
    :cond_8e
    :goto_8e
    sget-object v10, Lmt/LogA9F8F1;->QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 344
    .local v10, "linkedBlockingQueue":Ljava/util/concurrent/LinkedBlockingQueue;
    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 345
    .local v12, "take":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "\n\u2193\u2193\u2193\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n\u2191\u2191\u2191\u2191\u2191\u2191\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 346
    invoke-virtual {v12, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 347
    invoke-virtual {v10}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8e

    .line 348
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_bf} :catch_c0

    goto :goto_8e

    .line 351
    .end local v0    # "defaultCharset":Ljava/nio/charset/Charset;
    .end local v10    # "linkedBlockingQueue":Ljava/util/concurrent/LinkedBlockingQueue;
    .end local v12    # "take":Ljava/lang/String;
    :catch_c0
    move-exception v3

    .line 352
    .local v3, "e3":Ljava/lang/Exception;
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    .line 325
    .end local v3    # "e3":Ljava/lang/Exception;
    :catch_c7
    move-exception v1

    .line 326
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 327
    move-object v9, v1

    goto :goto_53

    .line 335
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "fileOutputStream":Ljava/io/FileOutputStream;
    :catch_cd
    move-exception v2

    .line 336
    .local v2, "e2":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 337
    new-instance v13, Ljava/lang/RuntimeException;

    invoke-direct {v13, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v13
.end method
