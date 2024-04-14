package com.alibaba.sdk.android.oss.model;

/* loaded from: classes.dex */
public class InitiateMultipartUploadRequest extends OSSRequest {
    private String bucketName;
    private ObjectMetadata metadata;
    private String objectKey;

    public InitiateMultipartUploadRequest(String str, String str2) {
        this(str, str2, null);
    }

    public InitiateMultipartUploadRequest(String str, String str2, ObjectMetadata objectMetadata) {
        setBucketName(str);
        setObjectKey(str2);
        setMetadata(objectMetadata);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public ObjectMetadata getMetadata() {
        return this.metadata;
    }

    public String getObjectKey() {
        return this.objectKey;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    public void setObjectKey(String str) {
        this.objectKey = str;
    }
}
