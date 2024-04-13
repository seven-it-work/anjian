.class public Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cyjh/mqm/MQLanguageStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MQAuxiliary"
.end annotation


# instance fields
.field final synthetic a:Lcom/cyjh/mqm/MQLanguageStub;


# direct methods
.method public constructor <init>(Lcom/cyjh/mqm/MQLanguageStub;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/mqm/MQLanguageStub$MQAuxiliary;->a:Lcom/cyjh/mqm/MQLanguageStub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native Clear()V
.end method

.method public native CompareColorEx(Ljava/lang/String;F)I
.end method

.method public native FindMultiColor(IIIILjava/lang/String;Ljava/lang/String;IF[I)Z
.end method

.method public native Init()V
.end method

.method public native KeepCapture(Z)V
.end method

.method public native ScreenCap([I)[B
.end method

.method public native SetImageCrop(ZIIII)V
.end method

.method public native SetScreenRotation(I)V
.end method

.method public native SetScreenScale(FF)V
.end method

.method public native WaitKey()I
.end method
