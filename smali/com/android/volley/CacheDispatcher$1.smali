.class Lcom/android/volley/CacheDispatcher$1;
.super Ljava/lang/Object;
.source "CacheDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/volley/CacheDispatcher;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/volley/CacheDispatcher;

.field final synthetic val$request:Lcom/android/volley/Request;


# direct methods
.method constructor <init>(Lcom/android/volley/CacheDispatcher;Lcom/android/volley/Request;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/volley/CacheDispatcher;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/volley/CacheDispatcher$1;->this$0:Lcom/android/volley/CacheDispatcher;

    iput-object p2, p0, Lcom/android/volley/CacheDispatcher$1;->val$request:Lcom/android/volley/Request;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/android/volley/CacheDispatcher$1;->this$0:Lcom/android/volley/CacheDispatcher;

    invoke-static {v1}, Lcom/android/volley/CacheDispatcher;->-get0(Lcom/android/volley/CacheDispatcher;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    iget-object v2, p0, Lcom/android/volley/CacheDispatcher$1;->val$request:Lcom/android/volley/Request;

    invoke-interface {v1, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method
