.class final Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;
.super Ljava/lang/Object;
.source "ComputationScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FixedSchedulerPool"
.end annotation


# instance fields
.field final cores:I

.field final eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

.field n:J


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3
    .param p1, "maxThreads"    # I
    .param p2, "threadFactory"    # Ljava/util/concurrent/ThreadFactory;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    .line 80
    new-array v1, p1, [Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    iput-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    .line 81
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 84
    return-void

    .line 82
    :cond_0
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    new-instance v2, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    invoke-direct {v2, p2}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    .line 81
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getEventLoop()Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;
    .locals 6

    .prologue
    .line 87
    iget v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->cores:I

    .line 88
    .local v0, "c":I
    if-eqz v0, :cond_0

    .line 92
    iget-object v1, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    iget-wide v2, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->n:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int v2, v2

    aget-object v1, v1, v2

    return-object v1

    .line 89
    :cond_0
    sget-object v1, Lio/reactivex/internal/schedulers/ComputationScheduler;->SHUTDOWN_WORKER:Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    return-object v1
.end method

.method public shutdown()V
    .locals 4

    .prologue
    .line 96
    iget-object v0, p0, Lio/reactivex/internal/schedulers/ComputationScheduler$FixedSchedulerPool;->eventLoops:[Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;

    .local v0, "-l_1_R":Ljava/lang/Object;
    array-length v1, v0

    .local v1, "-l_2_I":I
    const/4 v2, 0x0

    .local v2, "-l_3_I":I
    :goto_0
    if-lt v2, v1, :cond_0

    .line 99
    return-void

    .line 96
    :cond_0
    aget-object v3, v0, v2

    .line 97
    .local v3, "w":Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;
    invoke-virtual {v3}, Lio/reactivex/internal/schedulers/ComputationScheduler$PoolWorker;->dispose()V

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
