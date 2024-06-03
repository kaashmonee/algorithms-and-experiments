import subprocess
import time

def gpu_parallel_example():
    start_time = time.time()
    subprocess.run(["./gpu_matrix_multiply"])
    end_time = time.time()
    print(f"Total Time (including overhead in Python): {end_time - start_time} seconds")

if __name__ == "__main__":
    gpu_parallel_example()