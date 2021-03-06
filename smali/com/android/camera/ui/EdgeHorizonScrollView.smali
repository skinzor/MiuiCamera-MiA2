.class public Lcom/android/camera/ui/EdgeHorizonScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "EdgeHorizonScrollView.java"


# instance fields
.field private mDownX:F

.field private mEdgePaint:Landroid/graphics/Paint;

.field private mEdgeWidth:I

.field private mIsRTL:Z

.field private mScrolled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 39
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->initView()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 44
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->initView()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    .line 35
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 49
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->initView()V

    .line 50
    return-void
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->getWidth()I

    move-result v15

    .line 73
    .local v15, "width":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->getHeight()I

    move-result v9

    .line 76
    .local v9, "height":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {v15, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-float v4, v1

    int-to-float v5, v9

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v14

    .line 77
    .local v14, "saveLayerCount":I
    invoke-super/range {p0 .. p4}, Landroid/widget/HorizontalScrollView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v8

    .line 78
    .local v8, "drawChild":Z
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mIsRTL:Z

    if-eqz v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v1

    sub-int/2addr v1, v15

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_0
    int-to-float v1, v1

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 82
    int-to-float v1, v15

    const/high16 v2, 0x40000000    # 2.0f

    div-float v11, v1, v2

    .line 83
    .local v11, "middleWidth":F
    int-to-float v1, v9

    const/high16 v2, 0x40000000    # 2.0f

    div-float v10, v1, v2

    .line 84
    .local v10, "middleHeight":F
    sub-int v1, v9, v15

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v12, v1, v2

    .line 87
    .local v12, "offset":F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 89
    .local v13, "saveCount":I
    const/high16 v1, 0x42b40000    # 90.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 90
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    const/4 v1, 0x0

    sub-float v2, v1, v12

    const/4 v3, 0x0

    int-to-float v1, v15

    add-float v4, v1, v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 92
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v13

    .line 98
    const/high16 v1, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v11, v10}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 99
    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Landroid/graphics/Canvas;->translate(FF)V

    .line 100
    const/4 v1, 0x0

    sub-float v2, v1, v12

    const/4 v3, 0x0

    int-to-float v1, v15

    add-float v4, v1, v12

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 105
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 107
    return v8

    .line 78
    .end local v10    # "middleHeight":F
    .end local v11    # "middleWidth":F
    .end local v12    # "offset":F
    .end local v13    # "saveCount":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initView()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v5, -0x1000000

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/camera/Util;->isLayoutRTL(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mIsRTL:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/EdgeHorizonScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0900cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    .line 60
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 63
    iget-object v0, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 64
    iget-object v8, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mEdgeWidth:I

    int-to-float v4, v2

    filled-new-array {v5, v5, v9}, [I

    move-result-object v5

    const/4 v2, 0x3

    new-array v6, v2, [F

    fill-array-data v6, :array_0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    invoke-virtual {p0, v9}, Lcom/android/camera/ui/EdgeHorizonScrollView;->setFocusable(Z)V

    .line 67
    return-void

    .line 64
    :array_0
    .array-data 4
        0x0
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v6, 0x41880000    # 17.0f

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 140
    :goto_0
    return v4

    .line 114
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 115
    iput-boolean v4, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    .line 116
    return v5

    .line 119
    :pswitch_1
    iget v2, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    sub-float v1, v2, v3

    .line 123
    .local v1, "distanceX":F
    invoke-static {}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getInstance()Lcom/android/camera/protocol/ModeCoordinatorImpl;

    move-result-object v2

    const/16 v3, 0xb3

    invoke-virtual {v2, v3}, Lcom/android/camera/protocol/ModeCoordinatorImpl;->getAttachProtocol(I)Lcom/android/camera/protocol/ModeProtocol$BaseProtocol;

    move-result-object v0

    check-cast v0, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;

    .line 124
    .local v0, "controller":Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
    iget-boolean v2, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    if-nez v2, :cond_1

    .line 125
    invoke-static {v6}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_2

    .line 126
    const/4 v2, 0x3

    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->selectMode(II)V

    .line 127
    iput-boolean v5, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    .line 133
    :cond_1
    :goto_1
    return v5

    .line 128
    :cond_2
    invoke-static {v6}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_1

    .line 129
    const/4 v2, 0x5

    invoke-interface {v0, v2, v4}, Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;->selectMode(II)V

    .line 130
    iput-boolean v5, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    goto :goto_1

    .line 136
    .end local v0    # "controller":Lcom/android/camera/protocol/ModeProtocol$ModeChangeController;
    .end local v1    # "distanceX":F
    :pswitch_2
    iput v3, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mDownX:F

    .line 137
    iput-boolean v4, p0, Lcom/android/camera/ui/EdgeHorizonScrollView;->mScrolled:Z

    goto :goto_0

    .line 112
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
