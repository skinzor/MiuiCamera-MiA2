.class Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;
.super Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;
.source "SnapshotEffectRender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/effect/renders/SnapshotEffectRender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageWaterMark"
.end annotation


# instance fields
.field private mCenterX:I

.field private mCenterY:I

.field private mHeight:I

.field private mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mPaddingX:I

.field private mPaddingY:I

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;


# direct methods
.method public constructor <init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;Landroid/graphics/Bitmap;III)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/camera/effect/renders/SnapshotEffectRender;
    .param p2, "image"    # Landroid/graphics/Bitmap;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "orientation"    # I

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->this$0:Lcom/android/camera/effect/renders/SnapshotEffectRender;

    .line 356
    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/camera/effect/renders/SnapshotEffectRender$WaterMark;-><init>(Lcom/android/camera/effect/renders/SnapshotEffectRender;III)V

    .line 358
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 359
    .local v1, "shotL":I
    int-to-float v2, v1

    const/high16 v3, 0x44870000    # 1080.0f

    div-float v0, v2, v3

    .line 360
    .local v0, "ratio":F
    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->-get5(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mHeight:I

    .line 361
    iget v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mHeight:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    mul-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/2addr v2, v3

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mWidth:I

    .line 362
    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->-get3(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingX:I

    .line 363
    invoke-static {p1}, Lcom/android/camera/effect/renders/SnapshotEffectRender;->-get4(Lcom/android/camera/effect/renders/SnapshotEffectRender;)F

    move-result v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingY:I

    .line 365
    new-instance v2, Lcom/android/gallery3d/ui/BitmapTexture;

    invoke-direct {v2, p2}, Lcom/android/gallery3d/ui/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    .line 366
    iget-object v2, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/ui/BitmapTexture;->setOpaque(Z)V

    .line 367
    invoke-direct {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->calcCenterAxis()V

    .line 368
    return-void
.end method

.method private calcCenterAxis()V
    .locals 2

    .prologue
    .line 371
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mOrientation:I

    sparse-switch v0, :sswitch_data_0

    .line 389
    :goto_0
    return-void

    .line 373
    :sswitch_0
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 374
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 377
    :sswitch_1
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingY:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 378
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureHeight:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 381
    :sswitch_2
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPictureWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingX:I

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 382
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 385
    :sswitch_3
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingY:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    .line 386
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mPaddingX:I

    invoke-virtual {p0}, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    goto :goto_0

    .line 371
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x5a -> :sswitch_1
        0xb4 -> :sswitch_2
        0x10e -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method public getCenterX()I
    .locals 1

    .prologue
    .line 393
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterX:I

    return v0
.end method

.method public getCenterY()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mCenterY:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 408
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mHeight:I

    return v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/BasicTexture;
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mImageTexture:Lcom/android/gallery3d/ui/BitmapTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 403
    iget v0, p0, Lcom/android/camera/effect/renders/SnapshotEffectRender$ImageWaterMark;->mWidth:I

    return v0
.end method
