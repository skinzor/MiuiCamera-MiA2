.class public Lcom/android/gallery3d/ui/BaseGLCanvas;
.super Ljava/lang/Object;
.source "BaseGLCanvas.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# static fields
.field public static sMaxTextureSize:I


# instance fields
.field private final mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeletePrograms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

.field private mHeight:I

.field protected mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

.field protected mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

.field protected mState:Lcom/android/camera/effect/GLCanvasState;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0x1000

    sput v0, Lcom/android/gallery3d/ui/BaseGLCanvas;->sMaxTextureSize:I

    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v1, Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {v1}, Lcom/android/camera/effect/GLCanvasState;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 22
    new-instance v1, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 23
    new-instance v1, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 24
    new-instance v1, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 25
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    .line 31
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 32
    .local v0, "size":[I
    const/16 v1, 0xd33

    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 33
    aget v1, v0, v2

    sput v1, Lcom/android/gallery3d/ui/BaseGLCanvas;->sMaxTextureSize:I

    .line 34
    return-void
.end method


# virtual methods
.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 1
    .param p1, "frameBuffer"    # Lcom/android/camera/effect/FrameBuffer;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 164
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 78
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 79
    return-void
.end method

.method public deleteFrameBuffer(I)V
    .locals 2
    .param p1, "frameBufferId"    # I

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 113
    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public deleteProgram(I)V
    .locals 3
    .param p1, "programId"    # I

    .prologue
    .line 124
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    monitor-enter v1

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 127
    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .param p1, "texture"    # Lcom/android/gallery3d/ui/BasicTexture;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 89
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const/4 v0, 0x0

    monitor-exit v1

    return v0

    .line 92
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/IntArray;->add(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 93
    const/4 v0, 0x1

    monitor-exit v1

    return v0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 1
    .param p1, "attr"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 159
    return-void
.end method

.method public endBindFrameBuffer()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 169
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 191
    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    .line 192
    return-void
.end method

.method public getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mHeight:I

    return v0
.end method

.method public getState()Lcom/android/camera/effect/GLCanvasState;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mWidth:I

    return v0
.end method

.method protected initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 37
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 39
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 40
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 41
    const/16 v0, 0xcf5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 42
    const/16 v0, 0xd05

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 43
    return-void
.end method

.method public prepareBlurRenders()V
    .locals 0

    .prologue
    .line 187
    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 6
    .param p1, "isWhole"    # Z
    .param p2, "renderId"    # I

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    .line 180
    iget-object v2, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderCaches:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    move v5, p2

    .line 179
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    .line 182
    :cond_0
    return-void
.end method

.method public recycledResources()V
    .locals 5

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v2

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 133
    .local v0, "ids":Lcom/android/gallery3d/ui/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 134
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 135
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 139
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glDeleteBuffers(I[II)V

    .line 141
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 145
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 146
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Landroid/opengl/GLES20;->glDeleteFramebuffers(I[II)V

    .line 147
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 150
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 131
    .end local v0    # "ids":Lcom/android/gallery3d/ui/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .restart local v0    # "ids":Lcom/android/gallery3d/ui/IntArray;
    :cond_3
    monitor-exit v2

    .line 154
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 73
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 57
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 58
    iput p1, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mWidth:I

    .line 59
    iput p2, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mHeight:I

    .line 61
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 62
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 63
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->identityAllM()V

    .line 64
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 66
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    int-to-float v1, p2

    invoke-virtual {v0, v3, v1, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 67
    iget-object v0, p0, Lcom/android/gallery3d/ui/BaseGLCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 68
    return-void
.end method
