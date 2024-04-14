package com.cyjh.mq.sdk.entity;

import android.text.TextUtils;
import com.cyjh.mobileanjian.ipc.share.proto.Ipc;
import com.cyjh.mq.sdk.inf.IScript;
import com.cyjh.mq.sdk.inf.InterfaceC1693d;

/* loaded from: classes.dex */
public class Script4Run implements IScript, InterfaceC1693d, Cloneable {
    public static final int IGNORE_REPEAT = -1;
    public static final int IGNORE_TIME = -2;
    public static final int LOOP = 0;
    public static final int ONE_TIME = 1;
    public String appId;
    public String atcPath;
    public int duration;
    public boolean encrypt;
    public long encryptKey;
    public boolean isFengwoScript;
    public String lcPath;
    public int repeat;
    public String scriptEncryptKey;
    public int trialTime;
    public String uiCfgPath;
    public String username;

    public Script4Run() {
        this.lcPath = "";
        this.atcPath = "";
        this.uiCfgPath = "";
        this.appId = "";
        this.username = "";
        this.trialTime = 0;
        this.repeat = 1;
        this.duration = -2;
        this.encryptKey = 0L;
        this.encrypt = false;
        this.isFengwoScript = false;
        this.scriptEncryptKey = "";
    }

    public Script4Run(String str, String str2, String str3) {
        this.lcPath = "";
        this.atcPath = "";
        this.uiCfgPath = "";
        this.appId = "";
        this.username = "";
        this.trialTime = 0;
        this.repeat = 1;
        this.duration = -2;
        this.encryptKey = 0L;
        this.encrypt = false;
        this.isFengwoScript = false;
        this.scriptEncryptKey = "";
        this.lcPath = str;
        this.atcPath = str2;
        this.uiCfgPath = str3;
    }

    public static Script4Run parseFromMessage(Ipc.IpcMessage ipcMessage) {
        Script4Run script4Run = new Script4Run();
        for (int i = 0; i < 6; i++) {
            switch (i) {
                case 0:
                    script4Run.setTrialTime(ipcMessage.getArg1(i)).setLcPath(ipcMessage.getArg2(i)).setEncryptKey(ipcMessage.getArg4(i));
                    break;
                case 1:
                    script4Run.setRepeat(ipcMessage.getArg1(i)).setAtcPath(ipcMessage.getArg2(i));
                    break;
                case 2:
                    script4Run.setTimeInMinutes(ipcMessage.getArg1(i)).setConfigPath(ipcMessage.getArg2(i));
                    break;
                case 3:
                    script4Run.setEncrypt(ipcMessage.getArg1(i) != 0).setAppId(ipcMessage.getArg2(i));
                    break;
                case 4:
                    script4Run.setUserName(ipcMessage.getArg2(i));
                    break;
                case 5:
                    String arg2 = ipcMessage.getArg2(i);
                    if (TextUtils.isEmpty(arg2)) {
                        break;
                    } else {
                        script4Run.setScriptEncryptKey(arg2);
                        break;
                    }
            }
        }
        script4Run.setEncrypt(ipcMessage.getEncrypt());
        return script4Run;
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public Script4Run m13987clone() {
        try {
            return (Script4Run) super.clone();
        } catch (CloneNotSupportedException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public String getAppId() {
        return this.appId;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public String getAtcPath() {
        return this.atcPath;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public String getConfigPath() {
        return this.uiCfgPath;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public long getEncryptKey() {
        return this.encryptKey;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public String getLcPath() {
        return this.lcPath;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public int getRepeat() {
        return this.repeat;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public String getScriptEncryptKey() {
        return this.scriptEncryptKey;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public int getTimeInMinutes() {
        return this.duration;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public int getTrialTime() {
        return this.trialTime;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public String getUserName() {
        return this.username;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public boolean isEncrypt() {
        return this.encrypt;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public boolean isFengwoScript() {
        return this.isFengwoScript;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setAppId(String str) {
        this.appId = str;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setAtcPath(String str) {
        this.atcPath = str;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setConfigPath(String str) {
        this.uiCfgPath = str;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setEncrypt(boolean z) {
        this.encrypt = z;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setEncryptKey(long j) {
        this.encryptKey = j;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setIsFengwoScript(boolean z) {
        this.isFengwoScript = z;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setLcPath(String str) {
        this.lcPath = str;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setRepeat(int i) {
        if (i >= 0) {
            this.repeat = i;
            this.duration = -2;
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setScriptEncryptKey(String str) {
        this.scriptEncryptKey = str;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setTimeInMinutes(int i) {
        if (i > 0) {
            this.duration = i;
            this.repeat = -1;
        }
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setTrialTime(int i) {
        this.trialTime = i;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.IScript
    public IScript setUserName(String str) {
        this.username = str;
        return this;
    }

    @Override // com.cyjh.mq.sdk.inf.InterfaceC1693d
    public Ipc.IpcMessage toMessage(int i) {
        String str;
        Ipc.IpcMessage.Builder cmd = Ipc.IpcMessage.newBuilder().setCmd(i);
        for (int i2 = 0; i2 < 6; i2++) {
            switch (i2) {
                case 0:
                    cmd.addArg1(this.trialTime);
                    cmd.addArg2(this.lcPath);
                    cmd.addArg4(this.encryptKey);
                    continue;
                case 1:
                    cmd.addArg1(this.repeat);
                    str = this.atcPath;
                    break;
                case 2:
                    cmd.addArg1(this.duration);
                    str = this.uiCfgPath;
                    break;
                case 3:
                    cmd.addArg1(this.isFengwoScript ? 1 : 0);
                    str = this.appId;
                    break;
                case 4:
                    str = this.username;
                    break;
                case 5:
                    if (TextUtils.isEmpty(this.scriptEncryptKey)) {
                        this.scriptEncryptKey = "";
                    }
                    str = this.scriptEncryptKey;
                    break;
            }
            cmd.addArg2(str);
        }
        cmd.setEncrypt(this.encrypt);
        return cmd.build();
    }

    public String toString() {
        return "lcPath=" + getLcPath() + "\natcPath=" + getAtcPath() + "\nuiCfgPath=" + getConfigPath() + "\nappId=" + getAppId() + "\nusername=" + getUserName() + "\ntrialTime=" + getTrialTime() + "\nrepeat=" + getRepeat() + "\nduration=" + getTimeInMinutes() + "\nencryptKey=" + getEncryptKey() + "\nencrypt=" + isEncrypt() + '\n';
    }
}
