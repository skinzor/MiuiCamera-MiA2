.class Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;
.super Landroid/os/AsyncTask;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SealInvisibleWatermarkTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mBitmapWithWatermark:Landroid/graphics/Bitmap;

.field private mPngData:[B

.field private mSampleSize:I

.field private mWatermark:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method public constructor <init>(Lcom/android/camera/module/CameraModule;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "waterMark"    # Ljava/lang/String;
    .param p3, "sampleSize"    # I

    .prologue
    .line 1587
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1588
    iput-object p2, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mWatermark:Ljava/lang/String;

    .line 1589
    iput p3, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mSampleSize:I

    .line 1590
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1592
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    const/4 v4, 0x0

    .line 1594
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "try to seal watermark mWatermark:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mWatermark:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mSampleSize:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mSampleSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1596
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get10(Lcom/android/camera/module/CameraModule;)[B

    move-result-object v1

    .line 1597
    iget v2, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mSampleSize:I

    .line 1598
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mWatermark:Ljava/lang/String;

    .line 1595
    invoke-static {v1, v2, v3}, Lcom/android/camera/Util;->sealInvisibleWatermark([BILjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    .line 1599
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 1600
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "seal watermark success. size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "encode to PNG"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1604
    .local v0, "os":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1605
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mPngData:[B

    .line 1606
    sget-object v1, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "encode to PNG success"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    .end local v0    # "os":Ljava/io/ByteArrayOutputStream;
    :cond_0
    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1611
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v2, 0x0

    .line 1613
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostExecute 1"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1615
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostExecute 2"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 1617
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mPngData:[B

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-set3(Lcom/android/camera/module/CameraModule;[B)[B

    .line 1618
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->renderBitmapToCanvas(Landroid/graphics/Bitmap;)V

    .line 1619
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap29(Lcom/android/camera/module/CameraModule;)V

    .line 1620
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-set8(Lcom/android/camera/module/CameraModule;Z)Z

    .line 1621
    iput-object v2, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->mBitmapWithWatermark:Landroid/graphics/Bitmap;

    .line 1623
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1624
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1627
    :cond_1
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPostExecute 3"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v2}, Lcom/android/camera/module/CameraModule;->-set15(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;)Lcom/android/camera/module/CameraModule$SealInvisibleWatermarkTask;

    .line 1629
    return-void
.end method
