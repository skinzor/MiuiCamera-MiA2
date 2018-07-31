.class Lcom/android/camera/SensorStateManager$4;
.super Ljava/lang/Object;
.source "SensorStateManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SensorStateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private finalFilter:[F

.field private firstFilter:[F

.field final synthetic this$0:Lcom/android/camera/SensorStateManager;


# direct methods
.method constructor <init>(Lcom/android/camera/SensorStateManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    const/4 v1, 0x3

    .line 1
    iput-object p1, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 485
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    .line 486
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    .line 1
    return-void
.end method

.method private clearFilter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 537
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 538
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    aput v2, v1, v0

    .line 539
    iget-object v1, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    aput v2, v1, v0

    .line 537
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 541
    :cond_0
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 545
    const-string/jumbo v0, "SensorStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAccuracyChanged accuracy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 490
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 492
    :cond_0
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get5(Lcom/android/camera/SensorStateManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-wrap0(Lcom/android/camera/SensorStateManager;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 493
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    iget-wide v8, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v10, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    iget-object v11, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v10, v11}, Lcom/android/camera/SensorStateManager;->-wrap1(Lcom/android/camera/SensorStateManager;[F)[F

    move-result-object v10

    invoke-static {v7, v8, v9, v10}, Lcom/android/camera/SensorStateManager;->-wrap7(Lcom/android/camera/SensorStateManager;J[F)V

    .line 498
    :cond_1
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    const v10, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 499
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const v10, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x1

    aput v8, v7, v9

    .line 500
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    const v9, 0x3f4ccccd    # 0.8f

    mul-float/2addr v8, v9

    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    const v10, 0x3e4ccccc    # 0.19999999f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aput v8, v7, v9

    .line 501
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v9, 0x0

    aget v8, v8, v9

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x0

    aput v8, v7, v9

    .line 502
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x1

    aput v8, v7, v9

    .line 503
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v9, 0x2

    aget v8, v8, v9

    const v9, 0x3f333333    # 0.7f

    mul-float/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->firstFilter:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const/4 v9, 0x2

    aput v8, v7, v9

    .line 504
    const-string/jumbo v7, "SensorStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "finalFilter="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 505
    const-string/jumbo v9, " event.values="

    .line 504
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 505
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    .line 504
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 505
    const-string/jumbo v9, " "

    .line 504
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 505
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x1

    aget v9, v9, v10

    .line 504
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 505
    const-string/jumbo v9, " "

    .line 504
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 505
    iget-object v9, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v10, 0x2

    aget v9, v9, v10

    .line 504
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/high16 v6, -0x40800000    # -1.0f

    .line 509
    .local v6, "orientation":F
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    neg-float v1, v7

    .line 510
    .local v1, "X":F
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    neg-float v2, v7

    .line 511
    .local v2, "Y":F
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->finalFilter:[F

    const/4 v8, 0x2

    aget v7, v7, v8

    neg-float v3, v7

    .line 512
    .local v3, "Z":F
    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float v5, v7, v8

    .line 514
    .local v5, "magnitude":F
    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v5

    mul-float v8, v3, v3

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_2

    .line 515
    const v0, 0x42652ee1

    .line 516
    .local v0, "OneEightyOverPi":F
    neg-float v7, v2

    float-to-double v8, v7

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    double-to-float v7, v8

    .line 515
    const v8, 0x42652ee1

    .line 516
    mul-float v4, v7, v8

    .line 517
    .local v4, "angle":F
    const/high16 v7, 0x42b40000    # 90.0f

    sub-float v6, v7, v4

    .line 519
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7, v6}, Lcom/android/camera/SensorStateManager;->-wrap2(Lcom/android/camera/SensorStateManager;F)F

    move-result v6

    .line 522
    .end local v0    # "OneEightyOverPi":F
    .end local v4    # "angle":F
    :cond_2
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v7

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_4

    .line 523
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v7

    sub-float/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v7, v7, v8

    if-lez v7, :cond_3

    .line 524
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager$4;->clearFilter()V

    .line 526
    :cond_3
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7, v6}, Lcom/android/camera/SensorStateManager;->-set5(Lcom/android/camera/SensorStateManager;F)F

    .line 527
    const-string/jumbo v7, "SensorStateManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "SensorEventListenerImpl TYPE_ACCELEROMETER mOrientation="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 528
    const-string/jumbo v9, " mIsLying="

    .line 527
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 528
    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    .line 527
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 531
    iget-object v7, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v7}, Lcom/android/camera/SensorStateManager;->-get9(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;

    move-result-object v7

    iget-object v8, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v8}, Lcom/android/camera/SensorStateManager;->-get8(Lcom/android/camera/SensorStateManager;)F

    move-result v8

    iget-object v9, p0, Lcom/android/camera/SensorStateManager$4;->this$0:Lcom/android/camera/SensorStateManager;

    invoke-static {v9}, Lcom/android/camera/SensorStateManager;->-get7(Lcom/android/camera/SensorStateManager;)Z

    move-result v9

    invoke-interface {v7, v8, v9}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceOrientationChanged(FZ)V

    .line 534
    :cond_4
    return-void
.end method
