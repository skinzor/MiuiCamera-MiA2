.class final Lcom/android/camera/module/CameraModule$ShutterCallback;
.super Ljava/lang/Object;
.source "CameraModule.java"

# interfaces
.implements Landroid/hardware/Camera$ShutterCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ShutterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method private constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/module/CameraModule;Lcom/android/camera/module/CameraModule$ShutterCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "-this1"    # Lcom/android/camera/module/CameraModule$ShutterCallback;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$ShutterCallback;-><init>(Lcom/android/camera/module/CameraModule;)V

    return-void
.end method


# virtual methods
.method public onShutter()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1129
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/camera/module/CameraModule;->-set16(Lcom/android/camera/module/CameraModule;J)J

    .line 1130
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get23(Lcom/android/camera/module/CameraModule;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v4, v1, Lcom/android/camera/module/CameraModule;->mCaptureStartTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    .line 1131
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShutterLag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-wide v2, v2, Lcom/android/camera/module/CameraModule;->mShutterLag:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1134
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->enableFakeThumbnail()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1135
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestReadPixels"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->requestReadPixels()V

    .line 1143
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0, v6, v6}, Lcom/android/camera/module/CameraModule;->-wrap36(Lcom/android/camera/module/CameraModule;ZZ)V

    .line 1144
    return-void

    .line 1138
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$ShutterCallback;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-wrap10(Lcom/android/camera/module/CameraModule;)V

    goto :goto_0
.end method
