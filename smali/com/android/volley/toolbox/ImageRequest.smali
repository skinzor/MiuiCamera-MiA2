.class public Lcom/android/volley/toolbox/ImageRequest;
.super Lcom/android/volley/Request;
.source "ImageRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final sDecodeLock:Ljava/lang/Object;


# instance fields
.field private final mDecodeConfig:Landroid/graphics/Bitmap$Config;

.field private final mListener:Lcom/android/volley/Response$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxHeight:I

.field private final mMaxWidth:I

.field private mScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/volley/Response$Listener;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/android/volley/Response$ErrorListener;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p3, "maxWidth"    # I
    .param p4, "maxHeight"    # I
    .param p5, "scaleType"    # Landroid/widget/ImageView$ScaleType;
    .param p6, "decodeConfig"    # Landroid/graphics/Bitmap$Config;
    .param p7, "errorListener"    # Lcom/android/volley/Response$ErrorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/volley/Response$Listener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/android/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 74
    .local p2, "listener":Lcom/android/volley/Response$Listener;, "Lcom/android/volley/Response$Listener<Landroid/graphics/Bitmap;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 75
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    .line 76
    const/high16 v3, 0x40000000    # 2.0f

    .line 75
    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/ImageRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 77
    iput-object p2, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    .line 78
    iput-object p6, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    .line 79
    iput p3, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 80
    iput p4, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 81
    iput-object p5, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 82
    return-void
.end method

.method private doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 13
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 171
    iget-object v3, p1, Lcom/android/volley/NetworkResponse;->data:[B

    .line 172
    .local v3, "data":[B
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 173
    .local v4, "decodeOptions":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x0

    .line 174
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    if-nez v8, :cond_0

    .line 175
    iget-object v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mDecodeConfig:Landroid/graphics/Bitmap$Config;

    iput-object v8, v4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 176
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 210
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v2, :cond_3

    .line 211
    new-instance v8, Lcom/android/volley/ParseError;

    invoke-direct {v8, p1}, Lcom/android/volley/ParseError;-><init>(Lcom/android/volley/NetworkResponse;)V

    invoke-static {v8}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v8

    return-object v8

    .line 179
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iput-boolean v12, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 181
    iget v1, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 182
    .local v1, "actualWidth":I
    iget v0, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 185
    .local v0, "actualHeight":I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    .line 186
    iget-object v10, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 185
    invoke-static {v8, v9, v1, v0, v10}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    .line 187
    .local v6, "desiredWidth":I
    iget v8, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxHeight:I

    iget v9, p0, Lcom/android/volley/toolbox/ImageRequest;->mMaxWidth:I

    .line 188
    iget-object v10, p0, Lcom/android/volley/toolbox/ImageRequest;->mScaleType:Landroid/widget/ImageView$ScaleType;

    .line 187
    invoke-static {v8, v9, v0, v1, v10}, Lcom/android/volley/toolbox/ImageRequest;->getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    .line 191
    .local v5, "desiredHeight":I
    iput-boolean v11, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    invoke-static {v1, v0, v6, v5}, Lcom/android/volley/toolbox/ImageRequest;->findBestSampleSize(IIII)I

    move-result v8

    .line 194
    iput v8, v4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 197
    array-length v8, v3

    invoke-static {v3, v11, v8, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 200
    .local v7, "tempBitmap":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-gt v8, v6, :cond_1

    .line 201
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-le v8, v5, :cond_2

    .line 202
    :cond_1
    invoke-static {v7, v6, v5, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 204
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 206
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    move-object v2, v7

    .local v2, "bitmap":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 213
    .end local v0    # "actualHeight":I
    .end local v1    # "actualWidth":I
    .end local v5    # "desiredHeight":I
    .end local v6    # "desiredWidth":I
    .end local v7    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_3
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v8

    return-object v8
.end method

.method static findBestSampleSize(IIII)I
    .locals 12
    .param p0, "actualWidth"    # I
    .param p1, "actualHeight"    # I
    .param p2, "desiredWidth"    # I
    .param p3, "desiredHeight"    # I

    .prologue
    .line 234
    int-to-double v8, p0

    int-to-double v10, p2

    div-double v6, v8, v10

    .line 235
    .local v6, "wr":D
    int-to-double v8, p1

    int-to-double v10, p3

    div-double v0, v8, v10

    .line 236
    .local v0, "hr":D
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 237
    .local v4, "ratio":D
    const/high16 v2, 0x3f800000    # 1.0f

    .line 238
    .local v2, "n":F
    :goto_0
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-double v8, v3

    cmpg-double v3, v8, v4

    if-gtz v3, :cond_0

    .line 239
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    goto :goto_0

    .line 242
    :cond_0
    float-to-int v3, v2

    return v3
.end method

.method private static getResizedDimension(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 8
    .param p0, "maxPrimary"    # I
    .param p1, "maxSecondary"    # I
    .param p2, "actualPrimary"    # I
    .param p3, "actualSecondary"    # I
    .param p4, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 115
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 116
    return p2

    .line 120
    :cond_0
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_2

    .line 121
    if-nez p0, :cond_1

    .line 122
    return p2

    .line 124
    :cond_1
    return p0

    .line 128
    :cond_2
    if-nez p0, :cond_3

    .line 129
    int-to-double v4, p1

    int-to-double v6, p3

    div-double v0, v4, v6

    .line 130
    .local v0, "ratio":D
    int-to-double v4, p2

    mul-double/2addr v4, v0

    double-to-int v3, v4

    return v3

    .line 133
    .end local v0    # "ratio":D
    :cond_3
    if-nez p1, :cond_4

    .line 134
    return p0

    .line 137
    :cond_4
    int-to-double v4, p3

    int-to-double v6, p2

    div-double v0, v4, v6

    .line 138
    .restart local v0    # "ratio":D
    move v2, p0

    .line 141
    .local v2, "resized":I
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v3, :cond_6

    .line 142
    int-to-double v4, p0

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpg-double v3, v4, v6

    if-gez v3, :cond_5

    .line 143
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    .line 145
    :cond_5
    return v2

    .line 148
    :cond_6
    int-to-double v4, p0

    mul-double/2addr v4, v0

    int-to-double v6, p1

    cmpl-double v3, v4, v6

    if-lez v3, :cond_7

    .line 149
    int-to-double v4, p1

    div-double/2addr v4, v0

    double-to-int v2, v4

    .line 151
    :cond_7
    return v2
.end method


# virtual methods
.method protected deliverResponse(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "response"    # Landroid/graphics/Bitmap;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/volley/toolbox/ImageRequest;->mListener:Lcom/android/volley/Response$Listener;

    invoke-interface {v0, p1}, Lcom/android/volley/Response$Listener;->onResponse(Ljava/lang/Object;)V

    .line 220
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 217
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->deliverResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/volley/Request$Priority;"
        }
    .end annotation

    .prologue
    .line 96
    sget-object v0, Lcom/android/volley/Request$Priority;->LOW:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 6
    .param p1, "response"    # Lcom/android/volley/NetworkResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    sget-object v2, Lcom/android/volley/toolbox/ImageRequest;->sDecodeLock:Ljava/lang/Object;

    monitor-enter v2

    .line 159
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/volley/toolbox/ImageRequest;->doParse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    :try_start_1
    const-string/jumbo v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p0}, Lcom/android/volley/toolbox/ImageRequest;->getUrl()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-static {v1, v3}, Lcom/android/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    new-instance v1, Lcom/android/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/android/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit v2

    return-object v1

    .line 157
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
