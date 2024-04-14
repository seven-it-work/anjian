package com.google.protobuf;

import com.google.protobuf.GeneratedMessage;
import com.google.protobuf.GeneratedMessage.Builder;
import com.google.protobuf.MessageOrBuilder;

/* loaded from: classes.dex */
public class SingleFieldBuilder<MType extends GeneratedMessage, BType extends GeneratedMessage.Builder, IType extends MessageOrBuilder> implements GeneratedMessage.BuilderParent {
    private BType builder;
    private boolean isClean;
    private MType message;
    private GeneratedMessage.BuilderParent parent;

    public SingleFieldBuilder(MType mtype, GeneratedMessage.BuilderParent builderParent, boolean z) {
        if (mtype == null) {
            throw new NullPointerException();
        }
        this.message = mtype;
        this.parent = builderParent;
        this.isClean = z;
    }

    private void onChanged() {
        if (this.builder != null) {
            this.message = null;
        }
        if (!this.isClean || this.parent == null) {
            return;
        }
        this.parent.markDirty();
        this.isClean = false;
    }

    public MType build() {
        this.isClean = true;
        return getMessage();
    }

    public SingleFieldBuilder<MType, BType, IType> clear() {
        this.message = (MType) (this.message != null ? this.message.getDefaultInstanceForType() : this.builder.getDefaultInstanceForType());
        if (this.builder != null) {
            this.builder.dispose();
            this.builder = null;
        }
        onChanged();
        return this;
    }

    public void dispose() {
        this.parent = null;
    }

    public BType getBuilder() {
        if (this.builder == null) {
            this.builder = (BType) this.message.newBuilderForType(this);
            this.builder.mergeFrom(this.message);
            this.builder.markClean();
        }
        return this.builder;
    }

    public MType getMessage() {
        if (this.message == null) {
            this.message = (MType) this.builder.buildPartial();
        }
        return this.message;
    }

    public IType getMessageOrBuilder() {
        return this.builder != null ? this.builder : this.message;
    }

    @Override // com.google.protobuf.GeneratedMessage.BuilderParent
    public void markDirty() {
        onChanged();
    }

    public SingleFieldBuilder<MType, BType, IType> mergeFrom(MType mtype) {
        if (this.builder == null && this.message == this.message.getDefaultInstanceForType()) {
            this.message = mtype;
        } else {
            getBuilder().mergeFrom(mtype);
        }
        onChanged();
        return this;
    }

    public SingleFieldBuilder<MType, BType, IType> setMessage(MType mtype) {
        if (mtype == null) {
            throw new NullPointerException();
        }
        this.message = mtype;
        if (this.builder != null) {
            this.builder.dispose();
            this.builder = null;
        }
        onChanged();
        return this;
    }
}
