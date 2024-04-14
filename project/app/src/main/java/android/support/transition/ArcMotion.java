package android.support.transition;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.support.v4.content.res.TypedArrayUtils;
import android.util.AttributeSet;
import org.xmlpull.v1.XmlPullParser;

/* loaded from: classes.dex */
public class ArcMotion extends PathMotion {
    private static final float DEFAULT_MAX_ANGLE_DEGREES = 70.0f;
    private static final float DEFAULT_MAX_TANGENT = (float) Math.tan(Math.toRadians(35.0d));
    private static final float DEFAULT_MIN_ANGLE_DEGREES = 0.0f;
    private float mMaximumAngle;
    private float mMaximumTangent;
    private float mMinimumHorizontalAngle;
    private float mMinimumHorizontalTangent;
    private float mMinimumVerticalAngle;
    private float mMinimumVerticalTangent;

    public ArcMotion() {
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
    }

    public ArcMotion(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mMinimumHorizontalAngle = 0.0f;
        this.mMinimumVerticalAngle = 0.0f;
        this.mMaximumAngle = DEFAULT_MAX_ANGLE_DEGREES;
        this.mMinimumHorizontalTangent = 0.0f;
        this.mMinimumVerticalTangent = 0.0f;
        this.mMaximumTangent = DEFAULT_MAX_TANGENT;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.ARC_MOTION);
        XmlPullParser xmlPullParser = (XmlPullParser) attributeSet;
        setMinimumVerticalAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "minimumVerticalAngle", 1, 0.0f));
        setMinimumHorizontalAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "minimumHorizontalAngle", 0, 0.0f));
        setMaximumAngle(TypedArrayUtils.getNamedFloat(obtainStyledAttributes, xmlPullParser, "maximumAngle", 2, DEFAULT_MAX_ANGLE_DEGREES));
        obtainStyledAttributes.recycle();
    }

    private static float toTangent(float f) {
        if (f < 0.0f || f > 90.0f) {
            throw new IllegalArgumentException("Arc must be between 0 and 90 degrees");
        }
        return (float) Math.tan(Math.toRadians(f / 2.0f));
    }

    public float getMaximumAngle() {
        return this.mMaximumAngle;
    }

    public float getMinimumHorizontalAngle() {
        return this.mMinimumHorizontalAngle;
    }

    public float getMinimumVerticalAngle() {
        return this.mMinimumVerticalAngle;
    }

    @Override // android.support.transition.PathMotion
    public Path getPath(float f, float f2, float f3, float f4) {
        float f5;
        float f6;
        float f7;
        float f8;
        Path path = new Path();
        path.moveTo(f, f2);
        float f9 = f3 - f;
        float f10 = f4 - f2;
        float f11 = (f9 * f9) + (f10 * f10);
        float f12 = (f + f3) / 2.0f;
        float f13 = (f2 + f4) / 2.0f;
        float f14 = 0.25f * f11;
        boolean z = f2 > f4;
        if (Math.abs(f9) < Math.abs(f10)) {
            float abs = Math.abs(f11 / (f10 * 2.0f));
            if (z) {
                f6 = abs + f4;
                f5 = f3;
            } else {
                f6 = abs + f2;
                f5 = f;
            }
            f7 = this.mMinimumVerticalTangent * f14;
            f8 = this.mMinimumVerticalTangent;
        } else {
            float f15 = f11 / (f9 * 2.0f);
            if (z) {
                f6 = f2;
                f5 = f15 + f;
            } else {
                f5 = f3 - f15;
                f6 = f4;
            }
            f7 = this.mMinimumHorizontalTangent * f14;
            f8 = this.mMinimumHorizontalTangent;
        }
        float f16 = f7 * f8;
        float f17 = f12 - f5;
        float f18 = f13 - f6;
        float f19 = (f17 * f17) + (f18 * f18);
        float f20 = f14 * this.mMaximumTangent * this.mMaximumTangent;
        if (f19 >= f16) {
            f16 = f19 > f20 ? f20 : 0.0f;
        }
        if (f16 != 0.0f) {
            float sqrt = (float) Math.sqrt(f16 / f19);
            f5 = ((f5 - f12) * sqrt) + f12;
            f6 = f13 + (sqrt * (f6 - f13));
        }
        path.cubicTo((f + f5) / 2.0f, (f2 + f6) / 2.0f, (f5 + f3) / 2.0f, (f6 + f4) / 2.0f, f3, f4);
        return path;
    }

    public void setMaximumAngle(float f) {
        this.mMaximumAngle = f;
        this.mMaximumTangent = toTangent(f);
    }

    public void setMinimumHorizontalAngle(float f) {
        this.mMinimumHorizontalAngle = f;
        this.mMinimumHorizontalTangent = toTangent(f);
    }

    public void setMinimumVerticalAngle(float f) {
        this.mMinimumVerticalAngle = f;
        this.mMinimumVerticalTangent = toTangent(f);
    }
}
