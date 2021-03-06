.class public Lcom/android/camera/ui/CameraSnapView;
.super Landroid/view/View;
.source "CameraSnapView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/CameraSnapView$1;,
        Lcom/android/camera/ui/CameraSnapView$SnapListener;
    }
.end annotation


# instance fields
.field private FLING_DISTANCE_THRESHOLD:I

.field private FLING_VELOCITY_THRESHOLD:I

.field private cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

.field private height:I

.field private mCurrentMode:I

.field private mExtraBitmap:Landroid/graphics/Bitmap;

.field private mExtraBitmapMatrix:Landroid/graphics/Matrix;

.field private mExtraBitmapPaint:Landroid/graphics/Paint;

.field private mHandler:Landroid/os/Handler;

.field private mMissTaken:Z

.field private mOutTime:J

.field private mPointerId:I

.field private mPressDownTime:J

.field private mPressUpTime:J

.field private mShutterRect:Landroid/graphics/Rect;

.field private mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

.field private width:I


# direct methods
.method static synthetic -get0(Lcom/android/camera/ui/CameraSnapView;)Lcom/android/camera/ui/CameraSnapView$SnapListener;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/ui/CameraSnapView;

    .prologue
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v2, 0x43c80000    # 400.0f

    const/high16 v1, 0x41a80000    # 21.0f

    .line 133
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    .line 60
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    .line 72
    new-instance v0, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    .line 134
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v2, 0x43c80000    # 400.0f

    const/high16 v1, 0x41a80000    # 21.0f

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    .line 60
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    .line 72
    new-instance v0, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/high16 v2, 0x43c80000    # 400.0f

    const/high16 v1, 0x41a80000    # 21.0f

    .line 143
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    .line 60
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    .line 62
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    .line 72
    new-instance v0, Lcom/android/camera/ui/CameraSnapView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/CameraSnapView$1;-><init>(Lcom/android/camera/ui/CameraSnapView;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    .line 144
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->initView()V

    .line 145
    return-void
.end method

.method private checkGesture(II)V
    .locals 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 443
    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 444
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    if-nez v4, :cond_0

    .line 445
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    .line 446
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/CameraSnapView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 448
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    sub-int v2, p1, v4

    .line 449
    .local v2, "dx":I
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    sub-int v3, p2, v4

    .line 450
    .local v3, "dy":I
    mul-int v4, v2, v2

    mul-int v5, v3, v3

    add-int v0, v4, v5

    .line 451
    .local v0, "d2":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    sub-long/2addr v4, v6

    long-to-int v1, v4

    .line 452
    .local v1, "duration":I
    const-string/jumbo v4, "CameraSnapView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "gesture d2(d*d)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-lez v1, :cond_2

    iget v4, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_VELOCITY_THRESHOLD:I

    div-int v5, v0, v1

    if-gt v4, v5, :cond_2

    .line 457
    :goto_0
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 458
    new-instance v6, Landroid/graphics/Point;

    iget-object v7, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v8, p0, Lcom/android/camera/ui/CameraSnapView;->mShutterRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->centerY()I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    .line 457
    invoke-interface {v4, v5, v6}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSmartShutterFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 461
    .end local v0    # "d2":I
    .end local v1    # "duration":I
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    :cond_1
    return-void

    .line 456
    .restart local v0    # "d2":I
    .restart local v1    # "duration":I
    .restart local v2    # "dx":I
    .restart local v3    # "dy":I
    :cond_2
    iget v4, p0, Lcom/android/camera/ui/CameraSnapView;->FLING_DISTANCE_THRESHOLD:I

    if-ge v4, v0, :cond_1

    goto :goto_0
.end method

.method private inRegion(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 395
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 396
    .local v0, "tempRect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 397
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private initView()V
    .locals 0

    .prologue
    .line 182
    return-void
.end method

.method private recycleBitmap()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 436
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    iput-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    .line 440
    :cond_0
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 10
    .param p1, "baseBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v6, 0x3f400000    # 0.75f

    .line 186
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    .line 188
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float v4, v5, v6

    .line 189
    .local v4, "selfWidth":F
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float v3, v5, v6

    .line 191
    .local v3, "selfHeight":F
    div-float v2, v4, v3

    .line 192
    .local v2, "grid_scale":F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    div-float v1, v5, v6

    .line 194
    .local v1, "bitmap_scale":F
    const/high16 v0, 0x3f800000    # 1.0f

    .line 195
    .local v0, "baseScale":F
    cmpl-float v5, v2, v1

    if-lez v5, :cond_0

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v3, v5

    .line 201
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    .line 202
    iget-object v5, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 203
    iget-object v5, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    div-float/2addr v6, v8

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    sub-float/2addr v7, v3

    div-float/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 205
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    .line 206
    iget-object v5, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 207
    iget-object v5, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v9}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 208
    return-void

    .line 198
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->invalidate()V

    .line 277
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 426
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 427
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->cancelAnimation()V

    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 432
    :cond_0
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    .line 433
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 415
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/camera/ui/CameraSnapView;->mExtraBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 422
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 149
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 160
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 151
    :pswitch_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->width:I

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/CameraSnapView;->height:I

    .line 153
    iget v0, p0, Lcom/android/camera/ui/CameraSnapView;->width:I

    iget v1, p0, Lcom/android/camera/ui/CameraSnapView;->height:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/CameraSnapView;->setMeasuredDimension(II)V

    .line 155
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/CameraSnapView;->width:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/CameraSnapView;->height:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setWidthHeight(FF)V

    goto :goto_0

    .line 149
    :pswitch_data_0
    .packed-switch 0x40000000
        :pswitch_0
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide/16 v10, 0x320

    .line 285
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 286
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    return v4

    .line 289
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 384
    :cond_1
    :goto_0
    :pswitch_0
    return v13

    .line 293
    :pswitch_1
    iget v4, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    packed-switch v4, :pswitch_data_1

    .line 305
    :pswitch_2
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v4}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->canSnap()Z

    move-result v4

    if-nez v4, :cond_3

    .line 306
    iget-boolean v4, p0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    if-nez v4, :cond_2

    .line 307
    iput-boolean v13, p0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 308
    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 309
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    sub-long/2addr v6, v8

    invoke-interface {v4, v6, v7}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapMissTaken(J)V

    .line 312
    :cond_2
    return v12

    .line 314
    :cond_3
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v4}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleDownAnimation()V

    .line 317
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    iput v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPointerId:I

    .line 318
    iput-boolean v12, p0, Lcom/android/camera/ui/CameraSnapView;->mMissTaken:Z

    .line 319
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    invoke-interface {v4}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onSnapPrepare()V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    .line 321
    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    .line 322
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    iget-wide v6, p0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    iget-wide v8, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    sub-long/2addr v6, v8

    invoke-interface {v4, v6, v7}, Lcom/android/camera/ui/CameraSnapView$SnapListener;->onTrackSnapTaken(J)V

    .line 324
    :cond_4
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 329
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 330
    iput-wide v6, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    goto :goto_0

    .line 331
    :cond_5
    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mOutTime:J

    goto :goto_0

    .line 337
    :pswitch_5
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 340
    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    iget-wide v6, p0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long v2, v4, v6

    .line 342
    .local v2, "timeDiffer":J
    cmp-long v4, v2, v10

    if-gez v4, :cond_6

    .line 343
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 344
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->performClick()Z

    .line 351
    .end local v2    # "timeDiffer":J
    :cond_6
    :pswitch_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 352
    iget-wide v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    iget-wide v6, p0, Lcom/android/camera/ui/CameraSnapView;->mPressDownTime:J

    sub-long v2, v4, v6

    .line 353
    .restart local v2    # "timeDiffer":J
    cmp-long v4, v2, v10

    if-lez v4, :cond_7

    .line 354
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 355
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 361
    :cond_7
    :goto_1
    const-wide/16 v4, 0x78

    cmp-long v4, v2, v4

    if-lez v4, :cond_9

    const-wide/16 v0, 0x0

    .line 363
    .local v0, "animationDelayTime":J
    :goto_2
    iget v4, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    packed-switch v4, :pswitch_data_2

    .line 375
    :pswitch_7
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v4, v0, v1, v8}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startScaleUpAnimation(JLandroid/animation/Animator$AnimatorListener;)V

    .line 378
    :pswitch_8
    iget v4, p0, Lcom/android/camera/ui/CameraSnapView;->mPointerId:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    if-ne v4, v5, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/CameraSnapView;->inRegion(II)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 379
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {p0, v4, v5}, Lcom/android/camera/ui/CameraSnapView;->checkGesture(II)V

    goto/16 :goto_0

    .line 357
    .end local v0    # "animationDelayTime":J
    :cond_8
    iget-object v4, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 361
    :cond_9
    const-wide/16 v4, 0x78

    sub-long v0, v4, v2

    .restart local v0    # "animationDelayTime":J
    goto :goto_2

    .line 289
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch

    .line 293
    :pswitch_data_1
    .packed-switch 0xa1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch

    .line 363
    :pswitch_data_2
    .packed-switch 0xa1
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_7
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public pauseRecording()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->pauseRecording()V

    .line 268
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 389
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    .line 390
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 391
    return v1
.end method

.method public prepareRecording()V
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    iget v1, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->prepareRecording(I)V

    .line 264
    return-void
.end method

.method public resumeRecording()V
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->resumeRecording()V

    .line 272
    return-void
.end method

.method public setCurrentMode(IZ)V
    .locals 2
    .param p1, "currentMode"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 214
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/CameraSnapView;->mPressUpTime:J

    .line 215
    iput p1, p0, Lcom/android/camera/ui/CameraSnapView;->mCurrentMode:I

    .line 221
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-nez v0, :cond_0

    .line 222
    new-instance v0, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initMode(I)V

    .line 233
    :goto_0
    return-void

    .line 226
    :cond_0
    if-eqz p2, :cond_1

    .line 227
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initTargetValues(I)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startModeChangeAnimation()V

    goto :goto_0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->initMode(I)V

    goto :goto_0
.end method

.method public setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V
    .locals 0
    .param p1, "snapListener"    # Lcom/android/camera/ui/CameraSnapView$SnapListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/camera/ui/CameraSnapView;->mSnapListener:Lcom/android/camera/ui/CameraSnapView$SnapListener;

    .line 125
    return-void
.end method

.method public startRing()V
    .locals 3

    .prologue
    .line 401
    invoke-virtual {p0}, Lcom/android/camera/ui/CameraSnapView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201a6

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 402
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-direct {p0, v0}, Lcom/android/camera/ui/CameraSnapView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 403
    iget-object v1, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRingAnimation()V

    .line 404
    return-void
.end method

.method public stopRing()V
    .locals 1

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/camera/ui/CameraSnapView;->recycleBitmap()V

    .line 408
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->stopRingAnimation()V

    .line 409
    return-void
.end method

.method public triggerAnimation(IZ)V
    .locals 2
    .param p1, "currentMode"    # I
    .param p2, "start"    # Z

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 237
    const-string/jumbo v0, "CameraSnapView"

    const-string/jumbo v1, "Warning: trigger animation in worker thread. Do nothing"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    return-void

    .line 240
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 260
    :cond_1
    :goto_0
    :pswitch_0
    return-void

    .line 247
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(ZI)V

    goto :goto_0

    .line 253
    :pswitch_2
    if-nez p2, :cond_1

    .line 254
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/android/camera/ui/CameraSnapView;->cameraSnapAnimateDrawable:Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;

    invoke-virtual {v0, p2, p1}, Lcom/android/camera/ui/drawable/snap/CameraSnapAnimateDrawable;->startRecordAnimation(ZI)V

    goto :goto_0

    .line 240
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
