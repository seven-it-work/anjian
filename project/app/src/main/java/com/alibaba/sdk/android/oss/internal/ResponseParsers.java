package com.alibaba.sdk.android.oss.internal;

import com.alibaba.sdk.android.oss.ServiceException;
import com.alibaba.sdk.android.oss.common.OSSHeaders;
import com.alibaba.sdk.android.oss.common.OSSLog;
import com.alibaba.sdk.android.oss.common.utils.DateUtil;
import com.alibaba.sdk.android.oss.model.AbortMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.AppendObjectResult;
import com.alibaba.sdk.android.oss.model.CompleteMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.CopyObjectResult;
import com.alibaba.sdk.android.oss.model.CreateBucketResult;
import com.alibaba.sdk.android.oss.model.DeleteBucketResult;
import com.alibaba.sdk.android.oss.model.DeleteObjectResult;
import com.alibaba.sdk.android.oss.model.GetBucketACLResult;
import com.alibaba.sdk.android.oss.model.GetObjectResult;
import com.alibaba.sdk.android.oss.model.HeadObjectResult;
import com.alibaba.sdk.android.oss.model.InitiateMultipartUploadResult;
import com.alibaba.sdk.android.oss.model.ListObjectsResult;
import com.alibaba.sdk.android.oss.model.ListPartsResult;
import com.alibaba.sdk.android.oss.model.OSSObjectSummary;
import com.alibaba.sdk.android.oss.model.ObjectMetadata;
import com.alibaba.sdk.android.oss.model.PartSummary;
import com.alibaba.sdk.android.oss.model.PutObjectResult;
import com.alibaba.sdk.android.oss.model.UploadPartResult;
import com.cyjh.elfin.p073a.C1225b;
import java.io.IOException;
import java.io.InputStream;
import java.io.StringReader;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.Map;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;
import org.w3c.dom.Element;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import p003b.C0496ae;

/* loaded from: classes.dex */
public final class ResponseParsers {
    public static final DocumentBuilderFactory domFactory = DocumentBuilderFactory.newInstance();

    /* loaded from: classes.dex */
    public static final class AbortMultipartUploadResponseParser extends AbstractResponseParser<AbortMultipartUploadResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final AbortMultipartUploadResult parseData(C0496ae c0496ae, AbortMultipartUploadResult abortMultipartUploadResult) throws IOException {
            return abortMultipartUploadResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class AppendObjectResponseParser extends AbstractResponseParser<AppendObjectResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final AppendObjectResult parseData(C0496ae c0496ae, AppendObjectResult appendObjectResult) throws IOException {
            String m622a = c0496ae.m622a(OSSHeaders.OSS_NEXT_APPEND_POSITION);
            if (m622a != null) {
                appendObjectResult.setNextPosition(Long.valueOf(m622a));
            }
            appendObjectResult.setObjectCRC64(c0496ae.m622a(OSSHeaders.OSS_HASH_CRC64_ECMA));
            return appendObjectResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class CompleteMultipartUploadResponseParser extends AbstractResponseParser<CompleteMultipartUploadResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final CompleteMultipartUploadResult parseData(C0496ae c0496ae, CompleteMultipartUploadResult completeMultipartUploadResult) throws Exception {
            if (c0496ae.m622a("Content-Type").equals("application/xml")) {
                return ResponseParsers.parseCompleteMultipartUploadResponseXML(c0496ae.m625d().byteStream(), completeMultipartUploadResult);
            }
            if (c0496ae.m625d() != null) {
                completeMultipartUploadResult.setServerCallbackReturnBody(c0496ae.m625d().string());
            }
            return completeMultipartUploadResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class CopyObjectResponseParser extends AbstractResponseParser<CopyObjectResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final CopyObjectResult parseData(C0496ae c0496ae, CopyObjectResult copyObjectResult) throws Exception {
            return ResponseParsers.parseCopyObjectResponseXML(c0496ae.m625d().byteStream(), copyObjectResult);
        }
    }

    /* loaded from: classes.dex */
    public static final class CreateBucketResponseParser extends AbstractResponseParser<CreateBucketResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final CreateBucketResult parseData(C0496ae c0496ae, CreateBucketResult createBucketResult) throws IOException {
            if (createBucketResult.getResponseHeader().containsKey("Location")) {
                createBucketResult.bucketLocation = createBucketResult.getResponseHeader().get("Location");
            }
            return createBucketResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class DeleteBucketResponseParser extends AbstractResponseParser<DeleteBucketResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final DeleteBucketResult parseData(C0496ae c0496ae, DeleteBucketResult deleteBucketResult) throws IOException {
            return deleteBucketResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class DeleteObjectResponseParser extends AbstractResponseParser<DeleteObjectResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final DeleteObjectResult parseData(C0496ae c0496ae, DeleteObjectResult deleteObjectResult) throws IOException {
            return deleteObjectResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class GetBucketACLResponseParser extends AbstractResponseParser<GetBucketACLResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final GetBucketACLResult parseData(C0496ae c0496ae, GetBucketACLResult getBucketACLResult) throws Exception {
            return ResponseParsers.parseGetBucketACLResponse(c0496ae.m625d().byteStream(), getBucketACLResult);
        }
    }

    /* loaded from: classes.dex */
    public static final class GetObjectResponseParser extends AbstractResponseParser<GetObjectResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final boolean needCloseResponse() {
            return false;
        }

        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final GetObjectResult parseData(C0496ae c0496ae, GetObjectResult getObjectResult) throws IOException {
            getObjectResult.setMetadata(ResponseParsers.parseObjectMetadata(getObjectResult.getResponseHeader()));
            getObjectResult.setContentLength(c0496ae.m625d().contentLength());
            getObjectResult.setObjectContent(c0496ae.m625d().byteStream());
            return getObjectResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class HeadObjectResponseParser extends AbstractResponseParser<HeadObjectResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final HeadObjectResult parseData(C0496ae c0496ae, HeadObjectResult headObjectResult) throws IOException {
            headObjectResult.setMetadata(ResponseParsers.parseObjectMetadata(headObjectResult.getResponseHeader()));
            return headObjectResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class InitMultipartResponseParser extends AbstractResponseParser<InitiateMultipartUploadResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final InitiateMultipartUploadResult parseData(C0496ae c0496ae, InitiateMultipartUploadResult initiateMultipartUploadResult) throws Exception {
            return ResponseParsers.parseInitMultipartResponseXML(c0496ae.m625d().byteStream(), initiateMultipartUploadResult);
        }
    }

    /* loaded from: classes.dex */
    public static final class ListObjectsResponseParser extends AbstractResponseParser<ListObjectsResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final ListObjectsResult parseData(C0496ae c0496ae, ListObjectsResult listObjectsResult) throws Exception {
            return ResponseParsers.parseObjectListResponse(c0496ae.m625d().byteStream(), listObjectsResult);
        }
    }

    /* loaded from: classes.dex */
    public static final class ListPartsResponseParser extends AbstractResponseParser<ListPartsResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final ListPartsResult parseData(C0496ae c0496ae, ListPartsResult listPartsResult) throws Exception {
            return ResponseParsers.parseListPartsResponseXML(c0496ae.m625d().byteStream(), listPartsResult);
        }
    }

    /* loaded from: classes.dex */
    public static final class PutObjectResponseParser extends AbstractResponseParser<PutObjectResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final PutObjectResult parseData(C0496ae c0496ae, PutObjectResult putObjectResult) throws IOException {
            putObjectResult.setETag(ResponseParsers.trimQuotes(c0496ae.m622a("ETag")));
            if (c0496ae.m625d().contentLength() > 0) {
                putObjectResult.setServerCallbackReturnBody(c0496ae.m625d().string());
            }
            return putObjectResult;
        }
    }

    /* loaded from: classes.dex */
    public static final class UploadPartResponseParser extends AbstractResponseParser<UploadPartResult> {
        @Override // com.alibaba.sdk.android.oss.internal.AbstractResponseParser
        public final UploadPartResult parseData(C0496ae c0496ae, UploadPartResult uploadPartResult) throws IOException {
            uploadPartResult.setETag(ResponseParsers.trimQuotes(c0496ae.m622a("ETag")));
            return uploadPartResult;
        }
    }

    public static String checkChildNotNullAndGetValue(Node node) {
        if (node.getFirstChild() != null) {
            return node.getFirstChild().getNodeValue();
        }
        return null;
    }

    private static String parseCommonPrefixXML(NodeList nodeList) {
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null && nodeName.equals("Prefix")) {
                return checkChildNotNullAndGetValue(item);
            }
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CompleteMultipartUploadResult parseCompleteMultipartUploadResponseXML(InputStream inputStream, CompleteMultipartUploadResult completeMultipartUploadResult) throws ParserConfigurationException, IOException, SAXException {
        Element documentElement = domFactory.newDocumentBuilder().parse(inputStream).getDocumentElement();
        OSSLog.logDebug("[item] - " + documentElement.getNodeName());
        NodeList childNodes = documentElement.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null) {
                if (nodeName.equalsIgnoreCase("Location")) {
                    completeMultipartUploadResult.setLocation(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equalsIgnoreCase("Bucket")) {
                    completeMultipartUploadResult.setBucketName(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equalsIgnoreCase("Key")) {
                    completeMultipartUploadResult.setObjectKey(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equalsIgnoreCase("ETag")) {
                    completeMultipartUploadResult.setETag(checkChildNotNullAndGetValue(item));
                }
            }
        }
        return completeMultipartUploadResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CopyObjectResult parseCopyObjectResponseXML(InputStream inputStream, CopyObjectResult copyObjectResult) throws ParseException, ParserConfigurationException, IOException, SAXException {
        Element documentElement = domFactory.newDocumentBuilder().parse(inputStream).getDocumentElement();
        OSSLog.logDebug("[item] - " + documentElement.getNodeName());
        NodeList childNodes = documentElement.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null) {
                if (nodeName.equals("LastModified")) {
                    copyObjectResult.setLastModified(DateUtil.parseIso8601Date(checkChildNotNullAndGetValue(item)));
                } else if (nodeName.equals("ETag")) {
                    copyObjectResult.setEtag(checkChildNotNullAndGetValue(item));
                }
            }
        }
        return copyObjectResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static GetBucketACLResult parseGetBucketACLResponse(InputStream inputStream, GetBucketACLResult getBucketACLResult) throws ParserConfigurationException, IOException, SAXException, ParseException {
        Element documentElement = domFactory.newDocumentBuilder().parse(inputStream).getDocumentElement();
        OSSLog.logDebug("[parseGetBucketACLResponse - " + documentElement.getNodeName());
        NodeList childNodes = documentElement.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null) {
                if (nodeName.equals("Owner")) {
                    NodeList childNodes2 = item.getChildNodes();
                    for (int i2 = 0; i2 < childNodes2.getLength(); i2++) {
                        Node item2 = childNodes2.item(i2);
                        String nodeName2 = item2.getNodeName();
                        if (nodeName2 != null) {
                            if (nodeName2.equals("ID")) {
                                getBucketACLResult.setBucketOwnerID(checkChildNotNullAndGetValue(item2));
                            } else if (nodeName2.equals("DisplayName")) {
                                getBucketACLResult.setBucketOwner(checkChildNotNullAndGetValue(item2));
                            }
                        }
                    }
                } else if (nodeName.equals("AccessControlList")) {
                    NodeList childNodes3 = item.getChildNodes();
                    for (int i3 = 0; i3 < childNodes3.getLength(); i3++) {
                        Node item3 = childNodes3.item(i3);
                        String nodeName3 = item3.getNodeName();
                        if (nodeName3 != null && nodeName3.equals("Grant")) {
                            getBucketACLResult.setBucketACL(checkChildNotNullAndGetValue(item3));
                        }
                    }
                }
            }
        }
        return getBucketACLResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InitiateMultipartUploadResult parseInitMultipartResponseXML(InputStream inputStream, InitiateMultipartUploadResult initiateMultipartUploadResult) throws IOException, SAXException, ParserConfigurationException {
        Element documentElement = domFactory.newDocumentBuilder().parse(inputStream).getDocumentElement();
        OSSLog.logDebug("[item] - " + documentElement.getNodeName());
        NodeList childNodes = documentElement.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null) {
                if (nodeName.equalsIgnoreCase("UploadId")) {
                    initiateMultipartUploadResult.setUploadId(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equalsIgnoreCase("Bucket")) {
                    initiateMultipartUploadResult.setBucketName(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equalsIgnoreCase("Key")) {
                    initiateMultipartUploadResult.setObjectKey(checkChildNotNullAndGetValue(item));
                }
            }
        }
        return initiateMultipartUploadResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ListPartsResult parseListPartsResponseXML(InputStream inputStream, ListPartsResult listPartsResult) throws ParserConfigurationException, IOException, SAXException, ParseException {
        String checkChildNotNullAndGetValue;
        Element documentElement = domFactory.newDocumentBuilder().parse(inputStream).getDocumentElement();
        OSSLog.logDebug("[parseObjectListResponse] - " + documentElement.getNodeName());
        ArrayList arrayList = new ArrayList();
        NodeList childNodes = documentElement.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null) {
                if (nodeName.equals("Bucket")) {
                    listPartsResult.setBucketName(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("Key")) {
                    listPartsResult.setKey(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("UploadId")) {
                    listPartsResult.setUploadId(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("PartNumberMarker")) {
                    String checkChildNotNullAndGetValue2 = checkChildNotNullAndGetValue(item);
                    if (checkChildNotNullAndGetValue2 != null) {
                        listPartsResult.setPartNumberMarker(Integer.valueOf(checkChildNotNullAndGetValue2).intValue());
                    }
                } else if (nodeName.equals("NextPartNumberMarker")) {
                    String checkChildNotNullAndGetValue3 = checkChildNotNullAndGetValue(item);
                    if (checkChildNotNullAndGetValue3 != null) {
                        listPartsResult.setNextPartNumberMarker(Integer.valueOf(checkChildNotNullAndGetValue3).intValue());
                    }
                } else if (nodeName.equals("MaxParts")) {
                    String checkChildNotNullAndGetValue4 = checkChildNotNullAndGetValue(item);
                    if (checkChildNotNullAndGetValue4 != null) {
                        listPartsResult.setMaxParts(Integer.valueOf(checkChildNotNullAndGetValue4).intValue());
                    }
                } else if (nodeName.equals("IsTruncated")) {
                    String checkChildNotNullAndGetValue5 = checkChildNotNullAndGetValue(item);
                    if (checkChildNotNullAndGetValue5 != null) {
                        listPartsResult.setTruncated(Boolean.valueOf(checkChildNotNullAndGetValue5).booleanValue());
                    }
                } else if (nodeName.equals("StorageClass")) {
                    String checkChildNotNullAndGetValue6 = checkChildNotNullAndGetValue(item);
                    if (checkChildNotNullAndGetValue6 != null) {
                        listPartsResult.setStorageClass(checkChildNotNullAndGetValue6);
                    }
                } else if (nodeName.equals("Part")) {
                    NodeList childNodes2 = item.getChildNodes();
                    PartSummary partSummary = new PartSummary();
                    for (int i2 = 0; i2 < childNodes2.getLength(); i2++) {
                        Node item2 = childNodes2.item(i2);
                        String nodeName2 = item2.getNodeName();
                        if (nodeName2 != null) {
                            if (nodeName2.equals("PartNumber")) {
                                String checkChildNotNullAndGetValue7 = checkChildNotNullAndGetValue(item2);
                                if (checkChildNotNullAndGetValue7 != null) {
                                    partSummary.setPartNumber(Integer.valueOf(checkChildNotNullAndGetValue7).intValue());
                                }
                            } else if (nodeName2.equals("LastModified")) {
                                partSummary.setLastModified(DateUtil.parseIso8601Date(checkChildNotNullAndGetValue(item2)));
                            } else if (nodeName2.equals("ETag")) {
                                partSummary.setETag(checkChildNotNullAndGetValue(item2));
                            } else if (nodeName2.equals("Size") && (checkChildNotNullAndGetValue = checkChildNotNullAndGetValue(item2)) != null) {
                                partSummary.setSize(Integer.valueOf(checkChildNotNullAndGetValue).intValue());
                            }
                        }
                    }
                    arrayList.add(partSummary);
                }
            }
        }
        listPartsResult.setParts(arrayList);
        return listPartsResult;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ListObjectsResult parseObjectListResponse(InputStream inputStream, ListObjectsResult listObjectsResult) throws ParserConfigurationException, IOException, SAXException, ParseException {
        String parseCommonPrefixXML;
        Element documentElement = domFactory.newDocumentBuilder().parse(inputStream).getDocumentElement();
        OSSLog.logDebug("[parseObjectListResponse] - " + documentElement.getNodeName());
        listObjectsResult.clearCommonPrefixes();
        listObjectsResult.clearObjectSummaries();
        NodeList childNodes = documentElement.getChildNodes();
        for (int i = 0; i < childNodes.getLength(); i++) {
            Node item = childNodes.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null) {
                if (nodeName.equals("Name")) {
                    listObjectsResult.setBucketName(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("Prefix")) {
                    listObjectsResult.setPrefix(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("Marker")) {
                    listObjectsResult.setMarker(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("Delimiter")) {
                    listObjectsResult.setDelimiter(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("EncodingType")) {
                    listObjectsResult.setEncodingType(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("MaxKeys")) {
                    String checkChildNotNullAndGetValue = checkChildNotNullAndGetValue(item);
                    if (checkChildNotNullAndGetValue != null) {
                        listObjectsResult.setMaxKeys(Integer.valueOf(checkChildNotNullAndGetValue).intValue());
                    }
                } else if (nodeName.equals("NextMarker")) {
                    listObjectsResult.setNextMarker(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("IsTruncated")) {
                    String checkChildNotNullAndGetValue2 = checkChildNotNullAndGetValue(item);
                    if (checkChildNotNullAndGetValue2 != null) {
                        listObjectsResult.setTruncated(Boolean.valueOf(checkChildNotNullAndGetValue2).booleanValue());
                    }
                } else if (nodeName.equals("Contents")) {
                    if (item.getChildNodes() != null) {
                        listObjectsResult.addObjectSummary(parseObjectSummaryXML(item.getChildNodes()));
                    }
                } else if (nodeName.equals("CommonPrefixes") && item.getChildNodes() != null && (parseCommonPrefixXML = parseCommonPrefixXML(item.getChildNodes())) != null) {
                    listObjectsResult.addCommonPrefix(parseCommonPrefixXML);
                }
            }
        }
        return listObjectsResult;
    }

    public static ObjectMetadata parseObjectMetadata(Map<String, String> map) throws IOException {
        try {
            ObjectMetadata objectMetadata = new ObjectMetadata();
            for (String str : map.keySet()) {
                if (str.indexOf(OSSHeaders.OSS_USER_METADATA_PREFIX) >= 0) {
                    objectMetadata.addUserMetadata(str, map.get(str));
                } else {
                    if (!str.equals("Last-Modified") && !str.equals("Date")) {
                        objectMetadata.setHeader(str, str.equals("Content-Length") ? Long.valueOf(map.get(str)) : str.equals("ETag") ? trimQuotes(map.get(str)) : map.get(str));
                    }
                    try {
                        objectMetadata.setHeader(str, DateUtil.parseRfc822Date(map.get(str)));
                    } catch (ParseException e) {
                        throw new IOException(e.getMessage(), e);
                    }
                }
            }
            return objectMetadata;
        } catch (Exception e2) {
            throw new IOException(e2.getMessage(), e2);
        }
    }

    private static OSSObjectSummary parseObjectSummaryXML(NodeList nodeList) throws ParseException {
        OSSObjectSummary oSSObjectSummary = new OSSObjectSummary();
        for (int i = 0; i < nodeList.getLength(); i++) {
            Node item = nodeList.item(i);
            String nodeName = item.getNodeName();
            if (nodeName != null) {
                if (nodeName.equals("Key")) {
                    oSSObjectSummary.setKey(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("LastModified")) {
                    oSSObjectSummary.setLastModified(DateUtil.parseIso8601Date(checkChildNotNullAndGetValue(item)));
                } else if (nodeName.equals("Size")) {
                    if (checkChildNotNullAndGetValue(item) != null) {
                        oSSObjectSummary.setSize(Integer.valueOf(r2).intValue());
                    }
                } else if (nodeName.equals("ETag")) {
                    oSSObjectSummary.setETag(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("Type")) {
                    oSSObjectSummary.setType(checkChildNotNullAndGetValue(item));
                } else if (nodeName.equals("StorageClass")) {
                    oSSObjectSummary.setStorageClass(checkChildNotNullAndGetValue(item));
                }
            }
        }
        return oSSObjectSummary;
    }

    public static ServiceException parseResponseErrorXML(C0496ae c0496ae, boolean z) throws IOException {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        int m621a = c0496ae.m621a();
        String m622a = c0496ae.m622a(OSSHeaders.OSS_HEADER_REQUEST_ID);
        String str7 = null;
        if (z) {
            str6 = m622a;
            str5 = null;
            str3 = null;
            str4 = null;
        } else {
            try {
                str = c0496ae.m625d().string();
            } catch (ParserConfigurationException e) {
                e = e;
                str = null;
                str2 = null;
            } catch (SAXException e2) {
                e = e2;
                str = null;
                str2 = null;
            }
            try {
                NodeList childNodes = domFactory.newDocumentBuilder().parse(new InputSource(new StringReader(str))).getDocumentElement().getChildNodes();
                str2 = null;
                str3 = null;
                for (int i = 0; i < childNodes.getLength(); i++) {
                    try {
                        Node item = childNodes.item(i);
                        String nodeName = item.getNodeName();
                        if (nodeName != null) {
                            if (nodeName.equals("Code")) {
                                str7 = checkChildNotNullAndGetValue(item);
                            }
                            if (nodeName.equals(C1225b.f4512d)) {
                                str2 = checkChildNotNullAndGetValue(item);
                            }
                            if (nodeName.equals("RequestId")) {
                                m622a = checkChildNotNullAndGetValue(item);
                            }
                            if (nodeName.equals("HostId")) {
                                str3 = checkChildNotNullAndGetValue(item);
                            }
                        }
                    } catch (ParserConfigurationException e3) {
                        e = e3;
                        e.printStackTrace();
                        str4 = str;
                        str5 = str7;
                        str7 = str2;
                        str6 = m622a;
                        return new ServiceException(m621a, str7, str5, str6, str3, str4);
                    } catch (SAXException e4) {
                        e = e4;
                        e.printStackTrace();
                        str4 = str;
                        str5 = str7;
                        str7 = str2;
                        str6 = m622a;
                        return new ServiceException(m621a, str7, str5, str6, str3, str4);
                    }
                }
            } catch (ParserConfigurationException e5) {
                e = e5;
                str2 = null;
                str3 = str2;
                e.printStackTrace();
                str4 = str;
                str5 = str7;
                str7 = str2;
                str6 = m622a;
                return new ServiceException(m621a, str7, str5, str6, str3, str4);
            } catch (SAXException e6) {
                e = e6;
                str2 = null;
                str3 = str2;
                e.printStackTrace();
                str4 = str;
                str5 = str7;
                str7 = str2;
                str6 = m622a;
                return new ServiceException(m621a, str7, str5, str6, str3, str4);
            }
            str4 = str;
            str5 = str7;
            str7 = str2;
            str6 = m622a;
        }
        return new ServiceException(m621a, str7, str5, str6, str3, str4);
    }

    public static String trimQuotes(String str) {
        if (str == null) {
            return null;
        }
        String trim = str.trim();
        if (trim.startsWith("\"")) {
            trim = trim.substring(1);
        }
        return trim.endsWith("\"") ? trim.substring(0, trim.length() - 1) : trim;
    }
}
