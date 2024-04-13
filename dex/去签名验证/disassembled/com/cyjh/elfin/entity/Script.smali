.class public Lcom/cyjh/elfin/entity/Script;
.super Ljava/lang/Object;


# static fields
.field public static final SCRIPT_STATE_FREE:I = 0x0

.field public static final SCRIPT_STATE_LOAD:I = 0x1

.field public static final SCRIPT_STATE_PAUSE:I = 0x3

.field public static final SCRIPT_STATE_PAUSE_BY_HEART_BEAT_VERIFI_ERR:I = 0x4

.field public static final SCRIPT_STATE_RUNING:I = 0x2


# instance fields
.field private appId:Ljava/lang/String;

.field private atcFile:Ljava/io/File;

.field private bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

.field private cfgFile:Ljava/io/File;

.field private changeFileList:I

.field private description:Ljava/lang/String;

.field private fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

.field private id:Ljava/lang/String;

.field private lcFile:Ljava/io/File;

.field private name:Ljava/lang/String;

.field private propFile:Ljava/io/File;

.field private rtdFile:Ljava/io/File;

.field private selId:Ljava/lang/String;

.field private size:Ljava/lang/String;

.field private uiFile:Ljava/io/File;

.field private uipFile:Ljava/io/File;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAtcFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->atcFile:Ljava/io/File;

    return-object v0
.end method

.method public getBestResolution()Lcom/cyjh/elfin/entity/BestResolution;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

    return-object v0
.end method

.method public getCfgFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->cfgFile:Ljava/io/File;

    return-object v0
.end method

.method public getChangeFileList()I
    .registers 2

    iget v0, p0, Lcom/cyjh/elfin/entity/Script;->changeFileList:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getFileVersion()Lcom/cyjh/elfin/entity/FileVersion;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLcFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->lcFile:Ljava/io/File;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPropFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->propFile:Ljava/io/File;

    return-object v0
.end method

.method public getRtdFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->rtdFile:Ljava/io/File;

    return-object v0
.end method

.method public getSelId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->selId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->size:Ljava/lang/String;

    return-object v0
.end method

.method public getUiFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->uiFile:Ljava/io/File;

    return-object v0
.end method

.method public getUipFile()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->uipFile:Ljava/io/File;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/cyjh/elfin/entity/Script;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAtcFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->atcFile:Ljava/io/File;

    return-void
.end method

.method public setBestResolution(Lcom/cyjh/elfin/entity/BestResolution;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

    return-void
.end method

.method public setCfgFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->cfgFile:Ljava/io/File;

    return-void
.end method

.method public setChangeFileList(I)V
    .registers 2

    iput p1, p0, Lcom/cyjh/elfin/entity/Script;->changeFileList:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->description:Ljava/lang/String;

    return-void
.end method

.method public setFileVersion(Lcom/cyjh/elfin/entity/FileVersion;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->id:Ljava/lang/String;

    return-void
.end method

.method public setLcFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->lcFile:Ljava/io/File;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->name:Ljava/lang/String;

    return-void
.end method

.method public setPropFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->propFile:Ljava/io/File;

    return-void
.end method

.method public setRtdFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->rtdFile:Ljava/io/File;

    return-void
.end method

.method public setSelId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->selId:Ljava/lang/String;

    return-void
.end method

.method public setSize(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->size:Ljava/lang/String;

    return-void
.end method

.method public setUiFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->uiFile:Ljava/io/File;

    return-void
.end method

.method public setUipFile(Ljava/io/File;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->uipFile:Ljava/io/File;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/cyjh/elfin/entity/Script;->version:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Script{changeFileList="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/cyjh/elfin/entity/Script;->changeFileList:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", id=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/entity/Script;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", description=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/entity/Script;->description:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", size=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/entity/Script;->size:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/entity/Script;->appId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/entity/Script;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", selId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/cyjh/elfin/entity/Script;->selId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", lcFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->lcFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", propFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->propFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", atcFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->atcFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uiFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->uiFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uipFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->uipFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rtdFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->rtdFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cfgFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->cfgFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fileVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->fileVersion:Lcom/cyjh/elfin/entity/FileVersion;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", bestResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/cyjh/elfin/entity/Script;->bestResolution:Lcom/cyjh/elfin/entity/BestResolution;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
