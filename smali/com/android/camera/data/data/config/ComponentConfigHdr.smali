.class public Lcom/android/camera/data/data/config/ComponentConfigHdr;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigHdr.java"


# instance fields
.field private mHdrDefaultValue:Ljava/lang/String;

.field private mIsClosed:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 5
    .param p1, "dataItemConfig"    # Lcom/android/camera/data/data/config/DataItemConfig;

    .prologue
    const v4, 0x7f0200ab

    .line 47
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 30
    const-string/jumbo v0, "off"

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    .line 49
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 51
    const-string/jumbo v2, "off"

    const v3, 0x7f0f01ed

    .line 49
    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    return-void
.end method

.method private getDefaultFromConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    invoke-static {}, Lcom/android/camera/CameraSettings;->isFrontCamera()Z

    move-result v0

    invoke-static {v0}, Lcom/android/camera/Device;->getHDRDefaultValue(Z)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 92
    const-string/jumbo v0, "off"

    return-object v0

    .line 84
    :pswitch_0
    const-string/jumbo v0, "on"

    return-object v0

    .line 86
    :pswitch_1
    const-string/jumbo v0, "auto"

    return-object v0

    .line 88
    :pswitch_2
    const-string/jumbo v0, "live"

    return-object v0

    .line 90
    :pswitch_3
    const-string/jumbo v0, "normal"

    return-object v0

    .line 82
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static initForBackCaptureMode(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    const v6, 0x7f0200ab

    const v5, 0x7f0200a9

    const v4, 0x7f0200a8

    const v3, 0x7f0200aa

    .line 222
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 224
    const-string/jumbo v1, "off"

    const v2, 0x7f0f01ed

    .line 222
    invoke-direct {v0, v6, v6, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    invoke-static {}, Lcom/android/camera/Device;->isSupportedAsdHdr()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 229
    const-string/jumbo v1, "auto"

    const v2, 0x7f0f01ec

    .line 227
    invoke-direct {v0, v4, v4, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_0
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 234
    :cond_1
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 236
    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f2

    .line 234
    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :goto_0
    return-void

    .line 240
    :cond_2
    sget-boolean v0, Lcom/android/camera/Device;->IS_MI2A:Z

    if-nez v0, :cond_3

    .line 241
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 243
    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01ee

    .line 241
    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    :cond_3
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 248
    const-string/jumbo v1, "live"

    const v2, 0x7f0f01ef

    .line 246
    invoke-direct {v0, v5, v5, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static initForCaptureMode(Ljava/util/List;I)V
    .locals 1
    .param p1, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 195
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    invoke-static {p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isFrontCamera(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForFrontCaptureMode(Ljava/util/List;)V

    .line 200
    :goto_0
    return-void

    .line 198
    :cond_0
    invoke-static {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForBackCaptureMode(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static initForFrontCaptureMode(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/data/data/ComponentDataItem;>;"
    const v5, 0x7f0200ab

    const v4, 0x7f0200aa

    const v3, 0x7f0200a8

    .line 203
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontHDR()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 206
    const-string/jumbo v1, "off"

    const v2, 0x7f0f01ed

    .line 204
    invoke-direct {v0, v5, v5, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/camera/Device;->isSupportedAsdHdr(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 211
    const-string/jumbo v1, "auto"

    const v2, 0x7f0f01ec

    .line 209
    invoke-direct {v0, v3, v3, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :cond_0
    new-instance v0, Lcom/android/camera/data/data/ComponentDataItem;

    .line 216
    const-string/jumbo v1, "normal"

    const v2, 0x7f0f01f2

    .line 214
    invoke-direct {v0, v4, v4, v2, v1}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    :cond_1
    return-void
.end method

.method private static isFrontCamera(I)Z
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 191
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getComponentValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->isClosed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "off"

    return-object v0

    .line 101
    :cond_0
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getComponentValueWithOutClose(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/camera/data/data/ComponentData;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .prologue
    .line 56
    const v0, 0x7f0f0168

    return v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 61
    packed-switch p1, :pswitch_data_0

    .line 64
    :pswitch_0
    const-string/jumbo v0, "pref_camera_hdr_key"

    return-object v0

    .line 69
    :pswitch_1
    const-string/jumbo v0, "pref_video_hdr_key"

    return-object v0

    .line 72
    :pswitch_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "unspecified hdr"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :pswitch_data_0
    .packed-switch 0xa0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getValueSelectedDrawableIgnoreClose(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const v2, 0x7f0200aa

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 263
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    const v1, 0x7f0200ab

    return v1

    .line 265
    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    const v1, 0x7f0200a8

    return v1

    .line 267
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 268
    return v2

    .line 269
    :cond_2
    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 270
    const v1, 0x7f0200a9

    return v1

    .line 271
    :cond_3
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 272
    return v2

    .line 275
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public getValueSelectedStringIdIgnoreClose(I)I
    .locals 3
    .param p1, "mode"    # I

    .prologue
    const v2, 0x7f0f0117

    .line 285
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    const v1, 0x7f0f0113

    return v1

    .line 288
    :cond_0
    const-string/jumbo v1, "auto"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 289
    const v1, 0x7f0f0114

    return v1

    .line 290
    :cond_1
    const-string/jumbo v1, "normal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 291
    return v2

    .line 292
    :cond_2
    const-string/jumbo v1, "live"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    const v1, 0x7f0f0116

    return v1

    .line 294
    :cond_3
    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 295
    return v2

    .line 298
    :cond_4
    const/4 v1, -0x1

    return v1
.end method

.method public isClosed(I)Z
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    return v0
.end method

.method public isLastOn(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 114
    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getComponentValue(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "off"

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reInit(II)Ljava/util/List;
    .locals 9
    .param p1, "currentMode"    # I
    .param p2, "cameraId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/data/data/ComponentDataItem;",
            ">;"
        }
    .end annotation

    .prologue
    const v8, 0x7f0200ab

    const v7, 0x7f0200aa

    .line 132
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    if-nez v3, :cond_2

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    .line 138
    :goto_0
    const-string/jumbo v3, "off"

    iput-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    .line 142
    packed-switch p1, :pswitch_data_0

    .line 147
    :pswitch_0
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    invoke-static {v3, p2}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->initForCaptureMode(Ljava/util/List;I)V

    .line 149
    invoke-direct {p0}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->getDefaultFromConfig()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "hdrDefaultValue":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "item$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/data/data/ComponentDataItem;

    .line 151
    .local v1, "item":Lcom/android/camera/data/data/ComponentDataItem;
    iget-object v3, v1, Lcom/android/camera/data/data/ComponentDataItem;->mValue:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mHdrDefaultValue:Ljava/lang/String;

    .line 187
    .end local v0    # "hdrDefaultValue":Ljava/lang/String;
    .end local v1    # "item":Lcom/android/camera/data/data/ComponentDataItem;
    .end local v2    # "item$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    :pswitch_1
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    return-object v3

    .line 135
    :cond_2
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 164
    :pswitch_2
    sget-boolean v3, Lcom/android/camera/Device;->IS_MI3TD:Z

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/camera/Device;->isSupportedAoHDR()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    .line 167
    const-string/jumbo v5, "off"

    const v6, 0x7f0f01f1

    .line 165
    invoke-direct {v4, v8, v8, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object v3, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mItems:Ljava/util/List;

    new-instance v4, Lcom/android/camera/data/data/ComponentDataItem;

    .line 171
    const-string/jumbo v5, "on"

    const v6, 0x7f0f01f2

    .line 169
    invoke-direct {v4, v7, v7, v6, v5}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 142
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public setClosed(ZI)V
    .locals 1
    .param p1, "close"    # Z
    .param p2, "mode"    # I

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigHdr;->mIsClosed:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 44
    return-void
.end method

.method public setComponentValue(ILjava/lang/String;)V
    .locals 1
    .param p1, "mode"    # I
    .param p2, "newValue"    # Ljava/lang/String;

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/camera/data/data/config/ComponentConfigHdr;->setClosed(ZI)V

    .line 120
    invoke-super {p0, p1, p2}, Lcom/android/camera/data/data/ComponentData;->setComponentValue(ILjava/lang/String;)V

    .line 121
    return-void
.end method
