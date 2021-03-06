.class public Lcom/android/camera/data/data/config/ComponentConfigBokeh;
.super Lcom/android/camera/data/data/ComponentData;
.source "ComponentConfigBokeh.java"


# direct methods
.method public constructor <init>(Lcom/android/camera/data/data/config/DataItemConfig;)V
    .locals 0
    .param p1, "dataItemConfig"    # Lcom/android/camera/data/data/config/DataItemConfig;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/camera/data/data/ComponentData;-><init>(Lcom/android/camera/data/data/DataItemBase;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getDefaultValue(I)Ljava/lang/String;
    .locals 1
    .param p1, "currentMode"    # I

    .prologue
    .line 35
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method public getDisplayTitleString()I
    .locals 1

    .prologue
    .line 25
    const v0, 0x7f0f0169

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
    .line 40
    iget-object v0, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    return-object v0
.end method

.method public getKey(I)Ljava/lang/String;
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 30
    const-string/jumbo v0, "pref_camera_bokeh_key"

    return-object v0
.end method

.method public reInit(II)Ljava/util/List;
    .locals 6
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
    const v5, 0x7f02012c

    .line 44
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    if-nez v1, :cond_1

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    .line 50
    :goto_0
    invoke-static {}, Lcom/android/camera/CameraDataContainer;->getInstance()Lcom/android/camera/CameraDataContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/CameraDataContainer;->getFrontCameraId()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 51
    invoke-static {}, Lcom/android/camera/Device;->isSupportFrontBokeh()Z

    move-result v1

    .line 50
    if-eqz v1, :cond_2

    .line 52
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    xor-int/lit8 v0, v1, 0x1

    .line 53
    :goto_1
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 62
    const-string/jumbo v3, "off"

    .line 61
    const v4, 0x7f0f0066

    .line 59
    invoke-direct {v2, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    new-instance v2, Lcom/android/camera/data/data/ComponentDataItem;

    .line 66
    const-string/jumbo v3, "on"

    .line 65
    const v4, 0x7f0f0065

    .line 63
    invoke-direct {v2, v5, v5, v4, v3}, Lcom/android/camera/data/data/ComponentDataItem;-><init>(IIILjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_0
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    return-object v1

    .line 47
    :cond_1
    iget-object v1, p0, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 50
    :cond_2
    const/4 v0, 0x0

    .local v0, "shouldAddFrontBokeh":Z
    goto :goto_1
.end method

.method public toggle(I)V
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 74
    const-string/jumbo v0, "on"

    invoke-virtual {p0, p1}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->getComponentValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    const-string/jumbo v0, "off"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->setComponentValue(ILjava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string/jumbo v0, "on"

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/data/data/config/ComponentConfigBokeh;->setComponentValue(ILjava/lang/String;)V

    goto :goto_0
.end method
