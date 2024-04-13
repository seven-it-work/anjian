.class public final Lcom/google/a/h;
.super Lcom/google/a/q;


# static fields
.field private static final INSTANCE:Lcom/google/a/h;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/a/h;

    invoke-direct {v0}, Lcom/google/a/h;-><init>()V

    sput-object v0, Lcom/google/a/h;->INSTANCE:Lcom/google/a/h;

    sget-object v1, Lcom/google/a/h;->NO_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/a/h;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/q;-><init>()V

    return-void
.end method

.method private constructor <init>(Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/a/q;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static getFormatInstance()Lcom/google/a/h;
    .registers 1

    sget-boolean v0, Lcom/google/a/h;->isStackTrace:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/a/h;

    invoke-direct {v0}, Lcom/google/a/h;-><init>()V

    return-object v0

    :cond_a
    sget-object v0, Lcom/google/a/h;->INSTANCE:Lcom/google/a/h;

    return-object v0
.end method

.method public static getFormatInstance(Ljava/lang/Throwable;)Lcom/google/a/h;
    .registers 2

    sget-boolean v0, Lcom/google/a/h;->isStackTrace:Z

    if-eqz v0, :cond_a

    new-instance v0, Lcom/google/a/h;

    invoke-direct {v0, p0}, Lcom/google/a/h;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    :cond_a
    sget-object p0, Lcom/google/a/h;->INSTANCE:Lcom/google/a/h;

    return-object p0
.end method
