.class public abstract Lb/a/f/g$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/f/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# static fields
.field public static final m:Lb/a/f/g$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/a/f/g$b$1;

    invoke-direct {v0}, Lb/a/f/g$b$1;-><init>()V

    sput-object v0, Lb/a/f/g$b;->m:Lb/a/f/g$b;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/a/f/g;)V
    .registers 2

    return-void
.end method

.method public abstract a(Lb/a/f/i;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
