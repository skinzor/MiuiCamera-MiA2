.class public Lcom/android/camera/module/UDCFPortraitModule;
.super Lcom/android/camera/camera_adapter/CameraQcom;
.source "UDCFPortraitModule.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
.implements Lcom/android/camera/protocol/ModeProtocol$PreviewChangedProtocol;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/module/UDCFPortraitModule$1;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAFCallbackTimes:I

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private mPrimaryFocused:Z

.field private mViceBackCamera:Landroid/hardware/Camera;

.field private mViceFocusStartTime:J

.field private mViceFocused:Z


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/UDCFPortraitModule;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;

    .prologue
    iget v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAFCallbackTimes:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/module/UDCFPortraitModule;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mPrimaryFocused:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/camera/module/UDCFPortraitModule;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;

    .prologue
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/module/UDCFPortraitModule;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;

    .prologue
    iget-wide v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocusStartTime:J

    return-wide v0
.end method

.method static synthetic -get5(Lcom/android/camera/module/UDCFPortraitModule;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocused:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/camera/module/UDCFPortraitModule;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAFCallbackTimes:I

    return p1
.end method

.method static synthetic -set1(Lcom/android/camera/module/UDCFPortraitModule;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mPrimaryFocused:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/camera/module/UDCFPortraitModule;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/UDCFPortraitModule;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocused:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/camera/module/UDCFPortraitModule;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/camera/camera_adapter/CameraQcom;-><init>()V

    .line 36
    new-instance v0, Lcom/android/camera/module/UDCFPortraitModule$1;

    invoke-direct {v0, p0}, Lcom/android/camera/module/UDCFPortraitModule$1;-><init>(Lcom/android/camera/module/UDCFPortraitModule;)V

    iput-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 25
    return-void
.end method

.method private closeBokeh()V
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeBokeh mParameters -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->stopPreview()V

    .line 103
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeBokeh done"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void
.end method

.method private openBackViceCamera()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 80
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getNumberOfCameras()I

    move-result v0

    .line 81
    .local v0, "count":I
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraDataContainer;->getAuxBackCameraId()I

    move-result v2

    .line 82
    .local v2, "viceBack":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_1

    .line 83
    :cond_0
    const/4 v3, 0x0

    return-object v3

    .line 85
    :cond_1
    invoke-static {}, Lcom/android/camera/hardware/CameraHardwareProxy;->getDeviceProxy()Lcom/android/camera/hardware/CameraHardwareProxy;

    move-result-object v1

    .line 86
    .local v1, "proxy":Lcom/android/camera/hardware/CameraHardwareProxy;
    invoke-virtual {v1, v2}, Lcom/android/camera/hardware/CameraHardwareProxy;->openCamera(I)Landroid/hardware/Camera;

    move-result-object v3

    return-object v3
.end method

.method private setSlaveParameters()V
    .locals 3

    .prologue
    .line 168
    sget-object v1, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setSlaveParameters"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    iget v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mCameraDisplayOrientation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 170
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 171
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 172
    const-string/jumbo v1, "dual-camera-mode"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const-string/jumbo v1, "dual-camera-id"

    const-string/jumbo v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const-string/jumbo v1, "dual-camera-main-camera"

    const-string/jumbo v2, "false"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string/jumbo v1, "zsl"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, v0}, Lcom/android/camera/module/UDCFPortraitModule;->setVicePreviewSize(Landroid/hardware/Camera$Parameters;)V

    .line 178
    invoke-direct {p0, v0}, Lcom/android/camera/module/UDCFPortraitModule;->setVicePictureSize(Landroid/hardware/Camera$Parameters;)V

    .line 179
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 180
    return-void
.end method

.method private setVicePictureSize(Landroid/hardware/Camera$Parameters;)V
    .locals 12
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 188
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v5

    .line 189
    .local v5, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-direct {p0, v5}, Lcom/android/camera/module/UDCFPortraitModule;->sortDescently(Ljava/util/List;)V

    .line 191
    iget-object v7, p0, Lcom/android/camera/module/UDCFPortraitModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v7}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 192
    .local v1, "primarySize":Landroid/hardware/Camera$Size;
    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float v6, v7, v8

    .line 193
    .local v6, "targetRatio":F
    iget v7, v1, Landroid/hardware/Camera$Size;->width:I

    iget v8, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    int-to-float v0, v7

    .line 194
    .local v0, "limit":F
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "size$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 195
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    int-to-float v7, v7

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 196
    .local v2, "ratio":F
    sub-float v7, v2, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v8, v7

    const-wide v10, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v7, v8, v10

    if-gtz v7, :cond_0

    .line 197
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v7, v8

    int-to-float v7, v7

    cmpg-float v7, v7, v0

    if-gtz v7, :cond_0

    .line 198
    sget-object v7, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "vice camera desired picture size "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "x"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget v7, v3, Landroid/hardware/Camera$Size;->width:I

    iget v8, v3, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1, v7, v8}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 203
    .end local v2    # "ratio":F
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    return-void
.end method

.method private setVicePreviewSize(Landroid/hardware/Camera$Parameters;)V
    .locals 2
    .param p1, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 184
    const/16 v0, 0x280

    const/16 v1, 0x1e0

    invoke-virtual {p1, v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 185
    return-void
.end method

.method private sortDescently(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v0, Lcom/android/camera/module/UDCFPortraitModule$2;

    invoke-direct {v0, p0}, Lcom/android/camera/module/UDCFPortraitModule$2;-><init>(Lcom/android/camera/module/UDCFPortraitModule;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 212
    return-void
.end method

.method private takeVicePicture()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 233
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_1

    .line 234
    invoke-static {}, Lcom/android/camera/Device;->isUDCFPortraitNeedRotation()Z

    move-result v1

    if-nez v1, :cond_0

    .line 235
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 236
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v0, :cond_0

    .line 237
    iget v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mJpegRotation:I

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRotation(I)V

    .line 238
    sget-object v1, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set vice camera rotation -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/module/UDCFPortraitModule;->mJpegRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 242
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    new-instance v2, Lcom/android/camera/module/UDCFPortraitModule$3;

    invoke-direct {v2, p0}, Lcom/android/camera/module/UDCFPortraitModule$3;-><init>(Lcom/android/camera/module/UDCFPortraitModule;)V

    invoke-virtual {v1, v4, v4, v2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 249
    :cond_1
    return-void
.end method


# virtual methods
.method public autoFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 253
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-nez v0, :cond_0

    .line 254
    return-void

    .line 256
    :cond_0
    iput v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAFCallbackTimes:I

    .line 257
    iput-boolean v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mPrimaryFocused:Z

    .line 258
    iput-boolean v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocused:Z

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceFocusStartTime:J

    .line 260
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mFocusStartTime:J

    .line 261
    iget-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mFirstTimeInitialized:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mFocusAreaSupported:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mSwitchingCamera:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 262
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 263
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V

    .line 266
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/module/UDCFPortraitModule;->setCameraState(I)V

    .line 268
    :cond_2
    return-void
.end method

.method public cancelAutoFocus()V
    .locals 1

    .prologue
    .line 272
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->cancelAutoFocus()V

    .line 273
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 274
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->cancelAutoFocus()V

    .line 276
    :cond_0
    return-void
.end method

.method public capture()Z
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->capture()Z

    move-result v0

    .line 226
    .local v0, "superRetrun":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->takeVicePicture()V

    .line 229
    :cond_0
    return v0
.end method

.method public closeCamera()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->closeCamera()V

    .line 131
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 133
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 134
    iput-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    .line 136
    :cond_0
    return-void
.end method

.method public doLaterRelease()V
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->closeBokeh()V

    .line 111
    :cond_0
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->doLaterRelease()V

    .line 112
    return-void
.end method

.method public onCameraSwitched()V
    .locals 3

    .prologue
    .line 116
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onCameraSwitched"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->openBackViceCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    .line 121
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCameraSwitched, vice back ->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_0
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->onCameraSwitched()V

    .line 125
    return-void
.end method

.method public onCreate(II)V
    .locals 3
    .param p1, "moduleIndex"    # I
    .param p2, "cameraId"    # I

    .prologue
    .line 70
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCreate moduleIndex -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", cameraId -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",camera device -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->openBackViceCamera()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    .line 73
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "back vince camera -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1, p2}, Lcom/android/camera/camera_adapter/CameraQcom;->onCreate(II)V

    .line 77
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->shouldReleaseLater()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->closeBokeh()V

    .line 97
    :cond_0
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->onPause()V

    .line 98
    return-void
.end method

.method public setCameraParameters(I)V
    .locals 3
    .param p1, "updateSet"    # I

    .prologue
    .line 156
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParameters updateSet -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    invoke-super {p0, p1}, Lcom/android/camera/camera_adapter/CameraQcom;->setCameraParameters(I)V

    .line 158
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "dual-camera-mode"

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "dual-camera-id"

    const-string/jumbo v2, "2"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mParameters:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "dual-camera-main-camera"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 165
    :cond_0
    return-void
.end method

.method public startPreview()V
    .locals 3

    .prologue
    .line 140
    sget-object v1, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startPreview"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->startPreview()V

    .line 143
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/android/camera/module/UDCFPortraitModule;->setSlaveParameters()V

    .line 146
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/android/camera/module/UDCFPortraitModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/CameraScreenNail;->getUDCFExtraSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 152
    :cond_0
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "failed to set preview display for vice back"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPreview()V
    .locals 2

    .prologue
    .line 216
    sget-object v0, Lcom/android/camera/module/UDCFPortraitModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/module/UDCFPortraitModule;->isBackCamera()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/camera/module/UDCFPortraitModule;->mViceBackCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 220
    :cond_0
    invoke-super {p0}, Lcom/android/camera/camera_adapter/CameraQcom;->stopPreview()V

    .line 221
    return-void
.end method
