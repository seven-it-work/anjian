package android.support.v7.content.res;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.v4.graphics.ColorUtils;
import android.util.AttributeSet;
import android.util.Xml;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
final class AppCompatColorStateListInflater {
    private static final int DEFAULT_COLOR = -65536;

    private AppCompatColorStateListInflater() {
    }

    @NonNull
    public static ColorStateList createFromXml(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        int next;
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        do {
            next = xmlPullParser.next();
            if (next == 2) {
                break;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        return createFromXmlInner(resources, xmlPullParser, asAttributeSet, theme);
    }

    @NonNull
    private static ColorStateList createFromXmlInner(@NonNull Resources resources, @NonNull XmlPullParser xmlPullParser, @NonNull AttributeSet attributeSet, @Nullable Resources.Theme theme) throws XmlPullParserException, IOException {
        String name = xmlPullParser.getName();
        if (name.equals("selector")) {
            return inflate(resources, xmlPullParser, attributeSet, theme);
        }
        throw new XmlPullParserException(xmlPullParser.getPositionDescription() + ": invalid color state list tag " + name);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x006d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.content.res.ColorStateList inflate(@android.support.annotation.NonNull android.content.res.Resources r17, @android.support.annotation.NonNull org.xmlpull.v1.XmlPullParser r18, @android.support.annotation.NonNull android.util.AttributeSet r19, @android.support.annotation.Nullable android.content.res.Resources.Theme r20) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r0 = r19
            int r1 = r18.getDepth()
            r2 = 1
            int r1 = r1 + r2
            r3 = 20
            int[][] r4 = new int[r3]
            int[] r3 = new int[r3]
            r5 = 0
            r6 = r3
            r3 = 0
        L11:
            int r7 = r18.next()
            if (r7 == r2) goto Lad
            int r8 = r18.getDepth()
            if (r8 >= r1) goto L20
            r9 = 3
            if (r7 == r9) goto Lad
        L20:
            r9 = 2
            if (r7 != r9) goto La6
            if (r8 > r1) goto La6
            java.lang.String r7 = r18.getName()
            java.lang.String r8 = "item"
            boolean r7 = r7.equals(r8)
            if (r7 == 0) goto La6
            int[] r7 = android.support.v7.appcompat.C0328R.styleable.ColorStateListItem
            r8 = r17
            r9 = r20
            android.content.res.TypedArray r7 = obtainAttributes(r8, r9, r0, r7)
            int r10 = android.support.v7.appcompat.C0328R.styleable.ColorStateListItem_android_color
            r11 = -65281(0xffffffffffff00ff, float:NaN)
            int r10 = r7.getColor(r10, r11)
            int r11 = android.support.v7.appcompat.C0328R.styleable.ColorStateListItem_android_alpha
            boolean r11 = r7.hasValue(r11)
            r12 = 1065353216(0x3f800000, float:1.0)
            if (r11 == 0) goto L55
            int r11 = android.support.v7.appcompat.C0328R.styleable.ColorStateListItem_android_alpha
        L50:
            float r12 = r7.getFloat(r11, r12)
            goto L60
        L55:
            int r11 = android.support.v7.appcompat.C0328R.styleable.ColorStateListItem_alpha
            boolean r11 = r7.hasValue(r11)
            if (r11 == 0) goto L60
            int r11 = android.support.v7.appcompat.C0328R.styleable.ColorStateListItem_alpha
            goto L50
        L60:
            r7.recycle()
            int r7 = r19.getAttributeCount()
            int[] r11 = new int[r7]
            r13 = 0
            r14 = 0
        L6b:
            if (r13 >= r7) goto L90
            int r15 = r0.getAttributeNameResource(r13)
            r2 = 16843173(0x10101a5, float:2.3694738E-38)
            if (r15 == r2) goto L8c
            r2 = 16843551(0x101031f, float:2.3695797E-38)
            if (r15 == r2) goto L8c
            int r2 = android.support.v7.appcompat.C0328R.attr.alpha
            if (r15 == r2) goto L8c
            int r2 = r14 + 1
            boolean r16 = r0.getAttributeBooleanValue(r13, r5)
            if (r16 == 0) goto L88
            goto L89
        L88:
            int r15 = -r15
        L89:
            r11[r14] = r15
            r14 = r2
        L8c:
            int r13 = r13 + 1
            r2 = 1
            goto L6b
        L90:
            int[] r2 = android.util.StateSet.trimStateSet(r11, r14)
            int r7 = modulateColorAlpha(r10, r12)
            int[] r6 = android.support.v7.content.res.GrowingArrayUtils.append(r6, r3, r7)
            java.lang.Object[] r2 = android.support.v7.content.res.GrowingArrayUtils.append(r4, r3, r2)
            r4 = r2
            int[][] r4 = (int[][]) r4
            int r3 = r3 + 1
            goto Laa
        La6:
            r8 = r17
            r9 = r20
        Laa:
            r2 = 1
            goto L11
        Lad:
            int[] r0 = new int[r3]
            int[][] r1 = new int[r3]
            java.lang.System.arraycopy(r6, r5, r0, r5, r3)
            java.lang.System.arraycopy(r4, r5, r1, r5, r3)
            android.content.res.ColorStateList r2 = new android.content.res.ColorStateList
            r2.<init>(r1, r0)
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v7.content.res.AppCompatColorStateListInflater.inflate(android.content.res.Resources, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.content.res.Resources$Theme):android.content.res.ColorStateList");
    }

    private static int modulateColorAlpha(int i, float f) {
        return ColorUtils.setAlphaComponent(i, Math.round(Color.alpha(i) * f));
    }

    private static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }
}
