.class Lcom/android/camera/module/CameraModule$SaveOutputImageTask;
.super Landroid/os/AsyncTask;
.source "CameraModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/module/CameraModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SaveOutputImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

.field private mHeight:I

.field private mLocation:Landroid/location/Location;

.field private mOrientation:I

.field private mStartTime:J

.field private mTimeTaken:J

.field private mTitle:Ljava/lang/String;

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/module/CameraModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/CameraModule;JLandroid/location/Location;IIILjava/lang/String;Lcom/android/camera/groupshot/GroupShot;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/module/CameraModule;
    .param p2, "time"    # J
    .param p4, "location"    # Landroid/location/Location;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "orientation"    # I
    .param p8, "title"    # Ljava/lang/String;
    .param p9, "groupShot"    # Lcom/android/camera/groupshot/GroupShot;

    .prologue
    .line 1642
    iput-object p1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1644
    iput-wide p2, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    .line 1645
    iput-object p4, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mLocation:Landroid/location/Location;

    .line 1646
    iput p5, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mWidth:I

    .line 1647
    iput p6, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mHeight:I

    .line 1648
    iput p7, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    .line 1649
    iput-object p8, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTitle:Ljava/lang/String;

    .line 1650
    iput-object p9, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    .line 1651
    return-void
.end method

.method private finishGroupShot()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1741
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->clearImages()I

    .line 1742
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v0}, Lcom/android/camera/groupshot/GroupShot;->finish()V

    .line 1743
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-eqz v0, :cond_0

    .line 1744
    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    .line 1746
    :cond_0
    iput-object v1, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    .line 1747
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v0}, Lcom/android/camera/module/CameraModule;->-get9(Lcom/android/camera/module/CameraModule;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/camera/module/CameraModule;->-set5(Lcom/android/camera/module/CameraModule;I)I

    .line 1748
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1655
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "doInBackground start"

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/4 v4, 0x0

    .line 1658
    .local v4, "path":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5}, Lcom/android/camera/groupshot/GroupShot;->attach_end()I

    move-result v13

    .line 1659
    .local v13, "result":I
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "attach_end() = 0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1660
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1661
    const/4 v5, 0x0

    return-object v5

    .line 1663
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/groupshot/GroupShot;->setBaseImage(I)I

    move-result v13

    .line 1664
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "setBaseImage() = 0x%08x"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5}, Lcom/android/camera/groupshot/GroupShot;->setBestFace()I

    move-result v13

    .line 1666
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot attach end & setbestface cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTitle:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/camera/storage/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1672
    .local v4, "path":Ljava/lang/String;
    sget-boolean v5, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v5, :cond_1

    .line 1673
    const-string/jumbo v5, ".jpg"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 1674
    .local v12, "originPath":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 1675
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1676
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    invoke-static {v5}, Lcom/android/camera/module/CameraModule;->-get8(Lcom/android/camera/module/CameraModule;)Lcom/android/camera/groupshot/GroupShot;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/camera/groupshot/GroupShot;->saveInputImages(Ljava/lang/String;)I

    .line 1679
    .end local v12    # "originPath":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1680
    const/4 v5, 0x0

    return-object v5

    .line 1682
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mGroupShotInternal:Lcom/android/camera/groupshot/GroupShot;

    invoke-virtual {v5, v4}, Lcom/android/camera/groupshot/GroupShot;->getImageAndSaveJpeg(Ljava/lang/String;)I

    .line 1683
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot finish group cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->isCancelled()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1692
    const/4 v5, 0x0

    return-object v5

    .line 1684
    .end local v4    # "path":Ljava/lang/String;
    .end local v13    # "result":I
    :catch_0
    move-exception v11

    .line 1685
    .local v11, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "SaveOutputImageTask exception occurs, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    if-eqz v4, :cond_3

    .line 1687
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 1689
    :cond_3
    const/4 v5, 0x0

    return-object v5

    .line 1695
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v4    # "path":Ljava/lang/String;
    .restart local v13    # "result":I
    :cond_4
    invoke-static {}, Lcom/android/camera/CameraApplicationDelegate;->getAndroidContext()Landroid/content/Context;

    move-result-object v3

    .line 1696
    .local v3, "appContext":Landroid/content/Context;
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    invoke-static {}, Lcom/android/camera/LocationManager;->instance()Lcom/android/camera/LocationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/LocationManager;->getCurrentLocation()Landroid/location/Location;

    move-result-object v6

    .line 1697
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    .line 1696
    invoke-static {v4, v5, v6, v8, v9}, Lcom/android/camera/ExifHelper;->writeExif(Ljava/lang/String;ILandroid/location/Location;J)V

    .line 1698
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mOrientation:I

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mTimeTaken:J

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mLocation:Landroid/location/Location;

    .line 1699
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mWidth:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mHeight:I

    .line 1698
    invoke-static/range {v3 .. v10}, Lcom/android/camera/storage/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;IJLandroid/location/Location;II)Landroid/net/Uri;

    move-result-object v15

    .line 1700
    .local v15, "uri":Landroid/net/Uri;
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot insert db cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v2, v5, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    .line 1703
    .local v2, "cameraMirror":Lcom/android/camera/Camera;
    if-nez v2, :cond_5

    .line 1704
    const/4 v5, 0x0

    return-object v5

    .line 1706
    :cond_5
    invoke-virtual {v2}, Lcom/android/camera/Camera;->getScreenHint()Lcom/android/camera/ui/ScreenHint;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenHint;->updateHint()V

    .line 1708
    if-eqz v15, :cond_6

    .line 1709
    invoke-virtual {v2, v15}, Lcom/android/camera/Camera;->addSecureUri(Landroid/net/Uri;)V

    .line 1710
    invoke-static {v3, v15}, Lcom/android/camera/Util;->broadcastNewPicture(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1711
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 1712
    const/4 v6, 0x0

    .line 1711
    invoke-static {v5, v15, v6}, Lcom/android/camera/Thumbnail;->createThumbnailFromUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/android/camera/Thumbnail;

    move-result-object v14

    .line 1713
    .local v14, "t":Lcom/android/camera/Thumbnail;
    invoke-virtual {v2}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v14, v6, v7}, Lcom/android/camera/ThumbnailUpdater;->setThumbnail(Lcom/android/camera/Thumbnail;ZZ)V

    .line 1715
    .end local v14    # "t":Lcom/android/camera/Thumbnail;
    :cond_6
    sget-object v5, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "groupshot asynctask cost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    move-wide/from16 v16, v0

    sub-long v8, v8, v16

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    const/4 v5, 0x0

    return-object v5
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1653
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 1726
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SaveOutputImageTask onCancelled"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1727
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->finishGroupShot()V

    .line 1728
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 1732
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "SaveOutputImageTask onPostExecute"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1733
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-boolean v0, v0, Lcom/android/camera/module/CameraModule;->mPaused:Z

    if-nez v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->this$0:Lcom/android/camera/module/CameraModule;

    iget-object v0, v0, Lcom/android/camera/module/CameraModule;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ThumbnailUpdater;->updateThumbnailView(Z)V

    .line 1736
    :cond_0
    sget-object v0, Lcom/android/camera/module/CameraModule;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "groupshot image process cost "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    invoke-direct {p0}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->finishGroupShot()V

    .line 1738
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1730
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 1721
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/module/CameraModule$SaveOutputImageTask;->mStartTime:J

    .line 1722
    return-void
.end method
