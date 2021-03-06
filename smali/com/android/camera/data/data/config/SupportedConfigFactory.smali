.class public Lcom/android/camera/data/data/config/SupportedConfigFactory;
.super Ljava/lang/Object;
.source "SupportedConfigFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/data/data/config/SupportedConfigFactory$ConfigItem;,
        Lcom/android/camera/data/data/config/SupportedConfigFactory$MutexElement;
    }
.end annotation


# static fields
.field public static final MutexConfigs:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    .line 24
    return-void

    .line 73
    :array_0
    .array-data 4
        0xe5
        0xec
        0xeb
        0xe4
        0xe6
        0xea
        0xc3
        0xee
        0xc7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigKey(I)Ljava/lang/String;
    .locals 2
    .param p0, "configItem"    # I

    .prologue
    .line 122
    sparse-switch p0, :sswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unknown config item"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :sswitch_0
    const-string/jumbo v0, "pref_camera_gradienter_key"

    return-object v0

    .line 126
    :sswitch_1
    const-string/jumbo v0, "pref_camera_magic_mirror_key"

    return-object v0

    .line 128
    :sswitch_2
    const-string/jumbo v0, "pref_camera_groupshot_mode_key"

    return-object v0

    .line 130
    :sswitch_3
    const-string/jumbo v0, "pref_camera_tilt_shift_mode"

    return-object v0

    .line 132
    :sswitch_4
    const-string/jumbo v0, "pref_camera_hand_night_key"

    return-object v0

    .line 134
    :sswitch_5
    const-string/jumbo v0, "pref_camera_scenemode_setting_key"

    return-object v0

    .line 136
    :sswitch_6
    sget-object v0, Lcom/android/camera/data/data/runing/DataItemRunning;->DATA_RUNNING_PORTRAIT_OR_STEREO_MODE:Ljava/lang/String;

    return-object v0

    .line 138
    :sswitch_7
    const-string/jumbo v0, "pref_camera_show_gender_age_key"

    return-object v0

    .line 140
    :sswitch_8
    const-string/jumbo v0, "pref_camera_peak_key"

    return-object v0

    .line 142
    :sswitch_9
    const-string/jumbo v0, "pref_camera_ai_scene_mode_key"

    return-object v0

    .line 122
    nop

    :sswitch_data_0
    .sparse-switch
        0xc3 -> :sswitch_6
        0xc7 -> :sswitch_8
        0xc9 -> :sswitch_9
        0xe4 -> :sswitch_3
        0xe5 -> :sswitch_0
        0xe6 -> :sswitch_4
        0xea -> :sswitch_5
        0xeb -> :sswitch_2
        0xec -> :sswitch_1
        0xee -> :sswitch_7
    .end sparse-switch
.end method

.method public static final getSupportedExtraConfigs(II)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 7
    .param p0, "currentMode"    # I
    .param p1, "cameraId"    # I

    .prologue
    const/16 v6, 0xa3

    const/4 v5, 0x1

    const/16 v4, 0xe2

    const/16 v2, 0xe1

    const/16 v3, 0xa5

    .line 303
    new-instance v0, Lcom/android/camera/data/data/config/SupportedConfigs;

    invoke-direct {v0}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>()V

    .line 306
    .local v0, "configs":Lcom/android/camera/data/data/config/SupportedConfigs;
    const/4 v1, 0x0

    .line 308
    .local v1, "isImageCaptureIntent":Z
    packed-switch p0, :pswitch_data_0

    .line 313
    :pswitch_0
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 315
    packed-switch p1, :pswitch_data_1

    .line 427
    :cond_0
    :goto_0
    return-object v0

    .line 317
    :pswitch_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    const/16 v2, 0xe4

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 321
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportGradienter()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 322
    const/16 v2, 0xe5

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 325
    :cond_2
    sget-boolean v2, Lcom/android/camera/Device;->IS_HONGMI:Z

    if-eqz v2, :cond_3

    .line 326
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/DataItemRunning;->getComponentRunningSceneValue()Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/runing/ComponentRunningSceneValue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    const/16 v2, 0xea

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 331
    :cond_3
    if-eq p0, v3, :cond_4

    .line 332
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v2

    .line 331
    if-eqz v2, :cond_4

    .line 333
    const/16 v2, 0xeb

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 336
    :cond_4
    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isUsedMorphoLib()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/camera/Device;->isSupportSuperResolution()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 337
    const/16 v2, 0xe6

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 340
    :cond_5
    if-eq p0, v3, :cond_6

    if-ne p0, v6, :cond_7

    .line 341
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    .line 340
    if-eqz v2, :cond_7

    .line 342
    const/16 v2, 0xef

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 349
    :cond_7
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->isAiLensAppAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    const/16 v2, 0xf2

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto :goto_0

    .line 355
    :pswitch_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportGroupShot()Z

    move-result v2

    if-eqz v2, :cond_8

    if-eq p0, v3, :cond_8

    .line 356
    const/16 v2, 0xeb

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 358
    :cond_8
    if-eq p0, v3, :cond_9

    if-ne p0, v6, :cond_0

    .line 359
    :cond_9
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 360
    const/16 v2, 0xee

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 363
    :cond_a
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const/16 v2, 0xec

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    .line 373
    :pswitch_3
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 377
    if-ne p1, v5, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    invoke-static {}, Lcom/android/camera/Device;->isSupportedIntelligentBeautify()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/camera/Device;->isSupportedSkinBeautify()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 379
    const/16 v2, 0xee

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 382
    :cond_b
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMagicMirror()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    const/16 v2, 0xec

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    .line 404
    :pswitch_4
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    .line 415
    :pswitch_5
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_0

    .line 417
    :pswitch_6
    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    move-result-object v2

    const/16 v3, 0xe9

    invoke-virtual {v2, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    .line 418
    invoke-static {}, Lcom/android/camera/Device;->isSupportedHFR()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 419
    const/16 v2, 0xe8

    invoke-virtual {v0, v2}, Lcom/android/camera/data/data/config/SupportedConfigs;->add(I)Lcom/android/camera/data/data/config/SupportedConfigs;

    goto/16 :goto_0

    .line 308
    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 315
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 415
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method

.method public static final getSupportedTopConfigs(ILcom/android/camera/data/data/config/DataItemConfig;I)Lcom/android/camera/data/data/config/SupportedConfigs;
    .locals 10
    .param p0, "currentMode"    # I
    .param p1, "dataItemConfig"    # Lcom/android/camera/data/data/config/DataItemConfig;
    .param p2, "cameraId"    # I

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/16 v6, 0xc6

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v2, "supports":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->supportFlash()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    const/16 v3, 0xab

    if-ne p0, v3, :cond_4

    .line 160
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 161
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    :cond_0
    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 171
    :pswitch_0
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_1
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    if-nez p2, :cond_2

    .line 176
    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 179
    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_3
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 255
    :goto_1
    new-instance v0, Lcom/android/camera/data/data/config/SupportedConfigs;

    const/4 v3, 0x7

    invoke-direct {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;-><init>(I)V

    .line 261
    .local v0, "configs":Lcom/android/camera/data/data/config/SupportedConfigs;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 296
    :goto_2
    return-object v0

    .line 164
    .end local v0    # "configs":Lcom/android/camera/data/data/config/SupportedConfigs;
    :cond_4
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 186
    :pswitch_1
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 193
    :pswitch_2
    if-nez p2, :cond_6

    .line 194
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 195
    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_5
    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 199
    :cond_6
    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :pswitch_3
    invoke-virtual {p1}, Lcom/android/camera/data/data/config/DataItemConfig;->getManuallyFocus()Lcom/android/camera/data/data/config/ComponentManuallyFocus;

    move-result-object v1

    .line 206
    .local v1, "manuallyFocus":Lcom/android/camera/data/data/config/ComponentManuallyFocus;
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 207
    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getComponentValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p0}, Lcom/android/camera/data/data/config/ComponentManuallyFocus;->getDefaultValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 206
    if-eqz v3, :cond_7

    .line 208
    const/16 v3, 0xc7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    :cond_7
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 230
    .end local v1    # "manuallyFocus":Lcom/android/camera/data/data/config/ComponentManuallyFocus;
    :pswitch_4
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportHdr(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 231
    const/16 v3, 0xc2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_8
    invoke-static {}, Lcom/android/camera/Device;->isSupportAiScene()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 234
    if-nez p2, :cond_9

    .line 235
    const/16 v3, 0xc9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 237
    :cond_9
    invoke-virtual {p1, p0, p2}, Lcom/android/camera/data/data/config/DataItemConfig;->supportBokeh(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 238
    const/16 v3, 0xc8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    :cond_a
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    const/16 v3, 0xc5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 245
    :pswitch_5
    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 250
    :pswitch_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 251
    const/16 v3, 0xe1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 263
    .restart local v0    # "configs":Lcom/android/camera/data/data/config/SupportedConfigs;
    :pswitch_7
    const/4 v3, 0x7

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-virtual {v0, v3}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_2

    .line 268
    :pswitch_8
    const/4 v3, 0x7

    new-array v4, v3, [I

    aput v6, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    aput v6, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_2

    .line 273
    :pswitch_9
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xc4

    if-ne v3, v4, :cond_b

    .line 274
    const/4 v3, 0x7

    new-array v4, v3, [I

    aput v6, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_2

    .line 276
    :cond_b
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    aput v6, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_2

    .line 282
    :pswitch_a
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    aput v6, v4, v7

    aput v6, v4, v8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_2

    .line 287
    :pswitch_b
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    aput v6, v4, v7

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v8

    aput v6, v4, v9

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x4

    aput v3, v4, v5

    const/4 v3, 0x5

    aput v6, v4, v3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_2

    .line 292
    :pswitch_c
    const/4 v3, 0x7

    new-array v4, v3, [I

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v5

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v7

    aput v6, v4, v8

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v4, v9

    const/4 v3, 0x4

    aput v6, v4, v3

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x5

    aput v3, v4, v5

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x6

    aput v3, v4, v5

    invoke-virtual {v0, v4}, Lcom/android/camera/data/data/config/SupportedConfigs;->add([I)V

    goto/16 :goto_2

    .line 168
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 261
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch

    .line 263
    :array_0
    .array-data 4
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
        0xc6
    .end array-data
.end method

.method public static isMutexConfig(I)Z
    .locals 5
    .param p0, "selectedItem"    # I

    .prologue
    const/4 v2, 0x0

    .line 113
    sget-object v3, Lcom/android/camera/data/data/config/SupportedConfigFactory;->MutexConfigs:[I

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget v0, v3, v1

    .line 114
    .local v0, "item":I
    if-ne v0, p0, :cond_0

    .line 115
    const/4 v1, 0x1

    return v1

    .line 113
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 118
    .end local v0    # "item":I
    :cond_1
    return v2
.end method
