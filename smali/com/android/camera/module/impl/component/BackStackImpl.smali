.class public Lcom/android/camera/module/impl/component/BackStackImpl;
.super Ljava/lang/Object;
.source "BackStackImpl.java"

# interfaces
.implements Lcom/android/camera/protocol/ModeProtocol$BackStack;


# instance fields
.field private mActivity:Lcom/android/camera/ActivityBase;

.field private mStacks:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 1
    .param p1, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 25
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    .line 27
    return-void
.end method

.method public static create(Lcom/android/camera/ActivityBase;)Lcom/android/camera/module/impl/component/BackStackImpl;
    .locals 1
    .param p0, "activityBase"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 20
    new-instance v0, Lcom/android/camera/module/impl/component/BackStackImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/module/impl/component/BackStackImpl;-><init>(Lcom/android/camera/ActivityBase;)V

    return-object v0
.end method

.method private final handleBackStack(I)Z
    .locals 4
    .param p1, "callingFrom"    # I

    .prologue
    const/4 v3, 0x0

    .line 53
    iget-object v2, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 54
    return v3

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "backTrace$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;

    .line 58
    .local v0, "backTrace":Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
    invoke-interface {v0, p1}, Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;->onBackEvent(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    const/4 v2, 0x1

    return v2

    .line 62
    .end local v0    # "backTrace":Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;
    :cond_2
    return v3
.end method


# virtual methods
.method public addInBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "handleBackTrack":Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;, "TP;"
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
.end method

.method public handleBackStackFromKeyBack()Z
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result v0

    return v0
.end method

.method public handleBackStackFromShutter()Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result v0

    return v0
.end method

.method public handleBackStackFromTapDown(II)Z
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/CameraScreenNail;->getRenderRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    const/4 v0, 0x0

    return v0

    .line 80
    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/camera/module/impl/component/BackStackImpl;->handleBackStack(I)Z

    move-result v0

    return v0
.end method

.method public registerProtocol()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->attachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 32
    return-void
.end method

.method public removeBackStack(Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;",
            ">(TP;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "handleBackTrack":Lcom/android/camera/protocol/ModeProtocol$HandleBackTrace;, "TP;"
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public unRegisterProtocol()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mStacks:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/module/impl/component/BackStackImpl;->mActivity:Lcom/android/camera/ActivityBase;

    .line 38
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v0

    const/16 v1, 0xab

    invoke-virtual {v0, v1, p0}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->detachProtocol(ILcom/android/camera/protocol/ModeProtocol$BaseProtocol;)V

    .line 40
    return-void
.end method
