.class public Lcom/android/camera/hardware/CameraHardwareProxy;
.super Ljava/lang/Object;
.source "CameraHardwareProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraHardwareFace;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;,
        Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;,
        Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;
    }
.end annotation


# static fields
.field private static sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;


# instance fields
.field protected mHalCoordinate:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x3e8

    const/16 v1, -0x3e8

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method public static declared-synchronized getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;
    .locals 2

    .prologue
    const-class v1, Lcom/android/camera/hardware/CameraHardwareProxy;

    monitor-enter v1

    .line 113
    :try_start_0
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    if-nez v0, :cond_0

    .line 114
    invoke-static {}, Lcom/android/camera/Device;->isQcomPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Lcom/android/camera/hardware/QcomCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/QcomCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    .line 126
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 116
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/android/camera/Device;->isLCPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Lcom/android/camera/hardware/LCCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/LCCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 118
    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    new-instance v0, Lcom/android/camera/hardware/NvidiaCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/NvidiaCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 120
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isMTKPlatform()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    new-instance v0, Lcom/android/camera/hardware/MTKCameraProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/MTKCameraProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;

    goto :goto_0

    .line 123
    :cond_4
    new-instance v0, Lcom/android/camera/hardware/CameraHardwareProxy;

    invoke-direct {v0}, Lcom/android/camera/hardware/CameraHardwareProxy;-><init>()V

    sput-object v0, Lcom/android/camera/hardware/CameraHardwareProxy;->sProxy:Lcom/android/camera/hardware/CameraHardwareProxy;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private getWBCurrentCCT(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 536
    const-string/jumbo v0, "wb-manual-cct"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected static split(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 293
    if-nez p0, :cond_0

    return-object v4

    .line 295
    :cond_0
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x2c

    invoke-direct {v2, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 296
    .local v2, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v2, p0}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 297
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 298
    .local v3, "substrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 299
    .local v0, "s":Ljava/lang/String;
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 301
    .end local v0    # "s":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method private strToSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Size;
    .locals 8
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 655
    if-nez p2, :cond_0

    return-object v7

    .line 657
    :cond_0
    const/16 v4, 0x78

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 658
    .local v1, "pos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 659
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 660
    .local v3, "width":Ljava/lang/String;
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 662
    .local v0, "height":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 663
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_1

    .line 664
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/hardware/Camera$Size;->width:I

    .line 665
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Landroid/hardware/Camera$Size;->height:I

    .line 666
    return-object v2

    .line 668
    :cond_1
    const-string/jumbo v4, "CameraHardwareProxy"

    const-string/jumbo v5, "getPictureSize fail"

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .end local v0    # "height":Ljava/lang/String;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "width":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "CameraHardwareProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid size parameter string="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    return-object v7
.end method


# virtual methods
.method public cancelContinuousMode(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 545
    return-void
.end method

.method public clearExposureTime(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 601
    return-void
.end method

.method public clearManuallyISO(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 609
    return-void
.end method

.method public clearManuallyWhiteBalance(Landroid/hardware/Camera$Parameters;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 605
    return-void
.end method

.method public disableAiAsd(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 502
    const-string/jumbo v0, "xiaomi-ai-asd-type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 503
    return-void
.end method

.method public disableBokeh(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 491
    const-string/jumbo v0, "xiaomi-mi-bokeh-type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 492
    return-void
.end method

.method public enableAiAsd(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 498
    const-string/jumbo v0, "xiaomi-ai-asd-type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 499
    return-void
.end method

.method public enableBokeh(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 487
    const-string/jumbo v0, "xiaomi-mi-bokeh-type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;I)V

    .line 488
    return-void
.end method

.method public enableRaw(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 626
    return-void
.end method

.method public getMaxExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 687
    const/4 v0, 0x0

    return v0
.end method

.method public getMinExposureTimeValue(Landroid/hardware/Camera$Parameters;)I
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 683
    const/4 v0, 0x0

    return v0
.end method

.method public getNormalFlashModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 548
    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getRotation(Landroid/hardware/Camera$Parameters;)I
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 471
    const-string/jumbo v1, "rotation"

    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "rotation":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 473
    const/4 v1, -0x1

    return v1

    .line 475
    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public getStillBeautify(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 390
    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFocusModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedIsoValues(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 467
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getSupportedPreviewSizes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 6
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 310
    .local v1, "listOld":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v0, "listNew":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v1, :cond_1

    .line 312
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 313
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    sget v5, Lcom/android/camera/Util;->sWindowHeight:I

    if-gt v4, v5, :cond_0

    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    if-gt v4, v5, :cond_0

    .line 314
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    .end local v3    # "size$iterator":Ljava/util/Iterator;
    :cond_1
    return-object v0
.end method

.method public getSupportedSceneModes(Landroid/hardware/Camera$Parameters;)Ljava/util/List;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 552
    if-nez p1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeWatermark(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 406
    const-string/jumbo v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVideoHighFrameRate(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 459
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method public getWBCurrentCCT(Landroid/hardware/Camera;)I
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 526
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 527
    .local v2, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->getWBCurrentCCT(Landroid/hardware/Camera$Parameters;)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, "cctStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 529
    .local v0, "cct":I
    if-eqz v1, :cond_0

    .line 530
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 532
    :cond_0
    return v0
.end method

.method public isFocusSuccessful(Landroid/hardware/Camera;)Z
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 150
    const/4 v0, 0x1

    return v0
.end method

.method public isFrontMirror(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public isNeedFlashOn(Landroid/hardware/Camera;)Z
    .locals 7
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 155
    const/4 v5, 0x1

    :try_start_0
    new-array v2, v5, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    .line 156
    .local v2, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v5, "getFlashOn"

    const-string/jumbo v6, "()I"

    invoke-static {v2, v5, v6}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v1

    .line 157
    .local v1, "method":Lmiui/reflect/Method;
    if-eqz v1, :cond_1

    .line 158
    const/4 v5, 0x0

    aget-object v5, v2, v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v1, v5, p1, v6}, Lmiui/reflect/Method;->invokeInt(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 160
    .end local v1    # "method":Lmiui/reflect/Method;
    .end local v2    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v3, "CameraHardwareProxy"

    const-string/jumbo v5, "isNeedFlashOn IllegalArgumentException"

    invoke-static {v3, v5}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    return v4
.end method

.method public isPreviewEnabled(Landroid/hardware/Camera;)Z
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public isZSLMode(Landroid/hardware/Camera$Parameters;)Z
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public openCamera(I)Landroid/hardware/Camera;
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 130
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyzeAgeGender(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 588
    const-string/jumbo v1, "xiaomi-face-age-gender-analyze"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    return-void

    .line 588
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method public setAutoHdrEnabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 4
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 677
    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    .line 678
    .local v0, "value":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "CameraHardwareProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set mi-auto-hdr "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const-string/jumbo v1, "mi-auto-hdr"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    return-void

    .line 677
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "off"

    .restart local v0    # "value":Ljava/lang/String;
    goto :goto_0
.end method

.method public setBeautifyEnlargeEye(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 378
    const-string/jumbo v0, "CameraHardwareProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBeautifyEnlargeEye: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    const-string/jumbo v0, "xiaomi-beauty-enlarge-eye"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    const-string/jumbo v0, "xiaomi-beauty-enlarge-eye-ratio"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBeautifySkinColor(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 342
    const-string/jumbo v0, "CameraHardwareProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBeautifySkinColor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    const-string/jumbo v0, "xiaomi-beauty-skin-color"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    const-string/jumbo v0, "xiaomi-beauty-skin-color-ratio"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBeautifySkinSmooth(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 366
    const-string/jumbo v0, "CameraHardwareProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBeautifySkinSmooth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    const-string/jumbo v0, "xiaomi-beauty-skin-smooth"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :goto_0
    return-void

    .line 370
    :cond_0
    const-string/jumbo v0, "xiaomi-beauty-skin-smooth-ratio"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBeautifySlimFace(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 354
    const-string/jumbo v0, "CameraHardwareProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBeautifySlimFace: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    invoke-static {}, Lcom/android/camera/Device;->isLegacyFaceBeauty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string/jumbo v0, "xiaomi-beauty-slim-face"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :goto_0
    return-void

    .line 358
    :cond_0
    const-string/jumbo v0, "xiaomi-beauty-slim-face-ratio"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBeautifyVersion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 335
    const-string/jumbo v0, "xiaomi-beauty-algo-version"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-void
.end method

.method public setBeautyRank(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 584
    const-string/jumbo v1, "xiaomi-face-beauty-rank"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    return-void

    .line 584
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method public setBurstShotSpeed(Landroid/hardware/Camera;I)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "speed"    # I

    .prologue
    .line 203
    return-void
.end method

.method public setContinuousShotCallback(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "callback"    # Lcom/android/camera/hardware/CameraHardwareProxy$ContinuousShotCallback;

    .prologue
    .line 212
    return-void
.end method

.method public setDualCameraWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 422
    const-string/jumbo v0, "xiaomi-dualcam-watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    return-void
.end method

.method public setFaceWatermark(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 595
    const-string/jumbo v1, "xiaomi-face-watermark"

    if-eqz p2, :cond_0

    const-string/jumbo v0, "on"

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string/jumbo v1, "watermark_age"

    if-eqz p2, :cond_1

    const-string/jumbo v0, "on"

    :goto_1
    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    return-void

    .line 595
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0

    .line 597
    :cond_1
    const-string/jumbo v0, "off"

    goto :goto_1
.end method

.method public setFocusAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 6
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "focusAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v5, 0x0

    .line 426
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 427
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 428
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 429
    const-string/jumbo v2, "CameraHardwareProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setFocusAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 431
    return-void

    .line 435
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 436
    return-void
.end method

.method public setFocusMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 556
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public setHDR(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "hdr"    # Ljava/lang/String;

    .prologue
    .line 483
    const-string/jumbo v0, "mi-hdr"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    return-void
.end method

.method public setLongshotMode(Landroid/hardware/Camera;Z)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "enable"    # Z

    .prologue
    .line 147
    return-void
.end method

.method public setMetadataCb(Landroid/hardware/Camera;Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V
    .locals 9
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cb"    # Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;

    .prologue
    .line 174
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedMetadata()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, "callbackProxy":Ljava/lang/Object;
    if-eqz p2, :cond_0

    .line 178
    :try_start_0
    const-string/jumbo v6, "android.hardware.Camera$CameraMetaDataCallback"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 179
    .local v0, "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    .line 180
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    new-instance v8, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;

    invoke-direct {v8, p2}, Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallbackProxy;-><init>(Lcom/android/camera/hardware/CameraHardwareProxy$CameraMetaDataCallback;)V

    .line 179
    invoke-static {v6, v7, v8}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    .line 182
    .end local v0    # "callbackClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "callbackProxy":Ljava/lang/Object;
    :cond_0
    const/4 v6, 0x1

    new-array v5, v6, [Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getClass()Ljava/lang/Class;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 183
    .local v5, "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string/jumbo v6, "setMetadataCb"

    .line 184
    const-string/jumbo v7, "(Landroid/hardware/Camera$CameraMetaDataCallback;)V"

    .line 183
    invoke-static {v5, v6, v7}, Lcom/android/camera/Util;->getMethod([Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v4

    .line 185
    .local v4, "method":Lmiui/reflect/Method;
    if-eqz v4, :cond_1

    .line 186
    const/4 v6, 0x0

    aget-object v6, v5, v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v4, v6, p1, v7}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    .end local v4    # "method":Lmiui/reflect/Method;
    .end local v5    # "ownerClazz":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v2

    .line 191
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    const-string/jumbo v6, "CameraHardwareProxy"

    const-string/jumbo v7, "ClassNotFoundException"

    invoke-static {v6, v7, v2}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 188
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v3

    .line 189
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v6, "CameraHardwareProxy"

    const-string/jumbo v7, "IllegalArgumentException"

    invoke-static {v6, v7, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMeteringAreas(Landroid/hardware/Camera$Parameters;Ljava/util/List;)V
    .locals 6
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Area;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    const/4 v5, 0x0

    .line 439
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 440
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Area;

    .line 441
    .local v0, "i":Landroid/hardware/Camera$Area;
    iget-object v2, p0, Lcom/android/camera/hardware/CameraHardwareProxy;->mHalCoordinate:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 442
    const-string/jumbo v2, "CameraHardwareProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMeteringAreas fail :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/hardware/Camera$Area;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 444
    return-void

    .line 448
    .end local v0    # "i":Landroid/hardware/Camera$Area;
    .end local v1    # "i$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 449
    return-void
.end method

.method public setMultiFaceBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 455
    const-string/jumbo v0, "xiaomi-multi-face-beautify"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    return-void
.end method

.method public setNightAntiMotion(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 522
    const-string/jumbo v0, "night-anti-motion"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method public setNightShot(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 512
    const-string/jumbo v0, "night-shot"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public setOIS(Landroid/hardware/Camera$Parameters;Z)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Z

    .prologue
    .line 563
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera;Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 135
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 143
    :cond_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    .line 137
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->dump()V

    .line 138
    throw v0
.end method

.method public setSREnabled(Landroid/hardware/Camera$Parameters;Z)V
    .locals 2
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "enable"    # Z

    .prologue
    .line 691
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    .line 692
    .local v0, "v":Ljava/lang/String;
    const-string/jumbo v1, "xiaomi-super-resolution"

    invoke-virtual {p1, v1, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    return-void
.end method

.method public setStereoDataCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 620
    return-void
.end method

.method public setStereoWarningCallback(Landroid/hardware/Camera;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mCamera"    # Landroid/hardware/Camera;
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 623
    return-void
.end method

.method public setStillBeautify(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string/jumbo v0, "xiaomi-still-beautify-values"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    return-void
.end method

.method public setTimeWatermark(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 397
    const-string/jumbo v0, "xiaomi-time-watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    const-string/jumbo v0, "watermark"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    return-void
.end method

.method public setTimeWatermarkValue(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 1
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 413
    const-string/jumbo v0, "xiaomi-time-watermark-value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string/jumbo v0, "watermark_value"

    invoke-virtual {p1, v0, p2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method

.method public setWhiteBalance(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 616
    invoke-virtual {p1, p2}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method public setZSLMode(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 0
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;
    .param p2, "zsl"    # Ljava/lang/String;

    .prologue
    .line 569
    return-void
.end method

.method protected splitSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "parameter"    # Landroid/hardware/Camera$Parameters;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/Camera$Parameters;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 639
    if-nez p2, :cond_0

    return-object v6

    .line 641
    :cond_0
    new-instance v4, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v5, 0x2c

    invoke-direct {v4, v5}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 642
    .local v4, "splitter":Landroid/text/TextUtils$StringSplitter;
    invoke-interface {v4, p2}, Landroid/text/TextUtils$StringSplitter;->setString(Ljava/lang/String;)V

    .line 643
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 644
    .local v3, "sizeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "s$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 645
    .local v0, "s":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lcom/android/camera/hardware/CameraHardwareProxy;->strToSize(Landroid/hardware/Camera$Parameters;Ljava/lang/String;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 646
    .local v2, "size":Landroid/hardware/Camera$Size;
    if-eqz v2, :cond_1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 648
    .end local v0    # "s":Ljava/lang/String;
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    return-object v6

    .line 649
    :cond_3
    return-object v3
.end method

.method public startObjectTrack(Landroid/hardware/Camera;IIII)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 220
    return-void
.end method

.method public stopObjectTrack(Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "camera"    # Landroid/hardware/Camera;

    .prologue
    .line 224
    return-void
.end method
