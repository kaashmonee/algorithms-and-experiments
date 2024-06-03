import multiprocessing as mp
import numpy as np
import time

def matrix_multiply(A, B, queue):
    result = np.dot(A, B)
    queue.put(result)

def cpu_parallel_example():
    size = 1000
    A = np.random.rand(size, size)
    B = np.random.rand(size, size)

    queue = mp.Queue()
    process = mp.Process(target=matrix_multiply, args=(A, B, queue))
    start_time = time.time()
    print("start time:", start_time)
    process.start()
    print("process started")
    process.join()
    end_time = time.time()

    print(f"Result: \n{queue.get()}")
    print(f"CPU Parallelism Time: {end_time - start_time} seconds")

if __name__ == "__main__":
    cpu_parallel_example()