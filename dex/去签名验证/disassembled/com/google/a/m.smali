.class public final Lcom/google/a/m;
.super Lcom/google/a/q;


# static fields
.field private static final INSTANCE:Lcom/google/a/m;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/a/m;

    invoke-direct {v0}, Lcom/google/a/m;-><init>()V

    sput-object v0, Lcom/google/a/m;->INSTANCE:Lcom/google/a/m;

    sget-object v1, Lcom/google/a/m;->NO_TRACE:[Ljava/lang/StackTraceElement;

    invoke-virtual {v0, v1}, Lcom/google/a/m;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/google/a/q;-><init>()V

    return-void
.end method

.method public static getNotFoundInstance()Lcom/google/a/m;
    .registers 1

    sget-object v0, Lcom/google/a/m;->INSTANCE:Lcom/google/a/m;

    return-object v0
.end method
