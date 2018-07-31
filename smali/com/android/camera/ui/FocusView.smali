.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$1;,
        Lcom/android/camera/ui/FocusView$2;,
        Lcom/android/camera/ui/FocusView$CenterFlag;,
        Lcom/android/camera/ui/FocusView$CursorState;,
        Lcom/android/camera/ui/FocusView$ExposureViewListener;,
        Lcom/android/camera/ui/FocusView$ViewState;
    }
.end annotation


# static fields
.field private static final GAP_NUM:F

.field public static final MAX_SLIDE_DISTANCE:I

.field private static final TRIANGLE_BASE_DIS:I


# instance fields
.field private final MIN_DRAG_DISTANCE:I

.field private mActivity:Lcom/android/camera/Camera;

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mAdjustedDoneTime:J

.field private mBeingDragged:Z

.field private mBeingEvAdjusted:Z

.field private mBottomRelative:I

.field private mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

.field private mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

.field private mCaptureBitmap:Landroid/graphics/Bitmap;

.field private mCaptured:Z

.field private mCenterFlag:I

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentDistanceY:I

.field private mCurrentItem:I

.field private mCurrentMinusCircleCenter:I

.field private mCurrentMinusCircleRadius:F

.field private mCurrentMode:I

.field private mCurrentRadius:I

.field private mCurrentRayBottom:I

.field private mCurrentRayHeight:I

.field private mCurrentRayWidth:I

.field private mCurrentViewState:I

.field private mCursorState:I

.field private mDeltaX:F

.field private mDeltaY:F

.field private mDisplayRect:Landroid/graphics/Rect;

.field private mDragMode:I

.field private mEVAnimationRatio:F

.field private mEVAnimationStartTime:J

.field private mEVCaptureRatio:F

.field private mEvValue:F

.field private mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mExposureX:I

.field private mExposureY:I

.field private mFailTime:J

.field private mFocusMoving:Z

.field private mFocusX:I

.field private mFocusY:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDown:Z

.field private mIsDraw:Z

.field private mIsEvAdjustable:Z

.field private mIsTouchFocus:Z

.field private mLastItem:I

.field private mLockBodyBitmap:Landroid/graphics/Bitmap;

.field private mLockHeadBitmap:Landroid/graphics/Bitmap;

.field private mMode:I

.field private mOrientation:I

.field private mRotation:F

.field private mScrollDistanceY:I

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mWidth:I


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic -get12(Lcom/android/camera/ui/FocusView;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    return v0
.end method

.method static synthetic -get16(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    return v0
.end method

.method static synthetic -get17(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    return v0
.end method

.method static synthetic -get19(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return v0
.end method

.method static synthetic -get6(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    return p1
.end method

.method static synthetic -set4(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/camera/ui/FocusView;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    return p1
.end method

.method static synthetic -set6(Lcom/android/camera/ui/FocusView;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    return p1
.end method

.method static synthetic -set7(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/camera/ui/FocusView;FFF)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getItemByCoordinate()I

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetCenter()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/camera/ui/FocusView;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "type"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/camera/ui/FocusView;IZ)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->setCurrentItem(IZ)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->setTouchDown()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/ui/FocusView;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->startAnimation()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "camera_exposure_compensation_steps_num"

    const/4 v1, 0x0

    .line 100
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    .line 102
    const v0, 0x42dc999a    # 110.3f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    .line 103
    const/high16 v0, 0x40400000    # 3.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->TRIANGLE_BASE_DIS:I

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 367
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 124
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 139
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 191
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 232
    new-instance v2, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    .line 1144
    new-instance v2, Lcom/android/camera/ui/FocusView$2;

    invoke-direct {v2, p0}, Lcom/android/camera/ui/FocusView$2;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    move-object v2, p1

    .line 368
    check-cast v2, Lcom/android/camera/Camera;

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 370
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 372
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 373
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v4}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 374
    invoke-static {p1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 375
    .local v0, "displayRect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 376
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 377
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 379
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020002

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    .line 381
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 382
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {v2}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    .line 383
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 384
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 385
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02016f

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    .line 386
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02016e

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    .line 387
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mLockHeadBitmap:Landroid/graphics/Bitmap;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mLockBodyBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setLockIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 388
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 389
    new-instance v2, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    .line 390
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCaptureBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setIndicatorData(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;Landroid/graphics/Bitmap;)V

    .line 392
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    .line 393
    .local v1, "slop":I
    mul-int v2, v1, v1

    iput v2, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    .line 394
    return-void
.end method

.method private calculateAttribute()V
    .locals 11

    .prologue
    const/high16 v10, 0x40400000    # 3.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x40000000    # 2.0f

    .line 1313
    const/4 v3, 0x0

    .line 1314
    .local v3, "ratio":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v0

    .line 1315
    .local v0, "currentItemRatio":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mLastItem:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->getItemRatio(I)F

    move-result v2

    .line 1316
    .local v2, "lastItemRatio":F
    const/4 v1, 0x0

    .line 1318
    .local v1, "exposureFlag":I
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    packed-switch v4, :pswitch_data_0

    .line 1372
    :pswitch_0
    const/4 v4, 0x1

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 1377
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelResetCenter()V

    .line 1379
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRadius:I

    .line 1382
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->getCurrentAngle()I

    move-result v5

    int-to-float v5, v5

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentAngle:F

    .line 1383
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayWidth:I

    .line 1384
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayHeight:I

    .line 1385
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentRayBottom:I

    .line 1388
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleCenter:I

    .line 1389
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCurrentMinusCircleRadius:F

    .line 1391
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    .line 1392
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v4, v5}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 1393
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    if-eqz v1, :cond_5

    .end local v1    # "exposureFlag":I
    :goto_1
    iput v1, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 1397
    :goto_2
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v5, v4, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 1398
    return-void

    .line 1320
    .restart local v1    # "exposureFlag":I
    :pswitch_1
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_1

    .line 1321
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v3, v6, v4

    .line 1322
    sub-float v4, v7, v2

    mul-float/2addr v4, v3

    add-float/2addr v4, v2

    mul-float/2addr v4, v6

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1323
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3f69fbe7    # 0.914f

    mul-float/2addr v5, v3

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 1324
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v3

    const v6, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 1325
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1327
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v4, v8

    mul-float v3, v6, v4

    .line 1328
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 1329
    mul-float v4, v0, v3

    sub-float v5, v7, v3

    sub-float/2addr v4, v5

    mul-float/2addr v4, v6

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 1330
    mul-float v4, v0, v3

    sub-float v5, v7, v3

    sub-float/2addr v4, v5

    mul-float/2addr v4, v10

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 1331
    sub-float v4, v7, v3

    mul-float/2addr v4, v10

    add-float/2addr v4, v9

    mul-float v5, v6, v0

    mul-float/2addr v5, v3

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1332
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1336
    :pswitch_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    cmpg-float v4, v4, v8

    if-gtz v4, :cond_2

    .line 1337
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float v3, v6, v4

    .line 1338
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 1339
    sub-float v4, v7, v3

    mul-float/2addr v4, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, v6

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 1340
    sub-float v4, v7, v3

    mul-float/2addr v4, v2

    sub-float/2addr v4, v3

    mul-float/2addr v4, v10

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 1341
    mul-float v4, v10, v3

    add-float/2addr v4, v9

    mul-float v5, v6, v2

    sub-float v6, v7, v3

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1342
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1344
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    sub-float/2addr v4, v8

    mul-float v3, v6, v4

    .line 1345
    sub-float v4, v7, v0

    mul-float/2addr v4, v3

    mul-float/2addr v4, v6

    const/high16 v5, 0x41000000    # 8.0f

    sub-float v4, v5, v4

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1346
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    sub-float v5, v7, v3

    const v6, 0x3f69fbe7    # 0.914f

    mul-float/2addr v5, v6

    add-float/2addr v5, v8

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 1347
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    sub-float v5, v7, v3

    const v6, 0x3e4ccccd    # 0.2f

    mul-float/2addr v5, v6

    const v6, 0x3f4ccccd    # 0.8f

    add-float/2addr v5, v6

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 1348
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1352
    :pswitch_3
    move v3, v0

    .line 1353
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1354
    mul-float v4, v6, v0

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1355
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    mul-float/2addr v4, v8

    float-to-int v4, v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleCenter:I

    .line 1356
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    int-to-float v4, v4

    const v5, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentMinusCircleRadius:F

    .line 1357
    const/4 v1, 0x4

    goto/16 :goto_0

    .line 1359
    :cond_3
    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayWidth:I

    .line 1360
    mul-float v4, v6, v0

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayHeight:I

    .line 1361
    mul-float v4, v10, v0

    const/high16 v5, 0x40f00000    # 7.5f

    add-float/2addr v4, v5

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRayBottom:I

    .line 1362
    mul-float v4, v6, v0

    add-float/2addr v4, v9

    invoke-static {v4}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCurrentRadius:I

    .line 1363
    const/4 v1, 0x3

    goto/16 :goto_0

    .line 1367
    :pswitch_4
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v4, :cond_4

    .line 1368
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v4

    .line 1367
    if-eqz v4, :cond_4

    .line 1369
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v4

    .line 1367
    if-eqz v4, :cond_4

    .line 1369
    const/4 v4, 0x2

    .line 1367
    :goto_3
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_0

    .line 1369
    :cond_4
    const/4 v4, 0x1

    goto :goto_3

    .line 1393
    :cond_5
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_1

    .line 1395
    :cond_6
    if-eqz v1, :cond_7

    .end local v1    # "exposureFlag":I
    :goto_4
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto/16 :goto_2

    .restart local v1    # "exposureFlag":I
    :cond_7
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_4

    .line 1318
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 1049
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1050
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1053
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1054
    return-void
.end method

.method private getCurrentAngle()I
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/high16 v7, 0x43070000    # 135.0f

    const/high16 v6, 0x40000000    # 2.0f

    const/16 v5, 0x168

    const/4 v4, 0x0

    .line 1401
    const/4 v0, 0x0

    .line 1402
    .local v0, "degree":I
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-eq v2, v8, :cond_2

    .line 1403
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    .line 1404
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 1405
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/lit16 v2, v2, 0x168

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    div-int v0, v2, v3

    .line 1407
    :cond_0
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    .line 1422
    :cond_1
    :goto_0
    return v0

    .line 1408
    :cond_2
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1409
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int v1, v2, v3

    .line 1410
    .local v1, "relativeDis":I
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    invoke-static {v1, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v1

    .line 1411
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    if-lt v1, v2, :cond_3

    .line 1412
    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v1, v2

    mul-int/lit16 v2, v2, 0x168

    sget v3, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int/lit8 v3, v3, 0x2

    div-int v0, v2, v3

    .line 1414
    :cond_3
    invoke-static {v0, v4, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    rsub-int v0, v2, 0x168

    goto :goto_0

    .line 1415
    .end local v1    # "relativeDis":I
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    if-ne v2, v8, :cond_5

    .line 1416
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    mul-float/2addr v2, v6

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 1417
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0

    .line 1418
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 1419
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationRatio:F

    const/high16 v3, 0x3f000000    # 0.5f

    sub-float/2addr v2, v3

    mul-float/2addr v2, v6

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    mul-float/2addr v2, v7

    float-to-int v0, v2

    .line 1420
    const/16 v2, 0x87

    invoke-static {v0, v4, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    goto :goto_0
.end method

.method private getItemByCoordinate()I
    .locals 4

    .prologue
    .line 1092
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    sget v2, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    div-int v0, v1, v2

    .line 1093
    .local v0, "item":I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    .line 1094
    return v0
.end method

.method private getItemRatio(I)F
    .locals 5
    .param p1, "item"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 1307
    int-to-float v1, p1

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v2}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 1308
    .local v0, "itemRatio":F
    cmpl-float v1, v0, v3

    if-ltz v1, :cond_0

    sub-float v1, v0, v3

    mul-float v0, v4, v1

    .line 1309
    :goto_0
    return v0

    .line 1308
    :cond_0
    mul-float/2addr v0, v4

    goto :goto_0
.end method

.method private handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 468
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float v1, v0, v3

    .line 469
    .local v1, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float v2, v0, v3

    .line 470
    .local v2, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_9

    .line 472
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eqz v0, :cond_0

    .line 473
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v11, :cond_3

    .line 475
    :cond_0
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 492
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_8

    .line 493
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 494
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    .line 539
    :cond_2
    :goto_1
    return v12

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    .line 472
    if-nez v0, :cond_0

    .line 476
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v9, :cond_5

    .line 477
    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v0, v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/camera/ui/FocusView;->isInCircle(FFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 478
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 480
    :cond_4
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 482
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v10, :cond_1

    .line 483
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v4, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 484
    iput v10, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 485
    iput-boolean v12, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    goto :goto_0

    .line 486
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, v0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v4, v0

    sget v0, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    int-to-float v5, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/FocusView;->isInCircle(FFFFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 487
    iput v11, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 489
    :cond_7
    iput v9, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    goto :goto_0

    .line 495
    :cond_8
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_2

    .line 496
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    .line 497
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v0, v0

    sub-float v0, v2, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    goto :goto_1

    .line 499
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-ne v0, v10, :cond_2

    .line 500
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaX:F

    sub-float v6, v1, v0

    .line 501
    .local v6, "centerX":F
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDeltaY:F

    sub-float v7, v2, v0

    .line 502
    .local v7, "centerY":F
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    if-nez v0, :cond_c

    .line 503
    const/4 v8, 0x0

    .line 504
    .local v8, "diff":F
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_b

    .line 505
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v8, v0, v3

    .line 509
    :cond_a
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/FocusView;->MIN_DRAG_DISTANCE:I

    int-to-float v0, v0

    cmpg-float v0, v8, v0

    if-gez v0, :cond_c

    .line 510
    return v12

    .line 506
    :cond_b
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_a

    .line 507
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    sub-float/2addr v0, v6

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v3, v3

    sub-float/2addr v3, v6

    mul-float/2addr v0, v3

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v3, v3

    sub-float/2addr v3, v7

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v4, v4

    sub-float/2addr v4, v7

    mul-float/2addr v3, v4

    add-float v8, v0, v3

    goto :goto_2

    .line 513
    .end local v8    # "diff":F
    :cond_c
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v9, :cond_d

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-eq v0, v9, :cond_d

    .line 514
    invoke-direct {p0, v10}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 515
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackSplitMode()V

    .line 517
    :cond_d
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 518
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 517
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 519
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sget v3, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    .line 520
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sget v4, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->BIG_RADIUS:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 519
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 521
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v10, :cond_10

    .line 522
    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 523
    float-to-int v0, v6

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    .line 524
    float-to-int v0, v7

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    .line 525
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-nez v0, :cond_e

    .line 526
    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 528
    :cond_e
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 536
    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 537
    return v9

    .line 529
    :cond_10
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v0, v11, :cond_f

    .line 530
    iput-boolean v9, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 531
    float-to-int v0, v6

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    .line 532
    float-to-int v0, v7

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    .line 533
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v4, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 534
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateExposureArea()V

    goto :goto_3
.end method

.method private hideTipMessage(I)V
    .locals 3
    .param p1, "tokenResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1465
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1466
    .local v0, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    if-lez p1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1467
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    .line 1469
    :cond_1
    return-void
.end method

.method private isInCircle(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    .line 1426
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 1427
    .local v2, "dx":F
    iget v4, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 1428
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1429
    .local v0, "distance":D
    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInCircle(FFFFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F
    .param p5, "r"    # F

    .prologue
    .line 1433
    sub-float v2, p1, p3

    .line 1434
    .local v2, "dx":F
    sub-float v3, p2, p4

    .line 1435
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 1436
    .local v0, "distance":D
    float-to-double v4, p5

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isStableStart()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1030
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    .line 1031
    return v1

    .line 1033
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    .line 1034
    return v1

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    return v0
.end method

.method private processParameterIfNeeded(F)V
    .locals 2
    .param p1, "ratio"    # F

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    .line 611
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    if-nez v0, :cond_0

    .line 612
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 615
    :cond_0
    return-void
.end method

.method private reload()V
    .locals 3

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 1058
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1059
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 1060
    .local v0, "index":I
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1061
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 1063
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method private removeMessages()V
    .locals 0

    .prologue
    .line 1074
    return-void
.end method

.method private reset(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v3, 0x0

    .line 815
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v1, :cond_0

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    .line 816
    return-void

    .line 819
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 820
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 821
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    .line 822
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 823
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 825
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/camera/ui/FocusView;->setPosition(III)V

    .line 828
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 829
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 830
    const v1, 0x7f0f027b

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView;->hideTipMessage(I)V

    .line 831
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 832
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 833
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 834
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 836
    invoke-direct {p0, v3}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 837
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 838
    return-void
.end method

.method private resetCenter()V
    .locals 2

    .prologue
    .line 841
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCurrentViewState:I

    .line 842
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 844
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_0

    .line 845
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 850
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 851
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 852
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 863
    :cond_1
    :goto_0
    return-void

    .line 853
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    .line 853
    if-eqz v0, :cond_1

    .line 855
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 856
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 857
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 858
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 860
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto :goto_0
.end method

.method private resetEvValue()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1082
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    .line 1083
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    .line 1084
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1085
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mScrollDistanceY:I

    .line 1086
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    .line 1087
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->reset()V

    .line 1088
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->reset()V

    .line 1089
    return-void
.end method

.method private setCenter(II)V
    .locals 1
    .param p1, "centerX"    # I
    .param p2, "centerY"    # I

    .prologue
    .line 984
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 985
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 986
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 992
    :cond_1
    return-void
.end method

.method private setCurrentItem(IZ)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 1111
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    if-eq p1, v1, :cond_1

    .line 1112
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 1113
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 1124
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    .line 1125
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    if-eqz v0, :cond_0

    .line 1126
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    .line 1129
    .end local v0    # "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 1131
    :cond_1
    return-void
.end method

.method private setDraw(Z)V
    .locals 1
    .param p1, "draw"    # Z

    .prologue
    .line 1066
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eq v0, p1, :cond_0

    .line 1067
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reload()V

    .line 1069
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 1070
    return-void
.end method

.method private setMode(I)V
    .locals 7
    .param p1, "mode"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 411
    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "manual"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 412
    if-eq p1, v2, :cond_0

    if-ne p1, v1, :cond_1

    .line 413
    :cond_0
    const/4 p1, 0x3

    .line 421
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v1, :cond_2

    if-ne p1, v5, :cond_2

    .line 422
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 425
    :cond_2
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    .line 426
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-nez v0, :cond_5

    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    .line 449
    :cond_3
    :goto_1
    return-void

    .line 416
    :cond_4
    if-ne p1, v5, :cond_1

    .line 417
    const/4 p1, 0x1

    goto :goto_0

    .line 430
    :cond_5
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v2, :cond_6

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 433
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    goto :goto_1

    .line 434
    :cond_6
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v5, :cond_3

    .line 435
    :cond_7
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setShowSplitCircle(Z)V

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v3, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 441
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v5, :cond_9

    .line 442
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iput v1, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    goto :goto_1

    :cond_8
    move v0, v2

    .line 439
    goto :goto_2

    .line 444
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget v0, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    if-ne v0, v1, :cond_3

    .line 445
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iput v2, v0, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    goto :goto_1
.end method

.method private setTouchDown()V
    .locals 2

    .prologue
    .line 1078
    sget v0, Lcom/android/camera/ui/FocusView;->MAX_SLIDE_DISTANCE:I

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBottomRelative:I

    .line 1079
    return-void
.end method

.method private showTipMessage(II)V
    .locals 3
    .param p1, "types"    # I
    .param p2, "tokenResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1453
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1454
    .local v0, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    if-nez v0, :cond_0

    .line 1455
    return-void

    .line 1457
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->isPortraitHintVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1458
    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->setPortraitHintVisible(I)V

    .line 1460
    :cond_1
    const/4 v1, 0x2

    invoke-interface {v0, p1, p2, v1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    .line 1461
    return-void
.end method

.method private startAnimation()V
    .locals 3

    .prologue
    const/4 v2, 0x7

    .line 1300
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mEVAnimationStartTime:J

    .line 1301
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1303
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1304
    return-void
.end method

.method private stopEvAdjust()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1134
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v1, :cond_0

    .line 1135
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    .line 1137
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    .line 1138
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    if-eqz v0, :cond_0

    .line 1139
    const/4 v1, 0x2

    invoke-interface {v0, v3, v1}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->onEvChanged(II)V

    .line 1142
    .end local v0    # "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    :cond_0
    return-void
.end method

.method private trackEvAdjusted()V
    .locals 3

    .prologue
    .line 596
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 597
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "\u524d\u540e\u6444"

    .line 598
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 599
    const-string/jumbo v1, "\u524d\u6444"

    .line 597
    :goto_0
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string/jumbo v1, "\u6a21\u5f0f"

    .line 601
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v2

    invoke-static {v2}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v2

    .line 600
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "ev_adjusted"

    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 603
    return-void

    .line 599
    :cond_0
    const-string/jumbo v1, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackSplitMode()V
    .locals 2

    .prologue
    .line 606
    const-string/jumbo v0, "counter"

    const-string/jumbo v1, "manual_split_mode"

    invoke-static {v0, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    return-void
.end method

.method private updateEV()V
    .locals 3

    .prologue
    .line 946
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 947
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 948
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    .line 952
    :goto_0
    return-void

    .line 950
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    goto :goto_0
.end method

.method private updateExposureArea()V
    .locals 3

    .prologue
    .line 453
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    .line 454
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;
    if-eqz v0, :cond_0

    .line 455
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onMeteringAreaChanged(II)V

    .line 457
    :cond_0
    return-void
.end method

.method private updateFocusArea()V
    .locals 3

    .prologue
    .line 461
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xbb

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;

    .line 462
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;
    if-eqz v0, :cond_0

    .line 463
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$MeteringFocusAreaChangedProtocol;->onFocusAreaChanged(II)V

    .line 465
    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 803
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "clear..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    .line 805
    return-void
.end method

.method public clear(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 808
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 811
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->reset(I)V

    .line 812
    return-void
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1
    .param p1, "exposureViewListener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 402
    iput-object p1, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 403
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->reset(I)V

    .line 404
    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 398
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 399
    return-void
.end method

.method public isDragged()Z
    .locals 1

    .prologue
    .line 976
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    return v0
.end method

.method public isEvAdjusted()Z
    .locals 1

    .prologue
    .line 966
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isEvAdjustedTime()Z
    .locals 6

    .prologue
    .line 970
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    .line 971
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-nez v0, :cond_0

    .line 972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    const-wide/16 v4, 0x5dc

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 970
    :goto_0
    return v0

    .line 971
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 970
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isManualSplitMode()Z
    .locals 2

    .prologue
    .line 980
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1441
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 1442
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_0

    .line 1443
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->cancelFocusingAnimation()V

    .line 1444
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 1446
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 1447
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1449
    :cond_1
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 887
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-nez v0, :cond_0

    .line 888
    return-void

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eq v0, v3, :cond_2

    .line 901
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 902
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 903
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 904
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 905
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mFocusX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mFocusY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 907
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 908
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    .line 909
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 913
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v0, v3, :cond_5

    .line 914
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_4

    .line 915
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 916
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 917
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 918
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mExposureX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mExposureY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 920
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 921
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 922
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 943
    :cond_5
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 867
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 868
    if-eqz p1, :cond_0

    .line 869
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->getDisplayRect(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 871
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 872
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 873
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v3, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v0, v3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 875
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    .line 876
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v0

    if-ne v1, v0, :cond_1

    move v0, v1

    .line 877
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 875
    invoke-virtual {v3, v0, v4}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    .line 878
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    .line 879
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->getLayoutDirection()I

    move-result v3

    if-ne v1, v3, :cond_2

    .line 880
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mDisplayRect:Landroid/graphics/Rect;

    .line 878
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setRtlAndDisplayRect(ZLandroid/graphics/Rect;)V

    .line 883
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 876
    goto :goto_0

    :cond_2
    move v1, v2

    .line 879
    goto :goto_1
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x6

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 543
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    xor-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-eq v2, v7, :cond_1

    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v2

    :goto_0
    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    .line 544
    :cond_0
    return v6

    :cond_1
    move v2, v3

    .line 543
    goto :goto_0

    .line 548
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v4, 0xa1

    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 549
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    iget v2, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v3, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v5, v2, :cond_3

    .line 551
    return v6

    .line 554
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 556
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 557
    .local v1, "oldDown":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v4, 0x5

    if-ne v2, v4, :cond_4

    .line 558
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    if-eqz v2, :cond_4

    .line 559
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 564
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->handleSplitFocusExposureEvent(Landroid/view/MotionEvent;)Z

    .line 566
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-eq v3, v2, :cond_5

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v5, v2, :cond_9

    .line 568
    :cond_5
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mBeingEvAdjusted:Z

    if-eqz v2, :cond_6

    .line 569
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->trackEvAdjusted()V

    .line 570
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->stopEvAdjust()V

    .line 571
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mAdjustedDoneTime:J

    .line 573
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 574
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v8, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 576
    :cond_6
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    if-eqz v2, :cond_7

    .line 577
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mCaptured:Z

    .line 579
    :cond_7
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    if-ne v2, v7, :cond_8

    .line 580
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateFocusArea()V

    .line 581
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mFocusMoving:Z

    .line 583
    :cond_8
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mBeingDragged:Z

    .line 584
    iput v6, p0, Lcom/android/camera/ui/FocusView;->mDragMode:I

    .line 586
    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v2, :cond_9

    .line 587
    iput-boolean v6, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    .line 592
    :cond_9
    if-nez v1, :cond_a

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDown:Z

    :cond_a
    return v3
.end method

.method public reInit()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 631
    const-string/jumbo v5, "FocusView"

    const-string/jumbo v6, "onCameraOpen>> reInit"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    .line 633
    .local v4, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v4, :cond_0

    .line 634
    return-void

    .line 637
    :cond_0
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v3

    .line 638
    .local v3, "min":I
    invoke-virtual {v4}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v2

    .line 639
    .local v2, "max":I
    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_2

    .line 640
    :cond_1
    return-void

    .line 643
    :cond_2
    new-instance v6, Lcom/android/camera/ui/FloatSlideAdapter;

    .line 644
    sget v5, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-nez v5, :cond_3

    const/high16 v5, 0x3f800000    # 1.0f

    .line 643
    :goto_0
    invoke-direct {v6, v3, v2, v5}, Lcom/android/camera/ui/FloatSlideAdapter;-><init>(IIF)V

    iput-object v6, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 645
    const-string/jumbo v5, "FocusView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onCameraOpen: adapter="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v5, :cond_4

    .line 647
    return-void

    .line 644
    :cond_3
    sub-int v5, v2, v3

    int-to-float v5, v5

    sget v7, Lcom/android/camera/ui/FocusView;->GAP_NUM:F

    div-float/2addr v5, v7

    goto :goto_0

    .line 650
    :cond_4
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 652
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v5

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    .line 653
    iget v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentMode:I

    packed-switch v5, :pswitch_data_0

    .line 655
    invoke-direct {p0, v8}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 664
    :goto_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isEvAdjustable()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/camera/ui/FocusView;->setEvAdjustable(Z)V

    .line 666
    invoke-static {}, Lcom/android/camera/CameraSettings;->readExposure()I

    move-result v0

    .line 667
    .local v0, "evValue":I
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v1

    .line 668
    .local v1, "index":I
    if-gez v1, :cond_5

    .line 669
    iget-object v5, p0, Lcom/android/camera/ui/FocusView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v5}, Lcom/android/camera/ui/RollAdapter;->getMaxItem()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    .line 673
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->updateEV()V

    .line 674
    return-void

    .line 659
    .end local v0    # "evValue":I
    .end local v1    # "index":I
    :pswitch_0
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    goto :goto_1

    .line 671
    .restart local v0    # "evValue":I
    .restart local v1    # "index":I
    :cond_5
    iput v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentItem:I

    goto :goto_2

    .line 653
    :pswitch_data_0
    .packed-switch 0xa7
        :pswitch_0
    .end packed-switch
.end method

.method public releaseListener()V
    .locals 1

    .prologue
    .line 407
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 408
    return-void
.end method

.method public setEvAdjustable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    const/16 v1, 0x8

    .line 955
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsEvAdjustable:Z

    .line 956
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 957
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->calculateAttribute()V

    .line 958
    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvAdjustVisible(I)V

    .line 959
    if-nez p1, :cond_0

    .line 960
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setEvTextVisible(I)V

    .line 962
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 963
    return-void

    :cond_1
    move v0, v1

    .line 958
    goto :goto_0
.end method

.method public setFocusType(Z)V
    .locals 0
    .param p1, "isTouchFocus"    # Z

    .prologue
    .line 715
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    .line 716
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 694
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 695
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mOrientation:I

    .line 696
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setOrientation(I)V

    .line 697
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setOrientation(I)V

    .line 698
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 702
    :cond_0
    return-void
.end method

.method public setPosition(III)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 995
    invoke-direct {p0, p2, p3}, Lcom/android/camera/ui/FocusView;->setCenter(II)V

    .line 998
    int-to-float v3, p2

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView;->setPivotX(F)V

    .line 999
    int-to-float v3, p3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/FocusView;->setPivotY(F)V

    .line 1000
    iget v3, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    if-ne v3, v1, :cond_0

    .line 1001
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 1003
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->setCenter(II)V

    .line 1004
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mCameraExposureDrawable:Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;

    invoke-virtual {v3, p2, p3}, Lcom/android/camera/ui/drawable/focus/CameraExposureDrawable;->setCenter(II)V

    .line 1005
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->copyFrom(Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;)V

    .line 1006
    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mExposureIndicatorState:Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v4}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_0
    iput v1, v3, Lcom/android/camera/ui/drawable/focus/CameraIndicatorState;->mCenterFlag:I

    .line 1007
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->removeMessages()V

    .line 1009
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mEvValue:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 1010
    packed-switch p1, :pswitch_data_0

    .line 1024
    :cond_1
    :goto_1
    :pswitch_0
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCurrentDistanceY:I

    if-eqz v1, :cond_2

    .line 1025
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->resetEvValue()V

    .line 1027
    :cond_2
    return-void

    :cond_3
    move v1, v2

    .line 1006
    goto :goto_0

    .line 1015
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa9

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;

    .line 1016
    .local v0, "p":Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;
    if-eqz v0, :cond_1

    .line 1017
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$EvChangedProtocol;->resetEvValue()V

    goto :goto_1

    .line 1010
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 706
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 707
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mRotation:F

    .line 708
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    .line 709
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 712
    :cond_0
    return-void
.end method

.method public showFail()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 789
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusFailAnimation()V

    .line 790
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showFail..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v0, v2, :cond_0

    .line 792
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 793
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 794
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 795
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 796
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 797
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 799
    :cond_0
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 729
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showStart..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 731
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 732
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mCursorState:I

    .line 733
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 735
    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 738
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startTouchDownAnimation()V

    .line 740
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isStableStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 742
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->showSuccess()V

    .line 750
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 751
    return-void

    .line 744
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mEVCaptureRatio:F

    .line 745
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 746
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(F)V

    .line 748
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public showSuccess()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 759
    const-string/jumbo v0, "FocusView"

    const-string/jumbo v1, "showSuccess..."

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v0, v4, :cond_0

    .line 762
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 763
    invoke-direct {p0, v4}, Lcom/android/camera/ui/FocusView;->setDraw(Z)V

    .line 764
    iput v5, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 765
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 766
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    if-nez v0, :cond_1

    .line 772
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowAeAfLockIndicator()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/camera/CameraSettings;->isAEAFLockSupport()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 777
    const/16 v0, 0x8

    const v1, 0x7f0f027b

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->showTipMessage(II)V

    .line 778
    iput v6, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    .line 784
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mCameraFocusAnimateDrawable:Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    iget-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/focus/CameraFocusAnimateDrawable;->startFocusSuccessAnimation(IZ)V

    .line 785
    return-void

    .line 779
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isSupportFocusShoot()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 780
    iput v5, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0

    .line 782
    :cond_3
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mCenterFlag:I

    goto :goto_0
.end method

.method public updateFocusMode()V
    .locals 1

    .prologue
    .line 626
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mMode:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView;->setMode(I)V

    .line 627
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 628
    return-void
.end method
