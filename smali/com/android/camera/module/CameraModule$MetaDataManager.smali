.class public Lcom/android/camera/module/CameraModule$MetaDataManager;
.super Ljava/lang/Object;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MetaDataManager"
.end annotation


# instance fields
.field private mCurrentScene:I

.field private mLastScene:I

.field private mLatestState:I

.field private mLatestTimes:I

.field private mMetaType:I

.field private mSceneShieldMask:I

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method static synthetic -get0(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/CameraModule$MetaDataManager;

    .prologue
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/camera/module/CameraModule$MetaDataManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/CameraModule$MetaDataManager;

    .prologue
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/module/CameraModule$MetaDataManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/camera/module/CameraModule$MetaDataManager;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/module/CameraModule;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 5771
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5764
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5765
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5766
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    .line 5767
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    .line 5768
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 5769
    iput v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    .line 5773
    return-void
.end method

.method private applyScene(I)V
    .locals 8
    .param p1, "scene"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x6

    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 6063
    const-string/jumbo v1, "CameraMetaDataManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "applyScene "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6065
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 6066
    const/16 v2, 0xac

    .line 6065
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6067
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    packed-switch p1, :pswitch_data_0

    .line 6120
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6069
    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6070
    invoke-interface {v0, v4, v4, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(IZZ)V

    goto :goto_0

    .line 6074
    :pswitch_2
    const-string/jumbo v1, "CameraMetaDataManager"

    const-string/jumbo v2, "applyScene SCENE_HDR"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6075
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6076
    :cond_1
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 6077
    invoke-interface {v0, v4, v4, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto :goto_0

    .line 6082
    :pswitch_3
    const-string/jumbo v1, "CameraMetaDataManager"

    const-string/jumbo v2, "applyScene SCENE_NIGHT"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6083
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isBackCamera()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHHT()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6084
    :cond_2
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1, v7}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    .line 6085
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->updateSuperResolution()V

    goto :goto_0

    .line 6089
    :pswitch_4
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1, v7}, Lcom/android/camera/MutexModeManager;->setMutexMode(I)V

    goto :goto_0

    .line 6092
    :pswitch_5
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6093
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    .line 6094
    const v2, 0x7f0f0232

    .line 6093
    invoke-virtual {v1, v6, v2, v5}, Lcom/android/camera/module/CameraModule;->updateTipMessage(III)V

    goto :goto_0

    .line 6099
    :pswitch_6
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6100
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    .line 6101
    const v2, 0x7f0f0233

    .line 6100
    invoke-virtual {v1, v6, v2, v5}, Lcom/android/camera/module/CameraModule;->updateTipMessage(III)V

    goto :goto_0

    .line 6106
    :pswitch_7
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6107
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    .line 6108
    const v2, 0x7f0f0231

    .line 6107
    invoke-virtual {v1, v6, v2, v5}, Lcom/android/camera/module/CameraModule;->updateTipMessage(III)V

    goto/16 :goto_0

    .line 6113
    :pswitch_8
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6114
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1, v4}, Lcom/android/camera/module/CameraModule;->-wrap28(Lcom/android/camera/module/CameraModule;I)V

    goto/16 :goto_0

    .line 6067
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method private detectASDScene(I)I
    .locals 7
    .param p1, "sceneResult"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 5926
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_0

    .line 5927
    return v5

    .line 5930
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr p1, v0

    .line 5932
    const-string/jumbo v0, "CameraMetaDataManager"

    const-string/jumbo v1, "sceneResult:%x"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 5934
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdFlash(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5935
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5934
    if-eqz v0, :cond_1

    .line 5936
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_1

    .line 5937
    return v4

    .line 5938
    :cond_1
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->inMandatoryMode()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5939
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5940
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getZoom()I

    move-result v0

    if-nez v0, :cond_2

    .line 5941
    const-string/jumbo v0, "torch"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 5939
    if-eqz v0, :cond_2

    .line 5942
    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_2

    .line 5944
    return v6

    .line 5945
    :cond_2
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->isCurrentCameraNeedAsdNight(Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5946
    and-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_3

    .line 5947
    const/4 v0, 0x2

    return v0

    .line 5948
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTeleAsdNight()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5949
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    .line 5948
    if-eqz v0, :cond_5

    .line 5950
    :cond_4
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_5

    .line 5951
    const/16 v0, 0x8

    return v0

    .line 5952
    :cond_5
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdMotion(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5953
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    .line 5952
    if-eqz v0, :cond_7

    .line 5954
    :cond_6
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5952
    if-eqz v0, :cond_7

    .line 5955
    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_7

    .line 5958
    const/4 v0, 0x3

    return v0

    .line 5961
    :cond_7
    return v5
.end method

.method private detectRTBScene(I)I
    .locals 5
    .param p1, "sceneResult"    # I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, -0x1

    .line 5965
    invoke-static {}, Lcom/android/camera/CameraSettings;->isSupportedPortrait()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedUDCFPortrait()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5966
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isPortraitModeOn()Z

    move-result v4

    .line 5965
    if-eqz v4, :cond_8

    .line 5967
    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v4}, Lcom/android/camera/module/CameraModule;->-wrap3(Lcom/android/camera/module/CameraModule;)Z

    move-result v0

    .line 5968
    .local v0, "isHintTextShown":Z
    const/4 v4, 0x2

    if-ne p1, v4, :cond_2

    .line 5969
    if-eqz v0, :cond_1

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    .line 5970
    :cond_2
    const/4 v4, 0x3

    if-ne p1, v4, :cond_4

    .line 5971
    if-eqz v0, :cond_3

    :goto_1
    return v1

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    .line 5972
    :cond_4
    if-ne p1, v2, :cond_6

    .line 5973
    if-eqz v0, :cond_5

    :goto_2
    return v1

    :cond_5
    move v1, v3

    goto :goto_2

    .line 5974
    :cond_6
    if-ne p1, v3, :cond_7

    .line 5975
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    return v1

    .line 5977
    :cond_7
    const/4 v1, 0x7

    return v1

    .line 5979
    .end local v0    # "isHintTextShown":Z
    :cond_8
    return v1
.end method

.method private filterScene(I)V
    .locals 1
    .param p1, "currentDetect"    # I

    .prologue
    .line 5892
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setScene(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5893
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    .line 5894
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5895
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->applyScene(I)V

    .line 5897
    :cond_0
    return-void
.end method

.method private isBackCameraNeedAsdNight()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 5909
    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdNight(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5910
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5911
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v1

    .line 5909
    if-eqz v1, :cond_1

    .line 5912
    :cond_0
    const-string/jumbo v1, "off"

    iget-object v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v2, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5913
    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdFlash(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5914
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5909
    :cond_1
    :goto_0
    return v0

    .line 5912
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCurrentCameraNeedAsdNight(Z)Z
    .locals 1
    .param p1, "isFrontCamera"    # Z

    .prologue
    .line 5900
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->isFrontCameraNeedAsdNight()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->isBackCameraNeedAsdNight()Z

    move-result v0

    goto :goto_0
.end method

.method private isFrontCameraNeedAsdNight()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 5921
    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdNight(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5922
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v1}, Lcom/android/camera/MutexModeManager;->isNormal()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v0

    .line 5921
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private printMetaData([B)V
    .locals 10
    .param p1, "data"    # [B

    .prologue
    const/16 v9, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 5848
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 5849
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 5850
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "%02x"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p1, v0

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5849
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5852
    :cond_0
    const-string/jumbo v2, "  data[8]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5853
    array-length v2, p1

    if-le v2, v9, :cond_1

    .line 5854
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v3, "%02x"

    new-array v4, v7, [Ljava/lang/Object;

    aget-byte v5, p1, v9

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5853
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5856
    const-string/jumbo v2, "length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5857
    const-string/jumbo v2, "  mSceneShieldMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02x"

    new-array v5, v7, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5858
    const-string/jumbo v2, "  result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v4, "%02x"

    new-array v5, v7, [Ljava/lang/Object;

    aget-byte v6, p1, v9

    iget v7, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    and-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5859
    const-string/jumbo v2, "CameraMetaDataManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCameraMetaData buffer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5860
    return-void

    .line 5855
    :cond_1
    const-string/jumbo v2, "not exist"

    goto :goto_1
.end method

.method private resetSceneMode()V
    .locals 1

    .prologue
    .line 5835
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->currentIsMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->isCreated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5836
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->restoreScene(I)V

    .line 5839
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneData()V

    .line 5840
    return-void
.end method

.method private restoreScene(I)V
    .locals 9
    .param p1, "scene"    # I

    .prologue
    const/16 v8, 0xac

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 6002
    const-string/jumbo v3, "CameraMetaDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreScene "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6004
    packed-switch p1, :pswitch_data_0

    .line 6060
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 6006
    :pswitch_1
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdPopupEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6007
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 6009
    .local v0, "flashValue":Ljava/lang/String;
    const-string/jumbo v3, "torch"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6010
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 6009
    if-eqz v3, :cond_0

    .line 6012
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6014
    .local v2, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-interface {v2, v7, v6, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertFlash(IZZ)V

    goto :goto_0

    .line 6019
    .end local v0    # "flashValue":Ljava/lang/String;
    .end local v2    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :pswitch_2
    const-string/jumbo v3, "CameraMetaDataManager"

    const-string/jumbo v4, "restore SCENE_HDR"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6020
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isMorphoHdr()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSceneHdr()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6021
    :cond_1
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    .line 6023
    :cond_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget v4, v4, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    .line 6025
    .local v1, "hdrValue":Ljava/lang/String;
    const-string/jumbo v3, "on"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6026
    const-string/jumbo v3, "normal"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 6025
    if-eqz v3, :cond_0

    .line 6028
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 6030
    .restart local v2    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-interface {v2, v7, v6, v6}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertHDR(IZZ)V

    goto/16 :goto_0

    .line 6035
    .end local v1    # "hdrValue":Ljava/lang/String;
    .end local v2    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :pswitch_3
    const-string/jumbo v3, "CameraMetaDataManager"

    const-string/jumbo v4, "restore SCENE_NIGHT"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6036
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isSuperResolution()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6037
    :cond_3
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_0

    .line 6041
    :pswitch_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->isHandNight()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6042
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v3, v3, Lcom/android/camera/module/CameraModule;->mMutexModePicker:Lcom/android/camera/MutexModeManager;

    invoke-virtual {v3}, Lcom/android/camera/MutexModeManager;->resetMutexMode()V

    goto/16 :goto_0

    .line 6048
    :pswitch_5
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6049
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3, v6}, Lcom/android/camera/module/CameraModule;->hideTipMessage(I)V

    goto/16 :goto_0

    .line 6053
    :pswitch_6
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3}, Lcom/android/camera/module/CameraModule;->-get0(Lcom/android/camera/module/CameraModule;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6054
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v3, v7}, Lcom/android/camera/module/CameraModule;->-wrap28(Lcom/android/camera/module/CameraModule;I)V

    goto/16 :goto_0

    .line 6004
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_3
    .end packed-switch
.end method

.method private setScene(I)Z
    .locals 5
    .param p1, "scene"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    .line 5983
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 5984
    const-string/jumbo v0, "CameraMetaDataManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setScene "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mLatestState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5985
    const-string/jumbo v2, " mLatestTimes="

    .line 5984
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5985
    iget v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    .line 5984
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5985
    const-string/jumbo v2, " mCurrentScene="

    .line 5984
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 5985
    iget v2, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5984
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5987
    :cond_0
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    if-eq v0, p1, :cond_2

    .line 5988
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    .line 5989
    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    .line 5998
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 5990
    :cond_2
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    if-ge v0, v4, :cond_1

    .line 5991
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    .line 5992
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    if-ne v4, v0, :cond_1

    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    if-eq v0, v1, :cond_1

    .line 5993
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5994
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5995
    return v3
.end method


# virtual methods
.method public reset()V
    .locals 0

    .prologue
    .line 5843
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetFilter()V

    .line 5844
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    .line 5845
    return-void
.end method

.method public resetFilter()V
    .locals 1

    .prologue
    .line 5827
    const-string/jumbo v0, "pref_camera_flashmode_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5828
    const-string/jumbo v0, "pref_camera_hdr_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5829
    const-string/jumbo v0, "pref_camera_asd_night_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5830
    const-string/jumbo v0, "pref_camera_asd_motion_key"

    invoke-virtual {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->setAsdDetectMask(Ljava/lang/String;)V

    .line 5831
    return-void
.end method

.method public resetSceneData()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 5884
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLastScene:I

    .line 5885
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    .line 5886
    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestState:I

    .line 5887
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mLatestTimes:I

    .line 5888
    return-void
.end method

.method public setAsdDetectMask(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 5783
    const/4 v1, 0x0

    .line 5784
    .local v1, "mask":I
    const/4 v2, -0x1

    .line 5785
    .local v2, "scene":I
    const/4 v0, 0x0

    .line 5786
    .local v0, "enable":Z
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    invoke-static {v3}, Lcom/android/camera/Device;->isSupportedAsdFlash(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "pref_camera_flashmode_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5787
    const/4 v1, 0x1

    .line 5788
    const/4 v2, 0x0

    .line 5789
    const-string/jumbo v3, "auto"

    .line 5790
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 5789
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 5812
    .end local v0    # "enable":Z
    :cond_0
    :goto_0
    const-string/jumbo v3, "CameraMetaDataManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setAsdDetectMask "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5813
    if-eqz v1, :cond_1

    .line 5814
    if-eqz v0, :cond_6

    .line 5815
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 5824
    :cond_1
    :goto_1
    return-void

    .line 5791
    .restart local v0    # "enable":Z
    :cond_2
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    invoke-static {v3}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "pref_camera_hdr_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5792
    const/16 v1, 0x10

    .line 5793
    const/4 v2, 0x1

    .line 5794
    const-string/jumbo v3, "auto"

    .line 5795
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    iget-object v5, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget v5, v5, Lcom/android/camera/module/CameraModule;->mModuleIndex:I

    invoke-virtual {v4, v5}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 5794
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .local v0, "enable":Z
    goto :goto_0

    .line 5796
    .local v0, "enable":Z
    :cond_3
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTeleAsdNight()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "pref_camera_asd_night_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5797
    const/16 v1, 0xc0

    .line 5799
    const/16 v2, 0x8

    .line 5800
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightEnable()Z

    move-result v0

    .local v0, "enable":Z
    goto :goto_0

    .line 5801
    .local v0, "enable":Z
    :cond_4
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    invoke-static {v3}, Lcom/android/camera/Device;->isSupportedAsdNight(Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5802
    const-string/jumbo v3, "pref_camera_asd_night_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5801
    if-eqz v3, :cond_5

    .line 5803
    const/16 v1, 0x40

    .line 5804
    const/4 v2, 0x2

    .line 5805
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdNightEnable()Z

    move-result v0

    .local v0, "enable":Z
    goto/16 :goto_0

    .line 5806
    .local v0, "enable":Z
    :cond_5
    iget-object v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3}, Lcom/android/camera/module/CameraModule;->isFrontCamera()Z

    move-result v3

    invoke-static {v3}, Lcom/android/camera/Device;->isSupportedAsdMotion(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5807
    const-string/jumbo v3, "pref_camera_asd_motion_key"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 5806
    if-eqz v3, :cond_0

    .line 5808
    const/16 v1, 0x20

    .line 5809
    const/4 v2, 0x3

    .line 5810
    invoke-static {}, Lcom/android/camera/CameraSettings;->isAsdMotionEnable()Z

    move-result v0

    .local v0, "enable":Z
    goto/16 :goto_0

    .line 5817
    .end local v0    # "enable":Z
    :cond_6
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    not-int v4, v1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mSceneShieldMask:I

    .line 5819
    iget v3, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mCurrentScene:I

    if-ne v2, v3, :cond_1

    .line 5820
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->resetSceneMode()V

    goto/16 :goto_1
.end method

.method public setData([B)V
    .locals 5
    .param p1, "data"    # [B

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x5

    .line 5863
    sget-boolean v1, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v1, :cond_0

    .line 5864
    invoke-direct {p0, p1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->printMetaData([B)V

    .line 5866
    :cond_0
    array-length v1, p1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 5867
    return-void

    .line 5869
    :cond_1
    const/4 v0, -0x1

    .line 5870
    .local v0, "currentDetect":I
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    if-ne v1, v3, :cond_3

    const/4 v1, 0x0

    aget-byte v1, p1, v1

    if-ne v1, v3, :cond_3

    .line 5871
    aget-byte v1, p1, v4

    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->detectRTBScene(I)I

    move-result v0

    .line 5872
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->filterScene(I)V

    .line 5881
    :cond_2
    :goto_0
    return-void

    .line 5873
    :cond_3
    iget v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5874
    aget-byte v1, p1, v4

    invoke-direct {p0, v1}, Lcom/android/camera/module/CameraModule$MetaDataManager;->detectASDScene(I)I

    move-result v0

    .line 5875
    invoke-direct {p0, v0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->filterScene(I)V

    .line 5877
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get2(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->isAiSceneEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v1, v1, Lcom/android/camera/module/CameraModule;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v1, :cond_2

    .line 5878
    iget-object v1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v1}, Lcom/android/camera/module/CameraModule;->-get2(Lcom/android/camera/module/CameraModule;)Lio/reactivex/FlowableEmitter;

    move-result-object v1

    invoke-interface {v1, p1}, Lio/reactivex/FlowableEmitter;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 5776
    iget v0, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    if-eq v0, p1, :cond_0

    .line 5777
    invoke-virtual {p0}, Lcom/android/camera/module/CameraModule$MetaDataManager;->reset()V

    .line 5779
    :cond_0
    iput p1, p0, Lcom/android/camera/module/CameraModule$MetaDataManager;->mMetaType:I

    .line 5780
    return-void
.end method
