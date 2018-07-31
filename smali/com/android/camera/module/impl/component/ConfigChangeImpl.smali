.class public Lcom/android/camera/module/impl/component/ConfigChangeImpl;
.super Ljava/lang/Object;
.source "ConfigChangeImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mLastAiSceneStateOn:Z

.field private mRecordingMutexElements:[I


# direct methods
.method static synthetic -wrap0(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1
    .param p1, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    .line 68
    iput-object p1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 69
    return-void
.end method

.method private applyConfig(II)V
    .locals 1
    .param p1, "selectedItem"    # I
    .param p2, "checkType"    # I

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->isAlive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 213
    :goto_0
    :pswitch_0
    return-void

    .line 134
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showSetting()V

    goto :goto_0

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showFilter()V

    goto :goto_0

    .line 142
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTimerSwitch()V

    goto :goto_0

    .line 146
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configSoundSwitch(I)V

    goto :goto_0

    .line 150
    :pswitch_5
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configTiltSwitch(I)V

    goto :goto_0

    .line 154
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGradienterSwitch(I)V

    goto :goto_0

    .line 158
    :pswitch_7
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configHHTSwitch(I)V

    goto :goto_0

    .line 162
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicFocusSwitch()V

    goto :goto_0

    .line 166
    :pswitch_9
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGroupSwitch(I)V

    goto :goto_0

    .line 170
    :pswitch_a
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configScene(I)V

    goto :goto_0

    .line 174
    :pswitch_b
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoSlow()V

    goto :goto_0

    .line 178
    :pswitch_c
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configVideoFast()V

    goto :goto_0

    .line 182
    :pswitch_d
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configMagicMirrorSwitch(I)V

    goto :goto_0

    .line 186
    :pswitch_e
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configRawSwitch()V

    goto :goto_0

    .line 190
    :pswitch_f
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configPortraitSwitch(I)V

    goto :goto_0

    .line 194
    :pswitch_10
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configGenderAgeSwitch(I)V

    goto :goto_0

    .line 198
    :pswitch_11
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configFocusPeakSwitch(I)V

    goto :goto_0

    .line 202
    :pswitch_12
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configDualWaterMarkSwitch()V

    goto :goto_0

    .line 206
    :pswitch_13
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configBeautySwitch(I)V

    goto :goto_0

    .line 210
    :pswitch_14
    invoke-virtual {p0, p2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->configAiSceneSwitch(I)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0xc3
        :pswitch_f
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_11
        :pswitch_0
        :pswitch_14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_b
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method private conflictWithFlashAndHdrAndBeauty()Z
    .locals 5

    .prologue
    .line 975
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 976
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    const/4 v1, 0x0

    .line 977
    .local v1, "isChanged":Z
    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 978
    const-string/jumbo v3, "pref_camera_groupshot_mode_key"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 979
    const/4 v1, 0x1

    .line 981
    :cond_0
    if-eqz v1, :cond_1

    .line 983
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    .line 984
    const/16 v4, 0xaf

    .line 983
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 985
    .local v2, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    .line 987
    .end local v2    # "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    :cond_1
    return v1
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/ConfigChangeImpl;
    .locals 1
    .param p0, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 64
    new-instance v0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private getState(ILjava/lang/String;)Z
    .locals 1
    .param p1, "checkType"    # I
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 886
    packed-switch p1, :pswitch_data_0

    .line 888
    :pswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 891
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 894
    :pswitch_2
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x0

    return v0

    .line 886
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private hideTipMessage(I)V
    .locals 3
    .param p1, "tokenResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 1030
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1031
    .local v0, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    if-lez p1, :cond_0

    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->containTips(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1032
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->directlyHideTips()V

    .line 1034
    :cond_1
    return-void
.end method

.method private isAlive()Z
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reConfigSRIfFlashChanged()Z
    .locals 5

    .prologue
    .line 1006
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 1007
    .local v3, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 1008
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 1009
    .local v1, "currentMode":I
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 1010
    .local v0, "currentFlashValue":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1011
    const-string/jumbo v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1010
    if-eqz v4, :cond_1

    .line 1012
    :cond_0
    const-string/jumbo v4, "pref_camera_super_resolution_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 1013
    const/4 v4, 0x0

    return v4

    .line 1015
    :cond_1
    const-string/jumbo v4, "pref_camera_super_resolution_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 1016
    const/4 v4, 0x1

    return v4
.end method

.method private reConfigSRIfHDRChanged()Z
    .locals 5

    .prologue
    .line 991
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v3

    .line 992
    .local v3, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 993
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 994
    .local v1, "currentMode":I
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 995
    .local v0, "currentHdrValue":Ljava/lang/String;
    const-string/jumbo v4, "off"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 996
    const-string/jumbo v4, "auto"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 995
    if-eqz v4, :cond_1

    .line 997
    :cond_0
    const-string/jumbo v4, "pref_camera_super_resolution_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 998
    const/4 v4, 0x0

    return v4

    .line 1000
    :cond_1
    const-string/jumbo v4, "pref_camera_super_resolution_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 1001
    const/4 v4, 0x1

    return v4
.end method

.method private showTips(I)V
    .locals 7
    .param p1, "fromSupportedConfigFactory"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 1175
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xaf

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1177
    .local v2, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa0

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 1178
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1179
    invoke-static {}, Lcom/android/camera/effect/BeautyParameters;->getInstance()Lcom/android/camera/effect/BeautyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/effect/BeautyParameters;->isFaceBeautyOn()Z

    move-result v3

    .line 1178
    if-eqz v3, :cond_2

    .line 1179
    if-eqz v0, :cond_2

    .line 1180
    const v3, 0x7f0a00ed

    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v3

    const/16 v4, 0xfb

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 1181
    .local v1, "isFrontBeautyOpened":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 1182
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->reInitTipImage()V

    .line 1183
    invoke-interface {v0, v5}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 1185
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 1197
    :goto_1
    return-void

    .line 1180
    .end local v1    # "isFrontBeautyOpened":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "isFrontBeautyOpened":Z
    goto :goto_0

    .line 1178
    .end local v1    # "isFrontBeautyOpened":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "isFrontBeautyOpened":Z
    goto :goto_0

    .line 1188
    :sswitch_0
    if-eqz v1, :cond_3

    const v3, 0x7f0f0275

    .line 1187
    :goto_2
    invoke-interface {v2, v6, v3, v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    goto :goto_1

    .line 1188
    :cond_3
    const v3, 0x7f0f0276

    goto :goto_2

    .line 1193
    :sswitch_1
    const v3, 0x7f0f0277

    invoke-interface {v2, v6, v3, v5}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    goto :goto_1

    .line 1185
    :sswitch_data_0
    .sparse-switch
        0xe6 -> :sswitch_1
        0xeb -> :sswitch_0
    .end sparse-switch
.end method

.method private trackBeautyChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1127
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1128
    return-void

    .line 1130
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1131
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1132
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    const-string/jumbo v3, "\u524d\u540e\u6444"

    .line 1134
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1135
    const-string/jumbo v2, "\u524d\u6444"

    .line 1133
    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    const-string/jumbo v2, "\u7f8e\u989c"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "beauty_changed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1138
    return-void

    .line 1135
    :cond_1
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "on"    # Z
    .param p4, "trackCameraMode"    # Z
    .param p5, "trackCameraId"    # Z

    .prologue
    .line 1103
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1104
    return-void

    .line 1106
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1107
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p4, :cond_1

    .line 1108
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1109
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    .end local v0    # "mode":I
    :cond_1
    if-eqz p5, :cond_2

    .line 1112
    const-string/jumbo v3, "\u524d\u540e\u6444"

    .line 1113
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1114
    const-string/jumbo v2, "\u524d\u6444"

    .line 1112
    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    :cond_2
    if-eqz p3, :cond_4

    const-string/jumbo v2, "on"

    :goto_1
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const-string/jumbo v2, "counter"

    invoke-static {v2, p1, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1118
    return-void

    .line 1114
    :cond_3
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0

    .line 1116
    :cond_4
    const-string/jumbo v2, "off"

    goto :goto_1
.end method

.method private trackDualWaterMarkChanged(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1121
    const-string/jumbo v1, "settings"

    .line 1122
    const-string/jumbo v2, "pref_dualcamera_watermark"

    .line 1123
    if-eqz p1, :cond_0

    const-string/jumbo v0, "on"

    .line 1121
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    return-void

    .line 1123
    :cond_0
    const-string/jumbo v0, "off"

    goto :goto_0
.end method

.method private trackFocusPeakChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 1097
    const-string/jumbo v1, "manual_focus_peak_changed"

    .line 1098
    const-string/jumbo v2, "\u5cf0\u503c\u5bf9\u7126"

    move-object v0, p0

    move v3, p1

    move v5, v4

    .line 1097
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1099
    return-void
.end method

.method private trackGenderAgeChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 1087
    const-string/jumbo v1, "gender_age_changed"

    .line 1088
    const-string/jumbo v2, "\u5e74\u9f84\u68c0\u6d4b"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 1087
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1089
    return-void
.end method

.method private trackGotoSettings()V
    .locals 2

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    .line 243
    .local v0, "module":Lcom/android/camera/module/BaseModule;
    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->trackGotoSettings()V

    .line 246
    :cond_0
    return-void
.end method

.method private trackGradienterChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 1073
    const-string/jumbo v1, "gradienter_changed"

    .line 1074
    const-string/jumbo v2, "\u6c34\u5e73\u4eea"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    .line 1073
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1075
    return-void
.end method

.method private trackGroupChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 1078
    const-string/jumbo v1, "group_shot_changed"

    .line 1079
    const-string/jumbo v2, "\u5408\u5f71\u4f18\u9009"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 1078
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1080
    return-void
.end method

.method private trackHHTChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 1083
    const-string/jumbo v1, "hht_changed"

    const-string/jumbo v2, "HHT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1084
    return-void
.end method

.method private trackMagicMirrorChanged(Z)V
    .locals 6
    .param p1, "on"    # Z

    .prologue
    .line 1092
    const-string/jumbo v1, "magic_mirror_changed"

    .line 1093
    const-string/jumbo v2, "\u9b54\u955c"

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v3, p1

    .line 1092
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackConfigChange(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 1094
    return-void
.end method

.method private trackTiltShiftChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1061
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1062
    return-void

    .line 1064
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1065
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1066
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1067
    const-string/jumbo v2, "\u79fb\u8f74"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1069
    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "tiltshift_changed"

    .line 1068
    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1070
    return-void
.end method

.method private trackTimerChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1047
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1048
    return-void

    .line 1050
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1051
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1052
    .local v0, "mode":I
    const-string/jumbo v2, "\u6a21\u5f0f"

    invoke-static {v0}, Lcom/android/camera/CameraStatUtil;->modeIdToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    const-string/jumbo v3, "\u524d\u540e\u6444"

    .line 1054
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1055
    const-string/jumbo v2, "\u524d\u6444"

    .line 1053
    :goto_0
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1056
    const-string/jumbo v2, "\u5012\u8ba1\u65f6"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1057
    const-string/jumbo v2, "counter"

    const-string/jumbo v3, "timer_changed"

    invoke-static {v2, v3, v1}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1058
    return-void

    .line 1055
    :cond_1
    const-string/jumbo v2, "\u540e\u6444"

    goto :goto_0
.end method

.method private trackVideoModeChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "videoMode"    # Ljava/lang/String;

    .prologue
    .line 1037
    invoke-static {}, Lcom/android/camera/CameraStat;->isCounterEventDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    return-void

    .line 1040
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1041
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "\u6a21\u5f0f"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1043
    const-string/jumbo v1, "counter"

    const-string/jumbo v2, "video_mode_changed"

    .line 1042
    invoke-static {v1, v2, v0}, Lcom/android/camera/CameraStat;->recordCountEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1044
    return-void
.end method

.method private updateAiScene(Z)V
    .locals 5
    .param p1, "close"    # Z

    .prologue
    .line 753
    iget-boolean v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    if-nez v2, :cond_0

    .line 754
    return-void

    .line 756
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v0

    .line 757
    .local v0, "isSwitchOn":Z
    xor-int/lit8 v2, p1, 0x1

    if-ne v0, v2, :cond_1

    .line 758
    return-void

    .line 760
    :cond_1
    xor-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    .line 762
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 763
    .local v1, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v2, 0x1

    new-array v2, v2, [I

    const/16 v3, 0xc9

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-interface {v1, v2}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 764
    return-void
.end method

.method private updateBeauty(Z)V
    .locals 3
    .param p1, "close"    # Z

    .prologue
    .line 726
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 727
    .local v1, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 728
    .local v0, "currentMode":I
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 729
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_1

    .line 730
    :cond_0
    return-void

    .line 733
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 734
    return-void
.end method

.method private updateBokeh(Z)V
    .locals 7
    .param p1, "close"    # Z

    .prologue
    .line 737
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 738
    .local v1, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 740
    .local v0, "currentMode":I
    if-eqz p1, :cond_0

    const-string/jumbo v2, "off"

    .line 741
    .local v2, "setValue":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 742
    return-void

    .line 740
    .end local v2    # "setValue":Ljava/lang/String;
    :cond_0
    const-string/jumbo v2, "on"

    .restart local v2    # "setValue":Ljava/lang/String;
    goto :goto_0

    .line 744
    :cond_1
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentBokeh()Lcom/android/camera/data/data/config/ComponentConfigBokeh;

    move-result-object v5

    if-eqz p1, :cond_2

    const-string/jumbo v4, "off"

    :goto_1
    invoke-virtual {v5, v0, v4}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->setComponentValue(ILjava/lang/String;)V

    .line 747
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 748
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc8

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 749
    return-void

    .line 744
    .end local v3    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_2
    const-string/jumbo v4, "on"

    goto :goto_1
.end method

.method private updateComponentFilter(Z)V
    .locals 7
    .param p1, "close"    # Z

    .prologue
    .line 950
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentConfigFilter()Lcom/android/camera/data/data/config/ComponentConfigFilter;

    move-result-object v0

    .line 951
    .local v0, "configFilter":Lcom/android/camera/data/data/config/ComponentConfigFilter;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 952
    .local v1, "currentMode":I
    invoke-virtual {v0, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigFilter;->setClosed(ZI)V

    .line 955
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 956
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc4

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 959
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa2

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 960
    .local v2, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->isShowFilter()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 961
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    .line 963
    :cond_0
    return-void
.end method

.method private updateComponentFlash(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "close"    # Z

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 908
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 909
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 910
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 912
    .local v1, "currentMode":I
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 913
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->isClosed(I)Z

    move-result v4

    if-ne v4, p2, :cond_1

    .line 914
    :cond_0
    return-void

    .line 918
    :cond_1
    if-eqz p2, :cond_2

    .line 919
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "torch"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 918
    if-eqz v4, :cond_2

    .line 920
    const-string/jumbo v4, "d"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 918
    if-eqz v4, :cond_2

    .line 922
    return-void

    .line 925
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentFlash()Lcom/android/camera/data/data/config/ComponentConfigFlash;

    move-result-object v4

    invoke-virtual {v4, p2, v1}, Lcom/android/camera/data/data/config/ComponentConfigFlash;->setClosed(ZI)V

    .line 926
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v5, 0xc1

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 927
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    .line 928
    return-void
.end method

.method private updateComponentFlash(Z)V
    .locals 1
    .param p1, "close"    # Z

    .prologue
    .line 900
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    .line 901
    return-void
.end method

.method private updateComponentHdr(Z)Z
    .locals 9
    .param p1, "close"    # Z

    .prologue
    const/16 v8, 0xc2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 931
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 932
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 933
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xac

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 934
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v1

    .line 936
    .local v1, "currentMode":I
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 937
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v4

    if-ne v4, p1, :cond_1

    .line 938
    :cond_0
    return v6

    .line 940
    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValueWithOutClose(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "off"

    if-eq v4, v5, :cond_2

    .line 941
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 943
    :cond_2
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentHdr()Lcom/android/camera/data/data/config/ComponentConfigHdr;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 944
    new-array v4, v7, [I

    aput v8, v4, v6

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 945
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 946
    return v7
.end method

.method private updateSuperResolutionStatus(Z)V
    .locals 2
    .param p1, "isOpen"    # Z

    .prologue
    .line 966
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 967
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    if-eqz p1, :cond_0

    .line 968
    const-string/jumbo v1, "pref_camera_super_resolution_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 972
    :goto_0
    return-void

    .line 970
    :cond_0
    const-string/jumbo v1, "pref_camera_super_resolution_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateTipMessage(III)V
    .locals 3
    .param p1, "tipType"    # I
    .param p2, "stringResId"    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param
    .param p3, "duration"    # I

    .prologue
    .line 1024
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xaf

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;

    .line 1025
    .local v0, "tips":Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;
    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/protocol/ModeProtocol$BottomPopupTips;->showTips(III)V

    .line 1026
    return-void
.end method


# virtual methods
.method public varargs closeMutexElement(Ljava/lang/String;[I)V
    .locals 3
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "items"    # [I

    .prologue
    const/4 v2, 0x1

    .line 774
    iput-object p2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    .line 775
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 776
    aget v1, p2, v0

    sparse-switch v1, :sswitch_data_0

    .line 797
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unknown mutex element"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 778
    :sswitch_0
    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    .line 775
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 781
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_1

    .line 784
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    goto :goto_1

    .line 787
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateBeauty(Z)V

    goto :goto_1

    .line 790
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    goto :goto_1

    .line 793
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateBokeh(Z)V

    goto :goto_1

    .line 800
    :cond_0
    return-void

    .line 776
    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xc4 -> :sswitch_2
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_4
        0xef -> :sswitch_3
    .end sparse-switch
.end method

.method public configAiSceneSwitch(I)V
    .locals 10
    .param p1, "checkType"    # I

    .prologue
    const/16 v9, 0xc9

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 842
    invoke-static {}, Lcom/android/camera/CameraSettings;->getAiSceneOpen()Z

    move-result v2

    .line 843
    .local v2, "switchOn":Z
    sget-object v4, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "configAiSceneSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    xor-int/lit8 v6, v2, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 845
    const/16 v5, 0xac

    .line 844
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 846
    .local v3, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    packed-switch p1, :pswitch_data_0

    .line 881
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 882
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateAIASDPreference()V

    .line 883
    return-void

    .line 850
    .end local v0    # "baseModule":Lcom/android/camera/module/BaseModule;
    :pswitch_1
    if-nez v2, :cond_1

    .line 851
    iput-boolean v8, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    .line 852
    invoke-interface {v3, v7}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSwitchHint(I)V

    .line 853
    invoke-static {v8}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    .line 854
    const-string/jumbo v4, "settings"

    .line 855
    const-string/jumbo v5, "pref_camera_ai_scene_mode_key"

    const-string/jumbo v6, "on"

    .line 854
    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :goto_1
    new-array v4, v8, [I

    aput v9, v4, v7

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    .line 865
    invoke-static {}, Lcom/android/camera/CameraSettings;->isGroupShotOn()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 867
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 868
    const/16 v5, 0xa4

    .line 867
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;

    .line 869
    .local v1, "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    const/4 v4, 0x4

    invoke-interface {v1, v4}, Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;->configGroupSwitch(I)V

    .line 870
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    goto :goto_0

    .line 857
    .end local v1    # "configChanges":Lcom/android/camera/protocol/ModeProtocol$ConfigChanges;
    :cond_1
    iput-boolean v7, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mLastAiSceneStateOn:Z

    .line 858
    const/16 v4, 0x8

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->alertAiSceneSwitchHint(I)V

    .line 859
    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    .line 860
    const-string/jumbo v4, "settings"

    .line 861
    const-string/jumbo v5, "pref_camera_ai_scene_mode_key"

    const-string/jumbo v6, "off"

    .line 860
    invoke-static {v4, v5, v6}, Lcom/android/camera/CameraStat;->recordStringPropertyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 874
    :pswitch_2
    invoke-static {v7}, Lcom/android/camera/CameraSettings;->setAiSceneOpen(Z)V

    .line 875
    new-array v4, v8, [I

    aput v9, v4, v7

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateConfigItem([I)V

    goto :goto_0

    .line 846
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public configBeautySwitch(I)V
    .locals 9
    .param p1, "checkType"    # I

    .prologue
    const/16 v8, 0xef

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 695
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa3

    if-eq v4, v5, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getModuleIndex()I

    move-result v4

    const/16 v5, 0xa5

    if-eq v4, v5, :cond_0

    .line 697
    return-void

    .line 699
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/CameraModule;

    .line 700
    .local v1, "cameraModule":Lcom/android/camera/module/CameraModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v2

    .line 701
    .local v2, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v0

    .line 702
    .local v0, "beautyConfig":Lcom/android/camera/data/data/config/ComponentConfigBeauty;
    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getNextValue(I)Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "nextValue":Ljava/lang/String;
    if-ne v7, p1, :cond_1

    .line 704
    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v4

    invoke-virtual {v0, v4, v3}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setComponentValue(ILjava/lang/String;)V

    .line 705
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackBeautyChanged(Ljava/lang/String;)V

    .line 708
    :cond_1
    sget-object v4, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->BEAUTY_CLOSE:Ljava/lang/String;

    .line 709
    invoke-virtual {v1}, Lcom/android/camera/module/CameraModule;->getModuleIndex()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->getComponentValue(I)Ljava/lang/String;

    move-result-object v5

    .line 708
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 710
    invoke-virtual {v2, v8}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 711
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    .line 712
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 723
    :cond_2
    :goto_0
    return-void

    .line 714
    :cond_3
    invoke-virtual {v2}, Lcom/android/camera/data/data/config/DataItemConfig;->getLastSelect()I

    move-result v4

    if-ne v4, v8, :cond_4

    .line 715
    invoke-virtual {v2, v6}, Lcom/android/camera/data/data/config/DataItemConfig;->setLastSelect(I)V

    .line 717
    :cond_4
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 718
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfFlashChanged()Z

    move-result v4

    if-nez v4, :cond_2

    .line 719
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfHDRChanged()Z

    goto :goto_0
.end method

.method public configBokeh(Ljava/lang/String;)V
    .locals 1
    .param p1, "newConfig"    # Ljava/lang/String;

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 285
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateBokehPreference()V

    .line 286
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 287
    return-void
.end method

.method public configDualWaterMarkSwitch()V
    .locals 4

    .prologue
    .line 669
    invoke-static {}, Lcom/android/camera/CameraSettings;->isDualCameraWaterMarkOpen()Z

    move-result v1

    .line 670
    .local v1, "switchOn":Z
    xor-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackDualWaterMarkChanged(Z)V

    .line 672
    sget-boolean v2, Lcom/android/camera/Device;->IS_D5:Z

    if-eqz v2, :cond_0

    const v0, 0x7f0f027c

    .line 673
    .local v0, "hintResource":I
    :goto_0
    if-eqz v1, :cond_1

    .line 674
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 676
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    .line 685
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 686
    return-void

    .line 672
    .end local v0    # "hintResource":I
    :cond_0
    const v0, 0x7f0f027a

    .restart local v0    # "hintResource":I
    goto :goto_0

    .line 678
    :cond_1
    const/4 v2, 0x4

    .line 679
    const/4 v3, 0x2

    .line 678
    invoke-direct {p0, v2, v0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    .line 681
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->setDualCameraWaterMarkOpen(Z)V

    goto :goto_1
.end method

.method public configFlash(Ljava/lang/String;)V
    .locals 1
    .param p1, "newConfig"    # Ljava/lang/String;

    .prologue
    .line 267
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfFlashChanged()Z

    .line 268
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    .line 269
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 270
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateFlashPreference()V

    .line 271
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 272
    return-void
.end method

.method public configFocusPeakSwitch(I)V
    .locals 3
    .param p1, "checkType"    # I

    .prologue
    .line 655
    const-string/jumbo v1, "pref_camera_peak_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 656
    .local v0, "switchOn":Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 657
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackFocusPeakChanged(Z)V

    .line 660
    :cond_0
    if-nez v0, :cond_2

    .line 661
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    .line 665
    :cond_1
    :goto_0
    return-void

    .line 662
    :cond_2
    const-string/jumbo v1, "manual"

    invoke-static {}, Lcom/android/camera/CameraSettings;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 663
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawPeaking(Z)V

    goto :goto_0
.end method

.method public configGenderAgeSwitch(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    .line 630
    const-string/jumbo v4, "pref_camera_show_gender_age_key"

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v3

    .line 631
    .local v3, "switchOn":Z
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 632
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGenderAgeChanged(Z)V

    .line 636
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 637
    const/16 v5, 0xa6

    .line 636
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 638
    .local v1, "mainContentProtocol":Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    invoke-interface {v1, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowGenderAndAge(Z)V

    .line 640
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 642
    if-eqz v3, :cond_1

    .line 643
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 644
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v2, :cond_1

    .line 646
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0181

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 647
    .local v0, "age":Ljava/lang/String;
    const-string/jumbo v4, "xiaomi-face-watermark-format-string"

    invoke-virtual {v2, v4, v0}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 651
    .end local v0    # "age":Ljava/lang/String;
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_1
    return-void
.end method

.method public configGradienterSwitch(I)V
    .locals 2
    .param p1, "checkType"    # I

    .prologue
    .line 296
    const-string/jumbo v1, "pref_camera_gradienter_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 297
    .local v0, "switchOn":Z
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 298
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGradienterChanged(Z)V

    .line 300
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    check-cast v1, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v1, v0}, Lcom/android/camera/module/CameraModule;->onGradienterSwitched(Z)V

    .line 301
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/camera/effect/EffectController;->setDrawGradienter(Z)V

    .line 302
    return-void
.end method

.method public configGroupSwitch(I)V
    .locals 9
    .param p1, "checkType"    # I

    .prologue
    const v6, 0x7f0f0276

    .line 423
    const-string/jumbo v4, "pref_camera_groupshot_mode_key"

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v3

    .line 424
    .local v3, "switchOn":Z
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 425
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGroupChanged(Z)V

    .line 428
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/CameraModule;

    .line 429
    .local v0, "cameraModule":Lcom/android/camera/module/CameraModule;
    if-eqz v3, :cond_2

    .line 430
    const/4 v4, 0x4

    .line 431
    const/4 v5, 0x2

    .line 430
    invoke-direct {p0, v4, v6, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    .line 433
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->getGroupShotNum()I

    move-result v1

    .line 434
    .local v1, "maxImage":I
    invoke-virtual {v0, v1}, Lcom/android/camera/module/CameraModule;->initGroupShot(I)V

    .line 435
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateSuperResolutionStatus(Z)V

    .line 437
    const-string/jumbo v4, "b"

    .line 438
    const/16 v5, 0xc1

    .line 439
    const/16 v6, 0xc2

    .line 440
    const/16 v7, 0xc4

    .line 441
    const/16 v8, 0xc9

    .line 437
    filled-new-array {v5, v6, v7, v8}, [I

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->closeMutexElement(Ljava/lang/String;[I)V

    .line 443
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 444
    const/16 v5, 0xa2

    .line 443
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v2

    check-cast v2, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 445
    .local v2, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    if-eqz v2, :cond_1

    .line 446
    invoke-interface {v2}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->filterUiChange()V

    .line 457
    .end local v1    # "maxImage":I
    .end local v2    # "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->onSharedPreferenceChanged()V

    .line 458
    return-void

    .line 452
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 453
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfFlashChanged()Z

    move-result v4

    if-nez v4, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfHDRChanged()Z

    goto :goto_0
.end method

.method public configHHTSwitch(I)V
    .locals 5
    .param p1, "checkType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 306
    const-string/jumbo v2, "pref_camera_hand_night_key"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    .line 307
    .local v1, "switchOn":Z
    if-ne v3, p1, :cond_0

    .line 308
    invoke-direct {p0, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackHHTChanged(Z)V

    .line 311
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->getMutexModePicker()Lcom/android/camera/MutexModeManager;

    move-result-object v0

    .line 312
    .local v0, "mutexModeManager":Lcom/android/camera/MutexModeManager;
    if-eqz v1, :cond_1

    .line 313
    const/16 v2, 0xe6

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->showTips(I)V

    .line 314
    invoke-virtual {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentBeauty(Z)V

    .line 315
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 316
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 317
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/android/camera/MutexModeManager;->setMutexModeMandatory(I)V

    .line 327
    :goto_0
    return-void

    .line 319
    :cond_1
    const v2, 0x7f0f0277

    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 320
    invoke-virtual {v0}, Lcom/android/camera/MutexModeManager;->clearMandatoryFlag()V

    .line 321
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->resetMutexModeManually()V

    .line 322
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Z)V

    .line 323
    invoke-direct {p0, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_0
.end method

.method public configHdr(Ljava/lang/String;)V
    .locals 1
    .param p1, "newConfig"    # Ljava/lang/String;

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->reConfigSRIfHDRChanged()Z

    .line 277
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    .line 278
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 279
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->updateHDRPreference()V

    .line 280
    return-void
.end method

.method public configMagicFocusSwitch()V
    .locals 3

    .prologue
    .line 416
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 417
    const-string/jumbo v2, "pref_camera_ubifocus_key"

    .line 416
    invoke-virtual {v1, v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->triggerSwitchAndGet(Ljava/lang/String;)Z

    move-result v0

    .line 418
    .local v0, "switchOn":Z
    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    .line 419
    return-void
.end method

.method public configMagicMirrorSwitch(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    .line 593
    const-string/jumbo v4, "pref_camera_magic_mirror_key"

    invoke-direct {p0, p1, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v3

    .line 594
    .local v3, "switchOn":Z
    const/4 v4, 0x1

    if-ne v4, p1, :cond_0

    .line 595
    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackMagicMirrorChanged(Z)V

    .line 599
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 600
    const/16 v5, 0xa6

    .line 599
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;

    .line 601
    .local v0, "mainContentProtocol":Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$MainContentProtocol;->setShowMagicMirror(Z)V

    .line 603
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 605
    if-eqz v3, :cond_1

    .line 606
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 608
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f0182

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 609
    .local v2, "score":Ljava/lang/String;
    const-string/jumbo v4, "xiaomi-face-watermark-format-string"

    invoke-virtual {v1, v4, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/module/BaseModule;->getCameraDevice()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 612
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v2    # "score":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public configPortraitSwitch(I)V
    .locals 2
    .param p1, "checkType"    # I

    .prologue
    .line 623
    const-string/jumbo v1, "pref_camera_portrait_mode_key"

    invoke-direct {p0, p1, v1}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v0

    .line 625
    .local v0, "switchOn":Z
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 626
    return-void
.end method

.method public configRawSwitch()V
    .locals 2

    .prologue
    .line 617
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getGlobalRaw()Lcom/android/camera/data/data/global/ComponentGlobalRaw;

    move-result-object v0

    .line 619
    .local v0, "componentGlobalRaw":Lcom/android/camera/data/data/global/ComponentGlobalRaw;
    return-void
.end method

.method public configScene(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x2

    .line 463
    const-string/jumbo v2, "pref_camera_scenemode_setting_key"

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v1

    .line 465
    .local v1, "switchOn":Z
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 466
    const/16 v4, 0xb5

    .line 465
    invoke-virtual {v2, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;

    .line 468
    .local v0, "manuallyAdjust":Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;
    if-eqz v1, :cond_0

    .line 470
    new-instance v2, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;

    invoke-direct {v2, p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl$1;-><init>(Lcom/android/camera/module/impl/component/ConfigChangeImpl;)V

    .line 469
    invoke-interface {v0, v3, v5, v2}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    .line 489
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 490
    return-void

    .line 483
    :cond_0
    if-ne p1, v5, :cond_1

    move v2, v3

    .line 486
    :goto_1
    const/4 v4, 0x0

    .line 482
    invoke-interface {v0, v3, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$ManuallyAdjust;->setManuallyVisible(IILcom/android/camera/fragment/manually/ManuallyListener;)I

    goto :goto_0

    .line 485
    :cond_1
    const/4 v2, 0x3

    goto :goto_1
.end method

.method public configSoundSwitch(I)V
    .locals 7
    .param p1, "checkType"    # I

    .prologue
    .line 332
    const-string/jumbo v5, "pref_audio_capture"

    invoke-direct {p0, p1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getState(ILjava/lang/String;)Z

    move-result v4

    .line 333
    .local v4, "switchOn":Z
    if-eqz v4, :cond_0

    .line 334
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 335
    .local v2, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v1

    .line 336
    .local v1, "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->switchOff()V

    .line 339
    .end local v1    # "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    .end local v2    # "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/CameraModule;

    .line 340
    .local v0, "cameraModule":Lcom/android/camera/module/CameraModule;
    invoke-virtual {v0}, Lcom/android/camera/module/CameraModule;->handleDelayShutter()V

    .line 346
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v5

    .line 347
    const/16 v6, 0xa2

    .line 346
    invoke-virtual {v5, v6}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 348
    .local v3, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    .line 349
    return-void
.end method

.method public configTiltSwitch(I)V
    .locals 6
    .param p1, "checkType"    # I

    .prologue
    const/16 v5, 0xa0

    .line 353
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v3

    instance-of v3, v3, Lcom/android/camera/module/CameraModule;

    if-nez v3, :cond_0

    .line 355
    sget-object v3, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "error!!! only the camera module could switch the tilt"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return-void

    .line 358
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 359
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v1

    .line 360
    .local v1, "switchOn":Z
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTiltValue()Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;

    move-result-object v2

    .line 361
    .local v2, "tiltValue":Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;
    packed-switch p1, :pswitch_data_0

    .line 392
    .end local v1    # "switchOn":Z
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v3

    check-cast v3, Lcom/android/camera/module/CameraModule;

    invoke-virtual {v3, v1}, Lcom/android/camera/module/CameraModule;->onTiltShiftSwitched(Z)V

    .line 393
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/camera/effect/EffectController;->setDrawTilt(Z)V

    .line 394
    return-void

    .line 363
    .restart local v1    # "switchOn":Z
    :pswitch_1
    const/4 v1, 0x0

    .line 364
    .local v1, "switchOn":Z
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0

    .line 371
    .local v1, "switchOn":Z
    :pswitch_2
    if-nez v1, :cond_1

    .line 372
    const/4 v1, 0x1

    .line 373
    .local v1, "switchOn":Z
    const-string/jumbo v3, "circle"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 374
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 376
    const-string/jumbo v3, "circle"

    .line 375
    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    .line 378
    .local v1, "switchOn":Z
    :cond_1
    const-string/jumbo v3, "circle"

    .line 379
    invoke-virtual {v2, v5}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->getComponentValue(I)Ljava/lang/String;

    move-result-object v4

    .line 378
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 380
    const-string/jumbo v3, "parallel"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 382
    const-string/jumbo v3, "parallel"

    .line 381
    invoke-virtual {v2, v5, v3}, Lcom/android/camera/data/data/runing/ComponentRunningTiltValue;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    const-string/jumbo v3, "off"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTiltShiftChanged(Ljava/lang/String;)V

    .line 385
    const-string/jumbo v3, "pref_camera_tilt_shift_mode"

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 386
    const/4 v1, 0x0

    .local v1, "switchOn":Z
    goto :goto_0

    .line 361
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public configTimerSwitch()V
    .locals 6

    .prologue
    .line 398
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    .line 399
    .local v1, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    const-string/jumbo v4, "pref_audio_capture"

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 400
    const-string/jumbo v4, "pref_audio_capture"

    invoke-virtual {v1, v4}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 402
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    .line 403
    const/16 v5, 0xa2

    .line 402
    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 404
    .local v3, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->processingAudioCapture(Z)V

    .line 407
    .end local v3    # "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningTimer()Lcom/android/camera/data/data/runing/ComponentRunningTimer;

    move-result-object v0

    .line 408
    .local v0, "componentRunningTimer":Lcom/android/camera/data/data/runing/ComponentRunningTimer;
    invoke-virtual {v0}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->getNextValue()Ljava/lang/String;

    move-result-object v2

    .line 410
    .local v2, "nextValue":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackTimerChanged(Ljava/lang/String;)V

    .line 411
    const/16 v4, 0xa0

    invoke-virtual {v0, v4, v2}, Lcom/android/camera/data/data/runing/ComponentRunningTimer;->setComponentValue(ILjava/lang/String;)V

    .line 412
    return-void
.end method

.method public configVideoFast()V
    .locals 10

    .prologue
    const v9, 0x7f0f0278

    const/16 v8, 0xa2

    const/4 v7, 0x0

    const/16 v6, 0xa9

    const/4 v5, 0x1

    .line 494
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 495
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 497
    .local v1, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 499
    .local v2, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 500
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 501
    const-string/jumbo v3, "fast"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 504
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 508
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 510
    invoke-virtual {v0, v6}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 512
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 513
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 516
    const/4 v3, 0x4

    .line 517
    const/4 v4, 0x2

    .line 516
    invoke-direct {p0, v3, v9, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :goto_0
    move-object v3, v0

    .line 538
    check-cast v3, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    .line 540
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 541
    return-void

    .line 520
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 522
    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 523
    const-string/jumbo v3, "normal"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 524
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 528
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 530
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 533
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 534
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public configVideoSlow()V
    .locals 10

    .prologue
    const v9, 0x7f0f0279

    const/16 v8, 0xa2

    const/4 v7, 0x0

    const/16 v6, 0xa8

    const/4 v5, 0x1

    .line 545
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v0

    .line 546
    .local v0, "baseModule":Lcom/android/camera/module/BaseModule;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 547
    .local v1, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    .line 549
    .local v2, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 550
    invoke-virtual {v1, v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 551
    const-string/jumbo v3, "slow"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 553
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v6}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 557
    invoke-direct {p0, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 559
    invoke-virtual {v0, v6}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 561
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 562
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOn(Ljava/lang/String;)V

    .line 565
    const/4 v3, 0x4

    .line 566
    const/4 v4, 0x2

    .line 565
    invoke-direct {p0, v3, v9, v4}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateTipMessage(III)V

    :goto_0
    move-object v3, v0

    .line 586
    check-cast v3, Lcom/android/camera/module/VideoModule;

    invoke-virtual {v3, v5}, Lcom/android/camera/module/VideoModule;->setNeedRestartPreview(Z)V

    .line 588
    invoke-virtual {v0}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 589
    return-void

    .line 568
    :cond_0
    invoke-direct {p0, v9}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->hideTipMessage(I)V

    .line 570
    invoke-virtual {v1, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 571
    const-string/jumbo v3, "normal"

    invoke-direct {p0, v3}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackVideoModeChanged(Ljava/lang/String;)V

    .line 572
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-static {v8}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/camera/module/loader/StartControl;->setNeedReConfigureCamera(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ActivityBase;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 576
    invoke-direct {p0, v7}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    .line 579
    invoke-virtual {v0, v8}, Lcom/android/camera/module/BaseModule;->setModuleIndex(I)V

    .line 582
    const-string/jumbo v3, "pref_video_speed_fast_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    .line 583
    const-string/jumbo v3, "pref_video_speed_slow_key"

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/runing/DataItemRunning;->switchOff(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public conflictWithBeauty(Z)V
    .locals 4
    .param p1, "isOpen"    # Z

    .prologue
    .line 1145
    const/4 v0, 0x0

    .line 1146
    .local v0, "isChangeMutex":Z
    if-eqz p1, :cond_0

    .line 1147
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->conflictWithFlashAndHdrAndBeauty()Z

    move-result v0

    .line 1149
    .local v0, "isChangeMutex":Z
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xac

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 1150
    .local v1, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 1151
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->refreshExtraMenu()V

    .line 1154
    .end local v0    # "isChangeMutex":Z
    .end local v1    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_0
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1155
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 1157
    :cond_1
    return-void
.end method

.method public getBaseModule()Lcom/android/camera/module/BaseModule;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    check-cast v0, Lcom/android/camera/module/BaseModule;

    return-object v0
.end method

.method public onConfigChanged(I)V
    .locals 6
    .param p1, "selectedItem"    # I

    .prologue
    .line 93
    invoke-static {p1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->isMutexConfig(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 95
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget v1, v3, v2

    .line 96
    .local v1, "mutexItem":I
    if-ne v1, p1, :cond_1

    .line 95
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 100
    :cond_1
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 101
    const/4 v5, 0x3

    invoke-direct {p0, v1, v5}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    goto :goto_1

    .line 104
    .end local v1    # "mutexItem":I
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->onSharedPreferenceChanged()V

    .line 107
    .end local v0    # "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    :cond_3
    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    .line 108
    return-void
.end method

.method public reCheckMutexConfigs()V
    .locals 6

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->getBaseModule()Lcom/android/camera/module/BaseModule;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/module/BaseModule;->isCreated()Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    return-void

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v0

    .line 117
    .local v0, "dataItemRunning":Lcom/android/camera/data/data/runing/DataItemRunning;
    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget v1, v3, v2

    .line 118
    .local v1, "mutexItem":I
    invoke-static {v1}, Lcom/android/camera/data/data/config/SupportedConfigFactory;->getConfigKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/camera/data/data/runing/DataItemRunning;->isSwitchOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 119
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->applyConfig(II)V

    .line 125
    .end local v1    # "mutexItem":I
    :cond_1
    return-void

    .line 117
    .restart local v1    # "mutexItem":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public registerProtocol()V
    .locals 2

    .prologue
    .line 77
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 78
    return-void
.end method

.method public restoreAllMutexElement(Ljava/lang/String;)V
    .locals 4
    .param p1, "trigger"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 804
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    if-nez v1, :cond_0

    .line 805
    return-void

    .line 807
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 808
    iget-object v1, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    aget v1, v1, v0

    sparse-switch v1, :sswitch_data_0

    .line 828
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "unknown mutex element"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 810
    :sswitch_0
    invoke-direct {p0, v3, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFlash(Ljava/lang/String;Z)V

    .line 807
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :sswitch_1
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentHdr(Z)Z

    goto :goto_1

    .line 816
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateComponentFilter(Z)V

    goto :goto_1

    .line 819
    :sswitch_3
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateBeauty(Z)V

    goto :goto_1

    .line 822
    :sswitch_4
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateAiScene(Z)V

    goto :goto_1

    .line 825
    :sswitch_5
    invoke-direct {p0, v2}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->updateBokeh(Z)V

    goto :goto_1

    .line 831
    :cond_1
    iput-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mRecordingMutexElements:[I

    .line 832
    return-void

    .line 808
    :sswitch_data_0
    .sparse-switch
        0xc1 -> :sswitch_0
        0xc2 -> :sswitch_1
        0xc4 -> :sswitch_2
        0xc8 -> :sswitch_5
        0xc9 -> :sswitch_4
        0xef -> :sswitch_3
    .end sparse-switch
.end method

.method public showFilter()V
    .locals 4

    .prologue
    .line 251
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa0

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;

    .line 252
    .local v0, "baseDelegate":Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;
    if-nez v0, :cond_0

    .line 253
    return-void

    .line 256
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 257
    const/16 v3, 0xa2

    .line 256
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;

    .line 258
    .local v1, "processing":Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;->showOrHideFilter()V

    .line 260
    const v2, 0x7f0a00ed

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->getActiveFragment(I)I

    move-result v2

    const/16 v3, 0xfb

    if-ne v2, v3, :cond_1

    .line 261
    const/4 v2, 0x7

    invoke-interface {v0, v2}, Lcom/android/camera/protocol/ModeProtocol$BaseDelegate;->delegateEvent(I)V

    .line 263
    :cond_1
    return-void
.end method

.method public showSetting()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 218
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 219
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const-class v3, Lcom/android/camera/CameraPreferenceActivity;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 220
    const-string/jumbo v2, "from_where"

    .line 221
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v3

    .line 220
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getIntentType()I

    move-result v1

    .line 225
    .local v1, "intentType":I
    if-ne v1, v5, :cond_0

    .line 226
    const-string/jumbo v2, "IsCaptureIntent"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 229
    :cond_0
    const-string/jumbo v2, ":miui:starting_window_label"

    .line 230
    iget-object v3, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f003c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 229
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 232
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->startFromKeyguard()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 233
    const-string/jumbo v2, "StartActivityWhenLocked"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v2, v0}, Lcom/android/camera/ActivityBase;->startActivity(Landroid/content/Intent;)V

    .line 236
    iget-object v2, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/camera/ActivityBase;->setJumpFlag(I)V

    .line 238
    invoke-direct {p0}, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->trackGotoSettings()V

    .line 239
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .prologue
    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/ConfigChangeImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 83
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xa4

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 84
    return-void
.end method

.method public updateComponentBeauty(Z)V
    .locals 3
    .param p1, "close"    # Z

    .prologue
    .line 1164
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemConfig()Lcom/android/camera/data/data/config/DataItemConfig;

    move-result-object v1

    .line 1165
    .local v1, "dataItemConfig":Lcom/android/camera/data/data/config/DataItemConfig;
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentMode()I

    move-result v0

    .line 1167
    .local v0, "currentMode":I
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->isClosed(I)Z

    move-result v2

    if-ne v2, p1, :cond_0

    .line 1168
    return-void

    .line 1170
    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/data/data/config/DataItemConfig;->getComponentConfigBeauty()Lcom/android/camera/data/data/config/ComponentConfigBeauty;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBeauty;->setClosed(ZI)V

    .line 1171
    return-void
.end method
