.class public abstract Lcom/iflytek/voiceads/conn/NativeDataRef;
.super Lcom/iflytek/voiceads/conn/BaseDataRef;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/iflytek/voiceads/conn/BaseDataRef;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAdAudio()Lcom/iflytek/voiceads/bean/AdAudio;
.end method

.method public abstract getAddress()Ljava/lang/String;
.end method

.method public abstract getAppName()Ljava/lang/String;
.end method

.method public abstract getAppSize()D
.end method

.method public abstract getAppVer()Ljava/lang/String;
.end method

.method public abstract getAudioMonitor()Lcom/iflytek/voiceads/bean/AudioMonitor;
.end method

.method public abstract getCurrentPrice()D
.end method

.method public abstract getDisplayLabels()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloads()I
.end method

.method public abstract getImgList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLikes()I
.end method

.method public abstract getOriginalPrice()D
.end method

.method public abstract getPhone()Ljava/lang/String;
.end method

.method public abstract getRating()Ljava/lang/String;
.end method

.method public abstract getSponsored()Ljava/lang/String;
.end method
