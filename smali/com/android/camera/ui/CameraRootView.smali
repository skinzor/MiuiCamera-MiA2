.class public Lcom/android/camera/ui/CameraRootView;
.super Landroid/widget/FrameLayout;
.source "CameraRootView.java"


# instance fields
.field private mDisableTouchevt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    .line 14
    return-void
.end method


# virtual methods
.method public disableTouchEvent()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    .line 28
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    if-eqz v0, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 21
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 23
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public enableTouchEvent()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/CameraRootView;->mDisableTouchevt:Z

    .line 32
    return-void
.end method
