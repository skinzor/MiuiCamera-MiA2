.class public Lcom/android/camera/module/VideoModule$StereoSwitchThread;
.super Ljava/lang/Thread;
.source "VideoModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/VideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StereoSwitchThread"
.end annotation


# instance fields
.field private volatile mCancelled:Z

.field final synthetic this$0:Lcom/android/camera/module/VideoModule;


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 3391
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    .line 3392
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3396
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->closeCamera()V

    .line 3397
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_0

    .line 3398
    return-void

    .line 3400
    :cond_0
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->openCamera()V

    .line 3402
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->hasCameraException()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3403
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraException()V

    .line 3404
    return-void

    .line 3406
    :cond_1
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_2

    .line 3407
    return-void

    .line 3410
    :cond_2
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetZoom()V

    .line 3411
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 3412
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->onCameraOpened()V

    .line 3413
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->readVideoPreferences()V

    .line 3414
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap8(Lcom/android/camera/module/VideoModule;)V

    .line 3415
    iget-boolean v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->mCancelled:Z

    if-eqz v0, :cond_3

    .line 3416
    return-void

    .line 3418
    :cond_3
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-virtual {v0}, Lcom/android/camera/module/VideoModule;->startPreview()V

    .line 3419
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    invoke-static {v0}, Lcom/android/camera/module/VideoModule;->-wrap6(Lcom/android/camera/module/VideoModule;)V

    .line 3420
    iget-object v0, p0, Lcom/android/camera/module/VideoModule$StereoSwitchThread;->this$0:Lcom/android/camera/module/VideoModule;

    iget-object v0, v0, Lcom/android/camera/module/VideoModule;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3421
    return-void
.end method
