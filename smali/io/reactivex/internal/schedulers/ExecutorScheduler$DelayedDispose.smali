.class final Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;
.super Ljava/lang/Object;
.source "ExecutorScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ExecutorScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "DelayedDispose"
.end annotation


# instance fields
.field private final dr:Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

.field final synthetic this$0:Lio/reactivex/internal/schedulers/ExecutorScheduler;


# direct methods
.method constructor <init>(Lio/reactivex/internal/schedulers/ExecutorScheduler;Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;)V
    .locals 0
    .param p1, "this$0"    # Lio/reactivex/internal/schedulers/ExecutorScheduler;
    .param p2, "dr"    # Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    .prologue
    .line 346
    iput-object p1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;->this$0:Lio/reactivex/internal/schedulers/ExecutorScheduler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    iput-object p2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;->dr:Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    .line 348
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 352
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;->dr:Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    iget-object v0, v0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;->direct:Lio/reactivex/internal/disposables/SequentialDisposable;

    iget-object v1, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;->this$0:Lio/reactivex/internal/schedulers/ExecutorScheduler;

    iget-object v2, p0, Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedDispose;->dr:Lio/reactivex/internal/schedulers/ExecutorScheduler$DelayedRunnable;

    invoke-virtual {v1, v2}, Lio/reactivex/internal/schedulers/ExecutorScheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/internal/disposables/SequentialDisposable;->replace(Lio/reactivex/disposables/Disposable;)Z

    .line 353
    return-void
.end method
