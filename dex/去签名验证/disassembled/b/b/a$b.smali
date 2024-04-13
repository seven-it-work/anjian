.class public interface abstract Lb/b/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation


# static fields
.field public static final a:Lb/b/a$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lb/b/a$b$1;

    invoke-direct {v0}, Lb/b/a$b$1;-><init>()V

    sput-object v0, Lb/b/a$b;->a:Lb/b/a$b;

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;)V
.end method
