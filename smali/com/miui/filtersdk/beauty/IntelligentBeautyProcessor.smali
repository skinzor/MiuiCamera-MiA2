.class public abstract Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;
.super Lcom/miui/filtersdk/beauty/BeautyProcessor;
.source "IntelligentBeautyProcessor.java"


# instance fields
.field private mExtraSpan:F

.field protected mLevelParameters:[[F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/miui/filtersdk/beauty/BeautyProcessor;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->mExtraSpan:F

    return-void
.end method


# virtual methods
.method public getExtraSpan()F
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->mExtraSpan:F

    return v0
.end method

.method public final getIntelligentLevelParams(I)Ljava/util/Map;
    .locals 5
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Lcom/miui/filtersdk/beauty/BeautyParameterType;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 20
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 21
    .local v1, "paramsMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/miui/filtersdk/beauty/BeautyParameterType;Ljava/lang/Float;>;"
    invoke-virtual {p0}, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->getSupportedBeautyParamTypes()[Lcom/miui/filtersdk/beauty/BeautyParameterType;

    move-result-object v2

    .line 22
    .local v2, "types":[Lcom/miui/filtersdk/beauty/BeautyParameterType;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_0

    .line 25
    return-object v1

    .line 23
    :cond_0
    aget-object v3, v2, v0

    iget-object v4, p0, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->mLevelParameters:[[F

    aget-object v4, v4, p1

    aget v4, v4, v0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setExtraSpan(F)V
    .locals 0
    .param p1, "extraSpan"    # F

    .prologue
    .line 16
    iput p1, p0, Lcom/miui/filtersdk/beauty/IntelligentBeautyProcessor;->mExtraSpan:F

    .line 17
    return-void
.end method
