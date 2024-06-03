import Foundation
import Accelerate

func matrixMultiply() {
    let size = 1000
    let A = (0..<size*size).map{ _ in Float.random(in: 0..<1) }
    let B = (0..<size*size).map{ _ in Float.random(in: 0..<1) }
    var C = [Float](repeating: 0.0, count: size * size)
    
    let startTime = CFAbsoluteTimeGetCurrent()
    
    // Perform matrix multiplication using Accelerate framework
    A.withUnsafeBufferPointer { a in
        B.withUnsafeBufferPointer { b in
            C.withUnsafeMutableBufferPointer { c in
                vDSP_mmul(a.baseAddress!, 1,
                          b.baseAddress!, 1,
                          c.baseAddress!, 1,
                          vDSP_Length(size), vDSP_Length(size), vDSP_Length(size))
            }
        }
    }
    
    let endTime = CFAbsoluteTimeGetCurrent()
    print("GPU (Accelerate) Matrix Multiplication Time: \(endTime - startTime) seconds")
}

// Run the matrix multiply function
matrixMultiply()