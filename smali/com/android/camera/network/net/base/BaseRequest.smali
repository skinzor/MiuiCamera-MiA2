.class public abstract Lcom/android/camera/network/net/base/BaseRequest;
.super Ljava/lang/Object;
.source "BaseRequest.java"

# interfaces
.implements Lcom/android/camera/network/net/base/ResponseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/android/camera/network/net/base/ResponseErrorHandler;"
    }
.end annotation


# static fields
.field private static mAppResponseErrorHandler:Lcom/android/camera/network/net/base/ResponseErrorHandler;


# instance fields
.field protected mCacheExpires:J

.field protected mCacheSoftTtl:J

.field private mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

.field protected mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mRequestError:Lcom/android/camera/network/net/base/RequestError;

.field protected mResponse:[Ljava/lang/Object;

.field private mTag:Ljava/lang/Object;

.field private mUseCache:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    .line 19
    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mTag:Ljava/lang/Object;

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mUseCache:Z

    .line 31
    iput-wide v2, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    .line 33
    iput-wide v2, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheSoftTtl:J

    .line 15
    return-void
.end method


# virtual methods
.method public final addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-object p0

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    .line 87
    :cond_1
    if-nez p2, :cond_2

    .line 88
    const-string/jumbo p2, ""

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mParams:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-object p0
.end method

.method protected deliverError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/android/camera/network/net/base/ErrorCode;
    .param p2, "errorMessage"    # Ljava/lang/String;
    .param p3, "responseData"    # Ljava/lang/Object;

    .prologue
    .line 65
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    new-instance v0, Lcom/android/camera/network/net/base/RequestError;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/camera/network/net/base/RequestError;-><init>(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mRequestError:Lcom/android/camera/network/net/base/RequestError;

    .line 66
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/camera/network/net/base/ResponseDispatcher;->onResponseError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_0
    sget-object v0, Lcom/android/camera/network/net/base/BaseRequest;->mAppResponseErrorHandler:Lcom/android/camera/network/net/base/ResponseErrorHandler;

    if-eqz v0, :cond_1

    .line 70
    sget-object v0, Lcom/android/camera/network/net/base/BaseRequest;->mAppResponseErrorHandler:Lcom/android/camera/network/net/base/ResponseErrorHandler;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/network/net/base/ResponseErrorHandler;->onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    :cond_1
    return-void
.end method

.method protected varargs deliverResponse([Ljava/lang/Object;)V
    .locals 1
    .param p1, "response"    # [Ljava/lang/Object;

    .prologue
    .line 58
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    iput-object p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mResponse:[Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/camera/network/net/base/ResponseDispatcher;->onResponse([Ljava/lang/Object;)V

    .line 62
    :cond_0
    return-void
.end method

.method public abstract execute()V
.end method

.method public final execute(Lcom/android/camera/network/net/base/ResponseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/network/net/base/ResponseListener;

    .prologue
    .line 141
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/camera/network/net/base/BaseRequest;->setOnResponseListener(Lcom/android/camera/network/net/base/ResponseListener;)Lcom/android/camera/network/net/base/BaseRequest;

    .line 142
    invoke-virtual {p0}, Lcom/android/camera/network/net/base/BaseRequest;->execute()V

    .line 143
    return-void
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    iget-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method protected final isUseCache()Z
    .locals 1

    .prologue
    .line 105
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    iget-boolean v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mUseCache:Z

    return v0
.end method

.method public abstract onRequestError(Lcom/android/camera/network/net/base/ErrorCode;Ljava/lang/String;Ljava/lang/Object;)V
.end method

.method public final setCacheExpires(J)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .param p1, "expires"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    iput-wide p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheExpires:J

    .line 115
    return-object p0
.end method

.method public final setCacheSoftTtl(J)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .param p1, "softTtl"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    iput-wide p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mCacheSoftTtl:J

    .line 125
    return-object p0
.end method

.method public final setOnResponseListener(Lcom/android/camera/network/net/base/ResponseListener;)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 1
    .param p1, "listener"    # Lcom/android/camera/network/net/base/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/camera/network/net/base/ResponseListener;",
            ")",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    new-instance v0, Lcom/android/camera/network/net/base/ResponseDispatcher;

    invoke-direct {v0, p1}, Lcom/android/camera/network/net/base/ResponseDispatcher;-><init>(Lcom/android/camera/network/net/base/ResponseListener;)V

    iput-object v0, p0, Lcom/android/camera/network/net/base/BaseRequest;->mListenerDispatcher:Lcom/android/camera/network/net/base/ResponseDispatcher;

    .line 49
    return-object p0
.end method

.method public final setUseCache(Z)Lcom/android/camera/network/net/base/BaseRequest;
    .locals 0
    .param p1, "useCache"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/android/camera/network/net/base/BaseRequest",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "this":Lcom/android/camera/network/net/base/BaseRequest;, "Lcom/android/camera/network/net/base/BaseRequest<TT;>;"
    iput-boolean p1, p0, Lcom/android/camera/network/net/base/BaseRequest;->mUseCache:Z

    .line 101
    return-object p0
.end method
