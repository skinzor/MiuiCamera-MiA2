.class public Lcom/android/camera/fragment/FragmentBottomAction;
.super Lcom/android/camera/fragment/BaseFragment;
.source "FragmentBottomAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
.implements Lcom/android/camera/protocol/ModeProtocol$ActionProcessing;
.implements Lcom/android/camera/protocol/ModeProtocol$MediaRecorderStatusCallback;
.implements Lcom/android/camera/protocol/ModeProtocol$FilterSwitcher;
.implements Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
.implements Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;
.implements Lcom/android/camera/ui/CameraSnapView$SnapListener;
.implements Lcom/android/camera/protocol/ModeProtocol$SnapLongStatusMonitor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/fragment/FragmentBottomAction$1;
    }
.end annotation


# instance fields
.field private mBottomAnimator:Landroid/animation/ValueAnimator;

.field private mCameraPickEnable:Z

.field private mCameraPicker:Landroid/view/View;

.field private mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

.field private mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

.field private mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

.field private mFilterLayout:Landroid/view/View;

.field private mFilterListHeight:I

.field private mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

.field private mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mInLoading:Z

.field private mIsIntentAction:Z

.field private mIsShowFilter:Z

.field private mLongPressBurst:Z

.field private mModeSelectLayout:Landroid/view/View;

.field private mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

.field private mOnCreated:Z

.field private mRecordingPause:Landroid/widget/ImageView;

.field private mRecordingSnap:Landroid/widget/ImageView;

.field private mShutterButton:Lcom/android/camera/ui/CameraSnapView;

.field private mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

.field private mThumbnailImage:Landroid/widget/ImageView;

.field private mThumbnailImageLayout:Landroid/view/ViewGroup;

.field private mThumbnailProgress:Landroid/widget/ProgressBar;

.field private mV9bottomParentLayout:Landroid/widget/RelativeLayout;

.field private mVideoCaptureEnable:Z

.field private mVideoPauseSupported:Z

.field private mVideoRecordingStarted:Z


# direct methods
.method static synthetic -get1(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get11(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ProgressBar;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    return v0
.end method

.method static synthetic -get13(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/camera/fragment/FragmentBottomAction;)Lcom/android/camera/ui/ModeSelectView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/camera/fragment/FragmentBottomAction;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/camera/fragment/FragmentBottomAction;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/camera/fragment/FragmentBottomAction;

    .prologue
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/camera/fragment/BaseFragment;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    .line 124
    new-instance v0, Lcom/android/camera/fragment/FragmentBottomAction$1;

    invoke-direct {v0, p0}, Lcom/android/camera/fragment/FragmentBottomAction$1;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    .line 69
    return-void
.end method

.method private adjustViewBackground(Landroid/view/View;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "currentMode"    # I

    .prologue
    const/high16 v2, 0x7f0d0000

    .line 375
    const/16 v1, 0xa5

    if-ne p2, v1, :cond_0

    .line 376
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 377
    return-void

    .line 380
    :cond_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemRunning()Lcom/android/camera/data/data/runing/DataItemRunning;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/runing/DataItemRunning;->getUiStyle()I

    move-result v0

    .line 381
    .local v0, "uiStyle":I
    packed-switch v0, :pswitch_data_0

    .line 384
    :pswitch_0
    invoke-virtual {p1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 392
    :goto_0
    return-void

    .line 389
    :pswitch_1
    const v1, 0x7f0d000c

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private initThumbLayoutByIntent()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 232
    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-nez v3, :cond_2

    .line 233
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 234
    .local v0, "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->startFromSecureKeyguard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 235
    invoke-virtual {p0, v5, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 236
    return-void

    .line 238
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getThumbnailUpdater()Lcom/android/camera/ThumbnailUpdater;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/ThumbnailUpdater;->getThumbnail()Lcom/android/camera/Thumbnail;

    move-result-object v2

    .line 239
    .local v2, "thumbnail":Lcom/android/camera/Thumbnail;
    if-eqz v2, :cond_1

    .line 240
    invoke-virtual {p0, v2, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->updateThumbnail(Lcom/android/camera/Thumbnail;Z)V

    .line 252
    .end local v0    # "activityBase":Lcom/android/camera/ActivityBase;
    .end local v2    # "thumbnail":Lcom/android/camera/Thumbnail;
    :cond_1
    :goto_0
    return-void

    .line 246
    :cond_2
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 248
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 249
    .local v1, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v1, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 250
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v4, 0x7f0201ac

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private isInMovieSolidMode()Z
    .locals 2

    .prologue
    .line 946
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v1, 0xa2

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/camera/CameraSettings;->isMovieSolidOn()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isThumbLoading()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    return v0
.end method

.method private prepareRecording()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 779
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 780
    const/16 v2, 0xac

    .line 779
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 781
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v2, 0xa6

    if-eq v1, v2, :cond_0

    .line 782
    invoke-interface {v0, v3}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 787
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    .line 788
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->prepareRecording()V

    .line 789
    return-void

    .line 784
    :cond_0
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->hideConfigMenu()V

    goto :goto_0
.end method

.method private resetBottom()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 580
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 598
    :goto_0
    :pswitch_0
    return-void

    .line 587
    :pswitch_1
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 588
    const/16 v2, 0xac

    .line 587
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 589
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    .line 590
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    .line 591
    invoke-direct {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->updateBottomInRecording(Z)V

    goto :goto_0

    .line 580
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private updateBottomInRecording(Z)V
    .locals 6
    .param p1, "start"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 792
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 793
    const-string/jumbo v0, "FragmentBottomAction"

    const-string/jumbo v1, "Warning: update UI in worker thread. Do nothing"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    return-void

    .line 796
    :cond_0
    if-eqz p1, :cond_1

    .line 797
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 798
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-eq v0, v5, :cond_1

    .line 799
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 803
    :cond_1
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 805
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 806
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 837
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    .line 838
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    const v1, 0x7f02000b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 839
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 841
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 842
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 847
    :cond_2
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 848
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v1, 0x7f020131

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 849
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setSoundEffectsEnabled(Z)V

    .line 850
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-nez v0, :cond_3

    .line 851
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 852
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 856
    :cond_3
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 860
    :cond_4
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    .line 861
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 862
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$4;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$4;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 886
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$5;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/fragment/FragmentBottomAction$5;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 933
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mBottomAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 934
    return-void

    .line 812
    :pswitch_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_5

    .line 813
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 815
    :cond_5
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    goto/16 :goto_0

    .line 820
    :pswitch_2
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    .line 821
    invoke-virtual {p0, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    .line 825
    :goto_1
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    if-nez v0, :cond_6

    .line 826
    invoke-static {}, Lcom/android/camera/CameraSettings;->isVideoCaptureVisible()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    .line 828
    :cond_6
    invoke-static {}, Lcom/android/camera/Device;->isSupportedVideoPause()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    goto/16 :goto_0

    .line 823
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->setClickEnable(Z)V

    goto :goto_1

    .line 832
    :pswitch_3
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    .line 833
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    goto/16 :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0xa2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 860
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public canSnap()Z
    .locals 3

    .prologue
    .line 1307
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1309
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeMode(II)V
    .locals 7
    .param p1, "newMode"    # I
    .param p2, "forceDelayTime"    # I

    .prologue
    const/4 v6, 0x1

    .line 954
    iget v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    if-eq p1, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v4, :cond_1

    .line 955
    :cond_0
    return-void

    .line 958
    :cond_1
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 959
    return-void

    .line 963
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v4

    const/16 v5, 0xa1

    invoke-virtual {v4, v5}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 964
    .local v1, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 965
    return-void

    .line 973
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/Camera;

    .line 974
    .local v0, "camera":Lcom/android/camera/Camera;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isActivityPaused()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 975
    :cond_4
    return-void

    .line 978
    :cond_5
    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    .line 979
    .local v3, "lastMode":I
    iput p1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    .line 980
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v2

    check-cast v2, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 981
    .local v2, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v2, p1}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 983
    invoke-static {p1}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/camera/module/loader/StartControl;->setStartDelay(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    .line 985
    const/4 v5, 0x3

    .line 983
    invoke-virtual {v4, v5}, Lcom/android/camera/module/loader/StartControl;->setResetType(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/camera/module/loader/StartControl;->setLastMode(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    .line 989
    return-void
.end method

.method public filterUiChange()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    .line 275
    return-void
.end method

.method public getFragmentInto()I
    .locals 1

    .prologue
    .line 1053
    const/16 v0, 0xf1

    return v0
.end method

.method protected getLayoutResourceId()I
    .locals 1

    .prologue
    .line 1048
    const v0, 0x7f04000c

    return v0
.end method

.method protected initView(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f0a0038

    const/4 v5, 0x0

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mOnCreated:Z

    .line 152
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 153
    .local v1, "marginLayoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/Util;->getBottomHeight(Landroid/content/res/Resources;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 155
    const v2, 0x7f0a0039

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    .line 156
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 157
    .local v0, "bottomParentParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 158
    sget v3, Lcom/android/camera/Util;->sNavigationBarHeight:I

    .line 157
    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 160
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getComponentModuleList()Lcom/android/camera/data/data/global/ComponentModuleList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    .line 162
    const v2, 0x7f0a0035

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    .line 165
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v3, 0x7f0a0036

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/EdgeHorizonScrollView;

    .line 164
    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    .line 167
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const v3, 0x7f0a0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/ModeSelectView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    .line 169
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 170
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/ModeSelectView;->setOnModeClickedListener(Lcom/android/camera/ui/ModeSelectView$onModeClickedListener;)V

    .line 172
    const v2, 0x7f0a003a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    .line 173
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v3, 0x7f0a003b

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    .line 175
    const v2, 0x7f0a003d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    .line 176
    const v2, 0x7f0a003c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    .line 179
    const v2, 0x7f0a003e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ui/CameraSnapView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    .line 180
    const v2, 0x7f0a003f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    .line 181
    const v2, 0x7f0a0040

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    .line 182
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    .line 187
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v2, v3, v5}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    .line 188
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, p0}, Lcom/android/camera/ui/CameraSnapView;->setSnapListener(Lcom/android/camera/ui/CameraSnapView$SnapListener;)V

    .line 189
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v2, v5}, Lcom/android/camera/ui/CameraSnapView;->setEnabled(Z)V

    .line 192
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-virtual {v2, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingSnap:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-direct {p0, v2, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 199
    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->provideAnimateElement(ILjava/util/List;)V

    .line 201
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    .line 203
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 204
    new-instance v2, Lmiui/view/animation/SineEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/SineEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    .line 206
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 207
    const v3, 0x7f09006b

    .line 206
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    .line 209
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    .line 210
    new-instance v2, Lcom/android/camera/fragment/FragmentFilter;

    invoke-direct {v2}, Lcom/android/camera/fragment/FragmentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    .line 211
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 212
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v4}, Lcom/android/camera/fragment/FragmentFilter;->getFragmentTag()Ljava/lang/String;

    move-result-object v4

    .line 211
    invoke-static {v2, v6, v3, v4}, Lcom/android/camera/fragment/FragmentUtils;->addFragmentWithTag(Landroid/support/v4/app/FragmentManager;ILandroid/support/v4/app/Fragment;Ljava/lang/String;)V

    .line 213
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v2, v5}, Lcom/android/camera/Util;->setAccessibilityFocusable(Landroid/view/View;Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public isShowFilter()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    return v0
.end method

.method public notifyDataChanged(II)V
    .locals 4
    .param p1, "dataChangeType"    # I
    .param p2, "currentMode"    # I

    .prologue
    .line 1269
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->notifyDataChanged(II)V

    .line 1270
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v0

    .line 1271
    .local v0, "currentIntentAction":Z
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eq v0, v1, :cond_0

    .line 1272
    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    .line 1273
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/ModeSelectView;->init(Lcom/android/camera/data/data/global/ComponentModuleList;I)V

    .line 1274
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    .line 1276
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 1277
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    iget v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-direct {p0, v1, v2}, Lcom/android/camera/fragment/FragmentBottomAction;->adjustViewBackground(Landroid/view/View;I)V

    .line 1279
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    .line 1302
    return-void
.end method

.method public onBackEvent(I)Z
    .locals 4
    .param p1, "callingFrom"    # I

    .prologue
    const/4 v3, 0x1

    .line 1559
    if-ne p1, v3, :cond_1

    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v1, :cond_1

    .line 1560
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 1561
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1562
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 1563
    const/16 v2, 0xac

    .line 1562
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 1564
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->updateContentDescription()V

    .line 1566
    .end local v0    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_0
    return v3

    .line 1568
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 18
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 638
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v12

    if-nez v12, :cond_0

    .line 639
    return-void

    .line 642
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v12

    const/16 v13, 0xa1

    invoke-virtual {v12, v13}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v3

    check-cast v3, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 643
    .local v3, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v3, :cond_1

    .line 644
    return-void

    .line 647
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/ActivityBase;

    invoke-virtual {v12}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v7

    .line 648
    .local v7, "module":Lcom/android/camera/module/Module;
    invoke-interface {v7}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 649
    const-string/jumbo v12, "FragmentBottomAction"

    const-string/jumbo v13, "onClick: ignore click event, because module isn\'t ready"

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void

    .line 653
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v12

    packed-switch v12, :pswitch_data_0

    .line 775
    :cond_3
    :goto_0
    :pswitch_0
    return-void

    .line 655
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 656
    return-void

    .line 658
    :cond_4
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/data/data/global/DataItemGlobal;->isIntentAction()Z

    move-result v12

    if-nez v12, :cond_5

    .line 659
    const/4 v12, 0x0

    invoke-interface {v3, v12}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onThumbnailClicked(Landroid/view/View;)V

    goto :goto_0

    .line 661
    :cond_5
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onReviewCancelClicked()V

    goto :goto_0

    .line 667
    :pswitch_2
    invoke-interface {v3}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 668
    return-void

    .line 670
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isThumbLoading()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 671
    return-void

    .line 673
    :cond_7
    invoke-static {}, Lcom/android/camera/data/DataRepository;->provider()Lcom/android/camera/data/provider/DataProvider;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/camera/data/provider/DataProvider;->dataGlobal()Lcom/android/camera/data/provider/DataProvider$ProviderEvent;

    move-result-object v6

    check-cast v6, Lcom/android/camera/data/data/global/DataItemGlobal;

    .line 674
    .local v6, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v6}, Lcom/android/camera/data/data/global/DataItemGlobal;->getCurrentCameraId()I

    move-result v4

    .line 675
    .local v4, "currentCamera":I
    if-nez v4, :cond_9

    .line 676
    const/4 v8, 0x1

    .line 679
    .local v8, "newCameraFacing":I
    :goto_1
    invoke-virtual {v6, v8}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCameraId(I)V

    .line 681
    const/4 v12, 0x1

    if-ne v8, v12, :cond_a

    .line 682
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const/high16 v13, -0x3ccc0000    # -180.0f

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 687
    :goto_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v12

    const/16 v13, 0xac

    invoke-virtual {v12, v13}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v10

    check-cast v10, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 688
    .local v10, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    invoke-interface {v10}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->removeExtraMenu()V

    .line 689
    const-string/jumbo v12, "FragmentBottomAction"

    sget-object v13, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 690
    const-string/jumbo v14, "switch camera from %d to %d, for module 0x%x"

    .line 689
    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    .line 691
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 689
    invoke-static {v13, v14, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    sparse-switch v12, :sswitch_data_0

    .line 694
    invoke-interface {v3, v8}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    .line 738
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v12, :cond_8

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 742
    :cond_8
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 743
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v13, 0x7f0f012d

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 744
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v13, 0x8000

    invoke-virtual {v12, v13}, Lcom/android/camera/ui/EdgeHorizonScrollView;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 677
    .end local v8    # "newCameraFacing":I
    .end local v10    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :cond_9
    const/4 v8, 0x0

    .restart local v8    # "newCameraFacing":I
    goto/16 :goto_1

    .line 684
    :cond_a
    invoke-static/range {p1 .. p1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const/high16 v13, 0x43340000    # 180.0f

    invoke-virtual {v12, v13}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->rotationBy(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    const-wide/16 v14, 0x12c

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v12

    invoke-virtual {v12}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto/16 :goto_2

    .line 709
    .restart local v10    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :sswitch_0
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    const/16 v13, 0xa2

    invoke-virtual {v12, v13}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/Camera;

    const/16 v13, 0xa2

    invoke-static {v13}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 711
    const/4 v14, 0x1

    .line 710
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 712
    const/4 v14, 0x1

    .line 710
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto :goto_3

    .line 717
    :sswitch_1
    const/16 v9, 0xa2

    .line 718
    .local v9, "targetMode":I
    if-nez v8, :cond_b

    .line 719
    invoke-static {}, Lcom/android/camera/data/DataRepository;->getInstance()Lcom/android/camera/data/DataRepository;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/camera/data/DataRepository;->backUp()Lcom/android/camera/data/backup/DataBackUp;

    move-result-object v5

    .line 720
    .local v5, "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoFastMotion()Z

    move-result v12

    if-eqz v12, :cond_c

    .line 721
    const/16 v9, 0xa9

    .line 727
    .end local v5    # "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    :cond_b
    :goto_4
    const/16 v12, 0xa2

    if-eq v9, v12, :cond_d

    .line 728
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v12

    invoke-virtual {v12, v9}, Lcom/android/camera/data/data/global/DataItemGlobal;->setCurrentMode(I)V

    .line 729
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Lcom/android/camera/Camera;

    invoke-static {v9}, Lcom/android/camera/module/loader/StartControl;->create(I)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 730
    const/4 v14, 0x1

    .line 729
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedBlurAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    .line 731
    const/4 v14, 0x1

    .line 729
    invoke-virtual {v13, v14}, Lcom/android/camera/module/loader/StartControl;->setNeedViewAnimation(Z)Lcom/android/camera/module/loader/StartControl;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/camera/Camera;->onModeSelected(Lcom/android/camera/module/loader/StartControl;)V

    goto/16 :goto_3

    .line 722
    .restart local v5    # "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    :cond_c
    invoke-interface {v5}, Lcom/android/camera/data/backup/DataBackUp;->isLastVideoSlowMotion()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 723
    const/16 v9, 0xa8

    goto :goto_4

    .line 733
    .end local v5    # "dataBackUp":Lcom/android/camera/data/backup/DataBackUp;
    :cond_d
    invoke-interface {v3, v8}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onCameraPickerClicked(I)Z

    goto/16 :goto_3

    .line 749
    .end local v4    # "currentCamera":I
    .end local v6    # "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    .end local v8    # "newCameraFacing":I
    .end local v9    # "targetMode":I
    .end local v10    # "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    :pswitch_3
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa9

    if-eq v12, v13, :cond_f

    .line 750
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa8

    if-eq v12, v13, :cond_f

    .line 751
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa2

    if-eq v12, v13, :cond_f

    .line 754
    :cond_e
    return-void

    .line 752
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoPauseSupported:Z

    xor-int/lit8 v12, v12, 0x1

    .line 749
    if-nez v12, :cond_e

    .line 753
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    xor-int/lit8 v12, v12, 0x1

    .line 749
    if-nez v12, :cond_e

    .line 757
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    .line 758
    .local v2, "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/VideoModule;

    .line 759
    .local v11, "videoModule":Lcom/android/camera/module/VideoModule;
    invoke-virtual {v11}, Lcom/android/camera/module/VideoModule;->onPauseButtonClick()V

    goto/16 :goto_0

    .line 763
    .end local v2    # "activityBase":Lcom/android/camera/ActivityBase;
    .end local v11    # "videoModule":Lcom/android/camera/module/VideoModule;
    :pswitch_4
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa9

    if-eq v12, v13, :cond_11

    .line 764
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa8

    if-eq v12, v13, :cond_11

    .line 765
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v13, 0xa2

    if-eq v12, v13, :cond_11

    .line 768
    :cond_10
    return-void

    .line 766
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoCaptureEnable:Z

    xor-int/lit8 v12, v12, 0x1

    .line 763
    if-nez v12, :cond_10

    .line 767
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    xor-int/lit8 v12, v12, 0x1

    .line 763
    if-nez v12, :cond_10

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ActivityBase;

    .line 771
    .restart local v2    # "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v2}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v11

    check-cast v11, Lcom/android/camera/module/VideoModule;

    .line 772
    .restart local v11    # "videoModule":Lcom/android/camera/module/VideoModule;
    invoke-virtual {v11}, Lcom/android/camera/module/VideoModule;->capture()Z

    goto/16 :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a003a
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 692
    :sswitch_data_0
    .sparse-switch
        0xa2 -> :sswitch_1
        0xa8 -> :sswitch_0
        0xa9 -> :sswitch_0
    .end sparse-switch
.end method

.method public onModeClicked(I)V
    .locals 1
    .param p1, "newMode"    # I

    .prologue
    .line 939
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    .line 940
    return-void
.end method

.method public onReleaseRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1551
    const-string/jumbo v0, "FragmentBottomAction"

    const-string/jumbo v1, "onReleaseRecording: "

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1552
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1553
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1555
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 220
    invoke-super {p0}, Lcom/android/camera/fragment/BaseFragment;->onResume()V

    .line 221
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->initThumbLayoutByIntent()V

    .line 222
    invoke-static {}, Lcom/android/camera/data/DataRepository;->dataItemGlobal()Lcom/android/camera/data/data/global/DataItemGlobal;

    move-result-object v0

    .line 223
    .local v0, "dataItemGlobal":Lcom/android/camera/data/data/global/DataItemGlobal;
    invoke-virtual {v0}, Lcom/android/camera/data/data/global/DataItemGlobal;->isTimeOut()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "pref_camera_first_use_hint_shown_key"

    .line 224
    const/4 v2, 0x1

    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/android/camera/data/data/global/DataItemGlobal;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    .line 223
    if-eqz v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->showOrHideFilter()V

    .line 229
    :cond_1
    return-void
.end method

.method public onSmartShutterFling(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "start"    # Landroid/graphics/Point;
    .param p2, "center"    # Landroid/graphics/Point;

    .prologue
    .line 1360
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ActivityBase;

    .line 1361
    .local v0, "activityBase":Lcom/android/camera/ActivityBase;
    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v1

    .line 1362
    .local v1, "module":Lcom/android/camera/module/Module;
    invoke-interface {v1, p1, p2}, Lcom/android/camera/module/Module;->onSmartShutterButtonFling(Landroid/graphics/Point;Landroid/graphics/Point;)V

    .line 1363
    return-void
.end method

.method public onSnapClick()V
    .locals 6

    .prologue
    const/16 v5, 0xa

    .line 1367
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1368
    return-void

    .line 1370
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1371
    return-void

    .line 1373
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/android/camera/ActivityBase;

    invoke-virtual {v3}, Lcom/android/camera/ActivityBase;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v2

    .line 1374
    .local v2, "module":Lcom/android/camera/module/Module;
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/android/camera/module/Module;->isIgnoreTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1375
    const-string/jumbo v3, "FragmentBottomAction"

    const-string/jumbo v4, "onSnapClick: ignore onSnapClick event, because module isn\'t ready"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    return-void

    .line 1380
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    const/16 v4, 0xa1

    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1382
    .local v1, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v1, :cond_3

    .line 1383
    return-void

    .line 1386
    :cond_3
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v3

    .line 1387
    const/16 v4, 0xab

    .line 1386
    invoke-virtual {v3, v4}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1388
    .local v0, "backStack":Lcom/android/camera/protocol/ModeProtocol$BackStack;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    .line 1389
    const-string/jumbo v3, "FragmentBottomAction"

    const-string/jumbo v4, "onSnapClick"

    invoke-static {v3, v4}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1390
    iget v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v3, :pswitch_data_0

    .line 1393
    :pswitch_0
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1394
    return-void

    .line 1396
    :cond_4
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    .line 1416
    :goto_0
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1417
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v4, 0x7f0f012e

    invoke-virtual {p0, v4}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1418
    iget-object v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    const v4, 0x8000

    invoke-virtual {v3, v4}, Lcom/android/camera/ui/EdgeHorizonScrollView;->sendAccessibilityEvent(I)V

    .line 1420
    :cond_5
    return-void

    .line 1399
    :pswitch_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1400
    return-void

    .line 1406
    :cond_6
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v3, :cond_7

    .line 1407
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    .line 1408
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 1411
    :cond_7
    invoke-interface {v1, v5}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonClick(I)V

    goto :goto_0

    .line 1390
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapLongPress()V
    .locals 4

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1425
    return-void

    .line 1428
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xa1

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v1

    check-cast v1, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1430
    .local v1, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v1, :cond_1

    .line 1431
    return-void

    .line 1434
    :cond_1
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1435
    return-void

    .line 1465
    :cond_2
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 1466
    const/16 v3, 0xab

    .line 1465
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$BackStack;

    .line 1467
    .local v0, "backStack":Lcom/android/camera/protocol/ModeProtocol$BackStack;
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$BackStack;->handleBackStackFromShutter()Z

    .line 1468
    const-string/jumbo v2, "FragmentBottomAction"

    const-string/jumbo v3, "onSnapLongPress"

    invoke-static {v2, v3}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1470
    invoke-interface {v1}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClick()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    .line 1473
    :cond_3
    return-void
.end method

.method public onSnapLongPressCancelIn()V
    .locals 3

    .prologue
    .line 1496
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1497
    return-void

    .line 1500
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1502
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v0, :cond_1

    .line 1503
    return-void

    .line 1506
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelIn"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel()V

    .line 1509
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 1528
    :goto_0
    :pswitch_0
    return-void

    .line 1514
    :pswitch_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v1, :cond_2

    .line 1515
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    goto :goto_0

    .line 1517
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 1525
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->onSnapClick()V

    goto :goto_0

    .line 1509
    :pswitch_data_0
    .packed-switch 0xa3
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onSnapLongPressCancelOut()V
    .locals 3

    .prologue
    .line 1477
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1478
    return-void

    .line 1481
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1483
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v0, :cond_1

    .line 1484
    return-void

    .line 1486
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapLongPressCancelOut"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonLongClickCancel()V

    .line 1489
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    if-eqz v1, :cond_2

    .line 1490
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mLongPressBurst:Z

    .line 1492
    :cond_2
    return-void
.end method

.method public onSnapLongReachLimit()V
    .locals 0

    .prologue
    .line 1573
    return-void
.end method

.method public onSnapPrepare()V
    .locals 3

    .prologue
    .line 1314
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1315
    return-void

    .line 1318
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 1320
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-nez v0, :cond_1

    .line 1321
    return-void

    .line 1323
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onSnapPrepare"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->onShutterButtonFocus(ZI)V

    .line 1326
    return-void
.end method

.method public onStartRecording()V
    .locals 4

    .prologue
    .line 1532
    const-string/jumbo v1, "FragmentBottomAction"

    const-string/jumbo v2, "onStartRecording"

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isInMovieSolidMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1535
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1536
    .local v0, "delayEnableUIMessage":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1537
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1539
    .end local v0    # "delayEnableUIMessage":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onStopRecording()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1543
    const-string/jumbo v0, "FragmentBottomAction"

    const-string/jumbo v1, "onStopRecording"

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1544
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1545
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1547
    :cond_0
    return-void
.end method

.method public onTrackSnapMissTaken(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1330
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1331
    return-void

    .line 1334
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xba

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    .line 1336
    .local v0, "cameraActionTrack":Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
    if-nez v0, :cond_1

    .line 1337
    return-void

    .line 1339
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackSnapMissTaken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonMissTaken(J)V

    .line 1341
    return-void
.end method

.method public onTrackSnapTaken(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1345
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->isEnableClick()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1346
    return-void

    .line 1349
    :cond_0
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    const/16 v2, 0xba

    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;

    .line 1351
    .local v0, "cameraActionTrack":Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;
    if-nez v0, :cond_1

    .line 1352
    return-void

    .line 1354
    :cond_1
    const-string/jumbo v1, "FragmentBottomAction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackSnapTaken "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-interface {v0, p1, p2}, Lcom/android/camera/protocol/ModeProtocol$CameraActionTrack;->onTrackShutterButtonTaken(J)V

    .line 1356
    return-void
.end method

.method public processingAudioCapture(Z)V
    .locals 1
    .param p1, "start"    # Z

    .prologue
    .line 571
    if-eqz p1, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->startRing()V

    .line 576
    :goto_0
    return-void

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0}, Lcom/android/camera/ui/CameraSnapView;->stopRing()V

    goto :goto_0
.end method

.method public processingFailed()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 562
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    .line 563
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    .line 564
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 565
    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->updateLoading(Z)V

    .line 566
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    .line 567
    return-void
.end method

.method public processingFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 553
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    .line 554
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    .line 555
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 556
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->resetBottom()V

    .line 558
    return-void
.end method

.method public processingPause()V
    .locals 3

    .prologue
    .line 519
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 532
    :goto_0
    :pswitch_0
    return-void

    .line 524
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->pauseRecording()V

    .line 525
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f020132

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 527
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 528
    const/16 v2, 0xac

    .line 527
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 529
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
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

.method public processingResume()V
    .locals 3

    .prologue
    .line 536
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v1, :pswitch_data_0

    .line 549
    :goto_0
    :pswitch_0
    return-void

    .line 541
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v1}, Lcom/android/camera/ui/CameraSnapView;->resumeRecording()V

    .line 542
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    const v2, 0x7f020131

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 544
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v1

    .line 545
    const/16 v2, 0xac

    .line 544
    invoke-virtual {v1, v2}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$TopAlert;

    .line 546
    .local v0, "topAlert":Lcom/android/camera/protocol/ModeProtocol$TopAlert;
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/android/camera/protocol/ModeProtocol$TopAlert;->setRecordingTimeState(I)V

    goto :goto_0

    .line 536
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
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

.method public processingStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 496
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setEnabled(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ModeSelectView;->setEnabled(Z)V

    .line 498
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 515
    :goto_0
    :pswitch_0
    return-void

    .line 504
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-nez v0, :cond_0

    .line 505
    invoke-direct {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->prepareRecording()V

    .line 506
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/CameraSnapView;->triggerAnimation(IZ)V

    goto :goto_0

    .line 498
    nop

    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public provideAnimateElement(ILjava/util/List;)V
    .locals 5
    .param p1, "newMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lio/reactivex/Completable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "animateInElements":Ljava/util/List;, "Ljava/util/List<Lio/reactivex/Completable;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1059
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideAnimateElement(ILjava/util/List;)V

    .line 1061
    invoke-virtual {p0, v3}, Lcom/android/camera/fragment/FragmentBottomAction;->processingAudioCapture(Z)V

    .line 1063
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz v1, :cond_0

    .line 1064
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1, p2}, Lcom/android/camera/fragment/FragmentFilter;->isShowAnimation(Ljava/util/List;)V

    .line 1068
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 1074
    :goto_0
    iget-object v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    if-eqz p2, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, p1, v1}, Lcom/android/camera/ui/CameraSnapView;->setCurrentMode(IZ)V

    .line 1076
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectView:Lcom/android/camera/ui/ModeSelectView;

    iget-boolean v4, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    invoke-virtual {v1, p1, p2, v4}, Lcom/android/camera/ui/ModeSelectView;->judgePosition(ILjava/util/List;Z)V

    .line 1079
    packed-switch p1, :pswitch_data_1

    .line 1081
    :pswitch_0
    const/4 v0, 0x1

    .line 1082
    .local v0, "newState":I
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    .line 1101
    :goto_2
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 1102
    return-void

    .line 1070
    .end local v0    # "newState":I
    :pswitch_1
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mModeSelectLayout:Landroid/view/View;

    const/high16 v4, 0x7f0d0000

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 1074
    goto :goto_1

    .line 1086
    :pswitch_2
    invoke-static {}, Lcom/android/camera/Device;->isSupportedPortraitSwitch()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1087
    const/4 v0, 0x1

    .line 1088
    .restart local v0    # "newState":I
    iput-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 1090
    .end local v0    # "newState":I
    :cond_2
    const/4 v0, -0x1

    .line 1091
    .restart local v0    # "newState":I
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 1096
    .end local v0    # "newState":I
    :pswitch_3
    const/4 v0, -0x1

    .line 1097
    .restart local v0    # "newState":I
    iput-boolean v3, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPickEnable:Z

    goto :goto_2

    .line 1104
    :cond_3
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1106
    if-ne v0, v2, :cond_5

    .line 1107
    if-nez p2, :cond_4

    .line 1108
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;->directSetResult(Landroid/view/View;)V

    .line 1119
    :goto_3
    return-void

    .line 1110
    :cond_4
    new-instance v1, Lcom/android/camera/animation/type/AlphaInOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaInOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1113
    :cond_5
    if-nez p2, :cond_6

    .line 1114
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-static {v1}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;->directSetResult(Landroid/view/View;)V

    goto :goto_3

    .line 1116
    :cond_6
    new-instance v1, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;

    iget-object v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-direct {v1, v2}, Lcom/android/camera/animation/type/AlphaOutOnSubscribe;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Lio/reactivex/Completable;->create(Lio/reactivex/CompletableOnSubscribe;)Lio/reactivex/Completable;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1068
    nop

    :pswitch_data_0
    .packed-switch 0xa5
        :pswitch_1
    .end packed-switch

    .line 1079
    :pswitch_data_1
    .packed-switch 0xa6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected provideEnterAnimation(I)Landroid/view/animation/Animation;
    .locals 4
    .param p1, "lastFragmentInfo"    # I

    .prologue
    .line 1125
    packed-switch p1, :pswitch_data_0

    .line 1131
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0xa1

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1132
    .local v0, "animation":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1135
    return-object v0

    .line 1127
    .end local v0    # "animation":Landroid/view/animation/Animation;
    :pswitch_0
    const/4 v1, 0x0

    return-object v1

    .line 1125
    nop

    :pswitch_data_0
    .packed-switch 0xf0
        :pswitch_0
    .end packed-switch
.end method

.method protected provideExitAnimation()Landroid/view/animation/Animation;
    .locals 3

    .prologue
    .line 1140
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v1, 0xa2

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {v0}, Lcom/android/camera/animation/FragmentAnimationFactory;->wrapperAnimation([I)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public provideRotateItem(Ljava/util/List;I)V
    .locals 1
    .param p2, "degree"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1258
    .local p1, "pendingRotateItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-super {p0, p1, p2}, Lcom/android/camera/fragment/BaseFragment;->provideRotateItem(Ljava/util/List;I)V

    .line 1260
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1262
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCameraPicker:Landroid/view/View;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1263
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mRecordingPause:Landroid/widget/ImageView;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1265
    return-void
.end method

.method protected register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 1
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    .line 604
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->register(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 605
    const/16 v0, 0xb3

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 606
    const/16 v0, 0xa2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 607
    const/16 v0, 0xc0

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 608
    const/16 v0, 0xb7

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 609
    const/16 v0, 0xc2

    invoke-interface {p1, v0, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 610
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomAction;->registerBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 611
    return-void
.end method

.method public selectMode(II)V
    .locals 8
    .param p1, "gravity"    # I
    .param p2, "delayTime"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x3

    .line 994
    const/4 v5, -0x1

    if-ne p1, v5, :cond_0

    .line 995
    return-void

    .line 997
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 998
    if-ne p1, v6, :cond_6

    .line 999
    const p1, 0x800005

    .line 1011
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    .line 1014
    .local v1, "mode":I
    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v6, 0xa9

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    const/16 v6, 0xa8

    if-ne v5, v6, :cond_3

    .line 1015
    :cond_2
    const/16 v1, 0xa2

    .line 1018
    :cond_3
    const/4 v3, 0x0

    .line 1019
    .local v3, "position":I
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5}, Lcom/android/camera/data/data/global/ComponentModuleList;->getItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 1020
    .local v4, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_4

    .line 1021
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5, v0}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v5

    if-ne v5, v1, :cond_9

    .line 1022
    move v3, v0

    .line 1026
    :cond_4
    packed-switch p1, :pswitch_data_0

    .line 1042
    :cond_5
    :goto_2
    :pswitch_0
    iget-object v5, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mComponentModuleList:Lcom/android/camera/data/data/global/ComponentModuleList;

    invoke-virtual {v5, v3}, Lcom/android/camera/data/data/global/ComponentModuleList;->getMode(I)I

    move-result v2

    .line 1043
    .local v2, "newMode":I
    invoke-virtual {p0, v2, p2}, Lcom/android/camera/fragment/FragmentBottomAction;->changeMode(II)V

    .line 1044
    return-void

    .line 1000
    .end local v0    # "i":I
    .end local v1    # "mode":I
    .end local v2    # "newMode":I
    .end local v3    # "position":I
    .end local v4    # "size":I
    :cond_6
    if-ne p1, v7, :cond_1

    .line 1001
    const p1, 0x800003

    goto :goto_0

    .line 1004
    :cond_7
    if-ne p1, v6, :cond_8

    .line 1005
    const p1, 0x800003

    goto :goto_0

    .line 1006
    :cond_8
    if-ne p1, v7, :cond_1

    .line 1007
    const p1, 0x800005

    goto :goto_0

    .line 1020
    .restart local v0    # "i":I
    .restart local v1    # "mode":I
    .restart local v3    # "position":I
    .restart local v4    # "size":I
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1028
    :pswitch_1
    if-lez v3, :cond_5

    .line 1029
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1034
    :pswitch_2
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_5

    .line 1035
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1026
    :pswitch_data_0
    .packed-switch 0x800003
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setClickEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 367
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->setClickEnable(Z)V

    .line 370
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/CameraSnapView;->setEnabled(Z)V

    .line 371
    return-void
.end method

.method public showOrHideFilter()V
    .locals 10

    .prologue
    const/high16 v9, 0x42480000    # 50.0f

    const v8, 0x3f666666    # 0.9f

    const-wide/16 v6, 0x12c

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 279
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    .line 281
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 282
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    .line 282
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 284
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 285
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 285
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 287
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v9}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 288
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 289
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 288
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 290
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 291
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v8}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 292
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 292
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 294
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 295
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 296
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mSineEaseOut:Lmiui/view/animation/SineEaseOutInterpolator;

    .line 295
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 297
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 298
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 299
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 298
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 300
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$2;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$2;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    .line 298
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 318
    invoke-static {}, Lcom/android/camera/Util;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const v1, 0x7f0f012c

    invoke-virtual {p0, v1}, Lcom/android/camera/fragment/FragmentBottomAction;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 360
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    .line 361
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0}, Lcom/android/camera/fragment/FragmentFilter;->updateFilterData()V

    .line 362
    return-void

    .line 323
    :cond_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/fragment/FragmentFilter;->delayShowSelected(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 325
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 326
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 325
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 327
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 328
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mEdgeHorizonScrollView:Lcom/android/camera/ui/EdgeHorizonScrollView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 329
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 328
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 330
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 331
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mV9bottomParentLayout:Landroid/widget/RelativeLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 332
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 331
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 333
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 334
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 335
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mShutterButton:Lcom/android/camera/ui/CameraSnapView;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 335
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 337
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    iget v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterListHeight:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 338
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 339
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFilterLayout:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCubicEaseOut:Lmiui/view/animation/CubicEaseOutInterpolator;

    .line 339
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 341
    new-instance v1, Lcom/android/camera/fragment/FragmentBottomAction$3;

    invoke-direct {v1, p0}, Lcom/android/camera/fragment/FragmentBottomAction$3;-><init>(Lcom/android/camera/fragment/FragmentBottomAction;)V

    .line 339
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    goto/16 :goto_0
.end method

.method public switchFilter(I)Z
    .locals 4
    .param p1, "gravity"    # I

    .prologue
    const/4 v1, 0x0

    .line 261
    iget-boolean v2, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsShowFilter:Z

    if-eqz v2, :cond_2

    .line 262
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    .line 263
    const/16 v3, 0xa1

    .line 262
    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$CameraAction;

    .line 264
    .local v0, "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/camera/protocol/ModeProtocol$CameraAction;->isDoingAction()Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 265
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v1, p1}, Lcom/android/camera/fragment/FragmentFilter;->switchFilter(I)V

    .line 267
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 269
    .end local v0    # "cameraAction":Lcom/android/camera/protocol/ModeProtocol$CameraAction;
    :cond_2
    return v1
.end method

.method protected unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V
    .locals 3
    .param p1, "modeCoordinator"    # Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;

    .prologue
    const/4 v2, 0x0

    .line 615
    invoke-super {p0, p1}, Lcom/android/camera/fragment/BaseFragment;->unRegister(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;)V

    .line 616
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 617
    const/16 v1, 0xb3

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 618
    const/16 v1, 0xa2

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 619
    const/16 v1, 0xc0

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 620
    const/16 v1, 0xb7

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 621
    const/16 v1, 0xc2

    invoke-interface {p1, v1, p0}, Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 622
    invoke-virtual {p0, p1, p0}, Lcom/android/camera/fragment/FragmentBottomAction;->unRegisterBackStack(Lcom/android/camera/protocol/ModeProtocol$ModeCoordinator;Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 625
    .local v0, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    if-eqz v1, :cond_0

    .line 626
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mFragmentFilter:Lcom/android/camera/fragment/FragmentFilter;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 628
    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 629
    return-void
.end method

.method public updateLoading(Z)V
    .locals 4
    .param p1, "hideOrShowThumbProgress"    # Z

    .prologue
    const/4 v1, 0x1

    .line 468
    if-nez p1, :cond_1

    .line 469
    iget-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 473
    iget v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mCurrentMode:I

    packed-switch v0, :pswitch_data_0

    .line 475
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 492
    :goto_0
    return-void

    .line 480
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 488
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 489
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 490
    iget-object v0, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 473
    :pswitch_data_0
    .packed-switch 0xa1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public updateThumbnail(Lcom/android/camera/Thumbnail;Z)V
    .locals 6
    .param p1, "thumbnail"    # Lcom/android/camera/Thumbnail;
    .param p2, "animation"    # Z

    .prologue
    const/16 v2, 0x8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 399
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mInLoading:Z

    .line 401
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 402
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 405
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mIsIntentAction:Z

    if-eqz v1, :cond_1

    .line 406
    return-void

    .line 409
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mVideoRecordingStarted:Z

    if-eqz v1, :cond_2

    .line 410
    return-void

    .line 413
    :cond_2
    if-nez p1, :cond_3

    .line 414
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    const v2, 0x7f020151

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    return-void

    .line 419
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/fragment/FragmentBottomAction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/camera/Thumbnail;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 420
    .local v0, "roundedBitmapDrawable":Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;
    invoke-virtual {v0}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 421
    invoke-virtual {v0, v4}, Landroid/support/v4/graphics/drawable/RoundedBitmapDrawable;->setCircular(Z)V

    .line 422
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    if-nez p2, :cond_4

    .line 425
    return-void

    .line 445
    :cond_4
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    const v2, 0x3e99999a    # 0.3f

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 446
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setScaleX(Landroid/view/View;F)V

    .line 447
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Landroid/support/v4/view/ViewCompat;->setScaleY(Landroid/view/View;F)V

    .line 448
    iget-object v1, p0, Lcom/android/camera/fragment/FragmentBottomAction;->mThumbnailImageLayout:Landroid/view/ViewGroup;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->alpha(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleX(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->scaleY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    .line 449
    const-wide/16 v2, 0x50

    .line 448
    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->start()V

    .line 452
    return-void
.end method
