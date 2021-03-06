.class public abstract Lcom/android/camera/effect/renders/ShaderRender;
.super Lcom/android/camera/effect/renders/Render;
.source "ShaderRender.java"


# static fields
.field private static final VERTEX:Ljava/lang/String;


# instance fields
.field protected mAttriSupportedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAttributePositionH:I

.field protected mAttributeTexCoorH:I

.field protected mBlendEnabled:Z

.field protected mPreviewEffectRect:[F

.field protected mProgram:I

.field protected mSnapshotEffectRect:[F

.field protected mTexCoorBuffer:Ljava/nio/FloatBuffer;

.field protected mUniformAlphaH:I

.field protected mUniformBlendAlphaH:I

.field protected mUniformMVPMatrixH:I

.field protected mUniformSTMatrixH:I

.field protected mUniformTextureH:I

.field protected mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "vertex_normal.txt"

    invoke-static {v0}, Lcom/android/camera/effect/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/effect/renders/ShaderRender;->VERTEX:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    const/4 v1, 0x4

    .line 43
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    .line 34
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mSnapshotEffectRect:[F

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initShader()V

    .line 45
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initVertexData()V

    .line 46
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initSupportAttriList()V

    .line 47
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    const/4 v1, 0x4

    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    .line 31
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mBlendEnabled:Z

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mPreviewEffectRect:[F

    .line 34
    new-array v0, v1, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mSnapshotEffectRect:[F

    .line 51
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initShader()V

    .line 52
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initVertexData()V

    .line 53
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->initSupportAttriList()V

    .line 54
    return-void

    .line 33
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 34
    :array_1
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static allocateByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .param p0, "size"    # I

    .prologue
    .line 57
    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected bindTexture(II)Z
    .locals 2
    .param p1, "textureId"    # I
    .param p2, "texure"    # I

    .prologue
    const/16 v1, 0xde1

    .line 78
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 79
    const/4 v0, 0x0

    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 80
    invoke-static {v1, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method protected bindTexture(Lcom/android/gallery3d/ui/BasicTexture;I)Z
    .locals 2
    .param p1, "texture"    # Lcom/android/gallery3d/ui/BasicTexture;
    .param p2, "texure"    # I

    .prologue
    const/4 v1, 0x0

    .line 65
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/ui/BasicTexture;->onBind(Lcom/android/gallery3d/ui/GLCanvas;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    return v1

    .line 68
    :cond_0
    invoke-static {p2}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 72
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTarget()I

    move-result v0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 73
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTarget()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    iget v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "delete program "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v1, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    invoke-interface {v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->deleteProgram(I)V

    .line 111
    iput v3, p0, Lcom/android/camera/effect/renders/ShaderRender;->mProgram:I

    .line 113
    :cond_0
    return-void
.end method

.method public abstract draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/ShaderRender;->destroy()V

    .line 118
    invoke-super {p0}, Lcom/android/camera/effect/renders/Render;->finalize()V

    .line 119
    return-void
.end method

.method public abstract getFragShaderString()Ljava/lang/String;
.end method

.method public getVertexShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/android/camera/effect/renders/ShaderRender;->VERTEX:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract initShader()V
.end method

.method protected abstract initSupportAttriList()V
.end method

.method protected abstract initVertexData()V
.end method

.method public isAttriSupported(I)Z
    .locals 2
    .param p1, "attri"    # I

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/camera/effect/renders/ShaderRender;->mAttriSupportedList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected setBlendEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/effect/renders/ShaderRender;->setBlendEnabled(ZZ)V

    .line 86
    return-void
.end method

.method protected setBlendEnabled(ZZ)V
    .locals 2
    .param p1, "enabled"    # Z
    .param p2, "premultiplied"    # Z

    .prologue
    const/16 v0, 0xbe2

    .line 89
    if-eqz p1, :cond_1

    .line 90
    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 91
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 92
    :goto_0
    const/16 v1, 0x303

    .line 91
    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 96
    :goto_1
    return-void

    .line 91
    :cond_0
    const/16 v0, 0x302

    goto :goto_0

    .line 94
    :cond_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    goto :goto_1
.end method
