.class public final Lcom/elfin/engin/R$raw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/elfin/engin/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static final elfinject_arm:I = 0x7f080001

.field public static final elfinject_x86:I = 0x7f080002

.field public static final eventservice:I = 0x7f080003


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
