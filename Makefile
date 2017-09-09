all: build

build:
	go build -o genhint main.go

idp:
	./genhint -v 1 -logtostderr -i example/Reduction.s 2>&1 > independence/Reduction.txt
	./genhint -v 1 -logtostderr -i example/FastWalshTransform.s 2>&1 > independence/FastWalshTransform.txt
	./genhint -v 1 -logtostderr -i example/PrefixSum.s 2>&1 > independence/PrefixSum.txt
	./genhint -v 1 -logtostderr -i example/MatrixTranspose.s 2>&1 > independence/MatrixTranspose.txt
	./genhint -v 1 -logtostderr -i example/BinarySearch.s 2>&1 > independence/BinarySearch.txt
	./genhint -v 1 -logtostderr -i example/BitonicSort.s 2>&1 > independence/BitonicSort.txt
	./genhint -v 1 -logtostderr -i example/SimpleConvolution.s 2>&1 > independence/SimpleConvolution.txt
	./genhint -v 1 -logtostderr -i example/DCT.s 2>&1 > independence/DCT.txt
	./genhint -v 1 -logtostderr -i example/FFT.s 2>&1 > independence/FFT.txt
	./genhint -v 1 -logtostderr -i example/DwtHaar1D.s 2>&1 > independence/DwtHaar1D.txt
	./genhint -v 1 -logtostderr -i example/QuasiRandomSequence.s 2>&1 > independence/QuasiRandomSequence.txt

dtl:
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/Reduction/Reduction_Kernels.bin > detail/Reduction.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/FastWalshTransform/FastWalshTransform_Kernels.bin > detail/FastWalshTransform.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/PrefixSum/PrefixSum_Kernels.bin > detail/PrefixSum.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/MatrixTranspose/MatrixTranspose_Kernels.bin > detail/MatrixTranspose.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/BinarySearch/BinarySearch_Kernels.bin > detail/BinarySearch.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/BitonicSort/BitonicSort_Kernels.bin > detail/BitonicSort.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/SimpleConvolution/SimpleConvolution_Kernels.bin > detail/SimpleConvolution.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/DCT/DCT_Kernels.bin > detail/DCT.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/FFT/FFT_Kernels.bin > detail/FFT.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/DwtHaar1D/DwtHaar1D_Kernels.bin > detail/DwtHaar1D.txt
	M2CDISASM=1 m2s --si-disasm ~/Develop/benchmark/m2s-bench-amdsdk-2.5/QuasiRandomSequence/QuasiRandomSequence_Kernels.bin > detail/QuasiRandomSequence.txt
