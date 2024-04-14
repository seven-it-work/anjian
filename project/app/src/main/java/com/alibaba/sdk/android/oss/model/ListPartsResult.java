package com.alibaba.sdk.android.oss.model;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ListPartsResult extends OSSResult {
    private String bucketName;
    private boolean isTruncated;
    private String key;
    private Integer maxParts;
    private Integer nextPartNumberMarker;
    private Integer partNumberMarker;
    private List<PartSummary> parts = new ArrayList();
    private String storageClass;
    private String uploadId;

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public Integer getMaxParts() {
        return this.maxParts;
    }

    public Integer getNextPartNumberMarker() {
        return this.nextPartNumberMarker;
    }

    public Integer getPartNumberMarker() {
        return this.partNumberMarker;
    }

    public List<PartSummary> getParts() {
        return this.parts;
    }

    public String getStorageClass() {
        return this.storageClass;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public boolean isTruncated() {
        return this.isTruncated;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setMaxParts(int i) {
        this.maxParts = Integer.valueOf(i);
    }

    public void setNextPartNumberMarker(int i) {
        this.nextPartNumberMarker = Integer.valueOf(i);
    }

    public void setPartNumberMarker(int i) {
        this.partNumberMarker = Integer.valueOf(i);
    }

    public void setParts(List<PartSummary> list) {
        this.parts.clear();
        if (list == null || list.isEmpty()) {
            return;
        }
        this.parts.addAll(list);
    }

    public void setStorageClass(String str) {
        this.storageClass = str;
    }

    public void setTruncated(boolean z) {
        this.isTruncated = z;
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }
}
