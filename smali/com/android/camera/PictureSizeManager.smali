.class public Lcom/android/camera/PictureSizeManager;
.super Ljava/lang/Object;
.source "PictureSizeManager.java"


# static fields
.field private static mVideoHfrSize_120_1080P_Key:Ljava/lang/String;

.field private static mVideoHfrSize_120_1080P_Value:Ljava/lang/String;

.field private static mVideoHfrSize_120_720P_Key:Ljava/lang/String;

.field private static mVideoHfrSize_120_720P_Value:Ljava/lang/String;

.field private static sDefaultValue:Ljava/lang/String;

.field private static sDefaultVideoHfrSizeValue:Ljava/lang/String;

.field private static final sEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPictureList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVideoHfrSizeEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sVideoHfrSizeEntryValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    .line 14
    const-string/jumbo v0, "4x3"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntries:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntryValues:Ljava/util/ArrayList;

    .line 17
    const-string/jumbo v0, "1080p,120fps"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_1080P_Key:Ljava/lang/String;

    .line 18
    const-string/jumbo v0, "1920x1080:120"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_1080P_Value:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "720p,120fps"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Key:Ljava/lang/String;

    .line 20
    const-string/jumbo v0, "1280x720:120"

    sput-object v0, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Value:Ljava/lang/String;

    .line 21
    sget-object v0, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Value:Ljava/lang/String;

    sput-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultVideoHfrSizeValue:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "4x3"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "16x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    const-string/jumbo v1, "18x9"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 216
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 217
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 218
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 219
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 220
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 221
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 222
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 226
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static _findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 231
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 232
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 233
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 235
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 236
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 240
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 202
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 203
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 204
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 205
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 206
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 207
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 208
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 212
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static _findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/camera/PictureSize;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Lcom/android/camera/PictureSize;>;"
    const/4 v1, 0x0

    .line 189
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 190
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    .line 191
    .local v2, "size":Lcom/android/camera/PictureSize;
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 192
    iget v4, v2, Lcom/android/camera/PictureSize;->width:I

    iget v5, v2, Lcom/android/camera/PictureSize;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 193
    iget v1, v2, Lcom/android/camera/PictureSize;->width:I

    .line 194
    iget v0, v2, Lcom/android/camera/PictureSize;->height:I

    goto :goto_0

    .line 198
    .end local v2    # "size":Lcom/android/camera/PictureSize;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 272
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 273
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 274
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    .line 275
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 276
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 277
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 278
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 282
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 287
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 288
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    .line 289
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 290
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 291
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 292
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 296
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 259
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 260
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    .line 261
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio1_1(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 262
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 263
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 264
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 268
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method private static findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;)",
            "Lcom/android/camera/PictureSize;"
        }
    .end annotation

    .prologue
    .line 244
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v1, 0x0

    .line 245
    .local v1, "maxWidth":I
    const/4 v0, 0x0

    .line 246
    .local v0, "maxHeight":I
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

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

    .line 247
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-static {v4, v5}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 248
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    iget v5, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v4, v5

    mul-int v5, v1, v0

    if-le v4, v5, :cond_0

    .line 249
    iget v1, v2, Landroid/hardware/Camera$Size;->width:I

    .line 250
    iget v0, v2, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 254
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_1
    if-eqz v1, :cond_2

    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4, v1, v0}, Lcom/android/camera/PictureSize;-><init>(II)V

    :goto_1
    return-object v4

    :cond_2
    new-instance v4, Lcom/android/camera/PictureSize;

    invoke-direct {v4}, Lcom/android/camera/PictureSize;-><init>()V

    goto :goto_1
.end method

.method public static getBestPanoPictureSize()Lcom/android/camera/PictureSize;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    const/4 v0, 0x0

    .line 109
    .local v0, "desire":Lcom/android/camera/PictureSize;
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 117
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 118
    :cond_0
    new-instance v0, Lcom/android/camera/PictureSize;

    .line 119
    .end local v0    # "desire":Lcom/android/camera/PictureSize;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v2, v1, Lcom/android/camera/PictureSize;->width:I

    .line 120
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/PictureSize;

    iget v1, v1, Lcom/android/camera/PictureSize;->height:I

    .line 118
    invoke-direct {v0, v2, v1}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 122
    .restart local v0    # "desire":Lcom/android/camera/PictureSize;
    :cond_1
    return-object v0

    .line 111
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :cond_2
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-static {v1, v2}, Lcom/android/camera/CameraSettings;->isAspectRatio18_9(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 112
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .local v0, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0

    .line 114
    .local v0, "desire":Lcom/android/camera/PictureSize;
    :cond_3
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v0

    .local v0, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0
.end method

.method public static getBestPictureSize()Lcom/android/camera/PictureSize;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 89
    invoke-static {v4}, Lcom/android/camera/PictureSizeManager;->getPictureSize(Z)Lcom/android/camera/PictureSize;

    move-result-object v0

    .line 90
    .local v0, "candidate":Lcom/android/camera/PictureSize;
    const/4 v1, 0x0

    .line 91
    .local v1, "desire":Lcom/android/camera/PictureSize;
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio16_9()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .line 101
    .end local v1    # "desire":Lcom/android/camera/PictureSize;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/camera/PictureSize;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 102
    :cond_1
    new-instance v1, Lcom/android/camera/PictureSize;

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v3, v2, Lcom/android/camera/PictureSize;->width:I

    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/PictureSize;

    iget v2, v2, Lcom/android/camera/PictureSize;->height:I

    invoke-direct {v1, v3, v2}, Lcom/android/camera/PictureSize;-><init>(II)V

    .line 104
    :cond_2
    return-object v1

    .line 93
    .restart local v1    # "desire":Lcom/android/camera/PictureSize;
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0

    .line 95
    .local v1, "desire":Lcom/android/camera/PictureSize;
    :cond_4
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio1_1()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0

    .line 97
    .local v1, "desire":Lcom/android/camera/PictureSize;
    :cond_5
    invoke-virtual {v0}, Lcom/android/camera/PictureSize;->isAspectRatio18_9()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    sget-object v2, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/camera/PictureSizeManager;->_findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v1

    .local v1, "desire":Lcom/android/camera/PictureSize;
    goto :goto_0
.end method

.method public static getDefaultHFRSizeValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultVideoHfrSizeValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getDefaultValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntries()[Ljava/lang/String;
    .locals 6

    .prologue
    const v5, 0x7f0f0040

    const v1, 0x7f0f003f

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 32
    invoke-static {}, Lcom/android/camera/Device;->is18x9RatioScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 34
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 35
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 36
    const v1, 0x7f0f0041

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 33
    return-object v0

    .line 39
    :cond_0
    new-array v0, v4, [Ljava/lang/String;

    .line 40
    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 41
    invoke-static {v5}, Lcom/android/camera/CameraSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 39
    return-object v0
.end method

.method public static getEntryValues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 48
    .local v0, "result":[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 49
    return-object v0
.end method

.method public static getHfrEntries()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 54
    .local v0, "result":[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 55
    return-object v0
.end method

.method public static getHfrEntryvalues()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 59
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    .line 60
    .local v0, "result":[Ljava/lang/String;
    sget-object v1, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 61
    return-object v0
.end method

.method public static getPictureSize(Z)Lcom/android/camera/PictureSize;
    .locals 2
    .param p0, "settingOnly"    # Z

    .prologue
    .line 81
    new-instance v0, Lcom/android/camera/PictureSize;

    invoke-static {}, Lcom/android/camera/PictureSizeManager;->getDefaultValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/camera/CameraSettings;->getPictureSize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/PictureSize;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static initSensorRatio(Ljava/util/List;)V
    .locals 5
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
    .line 333
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-boolean v4, Lcom/android/camera/Device;->IS_X9:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/camera/Device;->IS_A8:Z

    if-eqz v4, :cond_1

    .line 334
    :cond_0
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 335
    return-void

    .line 344
    :cond_1
    const/4 v1, -0x1

    .line 345
    .local v1, "maxIndex":I
    const/4 v2, 0x0

    .line 346
    .local v2, "maxValue":I
    new-instance v3, Lcom/android/camera/PictureSize;

    invoke-direct {v3}, Lcom/android/camera/PictureSize;-><init>()V

    .line 347
    .local v3, "pictureSize":Lcom/android/camera/PictureSize;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 348
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 349
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 350
    move v1, v0

    .line 351
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->area()I

    move-result v2

    .line 347
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 354
    :cond_3
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/Camera$Size;

    invoke-virtual {v3, v4}, Lcom/android/camera/PictureSize;->setPictureSize(Landroid/hardware/Camera$Size;)Lcom/android/camera/PictureSize;

    .line 355
    invoke-virtual {v3}, Lcom/android/camera/PictureSize;->isAspectRatio4_3()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 356
    const-string/jumbo v4, "4x3"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    .line 360
    :goto_1
    return-void

    .line 358
    :cond_4
    const-string/jumbo v4, "16x9"

    sput-object v4, Lcom/android/camera/PictureSizeManager;->sDefaultValue:Ljava/lang/String;

    goto :goto_1
.end method

.method public static initialize(Lcom/android/camera/ActivityBase;Ljava/util/List;I)V
    .locals 10
    .param p0, "mActivity"    # Lcom/android/camera/ActivityBase;
    .param p2, "limit"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/ActivityBase;",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 126
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 127
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntries:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 128
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntryValues:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 129
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_1

    .line 130
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "The supported picture size list return from hal is null!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    :cond_1
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->initSensorRatio(Ljava/util/List;)V

    .line 134
    if-eqz p2, :cond_4

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "size$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 137
    .local v2, "size":Landroid/hardware/Camera$Size;
    iget v8, v2, Landroid/hardware/Camera$Size;->width:I

    iget v9, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v8, v9

    if-gt v8, p2, :cond_2

    .line 138
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v2    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    move-object p1, v0

    .line 143
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/Camera$Size;>;"
    .end local v3    # "size$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-static {}, Lcom/android/camera/Device;->getMaxHFRQuality()I

    move-result v1

    .line 144
    .local v1, "maxQuality":I
    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_1
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio4_3(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v7

    .line 162
    .local v7, "size4_3":Lcom/android/camera/PictureSize;
    if-eqz v7, :cond_5

    .line 163
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    :cond_5
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio1_1(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v6

    .line 167
    .local v6, "size1_1":Lcom/android/camera/PictureSize;
    if-eqz v6, :cond_6

    .line 168
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    :cond_6
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio16_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v4

    .line 172
    .local v4, "size16_9":Lcom/android/camera/PictureSize;
    if-eqz v4, :cond_7

    .line 173
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    :cond_7
    invoke-static {p1}, Lcom/android/camera/PictureSizeManager;->findMaxRatio18_9(Ljava/util/List;)Lcom/android/camera/PictureSize;

    move-result-object v5

    .line 177
    .local v5, "size18_9":Lcom/android/camera/PictureSize;
    if-eqz v5, :cond_8

    .line 178
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    :cond_8
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sPictureList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_9

    .line 183
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "Not find the desire picture sizes!"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    .end local v4    # "size16_9":Lcom/android/camera/PictureSize;
    .end local v5    # "size18_9":Lcom/android/camera/PictureSize;
    .end local v6    # "size1_1":Lcom/android/camera/PictureSize;
    .end local v7    # "size4_3":Lcom/android/camera/PictureSize;
    :pswitch_0
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntries:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_1080P_Key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntryValues:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_1080P_Value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntries:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntryValues:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v8, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_1080P_Value:Ljava/lang/String;

    sput-object v8, Lcom/android/camera/PictureSizeManager;->sDefaultVideoHfrSizeValue:Ljava/lang/String;

    goto :goto_1

    .line 153
    :pswitch_1
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntries:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Key:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v8, Lcom/android/camera/PictureSizeManager;->sVideoHfrSizeEntryValues:Ljava/util/ArrayList;

    sget-object v9, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Value:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v8, Lcom/android/camera/PictureSizeManager;->mVideoHfrSize_120_720P_Value:Ljava/lang/String;

    sput-object v8, Lcom/android/camera/PictureSizeManager;->sDefaultVideoHfrSizeValue:Ljava/lang/String;

    goto :goto_1

    .line 185
    .restart local v4    # "size16_9":Lcom/android/camera/PictureSize;
    .restart local v5    # "size18_9":Lcom/android/camera/PictureSize;
    .restart local v6    # "size1_1":Lcom/android/camera/PictureSize;
    .restart local v7    # "size4_3":Lcom/android/camera/PictureSize;
    :cond_9
    return-void

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
