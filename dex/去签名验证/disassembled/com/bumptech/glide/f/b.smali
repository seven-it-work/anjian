.class public final Lcom/bumptech/glide/f/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bumptech/glide/load/g;


# static fields
.field private static final c:Lcom/bumptech/glide/f/b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bumptech/glide/f/b;

    invoke-direct {v0}, Lcom/bumptech/glide/f/b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/f/b;->c:Lcom/bumptech/glide/f/b;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/bumptech/glide/f/b;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/bumptech/glide/f/b;->c:Lcom/bumptech/glide/f/b;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .registers 2
    .param p1    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 2

    const-string v0, "EmptySignature"

    return-object v0
.end method
