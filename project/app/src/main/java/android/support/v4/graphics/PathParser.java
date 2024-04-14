package android.support.v4.graphics;

import android.graphics.Path;
import android.support.annotation.RestrictTo;
import android.util.Log;
import java.util.ArrayList;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class PathParser {
    private static final String LOGTAG = "PathParser";

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ExtractFloatResult {
        int mEndPosition;
        boolean mEndWithNegOrDot;

        ExtractFloatResult() {
        }
    }

    /* loaded from: classes.dex */
    public static class PathDataNode {

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public float[] mParams;

        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public char mType;

        PathDataNode(char c2, float[] fArr) {
            this.mType = c2;
            this.mParams = fArr;
        }

        PathDataNode(PathDataNode pathDataNode) {
            this.mType = pathDataNode.mType;
            this.mParams = PathParser.copyOfRange(pathDataNode.mParams, 0, pathDataNode.mParams.length);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0051. Please report as an issue. */
        private static void addCommand(Path path, float[] fArr, char c2, char c3, float[] fArr2) {
            int i;
            int i2;
            float f;
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float f7;
            float f8;
            float f9;
            float f10;
            float f11 = fArr[0];
            float f12 = fArr[1];
            float f13 = fArr[2];
            float f14 = fArr[3];
            float f15 = fArr[4];
            float f16 = fArr[5];
            switch (c3) {
                case 'A':
                case 'a':
                    i = 7;
                    break;
                case 'C':
                case 'c':
                    i = 6;
                    break;
                case 'H':
                case 'V':
                case 'h':
                case 'v':
                    i = 1;
                    break;
                case 'L':
                case 'M':
                case 'T':
                case 'l':
                case 'm':
                case 't':
                default:
                    i = 2;
                    break;
                case 'Q':
                case 'S':
                case 'q':
                case 's':
                    i = 4;
                    break;
                case 'Z':
                case 'z':
                    path.close();
                    path.moveTo(f15, f16);
                    f11 = f15;
                    f13 = f11;
                    f12 = f16;
                    f14 = f12;
                    i = 2;
                    break;
            }
            float f17 = f11;
            float f18 = f12;
            float f19 = f15;
            float f20 = f16;
            int i3 = 0;
            char c4 = c2;
            while (i3 < fArr2.length) {
                float f21 = 0.0f;
                switch (c3) {
                    case 'A':
                        i2 = i3;
                        int i4 = i2 + 5;
                        int i5 = i2 + 6;
                        drawArc(path, f17, f18, fArr2[i4], fArr2[i5], fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i2 + 2], fArr2[i2 + 3] != 0.0f, fArr2[i2 + 4] != 0.0f);
                        f17 = fArr2[i4];
                        f18 = fArr2[i5];
                        f14 = f18;
                        f13 = f17;
                        break;
                    case 'C':
                        i2 = i3;
                        int i6 = i2 + 2;
                        int i7 = i2 + 3;
                        int i8 = i2 + 4;
                        int i9 = i2 + 5;
                        path.cubicTo(fArr2[i2 + 0], fArr2[i2 + 1], fArr2[i6], fArr2[i7], fArr2[i8], fArr2[i9]);
                        f17 = fArr2[i8];
                        float f22 = fArr2[i9];
                        float f23 = fArr2[i6];
                        float f24 = fArr2[i7];
                        f18 = f22;
                        f14 = f24;
                        f13 = f23;
                        break;
                    case 'H':
                        i2 = i3;
                        int i10 = i2 + 0;
                        path.lineTo(fArr2[i10], f18);
                        f17 = fArr2[i10];
                        break;
                    case 'L':
                        i2 = i3;
                        int i11 = i2 + 0;
                        int i12 = i2 + 1;
                        path.lineTo(fArr2[i11], fArr2[i12]);
                        f17 = fArr2[i11];
                        f18 = fArr2[i12];
                        break;
                    case 'M':
                        i2 = i3;
                        int i13 = i2 + 0;
                        f17 = fArr2[i13];
                        int i14 = i2 + 1;
                        f18 = fArr2[i14];
                        if (i2 <= 0) {
                            path.moveTo(fArr2[i13], fArr2[i14]);
                            f20 = f18;
                            f19 = f17;
                            break;
                        } else {
                            path.lineTo(fArr2[i13], fArr2[i14]);
                            break;
                        }
                    case 'Q':
                        i2 = i3;
                        int i15 = i2 + 0;
                        int i16 = i2 + 1;
                        int i17 = i2 + 2;
                        int i18 = i2 + 3;
                        path.quadTo(fArr2[i15], fArr2[i16], fArr2[i17], fArr2[i18]);
                        f = fArr2[i15];
                        f2 = fArr2[i16];
                        f17 = fArr2[i17];
                        f18 = fArr2[i18];
                        f13 = f;
                        f14 = f2;
                        break;
                    case 'S':
                        float f25 = f18;
                        float f26 = f17;
                        i2 = i3;
                        if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                            float f27 = (f26 * 2.0f) - f13;
                            f3 = (f25 * 2.0f) - f14;
                            f4 = f27;
                        } else {
                            f4 = f26;
                            f3 = f25;
                        }
                        int i19 = i2 + 0;
                        int i20 = i2 + 1;
                        int i21 = i2 + 2;
                        int i22 = i2 + 3;
                        path.cubicTo(f4, f3, fArr2[i19], fArr2[i20], fArr2[i21], fArr2[i22]);
                        f = fArr2[i19];
                        f2 = fArr2[i20];
                        f17 = fArr2[i21];
                        f18 = fArr2[i22];
                        f13 = f;
                        f14 = f2;
                        break;
                    case 'T':
                        float f28 = f18;
                        float f29 = f17;
                        i2 = i3;
                        if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                            f28 = (f28 * 2.0f) - f14;
                            f29 = (f29 * 2.0f) - f13;
                        }
                        int i23 = i2 + 0;
                        int i24 = i2 + 1;
                        path.quadTo(f29, f28, fArr2[i23], fArr2[i24]);
                        f17 = fArr2[i23];
                        f18 = fArr2[i24];
                        f13 = f29;
                        f14 = f28;
                        break;
                    case 'V':
                        i2 = i3;
                        int i25 = i2 + 0;
                        path.lineTo(f17, fArr2[i25]);
                        f18 = fArr2[i25];
                        break;
                    case 'a':
                        int i26 = i3 + 5;
                        int i27 = i3 + 6;
                        i2 = i3;
                        drawArc(path, f17, f18, fArr2[i26] + f17, fArr2[i27] + f18, fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i3 + 2], fArr2[i3 + 3] != 0.0f, fArr2[i3 + 4] != 0.0f);
                        f17 += fArr2[i26];
                        f18 += fArr2[i27];
                        f14 = f18;
                        f13 = f17;
                        break;
                    case 'c':
                        int i28 = i3 + 2;
                        int i29 = i3 + 3;
                        int i30 = i3 + 4;
                        int i31 = i3 + 5;
                        path.rCubicTo(fArr2[i3 + 0], fArr2[i3 + 1], fArr2[i28], fArr2[i29], fArr2[i30], fArr2[i31]);
                        f5 = fArr2[i28] + f17;
                        f6 = fArr2[i29] + f18;
                        f17 += fArr2[i30];
                        f7 = fArr2[i31];
                        f18 += f7;
                        f13 = f5;
                        f14 = f6;
                        i2 = i3;
                        break;
                    case 'h':
                        int i32 = i3 + 0;
                        path.rLineTo(fArr2[i32], 0.0f);
                        f17 += fArr2[i32];
                        i2 = i3;
                        break;
                    case 'l':
                        int i33 = i3 + 0;
                        int i34 = i3 + 1;
                        path.rLineTo(fArr2[i33], fArr2[i34]);
                        f17 += fArr2[i33];
                        f8 = fArr2[i34];
                        f18 += f8;
                        i2 = i3;
                        break;
                    case 'm':
                        int i35 = i3 + 0;
                        f17 += fArr2[i35];
                        int i36 = i3 + 1;
                        f18 += fArr2[i36];
                        if (i3 > 0) {
                            path.rLineTo(fArr2[i35], fArr2[i36]);
                        } else {
                            path.rMoveTo(fArr2[i35], fArr2[i36]);
                            f20 = f18;
                            f19 = f17;
                        }
                        i2 = i3;
                        break;
                    case 'q':
                        int i37 = i3 + 0;
                        int i38 = i3 + 1;
                        int i39 = i3 + 2;
                        int i40 = i3 + 3;
                        path.rQuadTo(fArr2[i37], fArr2[i38], fArr2[i39], fArr2[i40]);
                        f5 = fArr2[i37] + f17;
                        f6 = fArr2[i38] + f18;
                        f17 += fArr2[i39];
                        f7 = fArr2[i40];
                        f18 += f7;
                        f13 = f5;
                        f14 = f6;
                        i2 = i3;
                        break;
                    case 's':
                        if (c4 == 'c' || c4 == 's' || c4 == 'C' || c4 == 'S') {
                            float f30 = f17 - f13;
                            f9 = f18 - f14;
                            f21 = f30;
                        } else {
                            f9 = 0.0f;
                        }
                        int i41 = i3 + 0;
                        int i42 = i3 + 1;
                        int i43 = i3 + 2;
                        int i44 = i3 + 3;
                        path.rCubicTo(f21, f9, fArr2[i41], fArr2[i42], fArr2[i43], fArr2[i44]);
                        f5 = fArr2[i41] + f17;
                        f6 = fArr2[i42] + f18;
                        f17 += fArr2[i43];
                        f7 = fArr2[i44];
                        f18 += f7;
                        f13 = f5;
                        f14 = f6;
                        i2 = i3;
                        break;
                    case 't':
                        if (c4 == 'q' || c4 == 't' || c4 == 'Q' || c4 == 'T') {
                            f21 = f17 - f13;
                            f10 = f18 - f14;
                        } else {
                            f10 = 0.0f;
                        }
                        int i45 = i3 + 0;
                        int i46 = i3 + 1;
                        path.rQuadTo(f21, f10, fArr2[i45], fArr2[i46]);
                        float f31 = f21 + f17;
                        float f32 = f10 + f18;
                        f17 += fArr2[i45];
                        f18 += fArr2[i46];
                        f14 = f32;
                        f13 = f31;
                        i2 = i3;
                        break;
                    case 'v':
                        int i47 = i3 + 0;
                        path.rLineTo(0.0f, fArr2[i47]);
                        f8 = fArr2[i47];
                        f18 += f8;
                        i2 = i3;
                        break;
                    default:
                        i2 = i3;
                        break;
                }
                i3 = i2 + i;
                c4 = c3;
            }
            fArr[0] = f17;
            fArr[1] = f18;
            fArr[2] = f13;
            fArr[3] = f14;
            fArr[4] = f19;
            fArr[5] = f20;
        }

        private static void arcToBezier(Path path, double d, double d2, double d3, double d4, double d5, double d6, double d7, double d8, double d9) {
            double d10 = d3;
            int ceil = (int) Math.ceil(Math.abs((d9 * 4.0d) / 3.141592653589793d));
            double cos = Math.cos(d7);
            double sin = Math.sin(d7);
            double cos2 = Math.cos(d8);
            double sin2 = Math.sin(d8);
            double d11 = -d10;
            double d12 = d11 * cos;
            double d13 = d4 * sin;
            double d14 = (d12 * sin2) - (d13 * cos2);
            double d15 = d11 * sin;
            double d16 = d4 * cos;
            double d17 = (sin2 * d15) + (cos2 * d16);
            double d18 = d9 / ceil;
            int i = 0;
            double d19 = d6;
            double d20 = d17;
            double d21 = d14;
            double d22 = d5;
            double d23 = d8;
            while (i < ceil) {
                double d24 = d15;
                double d25 = d23 + d18;
                double sin3 = Math.sin(d25);
                double cos3 = Math.cos(d25);
                double d26 = d18;
                double d27 = (d + ((d10 * cos) * cos3)) - (d13 * sin3);
                double d28 = d2 + (d10 * sin * cos3) + (d16 * sin3);
                double d29 = (d12 * sin3) - (d13 * cos3);
                double d30 = (sin3 * d24) + (cos3 * d16);
                double d31 = d25 - d23;
                double d32 = d16;
                double tan = Math.tan(d31 / 2.0d);
                double sin4 = (Math.sin(d31) * (Math.sqrt(((tan * 3.0d) * tan) + 4.0d) - 1.0d)) / 3.0d;
                path.rLineTo(0.0f, 0.0f);
                path.cubicTo((float) (d22 + (d21 * sin4)), (float) (d19 + (d20 * sin4)), (float) (d27 - (sin4 * d29)), (float) (d28 - (sin4 * d30)), (float) d27, (float) d28);
                i++;
                d19 = d28;
                d22 = d27;
                d15 = d24;
                d20 = d30;
                d21 = d29;
                d18 = d26;
                d16 = d32;
                d23 = d25;
                ceil = ceil;
                cos = cos;
                sin = sin;
                d10 = d3;
            }
        }

        private static void drawArc(Path path, float f, float f2, float f3, float f4, float f5, float f6, float f7, boolean z, boolean z2) {
            double d;
            double d2;
            float f8 = f;
            float f9 = f3;
            float f10 = f5;
            float f11 = f6;
            while (true) {
                double radians = Math.toRadians(f7);
                double cos = Math.cos(radians);
                double sin = Math.sin(radians);
                double d3 = f8;
                double d4 = f2;
                double d5 = (d3 * cos) + (d4 * sin);
                double d6 = f10;
                double d7 = d5 / d6;
                double d8 = ((-f8) * sin) + (d4 * cos);
                double d9 = f11;
                double d10 = d8 / d9;
                float f12 = f10;
                float f13 = f11;
                double d11 = f4;
                double d12 = ((f9 * cos) + (d11 * sin)) / d6;
                double d13 = (((-f9) * sin) + (d11 * cos)) / d9;
                double d14 = d7 - d12;
                double d15 = d10 - d13;
                double d16 = (d7 + d12) / 2.0d;
                double d17 = (d10 + d13) / 2.0d;
                double d18 = (d14 * d14) + (d15 * d15);
                if (d18 == 0.0d) {
                    Log.w(PathParser.LOGTAG, " Points are coincident");
                    return;
                }
                double d19 = (1.0d / d18) - 0.25d;
                if (d19 >= 0.0d) {
                    double sqrt = Math.sqrt(d19);
                    double d20 = d14 * sqrt;
                    double d21 = sqrt * d15;
                    if (z == z2) {
                        d = d16 - d21;
                        d2 = d17 + d20;
                    } else {
                        d = d16 + d21;
                        d2 = d17 - d20;
                    }
                    double atan2 = Math.atan2(d10 - d2, d7 - d);
                    double atan22 = Math.atan2(d13 - d2, d12 - d) - atan2;
                    if (z2 != (atan22 >= 0.0d)) {
                        atan22 = atan22 > 0.0d ? atan22 - 6.283185307179586d : atan22 + 6.283185307179586d;
                    }
                    double d22 = d * d6;
                    double d23 = d2 * d9;
                    arcToBezier(path, (d22 * cos) - (d23 * sin), (d22 * sin) + (d23 * cos), d6, d9, d3, d4, radians, atan2, atan22);
                    return;
                }
                Log.w(PathParser.LOGTAG, "Points are too far apart " + d18);
                float sqrt2 = (float) (Math.sqrt(d18) / 1.99999d);
                f10 = f12 * sqrt2;
                f11 = f13 * sqrt2;
                f8 = f;
                f9 = f3;
            }
        }

        public static void nodesToPath(PathDataNode[] pathDataNodeArr, Path path) {
            float[] fArr = new float[6];
            char c2 = 'm';
            for (int i = 0; i < pathDataNodeArr.length; i++) {
                addCommand(path, fArr, c2, pathDataNodeArr[i].mType, pathDataNodeArr[i].mParams);
                c2 = pathDataNodeArr[i].mType;
            }
        }

        public void interpolatePathDataNode(PathDataNode pathDataNode, PathDataNode pathDataNode2, float f) {
            for (int i = 0; i < pathDataNode.mParams.length; i++) {
                this.mParams[i] = (pathDataNode.mParams[i] * (1.0f - f)) + (pathDataNode2.mParams[i] * f);
            }
        }
    }

    private static void addNode(ArrayList<PathDataNode> arrayList, char c2, float[] fArr) {
        arrayList.add(new PathDataNode(c2, fArr));
    }

    public static boolean canMorph(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        if (pathDataNodeArr == null || pathDataNodeArr2 == null || pathDataNodeArr.length != pathDataNodeArr2.length) {
            return false;
        }
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            if (pathDataNodeArr[i].mType != pathDataNodeArr2[i].mType || pathDataNodeArr[i].mParams.length != pathDataNodeArr2[i].mParams.length) {
                return false;
            }
        }
        return true;
    }

    static float[] copyOfRange(float[] fArr, int i, int i2) {
        if (i > i2) {
            throw new IllegalArgumentException();
        }
        int length = fArr.length;
        if (i < 0 || i > length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        int i3 = i2 - i;
        int min = Math.min(i3, length - i);
        float[] fArr2 = new float[i3];
        System.arraycopy(fArr, i, fArr2, 0, min);
        return fArr2;
    }

    public static PathDataNode[] createNodesFromPathData(String str) {
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 0;
        while (i < str.length()) {
            int nextStart = nextStart(str, i);
            String trim = str.substring(i2, nextStart).trim();
            if (trim.length() > 0) {
                addNode(arrayList, trim.charAt(0), getFloats(trim));
            }
            i2 = nextStart;
            i = nextStart + 1;
        }
        if (i - i2 == 1 && i2 < str.length()) {
            addNode(arrayList, str.charAt(i2), new float[0]);
        }
        return (PathDataNode[]) arrayList.toArray(new PathDataNode[arrayList.size()]);
    }

    public static Path createPathFromPathData(String str) {
        Path path = new Path();
        PathDataNode[] createNodesFromPathData = createNodesFromPathData(str);
        if (createNodesFromPathData == null) {
            return null;
        }
        try {
            PathDataNode.nodesToPath(createNodesFromPathData, path);
            return path;
        } catch (RuntimeException e) {
            throw new RuntimeException("Error in parsing " + str, e);
        }
    }

    public static PathDataNode[] deepCopyNodes(PathDataNode[] pathDataNodeArr) {
        if (pathDataNodeArr == null) {
            return null;
        }
        PathDataNode[] pathDataNodeArr2 = new PathDataNode[pathDataNodeArr.length];
        for (int i = 0; i < pathDataNodeArr.length; i++) {
            pathDataNodeArr2[i] = new PathDataNode(pathDataNodeArr[i]);
        }
        return pathDataNodeArr2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002c, code lost:
    
        if (r2 == false) goto L15;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x001e. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0037 A[LOOP:0: B:2:0x0007->B:14:0x0037, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void extract(java.lang.String r8, int r9, android.support.v4.graphics.PathParser.ExtractFloatResult r10) {
        /*
            r0 = 0
            r10.mEndWithNegOrDot = r0
            r1 = r9
            r2 = 0
            r3 = 0
            r4 = 0
        L7:
            int r5 = r8.length()
            if (r1 >= r5) goto L3a
            char r5 = r8.charAt(r1)
            r6 = 32
            r7 = 1
            if (r5 == r6) goto L33
            r6 = 69
            if (r5 == r6) goto L31
            r6 = 101(0x65, float:1.42E-43)
            if (r5 == r6) goto L31
            switch(r5) {
                case 44: goto L33;
                case 45: goto L2a;
                case 46: goto L22;
                default: goto L21;
            }
        L21:
            goto L2f
        L22:
            if (r3 != 0) goto L27
            r2 = 0
            r3 = 1
            goto L35
        L27:
            r10.mEndWithNegOrDot = r7
            goto L33
        L2a:
            if (r1 == r9) goto L2f
            if (r2 != 0) goto L2f
            goto L27
        L2f:
            r2 = 0
            goto L35
        L31:
            r2 = 1
            goto L35
        L33:
            r2 = 0
            r4 = 1
        L35:
            if (r4 != 0) goto L3a
            int r1 = r1 + 1
            goto L7
        L3a:
            r10.mEndPosition = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.graphics.PathParser.extract(java.lang.String, int, android.support.v4.graphics.PathParser$ExtractFloatResult):void");
    }

    private static float[] getFloats(String str) {
        if (str.charAt(0) == 'z' || str.charAt(0) == 'Z') {
            return new float[0];
        }
        try {
            float[] fArr = new float[str.length()];
            ExtractFloatResult extractFloatResult = new ExtractFloatResult();
            int length = str.length();
            int i = 1;
            int i2 = 0;
            while (i < length) {
                extract(str, i, extractFloatResult);
                int i3 = extractFloatResult.mEndPosition;
                if (i < i3) {
                    fArr[i2] = Float.parseFloat(str.substring(i, i3));
                    i2++;
                }
                i = extractFloatResult.mEndWithNegOrDot ? i3 : i3 + 1;
            }
            return copyOfRange(fArr, 0, i2);
        } catch (NumberFormatException e) {
            throw new RuntimeException("error in parsing \"" + str + "\"", e);
        }
    }

    private static int nextStart(String str, int i) {
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (((charAt - 'A') * (charAt - 'Z') <= 0 || (charAt - 'a') * (charAt - 'z') <= 0) && charAt != 'e' && charAt != 'E') {
                return i;
            }
            i++;
        }
        return i;
    }

    public static void updateNodes(PathDataNode[] pathDataNodeArr, PathDataNode[] pathDataNodeArr2) {
        for (int i = 0; i < pathDataNodeArr2.length; i++) {
            pathDataNodeArr[i].mType = pathDataNodeArr2[i].mType;
            for (int i2 = 0; i2 < pathDataNodeArr2[i].mParams.length; i2++) {
                pathDataNodeArr[i].mParams[i2] = pathDataNodeArr2[i].mParams[i2];
            }
        }
    }
}
