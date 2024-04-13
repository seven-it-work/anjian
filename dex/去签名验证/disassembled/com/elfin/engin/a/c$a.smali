.class public final Lcom/elfin/engin/a/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/engin/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/elfin/engin/a/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/elfin/engin/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/elfin/engin/a/c;-><init>(B)V

    sput-object v0, Lcom/elfin/engin/a/c$a;->a:Lcom/elfin/engin/a/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Lcom/elfin/engin/a/c;
    .registers 1

    sget-object v0, Lcom/elfin/engin/a/c$a;->a:Lcom/elfin/engin/a/c;

    return-object v0
.end method
